use school_libraries;

drop view if exists loans_per_month_all_schools;
CREATE VIEW IF NOT EXISTS loans_per_month_all_schools AS
SELECT lib.school_name, COUNT(l.request_id) as total_req, MONTH(l.loan_date) as mon
from library lib
left join school_user su on lib.school_id = su.school_id
LEFT JOIN loan l ON l.user_id = su.user_id
WHERE (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue') or l.request_id is NULL
GROUP BY lib.school_id, mon;
-- Όσα έχουν γίνει declined δεν έχουν loan date!

drop view if exists loans_per_year_all_schools;
CREATE VIEW IF NOT EXISTS loans_per_year_all_schools AS
SELECT lib.school_name, COUNT(l.request_id) as total_req, YEAR(l.loan_date) as y
from library lib
left join school_user su on lib.school_id = su.school_id
LEFT JOIN loan l ON l.user_id = su.user_id
WHERE (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue') or l.request_id is NULL
GROUP BY lib.school_id, y;

drop view if exists loans_certain_year_month_all_schools;
CREATE VIEW IF NOT EXISTS loans_certain_year_month_all_schools AS
SELECT lib.school_name, COUNT(l.request_id) as total_req, MONTH(l.loan_date) as mon, YEAR(l.loan_date) as y
from library lib
left join school_user su on lib.school_id = su.school_id
LEFT JOIN loan l ON l.user_id = su.user_id
WHERE (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue') or l.request_id is NULL
GROUP BY lib.school_id, mon, y;

-- Όσα έχουν γίνει declined δεν έχουν loan date!

drop view if exists author_genres;
create view if not exists author_genres as
select distinct concat(a.author_first_name, ' ', a.author_last_name) AS author_name, g.genre as gen
from author a
join book_author ba on ba.author_id = a.author_id
join book_genre bg on ba.ISBN = bg.ISBN
join genre g on g.genre_id=bg.genre_id;

--  SELECT author_name FROM author_genres WHERE gen =' Mystery'; 


drop view if exists teacher_genres;
create view if not exists teacher_genres as
select distinct concat(u.user_first_name, ' ', u.user_last_name) AS user_full_name, l.school_name as school_name, g.genre as gen
from users u
join school_user su on su.user_id = u.user_id
join library l on su.school_id = l.school_id
join (
	select *
	from loan
	where loan_status='loaned' or loan_status='returned' or loan_status='overdue'
	) as l 
on u.user_id = l.user_id
join book_genre bg on l.ISBN = bg.ISBN
join genre g on g.genre_id = bg.genre_id
where u.user_role = 'teacher' and date_add(l.loan_date, interval 1 year)>=NOW() and u.banned = 'false';

drop view if exists young_teachers_loans;
create view if not exists young_teachers_loans as
SELECT DISTINCT CONCAT(u.user_first_name, ' ', u.user_last_name) AS user_full_name, COUNT(l.request_id) AS loans, lib.school_name AS school_name
FROM users u
JOIN (
	SELECT *
	FROM loan
	WHERE loan_status = 'loaned' OR loan_status = 'returned' OR loan_status = 'overdue'
) l ON l.user_id = u.user_id
JOIN school_user su ON su.user_id = u.user_id
JOIN library lib ON lib.school_id = su.school_id
WHERE u.user_role = 'teacher' AND DATE_ADD(u.bday, INTERVAL 40 YEAR) >= NOW() AND u.banned = 'false'
GROUP BY user_full_name
ORDER BY loans DESC LIMIT 10;


drop view if exists unlucky_author;
CREATE VIEW IF NOT EXISTS unlucky_author AS
SELECT CONCAT(a.author_first_name, ' ', a.author_last_name) AS author_full_name
FROM author a
JOIN book_author ba ON ba.author_id = a.author_id
LEFT JOIN loan l ON l.ISBN = ba.ISBN
GROUP BY a.author_id
HAVING COUNT(l.request_id) = 0;


drop view if exists loans_per_school_one_year;
create view if not exists loans_per_school_one_year as
select su.school_id, count(l.request_id) as total_loans
from school_user su
left join (
	select * from loan where loan_status='loaned' or loan_status='returned' or loan_status='overdue'
	) as l on l.user_id = su.user_id
where date_add(l.loan_date, interval 1 year)>=NOW()
group by su.school_id;

drop view if exists loans_per_admin;
create view if not exists loans_per_admin as
select concat(u.user_first_name, ' ', u.user_last_name) AS admin_full_name, count(l.request_id) as total_loans, u.user_id, year(l.loan_date) as y, lib.school_name as school_name
from users u
join school_user su on su.user_id = u.user_id
join library lib on lib.school_id = su.school_id
join loan l on u.user_id = l.lib_admin_id
WHERE l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue'
group by u.user_id, y;

drop view if exists loans_per_admin_all_time;
create view if not exists loans_per_admin_all_time as
select concat(u.user_first_name, ' ', u.user_last_name) AS admin_full_name, count(l.request_id) as total_loans, u.user_role as user_role, lib.school_name as school_name
from users u
join school_user su on su.user_id = u.user_id
join library lib on lib.school_id = su.school_id
join loan l on u.user_id = l.lib_admin_id
WHERE l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue'
group by u.user_id
order by total_loans desc limit 10;

drop view if exists loans_per_current_admin;
create view if not exists loans_per_current_admin as
select concat(u.user_first_name, ' ', u.user_last_name) AS admin_full_name, count(l.request_id) as total_loans, lib.school_name as school_name
from users u
join school_user su on su.user_id = u.user_id
join library lib on lib.school_id = su.school_id
join loan l on u.user_id = l.lib_admin_id
WHERE (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue') and u.user_role='library admin'
group by u.user_id
order by total_loans desc;

select * from loans_per_current_admin;

drop view if exists same_loans_per_admin_same_year;
create view if not exists same_loans_per_admin_same_year as
select DISTINCT v1.admin_full_name as admin1_full_name, v2.admin_full_name as admin2_full_name, v1.total_loans, v1.y as y, v1.school_name as school1, v2.school_name as school2
from loans_per_admin v1
join loans_per_admin v2 on v1.total_loans = v2.total_loans and v1.y = v2.y
where v1.admin_full_name < v2.admin_full_name and v1.total_loans>20;

select * from same_loans_per_admin_same_year;



drop view if exists top_genre_pairs;
create view if not exists top_genre_pairs as
select g1.genre as genre1, g2.genre as genre2, count(l.request_id) as loans
from loan l
join book_genre bg1 on bg1.ISBN = l.ISBN
join genre g1 on g1.genre_id = bg1.genre_id
join book_genre bg2 on bg2.ISBN = bg1.ISBN
join genre g2 on g2.genre_id= bg2.genre_id
where g1.genre_id < g2.genre_id and (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue')
group by g1.genre, g2.genre
order by loans desc
limit 3;

select * from top_genre_pairs;

drop view if exists users_and_schools;
create view if not exists users_and_schools as 
select CONCAT(u.user_first_name, " ", u.user_last_name) as full_name, u.bday, u.user_role, u.sign_day, u.username, l.school_name
from users u
join school_user su on u.user_id = su.user_id
join library l on l.school_id = su.school_id
where u.user_role = 'teacher' or u.user_role = 'student' or u.user_role='library admin';

/*all books with their genres*/
drop view if exists books_by_genre;

/*drop index if exists genre_index;
create index genre_index on genre(genre); *//* for faster delivery of genre */

create view books_by_genre as
	select b.ISBN,b.title,g.genre
		from book b 
		join (book_genre bg  join genre g on g.genre_id=bg.genre_id) on b.ISBN =bg.ISBN ;



/*all books with their keywords*/
drop view if exists books_by_keyword;

create view books_by_keyword as
	select b.ISBN,b.title,b.publisher ,b.page_number ,b.book_language ,b.summary ,b.cover_image,group_concat( k.keyword) as keywords
		from book b 
		join (book_keywords bk   join keyword k  on k.keyword_id =bk.keyword_id) on b.ISBN =bk.ISBN 
		GROUP BY b.ISBN,b.title,b.publisher ,b.page_number ,b.book_language ,b.summary ,b.cover_image
		ORDER BY k.keyword;

select * from books_by_keyword;

drop view if exists number_of_loans;
/* finds the total number of active or past loans of a user */
create view number_of_loans as
	select us.user_id ,us.user_first_name ,us.user_last_name , us.user_role , COUNT(sub.li) as num_of_loans
		from users us left join(
			select  u.user_id  as dummy,l.ISBN as li
				from loan l
				right outer join users u
				on l.user_id=u.user_id
				WHERE loan_status = 'returned' OR loan_status = 'overdue' OR loan_status = 'loaned'  )
		sub on sub.dummy=us.user_id 
	GROUP BY us.user_id
	order by count(sub.li) ;

select * from number_of_loans;



drop view if exists all_books ;
/*finds all books and connects them to the corresponding author */
create view all_books as
	select b.ISBN ,b.title,CONCAT(a.author_first_name, ' ', a.author_last_name) AS author_full_name,a.author_id  
		from book b 
		join (author a join book_author ba  on a.author_id=ba.author_id) on b.ISBN=ba.ISBN 
		group by ba.author_id,ISBN 
		order by b.title;

	select * from all_books order by ISBN;

/* unite all authors with the same book */
drop view if exists books_with_authors ;

create view books_with_authors as
select ab.ISBN ,ab.title,GROUP_CONCAT(ab.author_full_name) as all_authors,GROUP_CONCAT(ab.author_id) as author_id  
from all_books ab
group by ISBN
order by ISBN;

select * from books_with_authors;

/*finds all books and connects them to the corresponding author and genres*/
drop view if exists all_books_by_genre;

CREATE VIEW all_books_by_genre AS
	SELECT  ab.ISBN, ab.title, ab.all_authors , GROUP_CONCAT(bbg.genre) AS genres,ab.author_id
	FROM books_with_authors ab
	JOIN books_by_genre bbg ON bbg.ISBN = ab.ISBN
	GROUP BY ab.ISBN, ab.title
	ORDER BY bbg.genre;

select * from all_books_by_genre order by ISBN;


/*finds all books and connects them to the corresponding author and genres and keywords*/


drop view if exists all_books_by_genre_keyword;

CREATE VIEW all_books_by_genre_keyword  AS
	SELECT distinct ab.ISBN, ab.title,ab.author_id, ab.all_authors,bbk.publisher ,bbk.page_number ,bbk.book_language ,bbk.summary ,bbk.cover_image, GROUP_CONCAT(bbg.genre) as genres ,bbk.keywords
	FROM books_with_authors ab
	JOIN (books_by_genre bbg join books_by_keyword bbk on bbk.ISBN = bbg.ISBN ) ON bbg.ISBN = ab.ISBN
	GROUP BY ab.ISBN, ab.title, ab.all_authors
	ORDER BY genres;

select * from all_books_by_genre_keyword;


drop view if exists users_with_phone;

CREATE VIEW users_with_phone AS
	SELECT u.user_id ,u.user_first_name ,u.user_last_name ,u.bday ,u.user_role ,u.sign_day ,u.username ,u.user_password ,u.banned , GROUP_CONCAT(up.phone_number) AS phone_numbers,u.approved
	FROM users u  
	left JOIN user_phone up on up.user_id =u.user_id 
	GROUP BY u.user_id 
	ORDER BY u.user_id ;

drop view if exists users_with_phone_and_school;

CREATE VIEW users_with_phone_and_school AS
	SELECT up.user_id ,up.user_first_name ,up.user_last_name ,up.bday ,up.user_role ,up.sign_day ,up.username ,up.user_password ,up.banned , up.phone_numbers ,l.school_name,l.school_id,up.approved
	FROM users_with_phone up
	left JOIN  school_user su join library l on l.school_id =su.school_id on su.user_id =up.user_id   
	ORDER BY up.user_id desc ;


drop view if exists number_of_loans_per_book;
/*number of loans per book from all schools*/
create view number_of_loans_per_book as
	select b.ISBN,b.title ,count(l.request_id) as num_of_loans
		from book b left join loan l on l.ISBN =b.ISBN 
		WHERE loan_status = 'returned' OR loan_status = 'overdue' OR loan_status = 'loaned' or loan_status is null 
		group by ISBN 
		order by count(l.request_id);
	

drop view if exists number_of_avail_cop_per_school;
/*number of available copies per book per school */
create view number_of_avail_cop_per_school as
	select b.ISBN,b.title,bo.school_id,bo.avail_copies 
	from book b join book_owner bo on b.ISBN =bo.ISBN;
	




drop view if exists number_of_loans_per_book_per_school;
/*number of loans  per book per school */
create view number_of_loans_per_book_per_school as
	select b.ISBN,b.title ,su.school_id,count(l.request_id) as num_of_loans_per_school
		from book b left join (loan l join (users u join school_user su on u.user_id=su.user_id)on u.user_id=l.user_id) on l.ISBN =b.ISBN 
		WHERE loan_status = 'approved' OR loan_status = 'overdue' OR loan_status = 'loaned' or loan_status is null 
		group by b.ISBN,su.school_id  
		order by b.ISBN,su.school_id   ;
	
/* to find the number of total copies we have the number of loans per book per school and the number of available copies per school
 * so we just need to find the sum of these two counts*/
drop view if exists total_num_of_cop_per_book_per_school;

create view total_num_of_cop_per_book_per_school as
	select b.ISBN,b.title,b.school_id,sum(COALESCE(a.num_of_loans_per_school, 0)+b.avail_copies) as total_num_of_copies
	from number_of_loans_per_book_per_school a  right join number_of_avail_cop_per_school b on a.ISBN=b.ISBN  and a.school_id=b.school_id
	group by b.ISBN,b.title,b.school_id
	order by b.school_id;

drop view if exists all_copies;
create view all_copies as
select tot.ISBN ,tot.title ,tot.school_id ,tot.total_num_of_copies,n.avail_copies  from total_num_of_cop_per_book_per_school tot join number_of_avail_cop_per_school n on n.school_id =tot.school_id and n.ISBN=tot.ISBN order by tot.school_id ;

select * from all_copies where avail_copies <>total_num_of_copies and school_id =5;

/* not a good idea to use this view as it is not efficient*/
drop view if exists almost_all;

create view almost_all as
	select abbg.ISBN,abbg.title,abbg.all_authors _name , genres,tot.school_id,tot.total_num_of_copies
	from all_books_by_genre abbg join total_num_of_cop_per_book_per_school tot 
	on abbg.ISBN=tot.ISBN and abbg.title =tot.title;

select * from almost_all order by ISBN;


/* όλοι οι δανειζόμενοι που καθυστερούν βιβλίο */
drop view if exists overdue_loans;

create view overdue_loans as
	select u.user_first_name ,u.user_last_name,TIMESTAMPDIFF(DAY,  NOW(),l.last_status_update) as date_difference_in_days,su.school_id
	from loan l  join school_user su join users u on u.user_id =su.user_id on u.user_id =l.user_id 
	where l.loan_status ='overdue'
	group by  u.user_id ;

select * from overdue_loans;

/* average rating per user */
drop view if exists avg_rating_user;

create view avg_rating_user as
	select u.username,avg(r.rating) as avg_rating
	from users u join review r on r.user_id =u.user_id
	group by u.user_id 
	order by avg_rating;

/* average raiting per genre */
drop view if exists avg_rating_genre;

create view avg_rating_genre as
	select g.genre, avg(r.rating) as avg_rating
	from books_by_genre g join review r on r.ISBN =g.ISBN 
	group by g.genre 
	order by avg_rating;



/* average raiting per keyword */
drop view if exists avg_rating_keyword;

create view avg_rating_keyword as
	select k.keywords, avg(r.rating) as avg_rating
	from books_by_keyword k join review r on r.ISBN =k.ISBN 
	group by k.keywords 
	order by avg_rating;


/* users with reviews */
drop view if exists user_review;

create view user_review as
	select u.user_id ,u.user_first_name ,u.user_last_name,u.bday ,u.user_role ,u.username ,r.review_id ,r.review_status ,r.rating,r.ISBN,r.review_text,r.review_date  
	from users u join review r on u.user_id =r.user_id ;
/* average rating for each user and each genre */
drop view if exists avg_review_per_genre_user;

create view avg_review_per_genre_user as
	select  ur.username,b.genre,avg(ur.rating) as average_rating,ur.user_id 
	from user_review ur join books_by_genre b on b.ISBN = ur.ISBN
	group by b.genre,ur.username 
	order by ur.user_id;

	select * from avg_review_per_genre_user;
	select genre,AVG(average_rating) from avg_review_per_genre_user group by genre order by genre ;
	select username ,AVG(average_rating) from avg_review_per_genre_user group by username  order by username ;

/* all books + choose book */



/* in order to make a reservation insert into loan((request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN) με τα στοιχεια του χρήστη */
drop view if exists books_loaned_to_user;

create view books_loaned_to_user as
	select l.request_id ,l.request_date ,l.loan_status ,l.last_status_update ,l.loan_date ,l.return_date ,u.user_id ,u.username , b.title ,b.ISBN,b.author_id ,u.user_role,su.school_id,u.user_first_name,u.user_last_name  
	from school_user su join users u left join loan l join books_with_authors b on l.ISBN=b.ISBN on l.user_id =u.user_id on su.user_id=u.user_id 
	order by u.user_id ;

select * from books_loaned_to_user;

drop view if exists elegible_for_loan;

create view elegible_for_loan as
	select distinct  u.user_id
	from loan u join users us on us.user_id =u.user_id 
	where u.loan_status <>'overdue' and ((us.user_role ='student' and (select count(*) from loan l where u.user_id=l.user_id and (l.loan_status='approved' or l.loan_status='loaned' or l.loan_status='reserved'))<2) or (us.user_role ='teacher' and (select count(*) from loan l where u.user_id=l.user_id and (l.loan_status='approved' or l.loan_status='loaned' or l.loan_status='reserved'))<1));

select * from elegible_for_loan;	
	-- create index user_id_index on users(user_id); /* θα χρειαστεί να ψάξουμε με βάση το user id για την δημιουργία μίας αίτησης κράτησης*/

/* authors with books */
drop view if exists book_with_author;

create view book_with_author as
	select b.ISBN ,b.title ,b.publisher ,b.page_number ,b.book_language ,b.summary ,b.cover_image ,a.author_id ,a.author_first_name ,a.author_last_name 
	from book b join (book_author ba join author a on ba.author_id=a.author_id) on b.ISBN =ba.ISBN;

select * from book_with_author order by ISBN;
/* users with reviews and books */
drop view if exists user_review_books;

create view user_review_books as
	select u.user_id ,u.user_first_name ,u.user_last_name,u.bday ,u.user_role ,u.username  ,u.review_status ,u.rating,u.review_text,u.review_date,b.ISBN,b.title , u.review_id,b.author_id,su.school_id  
	from  book_with_author b  join user_review u join school_user su on su.user_id =u.user_id  on u.ISBN =b.ISBN  ;


/* all authors with the number of books they have written in our libraries */
drop view if exists number_of_written;

create view number_of_written as
	select ba.author_first_name ,ba.author_last_name,count(*) as num_written
	from book_with_author ba
	group by ba.author_id
	order by count(*) desc;

/* five fewer than the most */
drop view if exists five_less;


create view five_less as
with max_count(value) as
	(select max(n.num_written)
	 from number_of_written n)
select ba.author_first_name ,ba.author_last_name,count(*)
	from book_with_author ba
	group by ba.author_id
	having count(*)<=(select value from max_count)-5
	order by count(*) desc;

drop view if exists total_loans_per_user;
create view if not exists total_loans_per_user as
SELECT u.user_id as user_id, COUNT(l.request_id) AS num_loans
FROM users u
LEFT JOIN loan l ON l.user_id = u.user_id AND (l.loan_status = 'loaned' OR l.loan_status = 'returned' OR l.loan_status = 'overdue')
GROUP BY u.user_id;

drop view if exists total_reviews_per_user;
create view if not exists total_reviews_per_user as
SELECT u.user_id as user_id, COUNT(r.review_id) AS num_reviews
FROM users u
LEFT JOIN review r ON r.user_id = u.user_id AND r.review_status = 'approved'
GROUP BY u.user_id;

drop view if exists lib_admin_appl;
create view if not exists lib_admin_appl as
select u.user_id, u.sign_day as sign_day, concat(u.user_last_name, " ", u.user_first_name) as full_name, l.school_name, v1.num_loans, v2.num_reviews, concat(u_admin.user_last_name, " ", u_admin.user_first_name) as admin_full_name
from applications a
join school_user su on su.user_id = a.user_id
join library l on l.school_id = su.school_id
join users u on u.user_id = a.user_id
join total_loans_per_user v1 on v1.user_id = a.user_id
join total_reviews_per_user v2 on v2.user_id = a.user_id
join school_user su_admin on su_admin.school_id = su.school_id
join users u_admin on u_admin.user_id = su_admin.user_id
where a.request = 'library admin' and a.request_status = 'pending' and u_admin.user_role = 'library admin';

