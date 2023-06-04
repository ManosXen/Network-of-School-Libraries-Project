drop database if exists school_libraries;
CREATE database if not exists school_libraries;
use school_libraries;

CREATE TABLE if not exists author(
    author_id INT AUTO_INCREMENT  NOT NULL,
    author_first_name VARCHAR(25) NOT NULL CHECK (CHAR_LENGTH(author_first_name)>1) ,
    author_last_name VARCHAR(25) NOT NULL CHECK (CHAR_LENGTH(author_last_name)>1) ,
    PRIMARY KEY (author_id),
    CONSTRAINT uc_author_name UNIQUE (author_first_name, author_last_name)
);

CREATE TABLE if not exists book(
    ISBN CHAR(13) NOT NULL,
    title VARCHAR(150) NOT NULL CHECK(CHAR_LENGTH(title)>=2),
    publisher VARCHAR(100) NOT NULL CHECK(CHAR_LENGTH(publisher)>=2),
    page_number INT NOT NULL CHECK(page_number>0),
    book_language VARCHAR(25) NOT NULL CHECK(CHAR_LENGTH(book_language)>2),
    summary TEXT NOT NULL,
    cover_image VARCHAR(255) NOT NULL,
    PRIMARY KEY(ISBN)
)engine=InnoDB;

CREATE TABLE if not exists book_author(
    author_id INT NOT NULL, 
    ISBN CHAR(13) NOT NULL,
    PRIMARY KEY (author_id,ISBN),
    CONSTRAINT author_book  FOREIGN KEY (author_id) REFERENCES author(author_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT ISBN_book 	FOREIGN KEY (ISBN) REFERENCES book(ISBN) ON UPDATE CASCADE ON DELETE RESTRICT
)engine=InnoDB;

CREATE TABLE if not exists keyword(
    keyword_id INT AUTO_INCREMENT NOT NULL,
    keyword VARCHAR(50) NOT NULL CHECK(CHAR_LENGTH(keyword)>1),
    PRIMARY KEY (keyword_id)
)engine=InnoDB;

CREATE TABLE if not exists book_keywords (
    ISBN CHAR(13) NOT NULL,
    keyword_id INT NOT NULL,
    PRIMARY KEY (ISBN, keyword_id),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (keyword_id) REFERENCES keyword(keyword_id) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists genre(
    genre_id INT AUTO_INCREMENT NOT NULL,
    genre VARCHAR(50) NOT NULL CHECK(CHAR_LENGTH(genre)>1),
    PRIMARY KEY (genre_id)
)engine=InnoDB;

CREATE table if not exists book_genre (
    ISBN CHAR(13) NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (ISBN, genre_id),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists library(
    school_id INT AUTO_INCREMENT NOT NULL,
    school_name VARCHAR(255) NOT NULL CHECK(CHAR_LENGTH(school_name)>2),
    city VARCHAR(100) NOT NULL CHECK(CHAR_LENGTH(city)>2),
    street_name VARCHAR(50) NOT NULL CHECK(CHAR_LENGTH(street_name)>2),
    zip_code CHAR(5) NOT NULL CHECK (CHAR_LENGTH(zip_code) = 5),
    email VARCHAR(100) NOT NULL CHECK(CHAR_LENGTH(email)>5),
    principal_first_name VARCHAR(25) NOT NULL CHECK(CHAR_LENGTH(principal_first_name)>1),
    principal_last_name VARCHAR(25) NOT NULL CHECK(CHAR_LENGTH(principal_last_name)>1),
    unique(school_name),
    PRIMARY KEY (school_id)
)engine=InnoDB;

CREATE TABLE if not exists book_owner(
    school_id INT NOT NULL,
    ISBN CHAR(13) NOT NULL,
    avail_copies INT NOT NULL CHECK(avail_copies>=0),
    PRIMARY KEY (school_id,ISBN),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (school_id) REFERENCES library(school_id) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists library_phone(
    phone_number CHAR(10) NOT NULL,
    school_id INT NOT NULL,
    PRIMARY KEY (phone_number),
    FOREIGN KEY (school_id) REFERENCES library(school_id) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists users(
    user_id INT NOT NULL AUTO_INCREMENT,
    user_first_name VARCHAR(20) NOT NULL check (CHAR_LENGTH(user_first_name)>1),
    user_last_name VARCHAR(20) NOT NULL check (CHAR_LENGTH(user_last_name)>1),
    bday DATE NOT NULL,
    user_role ENUM('central admin', 'library admin', 'student', 'teacher') NOT NULL,
    sign_day DATE NOT null default NOW(),
    username VARCHAR(20) NOT NULL check (CHAR_LENGTH(username)>5),
    user_password VARCHAR(20) NOT NULL check (CHAR_LENGTH(user_password)>5),
    banned enum('true', 'false') default 'false',
    approved enum ('yes' , 'no') default 'no',
    unique (username),
    PRIMARY KEY(user_id)
)engine=InnoDB;

CREATE TABLE if not exists loan(
    request_id INT NOT NULL AUTO_INCREMENT,
    request_date DATE NOT null default NOW(),
    loan_status ENUM('pending','reserved', 'approved', 'declined', 'loaned','overdue','returned') NOT NULL DEFAULT 'pending',
    last_status_update DATE NOT null default NOW(),
    loan_date DATE default null,
    return_date DATE default null,
    user_id INT NOT NULL,
    ISBN CHAR(13) NOT NULL,
    lib_admin_id INT,
    PRIMARY KEY(request_id),
    FOREIGN KEY (lib_admin_id) REFERENCES users(user_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ISBN) REFERENCES book(ISBN) ON DELETE RESTRICT ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists review(
    review_id INT NOT NULL AUTO_INCREMENT,
    review_status ENUM('pending', 'approved', 'declined') NOT NULL DEFAULT 'pending',
    review_date DATE NOT null default now(),
    review_text TEXT NOT NULL,
    rating INT NOT NULL,
    user_id INT,
    ISBN CHAR(13) NOT NULL,
    PRIMARY KEY(review_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ISBN) REFERENCES book(ISBN) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT check_rating_value CHECK (rating>=1 AND rating<=5)
)engine=InnoDB;

CREATE TABLE if not exists user_phone(
    phone_number CHAR(10) NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY(phone_number, user_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists school_user(
    school_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY(school_id, user_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (school_id) REFERENCES library(school_id) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

CREATE TABLE if not exists applications(
    application_id INT NOT null auto_increment,
    user_id INT NOT NULL,
    request enum('student', 'teacher', 'library admin'),
    request_status enum('pending', 'accepted', 'rejected', 'canceled') default 'pending',
    last_status_update DATE not null default NOW(),
    PRIMARY KEY(application_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE cascade
)engine=InnoDB;
