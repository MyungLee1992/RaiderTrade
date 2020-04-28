CREATE TABLE BOOK
(
    item_id                 INT AUTO_INCREMENT,
--    user_id                 INT,
    course_abb              VARCHAR(50),
    author_name             VARCHAR(50),
    book_name               VARCHAR(50),
    ibn_num                 BIGINT,
    cond	                  VARCHAR(50) NOT NULL,
    price                   FLOAT,
    detail                  VARCHAR(250),
    post_date               DATE,

    PRIMARY KEY(item_id)
--    FOREIGN KEY(user_id) REFERENCES User(user_id)
--        ON UPDATE CASCADE
--        ON DELETE CASCADE
);

INSERT INTO BOOK
VALUES('CSCI 3110', 'John Doe', 'Data Structures and Algorithms', '123456789', 'Fair', '50', 'Calculus Book');
INSERT INTO BOOK
VALUES('CSCI 4160', 'Mason Lee', 'Compiler', '419828491', 'Fair', '100', 'Intro to Compiler');
INSERT INTO BOOK
VALUES('CSCI 3240', 'Smith Machine', 'Intro to Computer Systems', '418281422', 'Fair', '80', 'Computer systems book');

DROP TABLE BOOK;
SELECT * FROM BOOK;
DELETE FROM BOOK;