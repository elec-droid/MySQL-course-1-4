/* 9.3.1
 * �������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� ��
 * �������� ������� �����. 
 * � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", 
 * � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
 * � 18:00 �� 00:00 � "������ �����", 
 * � 00:00 �� 6:00 � "������ ����".
 */

DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
RETURNS TINYTEXT NO SQL
BEGIN
	SET @current_hour = HOUR(CURTIME());
	CASE 
		WHEN @current_hour BETWEEN 6 AND 11 THEN
			RETURN '������ ����';
		WHEN @current_hour BETWEEN 12 AND 17 THEN
			RETURN '������ ����';
		WHEN @current_hour BETWEEN 18 AND 23 THEN
			RETURN '������ �����';
		ELSE
			RETURN '������ ����';
	END CASE;
END//
DELIMITER ;

SELECT hello();

/*
 * � ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ���
 * ���������. ��������� ����������� ����� ����� ��� ���� �� ���. ��������, ����� ��� ����
 * ��������� �������������� �������� NULL �����������. ��������� ��������, ���������
 * ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. ��� ������� ��������� �����
 * NULL-�������� ���������� �������� ��������.
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

-- �������� �������� BEFORE INSERT
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

-- �������� �������� BEFORE UPDATE
UPDATE products SET 
	name = NULL,
	description = NULL
WHERE id = 1;
UPDATE products SET description = NULL WHERE id = 1;


/*
 * (�� �������) �������� �������� ������� ��� ���������� ������������� ����� ���������.
 * ������� ��������� ���������� ������������������ � ������� ����� ����� ����� ����
 * ���������� �����. ����� ������� FIBONACCI(10) ������ ���������� ����� 55.
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