CREATE TABLE BOOK
(
    item_id                 INT AUTO_INCREMENT,
    user_id                 INT,
    course_abb              VARCHAR(50),
    author_name             VARCHAR(50),
    item_name               VARCHAR(50),
    ibn_num                 BIGINT,
    cond                    VARCHAR(50) NOT NULL,
    price                   FLOAT(6,2),
    post_date               DATE,

    PRIMARY KEY(item_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id) 
        ON UPDATE CASCADE
        ON DELETE CASCADE
);