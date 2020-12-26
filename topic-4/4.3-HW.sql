-- Реализация постов
CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор поста",
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, создавшего пост",
	from_user_id INT UNSIGNED COMMENT "Ссылка на пользователя при репосте",
	body TEXT NOT NULL COMMENT "Текст поста",
	is_only_top BOOLEAN COMMENT "Признак фиксации наверху ленты",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания поста",
	updated_at DATETIME DEFAULT NOW() COMMENT "Время обновления поста"
) COMMENT "Таблица постов";

-- Реализация возможности прикрепить медиафайл
CREATE TABLE posts_media (
	post_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пост",
	media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на медиафайл",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания ссылки",
	updated_at DATETIME DEFAULT NOW() COMMENT "Время обновления ссылки",
	PRIMARY KEY (post_id, media_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица связи лайков и постов";

-- Реализация лайков
CREATE TABLE posts_likes (
	post_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пост",
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя оставившего лайк",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания лайка",
	PRIMARY KEY (post_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица связи лайков и постов";