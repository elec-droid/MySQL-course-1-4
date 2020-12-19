/* 
 * Требования к курсовому проекту:
 * 		1. (+) Составить общее текстовое описание БД и решаемых ею задач;
 * 		2. (+) Минимальное количество таблиц - 10;
 * 		3. (+) Скрипты создания структуры БД (с первичными ключами, индексами, 
 * 				внешними ключами);
 * 		4. (+) Создать ERDiagram для БД;
 * 		5. (+) Скрипты наполнения БД данными;
 * 		6. (+) Скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные 
 * 				таблицы);
 * 		7. (+) Представления (минимум 2);
 * 		8. (+) Хранимые процедуры / триггеры;
 * 
 * ********* Текстовое описание БД и решаемых ею задач (пояснительная записка) *********
 * Текстовое описание БД в документе description.pdf
 * 
 * Для хранения первичного ключа принят тип INT UNSIGNED (c учётом посещаемости 
 * сайта 21,5 млн. пользователей в год)
 * Внешние ключи созданы вместе с таблицами для облегчения восприятия их связей.
 */

/*
 * ********* Блок создания базы данных *********
 */
DROP DATABASE IF EXISTS happywear;
CREATE DATABASE happywear;

USE happywear

/*
 * ********* Блок создания структуры базы данных *********
 */
-- Информация о пользователе
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор пользователя",
	name VARCHAR(100) NOT NULL COMMENT "Имя",
	patronymic VARCHAR(100) COMMENT "Отчество",
	surname VARCHAR(100) NOT NULL COMMENT "Фамилия",
	gender ENUM("M", "F") COMMENT "Пол",
	phone_number VARCHAR(15) NOT NULL UNIQUE COMMENT "Номер телефона",
	email VARCHAR(100) NOT NULL UNIQUE COMMENT "Адрес электронной почты",
	birthday DATETIME COMMENT "Дата рождения",
	is_private_person BOOL NOT NULL DEFAULT TRUE COMMENT "Признак физического лица",
	is_newsletter BOOL NOT NULL DEFAULT FALSE COMMENT "Признак подписки на рассылку",
	created_at DATETIME NOT NULL DEFAULT NOW() COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи"
) COMMENT "Профили пользователей" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE field_activity (
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сферы деятельности",
	name VARCHAR(100) NOT NULL UNIQUE COMMENT "Название сферы деятельности"
) COMMENT "Сферы деятельности" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE addresses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор адреса",
	name VARCHAR(100) NOT NULL COMMENT "Имя получателя",
	patronymic VARCHAR(100) COMMENT "Отчество получателя",
	surname VARCHAR(100) NOT NULL COMMENT "Фамилия получателя",
	address TEXT NOT NULL COMMENT "Адрес получателя",
	created_at DATETIME NOT NULL DEFAULT NOW() COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи"
) COMMENT "Адреса доставки" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE users_field_activity (
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя",
	field_activity_id TINYINT UNSIGNED NOT NULL COMMENT "Идентификатор сферы деятельности",
	PRIMARY KEY (user_id, field_activity_id) COMMENT "Составной первичный ключ по пользователю и сфере деятельности",
	
	CONSTRAINT users_field_activity__user_id_fk 
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT users_field_activity_id_fk
		FOREIGN KEY (field_activity_id) REFERENCES field_activity(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Связи пользователей и их сфер деятелности" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE users_addresses (
	user_id INT UNSIGNED NOT NULL 				COMMENT "Идентификатор пользователя",
	address_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор адреса",
	is_default BOOL NOT NULL DEFAULT FALSE 		COMMENT "Признак того, адрес установлена по умолчанию для пользователя",
	created_at DATETIME NOT NULL DEFAULT NOW() 	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи",
	PRIMARY KEY(user_id, address_id) 			COMMENT "Составной первичный ключ по пользователю и адресу",
	
	CONSTRAINT users_addresses__user_id_fk 
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE,	
	CONSTRAINT users_addresses__address_id_fk 
		FOREIGN KEY (address_id) REFERENCES addresses(id)
			ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Связи пользователей и адресов доставки" ENGINE = InnoDB DEFAULT CHARSET = utf8;


-- Информация о товарах
CREATE TABLE vendors_code (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL UNIQUE COMMENT "Атрикул товара"
) COMMENT "Атрикул товара" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE produced_company (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название компании"
) COMMENT "Компании - прозиводители одежды" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE colors (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL UNIQUE
) COMMENT "Справочник цветов" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE sizes_types (
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Системы обозначения размеров" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE sizes (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор размера",
	size_type_id TINYINT UNSIGNED NOT NULL COMMENT "Идентификатор системы обозначения размеров",
	name VARCHAR(255) NOT NULL,
	
	CONSTRAINT sizes__size_type_id_fk 
		FOREIGN KEY (size_type_id) REFERENCES sizes_types(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Размеры" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE products (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	vendor_code_id INT UNSIGNED NOT NULL 		COMMENT "Идентификатор атрикула товара",
	produced_by_id SMALLINT UNSIGNED NOT NULL	COMMENT "Идентификатор компании - производителя",
	color_id SMALLINT UNSIGNED NOT NULL			COMMENT "Идентификатор цвета товара",
	-- name VARCHAR(255) NOT NULL				COMMENT "Название товара",
	description TEXT							COMMENT "Описание товара",
	consist VARCHAR(255)						COMMENT "Описание состава одежды",
	measurements TEXT							COMMENT "Замеры модели одежды",
	created_at DATETIME NOT NULL DEFAULT NOW()	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи",
	
	CONSTRAINT products__vendor_code_id_fk 
		FOREIGN KEY (vendor_code_id) REFERENCES vendors_code(id)
			ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT products__produced_by_id_fk 
		FOREIGN KEY (produced_by_id) REFERENCES produced_company(id)
			ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT products__color_id_fk 
		FOREIGN KEY (color_id) REFERENCES colors(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Товары" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE prices (
	product_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор товара",
	size_id SMALLINT UNSIGNED NOT NULL 			COMMENT "Идентификатор размера",
	price MEDIUMINT UNSIGNED NOT NULL 			COMMENT "Цена товара данного размера",
	count_in_stock SMALLINT UNSIGNED NOT NULL	COMMENT "Количество товаров на складе",
	PRIMARY KEY(product_id, size_id) 			COMMENT "Составной первичный ключ по сочетанию товара и размера",
	
	CONSTRAINT prices__product_id_fk 
		FOREIGN KEY (product_id) REFERENCES products(id)
			ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT prices__size_id_fk 
		FOREIGN KEY (size_id) REFERENCES sizes(id)
			ON UPDATE CASCADE ON DELETE RESTRICT	
) COMMENT "Цены на товары в зависимости от размера" ENGINE = InnoDB DEFAULT CHARSET = utf8;


-- Информация о медиафалах
CREATE TABLE media_types (
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL UNIQUE
) COMMENT "Типы медиафайлов" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE media (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор медиафайла",
	media_type_id TINYINT UNSIGNED NOT NULL 	COMMENT "Идентификатор типа медиафайла",
	file_path VARCHAR(255) NOT NULL				COMMENT "Путь к файлу",
	created_at DATETIME NOT NULL DEFAULT NOW() 	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи",
	
	CONSTRAINT media__media_type_id_fk 
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Медиафайлы" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE products_media (
	product_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор продукта",
	media_id INT UNSIGNED NOT NULL 				COMMENT "Идентификатор медафайла",
	created_at DATETIME NOT NULL DEFAULT NOW() 	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи",
	PRIMARY KEY(product_id, media_id) COMMENT "Составной первичный ключ по сочетанию товара и медиафайлов",
	
	CONSTRAINT products_media__product_id_fk 
		FOREIGN KEY (product_id) REFERENCES products(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT products_media__media_id_fk 
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Медиафайлы товаров" ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- Информация о категориях
CREATE TABLE categories (
	id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT "Идентификатор категории",
	name VARCHAR(255) NOT NULL 							COMMENT "Название категории",
	category_level TINYINT UNSIGNED NOT NULL DEFAULT 1 	COMMENT "Уровень категории",
	top_level_id TINYINT UNSIGNED NOT NULL DEFAULT 0 	COMMENT "Идентификатор категории - родителя"
) COMMENT "Категории товаров" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE products_categories (
	product_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор товара",
	category_id SMALLINT UNSIGNED NOT NULL 		COMMENT "Идентификатор категории",
	PRIMARY KEY(product_id, category_id) 		COMMENT "Составной первичный ключ по сочетанию товара и категории",
	
	CONSTRAINT products_categories__product_id_fk 
		FOREIGN KEY (product_id) REFERENCES products(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT products_categories__category_id_fk 
		FOREIGN KEY (category_id) REFERENCES categories(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Связь товаров и категорий" ENGINE = InnoDB DEFAULT CHARSET = utf8;


-- Информация о заказах пользователя
CREATE TABLE orders_status (
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Справочник - состояние заказ" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE orders_type (
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Справочник - тип заказа" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE shipping_company (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Компания перевозчик" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор заказа",
	user_id INT UNSIGNED NOT NULL 				COMMENT "Идентификатор пользователя",
	order_type_id TINYINT UNSIGNED NOT NULL 	COMMENT "Идентификатор типа заказа",
	shipping_company_id SMALLINT UNSIGNED NOT NULL COMMENT "Ссылка на компанию - перевозчик",
	current_status_id TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Идентификатор текущего статуса заказа",
	address_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор адреса доставки",
	total_cost MEDIUMINT UNSIGNED NOT NULL 		COMMENT "Общая стоимость заказа",
	check_url VARCHAR(255) 						COMMENT "Ссылка на счёт",
	check_detailed_url VARCHAR(255) 			COMMENT "Ссылка на детализированный счёт",
	track_number VARCHAR(255) 					COMMENT "Номер отслеживания посылки, которой отправлен заказ",
	created_at DATETIME NOT NULL DEFAULT NOW() 	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи",
	
	CONSTRAINT orders__user_id_fk 
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT orders__order_type_id_fk 
		FOREIGN KEY (order_type_id) REFERENCES orders_type(id)
			ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT orders__shipping_company_id_fk 
		FOREIGN KEY (shipping_company_id) REFERENCES shipping_company(id)
			ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT orders__current_status_id_fk 
		FOREIGN KEY (current_status_id) REFERENCES orders_status(id)
			ON UPDATE CASCADE ON DELETE RESTRICT,
	CONSTRAINT orders__address_id_fk 
		FOREIGN KEY (address_id) REFERENCES addresses(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Заказы" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE orders_status_history (
	order_id INT UNSIGNED NOT NULL 				COMMENT "Идентификатор заказа",
	order_status_id TINYINT UNSIGNED NOT NULL 	COMMENT "Идентификатор статуса",
	created_at DATETIME  NOT NULL DEFAULT NOW() COMMENT "Дата создания записи",
	
	CONSTRAINT orders_status_history__orders_id_fk 
		FOREIGN KEY (order_id) REFERENCES orders(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT orders_status_history__order_status_id_fk 
		FOREIGN KEY (order_status_id) REFERENCES orders_status(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "История изменений статусов заказов" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE orders_products (
	order_id INT UNSIGNED NOT NULL 				COMMENT "Идентификатор заказа",
	product_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор товара",
	size_id SMALLINT UNSIGNED NOT NULL 			COMMENT "Идентификатор размера",
	product_count SMALLINT UNSIGNED NOT NULL 	COMMENT "Количество товаров",
	product_shipped_count SMALLINT UNSIGNED NOT NULL COMMENT "Количество отгруженных товаров товаров",
	comment VARCHAR(255) 						COMMENT "Комментарий к заказу",
	PRIMARY KEY(order_id, product_id, size_id) 	COMMENT "Составной первичный ключ по заказу и товару",
	
	CONSTRAINT orders_products__orders_id_fk
		FOREIGN KEY (order_id) REFERENCES orders(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT orders_products__product_id_fk
		FOREIGN KEY (product_id) REFERENCES products(id)
			ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT orders_products__size_id_fk
		FOREIGN KEY (size_id) REFERENCES sizes(id)
			ON UPDATE CASCADE ON DELETE RESTRICT
) COMMENT "Связи товаров и заказов" ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- Информация о скидках
CREATE TABLE discounts (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор скидки",
	discount_type ENUM("perpetual", "in_period") COMMENT "Тип скидки",
	sale TINYINT UNSIGNED NOT NULL 				COMMENT "Величина скидки, %",
	start_at DATETIME 							COMMENT "Дата начала действия скидки",
	stop_at DATETIME 							COMMENT "Дата окончания действия скидки",
	created_at DATETIME NOT NULL DEFAULT NOW() 	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи"
) COMMENT "Скидки" ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE products_discounts (
	target_id INT UNSIGNED NOT NULL 			COMMENT "Идентификатор целевой сущности скидки",
	target_type ENUM("products", "categories") 	COMMENT "Таблица в которой храниться идентификатор целевой сущности скидки",
	discount_id SMALLINT UNSIGNED NOT NULL 		COMMENT "Идентификатор скидки",
	created_at DATETIME NOT NULL DEFAULT NOW() 	COMMENT "Дата создания записи",
	updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW() COMMENT "Дата изменения записи",
	
	CONSTRAINT products_discounts__discounts_id_fk 
		FOREIGN KEY (discount_id) REFERENCES discounts(id)
			ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Связи скидок и товаров" ENGINE = InnoDB DEFAULT CHARSET = utf8;


/*
 * ********* Блок характерных выборок *********
 */
-- Набор цен и размеров для данного товара
SELECT
	products.id AS `id`,
	products.name AS name,
	sizes.name AS `size`,
	prices.price AS price,
	prices.count_in_stock AS count_in_stock
FROM products
	JOIN sizes
		ON products.id = sizes.id
	JOIN prices
		ON products.id = prices.product_id
WHERE products.id = 1;

-- Схожие товары по артикулу
SELECT
	products.id AS product_id,
	products.name AS name,
	vendors_code.name AS vendor
FROM products
	JOIN vendors_code
		ON products.vendor_code_id = vendors_code.id
ORDER BY vendors_code.name

-- Список товаров в заказе
SELECT
	users.id AS user_id,
	CONCAT_WS(" ", users.name, users.patronymic, users.surname) AS `user`,
	orders.id AS order_id,
	products.id AS product_id,
	products.name AS name,
	sizes.name AS `size`,
	orders_products.product_count AS `count`,
	orders_products.product_shipped_count AS shipped_count,
	prices.price AS price_for_one,
	(SELECT prices.price * orders_products.product_shipped_count) AS prices_for_all,
	SUM(prices.price * orders_products.product_shipped_count) OVER(PARTITION BY orders.id) AS total_cost
FROM orders
	JOIN orders_products
		ON orders.id = orders_products.order_id
	JOIN products
		ON orders_products.product_id = products.id 
	JOIN prices
		ON orders_products.product_id = prices.product_id AND orders_products.size_id = prices.size_id
	JOIN sizes
		ON prices.size_id = sizes.id
	JOIN users
		ON orders.user_id = users.id;

-- Выборка товаров по производителю
SELECT
	produced_company.name AS company,
	products.name AS name
FROM products
	JOIN produced_company
		ON products.produced_by_id = produced_company.id
WHERE produced_company.name = "Friesen LLC"
ORDER BY name;
		
-- Выборка товаров по категории
SELECT
	categories.name AS category,
	products.name AS name
FROM products
	JOIN products_categories
		ON products.id = products_categories.product_id
	JOIN categories
		ON products_categories.category_id = categories.id
WHERE categories.name = "repellat"
ORDER BY name;

-- Выборка заказов отдельного пользователя
SELECT
	CONCAT_WS(" ", users.name, users.patronymic, users.surname) AS `user`,
	orders_information.*
FROM orders_information
	JOIN orders
		ON orders_information.order_id = orders.id AND orders.user_id = 1
	JOIN users
		ON orders.user_id = users.id;

/*
 * ********* Блок представлений *********
 */
-- Информация об адресах доставки пользователей
CREATE OR REPLACE VIEW user_delivery_address AS
	SELECT
		CONCAT_WS(" ", users.name, users.patronymic, users.surname) AS `user`,
		addresses.address AS address,
		CONCAT_WS(" ", addresses.name, addresses.patronymic, addresses.surname) AS `recipient_user`
	FROM users
		LEFT JOIN users_addresses
			ON users.id = users_addresses.user_id
		LEFT JOIN addresses
			ON users_addresses.address_id = addresses.id
	ORDER BY LEFT(users.name, 4);

SELECT * FROM user_delivery_address;

-- Информация о заказах
CREATE OR REPLACE VIEW orders_information AS
	SELECT
		orders.id AS order_id,
		orders_type.name AS `type`,
		orders.created_at AS created_at,
		DATE_ADD(orders.created_at, INTERVAL 3 DAY) AS payment_before,
		orders.total_cost AS total_cost,
		orders_status.name AS status,
		orders.check_url AS check_url,
		shipping_company.name AS shipping_company,
		orders.track_number AS track_number
	FROM orders
		JOIN orders_type
			ON orders.order_type_id = orders_type.id
		JOIN orders_status
			ON orders.current_status_id = orders_status.id
		JOIN shipping_company
			ON orders.shipping_company_id = shipping_company.id
	ORDER BY orders.user_id, orders.id;

SELECT * FROM orders_information;

-- Развёрнутая информация о заказе
CREATE OR REPLACE VIEW order_information_detailed AS
	SELECT
		orders.id AS orders_id,
		media.file_path AS file_path,
		products.name AS name,
		sizes.name AS `size`,
		vendors_code.name AS vendor,
		colors.name AS colors,
		orders_products.product_count AS `count`,
		orders_products.product_shipped_count AS shipped_count,
		prices.price AS price_for_one,
		(SELECT prices.price * orders_products.product_shipped_count) AS prices_for_all,
		orders_products.comment AS comment
	FROM orders
		JOIN orders_products
			ON orders.id = orders_products.order_id
		JOIN products
			ON orders_products.product_id = products.id 
		JOIN prices
			ON orders_products.product_id = prices.product_id AND orders_products.size_id = prices.size_id
		JOIN sizes
			ON prices.size_id = sizes.id
		JOIN vendors_code
			ON products.vendor_code_id = vendors_code.id
		JOIN colors
			ON products.color_id = colors.id
		JOIN products_media
			ON products.id = products_media.product_id
		JOIN media
			ON products_media.media_id = media.id;

SELECT * FROM order_information_detailed;
		
/*
 * ********* Блок хранимых процедур и триггеров *********
 */
-- Функции
DROP FUNCTION IF EXISTS is_row_exists;
DELIMITER //
CREATE FUNCTION is_row_exists (target_id INT UNSIGNED, target_type ENUM("products", "categories"))
RETURNS BOOLEAN READS SQL DATA
BEGIN
	DECLARE table_name VARCHAR(40);
	
	CASE target_type
		WHEN "products" THEN
			RETURN EXISTS(SELECT TRUE FROM products WHERE id = target_id);
		WHEN "categories" THEN
			RETURN EXISTS(SELECT TRUE FROM categories WHERE id = target_id);
		ELSE
			RETURN FALSE;
	END CASE;
END //
DELIMITER ;

-- Триггеры
-- Заполнение orders_status_history при обновлении статуса заказа
DROP TRIGGER IF EXISTS orders_status_update;
DELIMITER //
CREATE TRIGGER orders_status_update AFTER UPDATE ON orders
FOR EACH ROW
BEGIN
	IF NOT (NEW.current_status_id = OLD.current_status_id) THEN
		INSERT INTO orders_status_history (order_id, order_status_id, created_at)
					VALUES(NEW.id, OLD.current_status_id, NOW());
	END IF;
END //
DELIMITER ;

-- Проверка существования целевой строки в таблице при добавлении скидки
DROP TRIGGER IF EXISTS discounts_targets_validation;
DELIMITER //
CREATE TRIGGER discounts_targets_validation BEFORE INSERT ON products_discounts
FOR EACH ROW
BEGIN
	IF NOT is_row_exists(NEW.target_id, NEW.target_type) THEN 
		SIGNAL SQLSTATE "45000"
		SET MESSAGE_TEXT = "Error adding discount! Target table does not contain row id provided!";
	END IF;
END //
DELIMITER ;
