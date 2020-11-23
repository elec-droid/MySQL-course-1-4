-- 1.1 Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
UPDATE users SET created_at = NOW(); -- updated_at обновится автоматически

-- 1.2 
/* Таблица users была неудачно спроектирована. Записи created_at и updated_at были 
 * заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
 */
DROP TABLE IF EXISTS time_created;
CREATE TEMPORARY TABLE time_created (created_at DATETIME, updated_at DATETIME);
INSERT INTO time_created SELECT STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i') FROM users;
UPDATE users SET created_at = NULL, updated_at = NULL;
ALTER TABLE users 
	MODIFY COLUMN created_at DATETIME,
	MODIFY COLUMN updated_at DATETIME;
UPDATE users SET created_at = (SELECT created_at FROM time_created);
UPDATE users SET updated_at = (SELECT updated_at FROM time_created);
DROP TABLE time_created;

-- 1.3 
/* В таблице складских запасов storehouses_products в поле value могут встречаться самые 
 * разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
 * Необходимо отсортировать записи таким образом, чтобы они выводились в порядке
 * увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех
 */
SELECT * FROM storehouses_products ORDER BY CASE WHEN value = 0 THEN 4294967295 ELSE value END

-- 1.4
/* (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и
 * мае. Месяцы заданы в виде списка английских названий (may, august)
 */


-- 1.5
/* (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM
 * catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
 */
SELECT * FROM media WHERE media_type_id IN (3, 1, 2) ORDER BY
CASE
    WHEN media_type_id = 3 THEN 0
    WHEN media_type_id = 1 THEN 1
    WHEN media_type_id = 2 THEN 2
END;

-- 2.1 Подсчитайте средний возраст пользователей в таблице users.
SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday, NOW()))) FROM profiles;

-- 2.2 
/* Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.
 */
SELECT 
	DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday, 6, 10))) AS day_of_year, 
	COUNT(*) AS count_birthday FROM profiles
GROUP BY 
    day_of_year
ORDER BY
	count_birthday DESC;

-- 2.3 (по желанию) Подсчитайте произведение чисел в столбце таблицы.
SELECT FLOOR(EXP(SUM(LOG(id)))) FROM media_types;