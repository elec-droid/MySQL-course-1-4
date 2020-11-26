-- Урок № 6 Практическое задание по теме "Операторы, фильтрация, сортировка и ограничение. Агрегация данных." Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее.
-- 6.1 Создать и заполнить таблицы лайков и постов.
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор поста",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя, создавшего пост",
	from_user_id INT UNSIGNED COMMENT "Идентификатор пользователя при репосте",
	header VARCHAR(255) COMMENT "Заголовок поста",
	body TEXT NOT NULL COMMENT "Текст поста",
	is_only_top BOOLEAN DEFAULT FALSE COMMENT "Признак фиксации наверху ленты",
	is_public BOOLEAN DEFAULT TRUE COMMENT "Признак публикации",
	is_archived BOOLEAN DEFAULT FALSE COMMENT "Признак архивации",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания поста",
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT "Время обновления поста"
) COMMENT "Таблица постов";
-- колонки media_id и community_id исключены из таблице (можно было прикрепить только один медиафайл и к одному сообществу). Функционал реализуется через content_links

DROP TABLE IF EXISTS posts_likes;
CREATE TABLE likes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,
	content_id INT UNSIGNED NOT NULL,
	content_type_id INT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW()
) COMMENT "Таблица лайков";

-- Удалён столбец created_at - для типа не имеет смысла
DROP TABLE IF EXISTS content_types;
CREATE TABLE content_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Типы целевых таблиц";

DROP TABLE IF EXISTS posts_media;
CREATE TABLE content_links (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Уникальный идентификатор ссылки",
	user_id INT UNSIGNED NOT NULL COMMENT "Идентификатор пользователя - создателя ссылки",
	content_id INT UNSIGNED NOT NULL COMMENT "Идентификатор сущности, которая будет прикрепляться",
	content_type_id INT UNSIGNED NOT NULL COMMENT "Идентификатор типа сущности, которая будет прикрепляться",
	to_content_id INT UNSIGNED NOT NULL COMMENT "Идентификатор сущности, к которой будет прикрепляться контент",
	to_content_type_id INT UNSIGNED NOT NULL COMMENT "Идентификатор типа сущности, к которой будет прикрепляться контент",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания ссылки",
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() COMMENT "Время обновления ссылки"
) COMMENT "Таблица ссылок на контент";

INSERT INTO content_types (name) VALUES  ('messages'), ('users'), ('media'), ('posts'), ('communities');
INSERT INTO likes SELECT id, FLOOR(1 + (RAND() * 100)), FLOOR(1 + (RAND() * 100)), FLOOR(1 + (RAND() * 5)), CURRENT_TIMESTAMP FROM messages;
INSERT INTO posts SELECT id, FLOOR(1 + (RAND() * 100)), NULL, "Заголовок поста", "Тело поста со случайным текстом", FALSE, TRUE, FALSE, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM messages;


-- 6.2 Создать все необходимые внешние ключи и диаграмму отношений.

ALTER TABLE profiles DROP FOREIGN KEY profiles_country_id_fk;

-- Таблица profiles
ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE profiles 
	ADD CONSTRAINT profiles_city_id_fk
		FOREIGN KEY (city_id) REFERENCES cities(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE profiles 
	ADD CONSTRAINT profiles_country_id_fk
		FOREIGN KEY (country_id) REFERENCES countries(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;


-- Таблица posts
ALTER TABLE posts 
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE posts 
	ADD CONSTRAINT posts_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;


-- Таблица messages
ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE messages 
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;


-- Таблица media
ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE media
	ADD CONSTRAINT media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;


-- Таблица likes
ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE likes
	ADD CONSTRAINT likes_content_type_id_fk
		FOREIGN KEY (content_type_id) REFERENCES content_types(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;


-- Таблица friendship
ALTER TABLE friendship 
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE friendship 
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE friendship 
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;


-- Таблица content_links
ALTER TABLE content_links 
	ADD CONSTRAINT content_links_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE content_links 
	ADD CONSTRAINT content_links_content_type_id_fk
		FOREIGN KEY (to_content_type_id) REFERENCES content_types(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;
		
ALTER TABLE content_links 
	ADD CONSTRAINT content_links_to_content_type_id_fk
		FOREIGN KEY (to_content_type_id) REFERENCES content_types(id)
			ON UPDATE CASCADE ON DELETE RESTRICT;


-- Таблица communities_users
ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE ON DELETE CASCADE;
		
ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON UPDATE CASCADE ON DELETE CASCADE;		


-- Для content_id нельзя добавить внешний ключ, поскольку возможно обращение к разным таблицам


-- 6.3 Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- подсчёт лайков провёл по всему контенту, связанному с пользователем
SELECT
	CASE 
		WHEN (SELECT COUNT(*) FROM likes WHERE (SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) = 'F') 
				> 
			 (SELECT COUNT(*) FROM likes WHERE (SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) = 'M')
		THEN "Женщины поставили больше лайков"
		ELSE "Мужчины поставили больше лайков"
	END AS result;

-- 6.4 Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).
-- подсчёт лайков провёл только по пользователям

SELECT 
	SUM(likes_count) 
FROM (
	SELECT COUNT(id) AS likes_count, user_id
	FROM likes
	WHERE content_type_id = 2
	GROUP BY user_id
	ORDER BY (SELECT birthday FROM profiles WHERE likes.user_id = profiles.user_id) DESC LIMIT 10
) AS temporary_sum;

-- 6.5 Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети (критерии активности необходимо определить самостоятельно).
-- Критерии активности: количество постов

SELECT COUNT(id) AS posts_count, user_id
FROM posts
GROUP BY user_id
ORDER BY posts_count, user_id LIMIT 10