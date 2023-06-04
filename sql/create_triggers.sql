DELIMITER //

DROP TRIGGER IF EXISTS one_admin_per_library //

CREATE TRIGGER one_admin_per_library
AFTER UPDATE ON applications FOR EACH ROW
begin
	IF NEW.request_status = 'accepted' AND OLD.request = 'library admin' then
		update users u
		join school_user su on su.user_id = new.user_id
		join school_user su1 on su1.school_id = su.school_id and su1.user_id = u.user_id
		set user_role = 'teacher'
		where u.user_role = 'library admin';
	end if;
    IF NEW.request_status = 'accepted' AND OLD.request = 'library admin' THEN
        UPDATE users u
        SET user_role = 'library admin'
        WHERE u.user_id = NEW.user_id;
    END IF;
END //

DELIMITER ;

DELIMITER //


drop trigger if exists update_reviews //

CREATE TRIGGER update_reviews
BEFORE DELETE ON library
FOR EACH ROW
BEGIN
    update review r
   	set user_id = null
    where r.user_id in (select su.user_id from school_user su where su.school_id = old.school_id) and r.review_status = 'approved';
    delete from review where user_id = null and review_status <> 'approved';
END//

drop trigger if exists update_loans//

CREATE TRIGGER update_loans
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    update loan l
   	set lib_admin_id = null
    where old.user_id = lib_admin_id;
END//

drop trigger if exists delete_users //

CREATE TRIGGER delete_users
BEFORE DELETE ON library
FOR EACH ROW
BEGIN
    DELETE FROM users WHERE user_id in (select su.user_id from school_user su where su.school_id = old.school_id);
END//

drop trigger if exists library_admin_link //

CREATE TRIGGER library_admin_link
after INSERT ON users
FOR EACH ROW
begin
	if new.user_role = 'library admin' then 
	insert into school_user(user_id, school_id)
	select new.user_id, MAX(school_id) from library;
	end if;
END//

drop trigger if exists library_admin_link //


DELIMITER ;

 drop event if exists loan_overdue_event; */
drop trigger if exists change_loan_return_date;
drop trigger if exists change_last_status_update;
drop trigger if exists loan_loan_date;
drop trigger if exists decline_loan;
drop trigger if exists loan_status_reserved;
drop trigger if exists reduce_avail_copies;
drop trigger if exists increase_avail_copies;
drop trigger if exists decline_loan_no_copy;
drop trigger if exists decline_loan_on_update;
 
delimiter //
CREATE TRIGGER change_loan_return_date
before update ON loan
FOR EACH ROW
begin 
  IF NEW.loan_status = 'loaned' then 
    SET NEW.return_date = DATE_ADD(NOW(), INTERVAL 1 WEEK);
  END if;
END;
//

delimiter //
CREATE TRIGGER change_last_status_update
before update  ON loan 
FOR EACH ROW
begin 
  if (new.loan_status<>old.loan_status)
      then 
              set new.last_status_update = NOW();
  end if;
end;
//

delimiter //
CREATE TRIGGER loan_loan_date
before update ON loan
FOR EACH ROW
begin 
  IF NEW.loan_status = 'loaned' and old.loan_status!='loaned' then 
    SET new.loan_date=NOW();
  END IF;
END;
//



delimiter //
CREATE TRIGGER loan_status_reserved
before UPDATE ON loan
FOR EACH ROW
BEGIN
  IF NEW.loan_status = 'approved' AND (
    SELECT sum(n.avail_copies)
    FROM number_of_avail_cop_per_school n
    JOIN loan l2 JOIN school_user su ON su.user_id = l2.user_id
    ON n.school_id = su.school_id
    WHERE l2.ISBN = n.ISBN AND n.school_id = su.school_id and new.user_id=l2.user_id and new.request_id=l2.request_id 
  ) = 0 THEN
     SET new.loan_status = 'reserved' ;
  	END if;
END;
//


delimiter //
CREATE TRIGGER decline_loan 
BEFORE INSERT ON loan 
FOR EACH ROW 
BEGIN 
  IF ((SELECT COUNT(request_id) FROM loan l1 join users u1 on u1.user_id =l1.user_id WHERE l1.user_id = NEW.user_id  and u1.user_role='student' and (l1.loan_status ='loaned' OR l1.loan_status ='pending' OR l1.loan_status ='approved' OR l1.loan_status ='reserved')) = 2
  		or (SELECT COUNT(request_id) FROM loan l2 join users u on u.user_id =l2.user_id  WHERE l2.user_id = NEW.user_id and (u.user_role='teacher' or u.user_role='library admin')  and (l2.loan_status ='loaned' OR l2.loan_status ='pending' OR l2.loan_status ='approved' OR l2.loan_status ='reserved')) = 1) 
  	THEN 
    SET NEW.loan_status = 'declined'; 
  END IF; 
END;
//


delimiter //
CREATE TRIGGER decline_loan_on_update 
BEFORE update ON loan 
FOR EACH ROW 
BEGIN 
  IF  (old.loan_status='returned' or old.loan_status='declined' or old.loan_status='reserved') and  ((SELECT COUNT(request_id) FROM loan l1 join users u1 on u1.user_id =l1.user_id WHERE l1.user_id = NEW.user_id  and u1.user_role='student' and (l1.loan_status ='loaned' OR l1.loan_status ='pending' OR l1.loan_status ='approved' OR l1.loan_status ='reserved')) = 2
  		or (SELECT COUNT(request_id) FROM loan l2 join users u on u.user_id =l2.user_id  WHERE l2.user_id = NEW.user_id and (u.user_role='teacher' or u.user_role='library admin')  and (l2.loan_status ='loaned' OR l2.loan_status ='pending' OR l2.loan_status ='approved' OR l2.loan_status ='reserved')) = 1) 
  	THEN 
    SET NEW.loan_status = 'declined'; 
  END IF; 
END;
//



delimiter //
CREATE TRIGGER reduce_avail_copies
before UPDATE ON loan
FOR EACH ROW
BEGIN
  IF (NEW.loan_status = 'approved' and (old.loan_status<>'loaned' or old.loan_status<>'overdue')) or 
  	(new.loan_status='loaned' and old.loan_status='returned')  then update book_owner b
     SET   b.avail_copies =(
    SELECT n.avail_copies as available
    FROM number_of_avail_cop_per_school n
    JOIN loan l2 JOIN school_user su ON su.user_id = l2.user_id
    ON n.school_id = su.school_id
    WHERE l2.ISBN = n.ISBN AND n.school_id = su.school_id and new.user_id=l2.user_id and new.request_id=l2.request_id 
    )-1 where b.ISBN=new.ISBN  ;
  END if;
END;
//


CREATE TRIGGER decline_loan_no_copy
BEFORE UPDATE ON loan
FOR EACH ROW
BEGIN
  IF NEW.loan_status = 'loaned' AND (
    SELECT distinct avail_copies
    FROM book_owner n
    JOIN users_with_phone_and_school u ON n.school_id = u.school_id
    JOIN loan l ON l.user_id = u.user_id
    WHERE n.ISBN = NEW.ISBN AND l.user_id = NEW.user_id 
  ) = 0 THEN
    SET NEW.loan_status = 'declined';
  END IF;
END;





delimiter //
CREATE TRIGGER increase_avail_copies
before UPDATE ON loan
FOR EACH ROW
BEGIN
  IF ((NEW.loan_status<>'approved' and new.loan_status<>'loaned') and (old.loan_status='approved' or old.loan_status='loaned')) 
  	then update book_owner b
     SET   b.avail_copies =(
    SELECT n.avail_copies as available
    FROM number_of_avail_cop_per_school n
    JOIN loan l2 JOIN school_user su ON su.user_id = l2.user_id
    ON n.school_id = su.school_id
    WHERE l2.ISBN = n.ISBN AND n.school_id = su.school_id and new.user_id=l2.user_id and new.request_id=l2.request_id 
    )+1 where b.ISBN=new.ISBN  ;
  END if;
END;
//