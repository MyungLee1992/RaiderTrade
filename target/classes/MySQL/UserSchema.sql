CREATE TABLE USER
(
    user_id				INT AUTO_INCREMENT,
    first_name                          VARCHAR(50) NOT NULL,
    last_name                           VARCHAR(50) NOT NULL,
    user_type				VARCHAR(50) NOT NULL,
    user_name				VARCHAR(50) NOT NULL,
    phone_num				VARCHAR(50),
    password				VARCHAR(100) NOT NULL,
    confirm_password                    VARCHAR(100),

    PRIMARY KEY(user_id),
    UNIQUE(user_name)
);

INSERT INTO USER (first_name, last_name, user_type, user_name, phone_num, password)
VALUES('Myung', 'Lee', 'Student', 'mwl3c', '123-456-7891', 'mtsu');
INSERT INTO USER (first_name, last_name, user_type, user_name, phone_num, password)
VALUES('Dotson', 'King', 'Student', 'cme3x', '987-654-3218', 'mtsu');

DROP TABLE User;
SELECT * FROM USER;
DELETE FROM USER;
