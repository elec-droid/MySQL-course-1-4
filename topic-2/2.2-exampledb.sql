CREATE DATABASE IF NOT EXISTS example;
USE example
CREATE TABLE users (
	id INT UNSIGNED NOT NULL, 
	name VARCHAR(255) COMMENT 'Имя пользователя'
) COMMENT = 'Таблица пользователей';
INSERT INTO users VALUES (0, 'Иван');
INSERT INTO users VALUES (1, 'Александр');
INSERT INTO users VALUES (2, 'Евгений');
INSERT INTO users VALUES (3, 'Мария');
INSERT INTO users VALUES (4, 'Анастасия');
SELECT * FROM users;
