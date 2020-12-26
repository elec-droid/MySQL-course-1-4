-- Практическое задание по теме “Оптимизация запросов”
/* 11.1.1
 * Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
 * catalogs и products в таблицу logs помещается время и дата создания записи, название
 * таблицы, идентификатор первичного ключа и содержимое поля name.
 */

USE shop

-- Создание таблицы logs
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	prim_key_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор первичного ключа",
	name VARCHAR(255) COMMENT "Содержание поля name таблицы",
	table_name VARCHAR(20) COMMENT "Название таблицы",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата и время создания записи"
) COMMENT "История создания записей в таблицах users, catalogs, products" ENGINE=Archive;

-- Триггер для таблиц users, catalogs и products по INSERT
DROP TRIGGER IF EXISTS users_log_trigger;
delimiter //
CREATE TRIGGER users_log_trigger AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (prim_key_id, name, table_name) 
				VALUES (NEW.id, NEW.name, "users");
END //
delimiter ;

DROP TRIGGER IF EXISTS catalogs_log_trigger;
delimiter //
CREATE TRIGGER catalogs_log_trigger AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (prim_key_id, name, table_name) 
				VALUES (NEW.id, NEW.name, "catalogs");
END //
delimiter ;

DROP TRIGGER IF EXISTS products_log_trigger;
delimiter //
CREATE TRIGGER products_log_trigger AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (prim_key_id, name, table_name) 
				VALUES (NEW.id, NEW.name, "products");
END //
delimiter ;

-- Проверка на примере таблицы users
INSERT INTO users (name) VALUES ("Анастасия");
SELECT * FROM logs;

/* 11.1.2
 * (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
 */
DROP PROCEDURE IF EXISTS insert_milion;
DELIMITER //
CREATE PROCEDURE insert_milion()
BEGIN
	DECLARE i INT UNSIGNED DEFAULT 0;
	WHILE i < 1000000 DO
		INSERT INTO users (name, birthday_at) VALUES (CONCAT("user number ", i), NOW());
		SET i = i + 1;
	END WHILE;
END//
DELIMITER ;