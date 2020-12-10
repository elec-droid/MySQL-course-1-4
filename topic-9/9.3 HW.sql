/* 9.3.1
 * Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от
 * текущего времени суток. 
 * С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
 * с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
 * с 18:00 до 00:00 — "Добрый вечер", 
 * с 00:00 до 6:00 — "Доброй ночи".
 */

DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
RETURNS TINYTEXT NO SQL
BEGIN
	SET @current_hour = HOUR(CURTIME());
	CASE 
		WHEN @current_hour BETWEEN 6 AND 11 THEN
			RETURN 'Доброе утро';
		WHEN @current_hour BETWEEN 12 AND 17 THEN
			RETURN 'Добрый день';
		WHEN @current_hour BETWEEN 18 AND 23 THEN
			RETURN 'Добрый вечер';
		ELSE
			RETURN 'Доброй ночи';
	END CASE;
END//
DELIMITER ;

SELECT hello();

/*
 * В таблице products есть два текстовых поля: name с названием товара и description с его
 * описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля
 * принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь
 * того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям
 * NULL-значение необходимо отменить операцию.
 */

DROP TRIGGER IF EXISTS NotNullInsetTrigger;
delimiter //
CREATE TRIGGER NotNullInsetTrigger BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insert on "products" Warning! Fields "name" and "description" is NULL!';
	END IF;
END //
delimiter ;

-- Проверка триггера BEFORE INSERT
INSERT INTO products (name, description, price, catalog_id) VALUES (NULL, NULL, 5000, 2);


DROP TRIGGER IF EXISTS NotNullUpdateTrigger;
delimiter //
CREATE TRIGGER NotNullUpdateTrigger BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Update on "products" Warning! Fields "name" and "description" is NULL!';
	END IF;
END //
delimiter ;

-- Проверка триггера BEFORE UPDATE
UPDATE products SET 
	name = NULL,
	description = NULL
WHERE id = 1;
UPDATE products SET description = NULL WHERE id = 1;


/*
 * (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи.
 * Числами Фибоначчи называется последовательность в которой число равно сумме двух
 * предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.
 */

DROP FUNCTION IF EXISTS fibonacci;
DELIMITER //
CREATE FUNCTION fibonacci(in_number INT UNSIGNED)
RETURNS INT UNSIGNED NO SQL
BEGIN
	DECLARE i INT UNSIGNED DEFAULT 1;
	DECLARE res_number INT UNSIGNED DEFAULT 0;
	WHILE i <= in_number DO
		SET res_number = res_number + i;
		SET i = i + 1;
	END WHILE;
	RETURN res_number;
END//
DELIMITER ;

SELECT fibonacci(10);