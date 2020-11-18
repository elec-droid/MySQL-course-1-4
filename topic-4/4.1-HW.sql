-- ТАБЛИЦА users
-- Корректировка столбцов created_at и updated_at
UPDATE users SET updated_at = (SELECT created_at) WHERE updated_at < created_at;


-- ТАБЛИЦА profiles
-- Название городов вынесены в отдельные таблицы
CREATE TABLE cites (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор города",
	city VARCHAR(130) NOT NULL UNIQUE COMMENT "Название города"
) COMMENT "Справочников городов";

INSERT IGNORE INTO cites (city) SELECT city FROM profiles;
UPDATE profiles SET city = NULL;
ALTER TABLE profiles RENAME COLUMN city TO city_id;
ALTER TABLE profiles MODIFY COLUMN city_id INT UNSIGNED;
SET @row_count = (SELECT COUNT(*) FROM cites);
UPDATE profiles SET city_id = FLOOR(1 + RAND() * (@row_count - 1));

-- Название стран вынесены в отдельные таблицы
CREATE TABLE countres (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор города",
	country VARCHAR(130) NOT NULL UNIQUE COMMENT "Название страны"
) COMMENT "Справочник стран";

INSERT IGNORE INTO countres (country) SELECT country FROM profiles;
UPDATE profiles SET country = NULL;
ALTER TABLE profiles RENAME COLUMN country TO country_id;
ALTER TABLE profiles MODIFY COLUMN country_id INT UNSIGNED;
SET @row_count = (SELECT COUNT(*) FROM countres);
UPDATE profiles SET country_id = FLOOR(1 + RAND() * (@row_count - 1));

-- Замена CHAR(1) на ENUM в столбце gender
ALTER TABLE profiles MODIFY COLUMN gender ENUM('M', 'F') NOT NULL;

-- Гармонизация столбцов created_at и updated_at относительно таблицы users
UPDATE profiles SET created_at = 
	(SELECT created_at FROM users WHERE users.id = user_id) WHERE created_at < (SELECT created_at FROM users WHERE users.id = user_id);
UPDATE profiles SET updated_at = (SELECT created_at) WHERE updated_at < created_at;


-- ТАБЛИЦА messages 
-- Гармонизация столбца created_at относительно таблицы users
UPDATE messages SET created_at =
	CASE
		WHEN created_at < (SELECT created_at FROM users WHERE users.id = from_user_id)
			THEN (SELECT created_at FROM users WHERE users.id = from_user_id)
		WHEN created_at < (SELECT created_at FROM users WHERE users.id = to_user_id)
			THEN (SELECT created_at FROM users WHERE users.id = to_user_id)
		ELSE (SELECT created_at)
	END

	
-- ТАБЛИЦА media_types
-- Удалены сроки created_at и updated_at. Данные столбцы неактуальны для справочника типов
ALTER TABLE media_types DROP COLUMN created_at;
ALTER TABLE media_types DROP COLUMN updated_at;

-- Изменение содержания типов
TRUNCATE media_types;
INSERT INTO media_types (name) VALUES ('photo'), ('video'), ('audio');


-- ТАБЛИЦА media
-- Гармонизация столбцов created_at и updated_at относительно таблицы users
UPDATE media SET created_at =
	CASE
		WHEN created_at < (SELECT created_at FROM users WHERE users.id = user_id)
			THEN (SELECT created_at FROM users WHERE users.id = user_id)
		ELSE (SELECT created_at)
	END

UPDATE media SET updated_at = (SELECT created_at) WHERE updated_at < created_at;

-- Корректировка size
UPDATE media SET size = FLOOR(1 + RAND() * 1000000) WHERE size < 5000;

-- Корректировка media_type_id
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);

-- Корректировка filename
DROP TABLE IF EXISTS extensions;
CREATE TEMPORARY TABLE extensions (id INT UNSIGNED AUTO_INCREMENT UNIQUE PRIMARY KEY, name VARCHAR(15));
INSERT INTO extensions (name) VALUES ('jpeg'), ('avi'), ('mp3');
UPDATE media SET filename = CONCAT(
	'https://drive.google.com/drive/vk/',
	filename,
	'.',
	(SELECT name FROM extensions WHERE extensions.id = media.media_type_id));

-- Добавление metadata
UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE users.id = user_id),
	'"}');


-- ТАБЛИЦА friendship_statuses
-- Удалены сроки created_at и updated_at. Данные столбцы неактуальны для справочника типов
ALTER TABLE friendship_statuses DROP COLUMN created_at;
ALTER TABLE friendship_statuses DROP COLUMN updated_at;

-- Изменение статусов дружбы
TRUNCATE friendship_statuses;
INSERT INTO friendship_statuses (name) VALUES ('requested'), ('confirmed'), ('rejected');


-- ТАБЛИЦА friendship
-- Удалён столбец requested_at (дублирование created_at)
ALTER TABLE friendship DROP COLUMN requested_at;

-- Корректировка status_id
UPDATE friendship SET status_id = FLOOR(1 + RAND() * 3);

-- Гармонизация столбца created_at относительно таблицы users
UPDATE friendship SET created_at =
	CASE
		WHEN created_at < (SELECT created_at FROM users WHERE users.id = user_id)
			THEN (SELECT created_at FROM users WHERE users.id = user_id)
		WHEN created_at < (SELECT created_at FROM users WHERE users.id = friend_id)
			THEN (SELECT created_at FROM users WHERE users.id = friend_id)
		ELSE (SELECT created_at)
	END

UPDATE friendship SET updated_at = (SELECT created_at) WHERE updated_at < created_at;
UPDATE friendship SET confirmed_at = (SELECT created_at) WHERE updated_at < created_at;


-- ТАБЛИЦА communities_users
-- Гармонизация столбца created_at относительно таблицы users
UPDATE communities_users SET created_at =
	CASE
		WHEN created_at < (SELECT created_at FROM users WHERE users.id = user_id)
			THEN (SELECT created_at FROM users WHERE users.id = user_id)
		WHEN created_at < (SELECT created_at FROM communities WHERE communities.id = community_id)
			THEN (SELECT created_at FROM communities WHERE communities.id = community_id)
		ELSE (SELECT created_at)
	END

-- ТАБЛИЦА communities
-- Корректировка столбца updated_at относительно
UPDATE communities SET updated_at = (SELECT created_at) WHERE updated_at < created_at;