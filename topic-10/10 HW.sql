/* 10.1
 * БД vk. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
 */
-- Предлагаю построить индексы по следующим столбцам
CREATE INDEX users_first_last_name_idx ON users(first_name, last_name);
CREATE UNIQUE INDEX users_email_idx ON users(email);
CREATE UNIQUE INDEX users_phone_idx ON users(phone);
CREATE INDEX likes_content_id_idx ON likes(content_id);

-- Также, на мой взгляд, следовало бы построить индексы столбцов 
-- 		profiles -> city_id, country_id; 
-- 		posts -> user_id, from_users_id;
-- и т.п. но данные индексы уже построены автоматически из-за того что данные столбцы являются либо
-- первичными либо внешними ключами.


/* 10.2
 * БД vk. Задание на оконные функции. Построить запрос, который будет выводить следующие столбцы:
 * - имя группы;
 * - среднее количество пользователей в группах;
 * - самый молодой пользователь в группе;
 * - самый старший пользователь в группе;
 * - общее количество пользователей в группе;
 * - всего пользователей в системе;
 * - отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100.
 */

-- Добавление записей в таблицу для более корректной проверки запроса
INSERT INTO communities_users (user_id, community_id) VALUES
	(10, 2), (11, 2),
	(12, 3), (14, 3), (15, 3),
	(16, 4), (17, 4), (18, 4), (19, 4),
	(20, 5), (21, 5), (22, 5), (23, 5), (24, 5),
	(25, 6), (27, 6), (28, 6), (29, 6), (30, 6), (31, 6),
	(32, 7), (33, 7), (34, 7), (35, 7), (36, 7), (38, 7), (39, 7),
	(40, 8), (41, 8), (42, 8), (43, 8), (44, 8), (45, 8), (46, 8), (47, 8),
	(48, 9), (50, 9), (51, 9), (52, 9), (53, 9), (54, 9), (55, 9), (56, 9), (57, 9),
	(58, 10), (59, 10), (61, 10), (62, 10), (63, 10), (64, 10), (65, 10), (66, 10), (67, 10), (68, 10);

SELECT DISTINCT c.name AS group_name,
	ROUND(COUNT(cu.user_id) 	 OVER()
		/ MAX(cu.community_id) OVER()
	) AS avg_in_group,
	FIRST_VALUE(p.birthday) OVER(PARTITION BY c.id ORDER BY p.birthday DESC) AS youngest,
	FIRST_VALUE(p.birthday) OVER(PARTITION BY c.id ORDER BY p.birthday) AS oldest,
	COUNT(cu.user_id) 		OVER(PARTITION BY c.id) AS total_in_group,
	FIRST_VALUE(p.user_id) 	OVER(ORDER BY p.user_id DESC) AS total_users,
	ROUND(COUNT(cu.user_id) OVER(PARTITION BY c.id)
		/ COUNT(p.user_id)  OVER() * 100, 1
	) AS "%%"
FROM profiles AS p
	LEFT JOIN communities_users AS cu
		ON cu.user_id = p.user_id
	LEFT JOIN communities AS c
		ON cu.community_id = c.id;