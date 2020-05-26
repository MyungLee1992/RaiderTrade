DELETE FROM USER_ROLE WHERE user_id != 0;
DELETE FROM USER where user_id != 0;
DELETE FROM ROLE where role_id != 0;

INSERT INTO ROLE(role_id, name) VALUES
(1, 'ADMIN'),
(2, 'USER');

INSERT INTO USER (user_id, first_name, last_name, user_type, user_name, phone_num, password) VALUES
(1, 'Myung', 'Lee', 'Student', 'asdasd', '123-456-7891', '$2a$08$PnfLzBatyaKd2lhH6ZKFkOXo0jCN7GULyqW//1PzjF7DTbcKweAuG');
-- INSERT INTO USER (user_id, first_name, last_name, user_type, user_name, phone_num, password) VALUES
-- (2, 'Dotson', 'King', 'Student', 'zxczxc', '987-654-3218', '$2a$08$dl0Ule6AqeCRSxANE2djEe/EpaxmKeMejh9AbH0Cta5zxERwmLEz6'); 

INSERT INTO USER_ROLE (user_id, role_id) VALUES
(1,1),
(1,2);

SELECT * FROM user;
SELECT * FROM user_role;

-- DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS book;
-- DROP TABLE IF EXISTS user;
-- DROP TABLE IF EXISTS role;

-- CREATE TABLE USER
-- (
--     user_id				    INT AUTO_INCREMENT,
--     first_name              VARCHAR(50) NOT NULL,
--     last_name               VARCHAR(50) NOT NULL,
--     user_type				VARCHAR(50) NOT NULL,
--     user_name				VARCHAR(50) NOT NULL UNIQUE,
--     phone_num				VARCHAR(50),
--     password				VARCHAR(100) NOT NULL,
--     confirm_password        VARCHAR(100),

--     PRIMARY KEY(user_id),
-- );

