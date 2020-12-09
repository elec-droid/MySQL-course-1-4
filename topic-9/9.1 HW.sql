/* 9.1.1
 * � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������.
 * ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. �����������
 * ����������.
 */

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;


/* 9.1.2
 * �������� �������������, ������� ������� �������� name �������� ������� �� �������
 * products � ��������������� �������� �������� name �� ������� catalogs.
 */

CREATE OR REPLACE VIEW products_catalogs(product_name, catalog_name) AS
SELECT
	products.name,
	(SELECT catalogs.name FROM catalogs WHERE catalogs.id = products.id)
FROM products;
SELECT * FROM products_catalogs;


/* 9.1.4
 * (�� �������) ����� ������� ����� ������� � ����������� ����� created_at. 
 * �������� ������, ������� ������� ���������� ������ �� �������, �������� ������ 5 ����� ������ �������.
 */
DROP TABLE IF EXISTS date_table;
CREATE TABLE date_table (
	created_at DATE
);

INSERT INTO date_table VALUES
	('2018-08-01'),
	('2018-08-02'),
	('2018-08-04'),
	('2018-08-12'),
	('2018-08-14'),
	('2018-08-17'),
	('2018-08-23'),
	('2018-08-27'),
	('2018-08-29'),
	('2018-08-31');

DELETE FROM date_table
WHERE created_at NOT IN (
	SELECT * FROM (
		SELECT * FROM date_table
		ORDER BY created_at DESC
		LIMIT 5
	) AS foo
) ORDER BY created_at DESC;

SELECT * FROM date_table ORDER BY created_at DESC;