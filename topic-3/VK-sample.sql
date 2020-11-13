#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quis', '1937-08-12 07:49:45', '2016-02-22 00:35:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '1927-04-23 13:45:15', '1945-06-26 11:33:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'est', '1935-04-17 19:39:38', '2019-08-26 19:59:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'mollitia', '2009-03-30 01:40:18', '1922-05-21 05:22:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'natus', '1966-12-28 14:19:24', '2014-08-16 10:42:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'fugiat', '1986-01-28 20:00:36', '1985-10-02 16:04:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'quidem', '1994-06-09 11:49:59', '1977-11-11 19:59:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'perferendis', '1929-05-13 10:43:15', '1951-06-02 01:24:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'fuga', '1990-04-21 14:14:08', '1997-02-04 02:18:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'corporis', '1935-12-11 00:56:36', '1950-07-19 08:23:14');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2001-04-05 23:17:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '1944-09-10 06:42:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2000-10-04 21:50:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '1942-02-25 03:47:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '1957-04-04 15:02:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '1949-12-30 18:00:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '1926-06-25 08:10:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '1982-03-02 17:31:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '1962-08-23 08:01:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '1972-07-01 19:59:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1951-02-10 15:03:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2018-11-16 11:55:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2006-10-21 11:10:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2007-06-06 15:38:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2009-07-12 08:58:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '1993-12-31 09:11:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '1934-07-24 06:01:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '1963-10-27 15:02:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '1999-06-06 18:08:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '1924-07-21 12:44:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1986-01-06 02:08:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '1931-08-14 14:09:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '1920-12-01 03:05:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '1940-02-10 23:43:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '2012-08-12 16:25:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '1960-09-25 00:52:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '1921-01-20 21:32:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '1931-11-21 12:36:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '1936-01-11 04:35:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '1976-11-11 17:32:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1990-05-02 15:26:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '1997-05-20 15:32:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '1976-11-29 02:54:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '1966-12-15 16:46:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '1977-12-10 04:16:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '1943-08-01 00:12:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '1962-05-25 18:10:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '1989-07-02 06:07:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '1961-03-15 05:29:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2012-01-17 23:53:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1986-08-29 10:42:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '1963-12-19 18:27:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '1989-05-31 19:34:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '1951-05-03 06:39:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '1984-11-09 00:29:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '1982-12-03 18:22:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '1959-10-09 07:28:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '1945-06-01 16:18:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '1922-09-04 07:45:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '1933-06-23 07:44:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2004-11-16 22:23:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '2012-03-29 16:24:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '1991-08-17 16:50:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2004-10-07 12:48:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '1934-09-24 09:46:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2018-07-11 04:19:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '1922-08-25 23:35:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '1964-08-08 07:35:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '1997-10-19 00:37:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '1975-03-21 16:56:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1954-05-24 00:52:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '1958-06-23 00:49:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '1971-06-29 13:06:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '1924-08-24 01:56:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '1934-04-30 10:22:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '2010-08-22 23:23:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '1964-02-29 20:52:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '1926-04-22 17:40:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '1946-04-12 07:09:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '1983-05-19 15:38:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2014-10-04 08:39:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '1927-07-29 18:18:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2004-08-01 04:49:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2020-04-16 17:50:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '1976-06-01 15:11:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '1968-12-15 07:14:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2002-07-26 14:10:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '1936-01-24 02:41:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '1933-07-31 02:50:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '1929-12-31 04:59:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2008-05-15 10:25:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '2018-05-19 21:22:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2020-07-09 14:19:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '1935-06-23 05:13:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '1936-05-22 04:29:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '1993-05-02 16:53:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '1925-02-23 03:38:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '1958-08-01 19:22:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2013-09-27 17:13:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2010-10-02 07:50:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1970-01-25 14:19:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '1943-06-12 19:33:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '1971-11-06 16:39:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '1954-04-02 22:46:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '1987-05-11 10:57:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '1984-06-27 09:49:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '1994-10-05 11:44:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '1934-06-19 14:25:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '1957-12-13 05:52:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '1969-03-13 01:28:38');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 21, 1, '1971-09-29 19:10:59', '1965-09-27 21:35:14', '1960-10-26 05:21:20', '2006-08-21 06:47:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 42, 2, '2018-11-15 09:58:36', '1990-08-26 16:49:47', '2017-02-17 18:08:31', '1996-05-04 10:03:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 25, 3, '1968-05-31 21:10:27', '1983-05-23 17:53:57', '1926-03-07 20:46:29', '2001-06-05 17:47:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 80, 4, '1930-07-19 04:18:58', '2001-08-03 06:12:49', '2008-09-23 11:16:44', '1996-06-05 04:13:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 17, 1, '1966-10-02 07:04:25', '1922-02-06 02:56:48', '1944-01-24 08:48:15', '2011-05-14 23:31:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 78, 2, '2004-11-26 01:07:41', '1946-05-14 22:45:55', '1944-11-18 07:52:52', '2011-05-27 19:22:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 31, 3, '1953-09-25 19:45:48', '2012-10-18 05:41:48', '2020-05-16 10:44:55', '2001-01-13 12:56:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 99, 4, '1968-07-13 06:38:59', '1990-01-26 15:06:24', '2010-02-27 15:42:54', '1991-07-13 12:52:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 84, 1, '1930-10-13 00:03:28', '1993-02-11 10:11:03', '1993-03-11 10:34:58', '2002-01-16 05:38:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 55, 2, '1925-03-08 13:29:27', '1974-06-15 16:35:26', '1974-09-26 10:27:17', '2020-02-14 17:05:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 3, '1999-11-16 10:21:35', '1925-12-19 23:27:33', '2001-11-10 05:27:15', '2016-07-31 10:23:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 22, 4, '1985-02-14 18:17:25', '2013-10-20 11:06:06', '1988-04-29 20:19:37', '2009-05-19 02:40:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 100, 1, '1958-07-08 09:00:05', '1926-06-28 09:37:15', '1927-03-08 08:01:54', '2005-11-14 00:14:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 91, 2, '1990-03-01 08:47:51', '2015-05-05 10:24:05', '1946-05-14 14:26:46', '2004-02-24 22:47:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 8, 3, '2011-03-19 09:42:36', '1971-12-25 18:59:04', '1965-06-07 02:55:38', '2016-02-22 23:21:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 14, 4, '1947-07-17 00:04:04', '1942-11-21 14:52:54', '1984-11-28 18:02:28', '2009-07-14 09:17:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 49, 1, '2011-07-25 15:34:32', '2019-10-06 01:53:26', '1992-02-12 17:09:51', '1998-01-23 12:43:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 60, 2, '1977-11-15 01:19:09', '1972-09-06 01:32:13', '2011-02-19 16:49:55', '2018-07-02 05:47:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 95, 3, '2016-08-10 01:58:30', '1937-05-10 13:41:49', '1921-11-14 04:30:05', '1998-04-23 19:41:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 30, 4, '1956-03-14 10:13:25', '1966-12-23 05:45:12', '1963-12-17 06:16:31', '1996-03-19 09:49:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 90, 1, '1966-10-19 09:07:26', '1999-08-16 01:57:36', '1953-10-02 05:25:48', '2019-09-20 16:26:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 70, 2, '1963-07-14 17:01:18', '1965-05-02 14:02:48', '1932-05-26 06:44:06', '1998-03-26 07:36:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 27, 3, '2013-03-06 00:43:53', '1933-07-21 18:59:42', '1973-08-17 03:21:27', '1991-11-25 11:34:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 44, 4, '1935-12-19 23:12:54', '2014-03-28 18:19:28', '1964-10-07 07:35:46', '1999-05-11 21:32:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 20, 1, '1993-09-12 10:29:41', '1969-07-24 06:41:53', '1985-08-24 17:23:28', '1995-09-20 04:39:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 45, 2, '1928-06-01 21:20:43', '1991-06-05 20:01:09', '1966-04-08 14:29:22', '2007-03-31 07:05:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 38, 3, '1948-07-28 04:21:16', '1954-10-29 10:38:49', '1921-03-12 16:30:43', '1995-11-10 02:06:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 41, 4, '1936-10-19 03:58:53', '1998-07-18 16:11:58', '1927-12-13 06:56:02', '2017-10-24 02:30:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 6, 1, '2015-08-17 16:31:57', '1957-05-23 21:26:24', '1939-07-31 06:00:45', '1998-11-07 19:00:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 63, 2, '2006-09-22 10:02:50', '2009-11-15 23:12:40', '1940-07-02 02:19:49', '2018-10-03 05:12:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 93, 3, '1973-08-19 12:16:56', '1939-07-18 05:04:49', '1965-04-02 00:53:42', '2007-05-29 00:20:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 29, 4, '2003-05-28 17:58:51', '1940-10-01 06:27:17', '1972-02-17 03:59:09', '1990-11-25 02:35:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 13, 1, '1985-09-10 16:22:27', '1984-05-24 13:35:11', '2015-01-15 21:47:01', '2007-11-30 05:22:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 1, 2, '2014-03-20 17:33:36', '2011-08-16 13:34:08', '1986-01-10 23:22:30', '2016-12-14 08:43:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 48, 3, '1969-06-11 10:56:18', '2003-03-16 13:55:27', '1959-11-23 05:20:15', '1991-07-05 07:37:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 96, 4, '1992-08-02 10:13:29', '1931-12-04 15:49:39', '2015-07-01 22:53:12', '2006-12-18 10:02:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 77, 1, '1990-01-16 05:08:03', '1942-06-29 14:07:09', '1961-06-28 09:31:00', '2008-05-30 07:12:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 92, 2, '1927-11-01 09:58:50', '1964-01-04 00:43:33', '1939-07-23 22:55:58', '2008-01-13 23:24:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 71, 3, '1959-04-13 22:35:36', '2006-04-24 04:40:57', '1945-07-26 22:03:19', '2009-09-19 06:42:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 32, 4, '1972-03-15 16:35:39', '1968-03-08 21:24:10', '1939-09-14 03:57:58', '1991-07-22 22:21:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 85, 1, '1957-05-08 04:07:07', '1936-11-12 12:48:53', '1943-06-09 09:58:45', '2007-08-09 19:58:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 61, 2, '1993-08-16 18:21:34', '1924-07-09 18:15:37', '2007-08-28 15:03:57', '2020-10-30 18:14:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 23, 3, '1944-06-10 02:30:56', '1974-08-04 23:37:35', '2000-04-14 00:39:04', '1990-12-06 19:14:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 67, 4, '1934-04-29 19:08:38', '1974-04-08 16:05:13', '1931-01-16 17:22:15', '2003-03-29 12:25:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 69, 1, '1958-06-21 01:22:52', '2012-03-11 16:19:11', '1938-09-29 08:51:05', '2005-01-06 21:34:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 39, 2, '1981-04-21 16:29:13', '1942-07-26 04:29:49', '2000-01-23 09:18:41', '2007-08-13 04:12:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 82, 3, '2003-08-22 08:58:53', '1938-06-01 03:53:39', '2014-10-15 19:59:04', '2008-06-08 10:39:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 37, 4, '1990-05-29 15:17:28', '2002-12-26 23:42:03', '1960-12-28 13:38:04', '1996-11-27 21:10:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 4, 1, '1976-04-02 18:41:02', '1997-04-11 00:04:26', '1974-01-28 01:44:01', '2003-02-18 03:21:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 53, 2, '2007-09-30 07:48:23', '2007-05-02 07:32:03', '1927-08-29 22:09:41', '2005-11-19 10:27:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 52, 3, '1943-11-09 19:30:32', '1927-04-21 17:27:57', '1959-11-23 13:51:06', '2004-01-05 16:03:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 68, 4, '1998-05-25 22:13:27', '1982-04-06 08:51:39', '2002-04-13 10:01:26', '1992-04-19 12:16:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 5, 1, '1952-01-23 16:09:21', '1940-03-27 10:03:23', '2012-12-03 03:58:06', '2007-12-04 12:53:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 47, 2, '1960-10-10 20:01:41', '1974-11-05 15:49:52', '1973-06-25 00:42:33', '1994-07-09 04:30:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 33, 3, '2017-12-27 20:02:54', '1933-10-05 02:45:57', '1944-11-25 18:01:51', '2003-09-25 06:56:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 72, 4, '1932-06-10 23:32:20', '2009-03-24 15:54:06', '1953-06-10 12:06:33', '1994-07-02 08:26:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 1, '1962-07-10 21:31:16', '1981-01-15 00:10:24', '1948-06-26 15:36:01', '2003-03-04 01:49:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 59, 2, '1923-01-18 11:52:18', '1976-07-09 19:29:49', '1996-01-10 14:22:52', '2002-01-24 16:04:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 65, 3, '1970-09-28 10:53:49', '1981-09-13 03:05:09', '2004-12-17 13:25:58', '2007-03-20 10:24:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 2, 4, '1948-06-25 11:01:54', '1994-04-19 02:31:23', '2002-02-08 16:23:17', '2016-03-23 09:52:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 46, 1, '2003-06-24 16:46:54', '2016-04-29 08:12:28', '2006-04-28 12:44:47', '2012-10-22 05:48:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 75, 2, '1922-05-21 05:32:56', '1972-04-19 04:54:59', '1928-10-04 08:45:08', '1991-12-20 20:08:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 24, 3, '1957-10-07 00:07:27', '1921-05-14 21:38:31', '1992-07-26 01:03:08', '1993-05-17 03:23:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 35, 4, '1925-03-16 16:01:22', '2012-09-06 22:25:11', '2012-11-22 15:18:34', '1997-09-21 10:23:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 19, 1, '1976-04-19 03:05:24', '1954-01-29 21:27:07', '1946-03-05 10:58:05', '1998-07-09 08:19:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 26, 2, '2006-10-25 13:24:07', '1971-08-25 05:31:51', '1924-06-29 06:26:27', '2001-04-08 19:37:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 10, 3, '1960-12-06 02:49:22', '1943-03-30 09:02:22', '1924-05-18 08:14:08', '2011-09-09 00:44:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 74, 4, '1940-08-14 17:00:38', '1932-09-07 02:39:09', '1943-09-26 05:22:26', '2010-08-04 16:16:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 66, 1, '2003-04-06 11:00:17', '1963-10-18 19:43:53', '1961-05-27 13:58:21', '2004-06-02 19:34:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 56, 2, '1970-02-02 23:52:21', '2012-02-01 14:01:49', '1970-07-04 07:34:42', '2003-11-02 06:11:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 58, 3, '1929-11-15 03:19:42', '1927-12-17 16:26:38', '1997-04-30 23:18:15', '2004-07-18 09:15:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 98, 4, '2015-03-30 21:12:25', '1976-01-05 18:20:16', '1952-08-17 14:23:18', '1992-01-25 21:32:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 94, 1, '1922-09-11 20:59:56', '1996-12-19 10:33:21', '1933-12-28 15:59:21', '1994-09-04 06:03:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 40, 2, '1971-07-11 02:10:37', '1943-12-10 19:26:39', '1992-06-21 12:56:50', '2002-09-01 11:49:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 50, 3, '1958-03-23 22:36:10', '2016-01-08 12:12:31', '1943-01-24 16:57:14', '1993-05-22 10:08:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 4, '1959-10-30 06:46:16', '1991-09-16 19:25:54', '1935-10-16 07:33:44', '2012-05-30 07:10:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 9, 1, '2016-02-03 19:40:34', '2001-09-02 00:47:23', '1927-06-09 00:31:31', '2020-01-06 23:25:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 64, 2, '1925-09-18 23:52:34', '1967-08-17 11:21:10', '1956-09-02 23:35:05', '1998-09-11 03:31:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 28, 3, '1966-12-23 00:15:09', '1995-07-10 20:11:30', '2007-09-25 11:28:22', '1994-10-25 09:03:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 51, 4, '2001-09-09 23:54:08', '1980-01-29 11:29:53', '1994-10-15 04:57:51', '1991-04-27 09:20:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 79, 1, '1927-10-30 12:38:30', '1970-03-13 19:26:22', '2017-03-09 18:23:07', '1994-01-03 16:48:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 34, 2, '1989-07-20 01:51:03', '2008-11-02 15:33:36', '2009-07-13 10:34:00', '2018-12-13 03:56:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 89, 3, '1959-06-21 04:26:31', '1984-04-29 09:17:49', '2003-07-14 21:57:02', '2004-09-30 13:50:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 97, 4, '2015-12-22 18:30:47', '1969-09-09 02:59:28', '1938-09-03 20:39:30', '2018-08-01 12:42:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 87, 1, '1989-05-02 18:07:32', '2013-05-08 09:57:48', '1966-06-21 09:31:29', '2017-07-14 17:29:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 62, 2, '1931-09-08 16:23:49', '1932-03-03 17:47:41', '1964-07-18 11:35:11', '2014-02-11 06:32:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 81, 3, '1921-10-04 13:54:07', '2011-08-25 17:36:52', '2019-02-08 03:21:47', '2015-05-17 23:41:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 36, 4, '1989-09-28 08:19:41', '1960-01-24 07:16:09', '1992-11-28 10:58:34', '2012-01-20 23:23:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 43, 1, '2004-10-15 05:39:58', '1952-09-27 08:58:27', '1952-12-22 07:25:25', '1999-04-29 10:41:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 16, 2, '1970-06-13 11:37:26', '1923-05-18 08:31:05', '1930-03-16 17:34:41', '2005-11-24 10:40:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 73, 3, '1950-04-13 03:17:30', '1934-04-06 02:00:46', '1969-09-30 12:43:33', '2001-06-18 00:31:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 18, 4, '1951-11-01 14:49:27', '1978-12-15 17:42:28', '1929-10-04 17:24:32', '2016-01-16 11:53:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 86, 1, '1934-06-21 17:14:48', '1931-07-10 22:18:48', '1987-01-12 21:23:17', '2006-01-10 03:22:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 15, 2, '1992-08-06 03:54:48', '1997-12-09 18:50:46', '1922-03-13 21:38:21', '2001-09-03 00:13:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 83, 3, '1949-11-29 10:55:37', '2009-04-05 12:19:14', '1980-12-07 03:06:07', '2013-01-16 23:33:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 7, 4, '1961-10-03 01:55:04', '1961-12-01 14:11:26', '1968-08-07 09:59:50', '2017-07-07 06:32:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 3, 1, '1949-03-06 15:32:58', '1921-01-14 20:44:03', '1973-12-24 11:40:19', '2004-07-18 07:19:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 54, 2, '1973-02-23 11:25:05', '2000-06-29 20:15:19', '1959-03-07 14:40:54', '2007-05-03 06:41:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 12, 3, '1960-05-04 20:45:41', '1969-11-23 08:58:32', '1963-06-30 09:53:30', '1999-08-22 18:39:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 88, 4, '1930-06-23 20:25:58', '1972-03-04 12:08:27', '1951-07-08 03:37:46', '2011-05-16 06:10:40');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'refusal_of_friendship', '1994-12-08 00:00:00', '1975-01-31 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'friend_invitation', '1982-03-10 00:00:00', '1996-04-20 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'friends', '1988-01-24 00:00:00', '1991-12-04 00:00:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'сlose_friends', '2001-06-16 00:00:00', '1997-11-27 00:00:00');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'quia', 1801, NULL, 1, '2004-01-24 23:41:16', '1927-02-24 07:05:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'qui', 7573, NULL, 2, '1971-08-30 12:42:54', '1929-11-07 09:36:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'mollitia', 3277, NULL, 3, '1976-07-05 00:20:18', '1923-04-15 16:13:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'sapiente', 8212, NULL, 4, '1943-07-26 05:35:59', '1966-08-11 00:19:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'ut', 7814, NULL, 1, '1963-02-02 19:37:37', '2014-08-25 18:50:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'quaerat', 8663, NULL, 2, '1996-12-05 19:42:36', '1945-10-13 00:13:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'et', 2273, NULL, 3, '1933-11-14 17:03:25', '1970-09-17 18:42:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'odio', 4593, NULL, 4, '1967-02-26 20:50:15', '1972-01-16 09:54:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'beatae', 8916, NULL, 1, '1986-10-08 23:35:37', '1959-05-29 19:58:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'ipsa', 10216, NULL, 2, '1973-10-24 20:49:38', '1927-09-07 14:53:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'quia', 4117, NULL, 3, '1977-08-12 02:55:20', '1931-06-08 10:49:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'qui', 7510, NULL, 4, '2016-06-15 22:07:51', '1955-06-23 23:11:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'consequuntur', 8622, NULL, 1, '1936-08-24 14:53:35', '2008-06-05 08:42:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'nulla', 8810, NULL, 2, '2015-02-25 14:54:24', '2004-10-18 01:12:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'dolorem', 3694, NULL, 3, '1958-02-26 19:49:22', '1960-07-12 07:33:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'sunt', 4809, NULL, 4, '1989-01-24 22:50:08', '1998-03-12 12:21:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'autem', 6201, NULL, 1, '2012-06-17 01:43:13', '1971-06-28 08:54:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'eius', 7315, NULL, 2, '1989-05-01 11:12:39', '1990-05-03 17:42:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'est', 5007, NULL, 3, '1958-02-19 07:20:34', '1999-12-18 23:02:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'eligendi', 3274, NULL, 4, '2013-05-04 07:44:13', '1987-05-11 06:19:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'nesciunt', 5007, NULL, 1, '1991-07-17 10:39:53', '1939-03-31 11:39:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'numquam', 4021, NULL, 2, '1980-10-17 07:20:32', '1997-02-08 21:59:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'distinctio', 4809, NULL, 3, '1983-08-02 09:47:17', '1950-08-15 18:57:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'qui', 3599, NULL, 4, '2002-01-11 15:38:48', '1952-05-08 10:54:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'fugiat', 6046, NULL, 1, '1994-03-22 09:42:28', '1983-02-10 03:03:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'recusandae', 6140, NULL, 2, '2015-07-25 01:41:32', '1958-06-30 07:36:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'a', 5851, NULL, 3, '2006-09-16 03:05:40', '1924-06-16 15:25:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'repudiandae', 6058, NULL, 4, '1922-07-28 23:52:05', '1977-01-28 11:00:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'qui', 4846, NULL, 1, '2004-09-11 14:45:06', '2000-12-13 15:44:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'impedit', 8993, NULL, 2, '2017-11-01 17:42:14', '1932-03-14 01:40:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'voluptatem', 8145, NULL, 3, '2018-06-05 00:06:43', '1979-05-16 19:13:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'minus', 5143, NULL, 4, '1957-05-20 10:29:25', '2020-09-06 16:42:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'quis', 3170, NULL, 1, '1973-12-27 14:18:15', '1959-05-17 15:55:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'pariatur', 2001, NULL, 2, '1923-03-22 03:57:40', '2009-10-06 07:23:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'doloribus', 5563, NULL, 3, '2014-10-28 06:50:34', '1932-07-27 07:33:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'aliquam', 7679, NULL, 4, '1973-03-12 07:32:21', '1995-11-26 16:27:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'et', 6002, NULL, 1, '1973-10-24 02:30:09', '1983-07-16 16:21:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'nihil', 6927, NULL, 2, '1925-06-26 00:02:06', '2011-03-04 12:33:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'assumenda', 4997, NULL, 3, '2003-07-30 00:22:51', '1937-12-02 16:32:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'quis', 1342, NULL, 4, '1976-03-02 01:45:18', '1923-05-27 06:33:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'et', 5102, NULL, 1, '1938-09-05 19:05:16', '1958-12-22 04:53:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'ullam', 1878, NULL, 2, '1958-11-25 00:01:13', '2005-12-07 03:32:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'eligendi', 1883, NULL, 3, '1957-01-16 12:10:52', '1934-08-14 07:56:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'harum', 8289, NULL, 4, '1942-07-23 14:35:45', '1943-03-12 17:57:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'quia', 3640, NULL, 1, '1952-09-02 06:49:12', '1926-12-14 23:22:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'aliquid', 5126, NULL, 2, '1966-11-22 03:47:25', '1954-04-11 02:04:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'hic', 7980, NULL, 3, '1934-03-03 10:41:31', '2014-04-11 02:48:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'vitae', 7686, NULL, 4, '2016-07-18 08:56:49', '1984-11-08 21:13:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'debitis', 3495, NULL, 1, '1993-10-13 13:15:47', '1943-10-02 19:12:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'quis', 1962, NULL, 2, '2000-06-30 11:46:03', '1986-03-01 10:52:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'non', 3592, NULL, 3, '1960-06-19 16:35:17', '1964-08-28 06:42:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'perspiciatis', 5465, NULL, 4, '1975-03-22 08:07:16', '2010-08-03 20:32:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'vel', 7426, NULL, 1, '1985-11-15 00:11:12', '1988-12-02 20:33:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'est', 9909, NULL, 2, '2010-02-27 23:54:55', '1948-05-11 14:40:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'qui', 8013, NULL, 3, '1933-12-05 15:51:18', '1976-01-05 22:08:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'et', 1082, NULL, 4, '1995-01-05 23:05:20', '2001-03-16 08:33:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'doloribus', 7928, NULL, 1, '1932-12-27 11:18:22', '2008-07-09 10:44:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'esse', 1507, NULL, 2, '1967-09-05 19:34:48', '1968-08-03 08:09:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'tenetur', 4200, NULL, 3, '2019-08-10 17:50:39', '1997-08-10 18:37:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'quia', 7864, NULL, 4, '1950-03-01 21:25:07', '1942-06-26 23:53:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'libero', 9970, NULL, 1, '1939-03-12 01:17:52', '2006-08-08 00:40:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'architecto', 4955, NULL, 2, '1976-06-24 05:51:05', '1932-02-18 20:24:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'dolore', 4560, NULL, 3, '1986-01-19 16:03:46', '1987-05-31 06:37:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'delectus', 6529, NULL, 4, '1940-06-02 13:35:43', '1952-12-27 23:30:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'reiciendis', 7886, NULL, 1, '1947-12-18 21:50:39', '1956-01-17 14:56:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'unde', 2316, NULL, 2, '2013-02-06 09:57:35', '1952-09-02 04:43:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'inventore', 6848, NULL, 3, '1954-02-22 10:11:34', '1987-08-26 12:42:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'autem', 1153, NULL, 4, '1970-06-27 04:11:30', '1922-01-25 11:58:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'natus', 8970, NULL, 1, '1963-11-17 06:54:01', '1961-11-01 02:41:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'molestias', 7555, NULL, 2, '2006-06-20 01:00:32', '1921-09-10 17:30:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'ex', 1770, NULL, 3, '1980-04-29 20:55:23', '1922-10-12 04:51:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'dolorem', 10116, NULL, 4, '1974-05-06 18:42:08', '1929-12-25 15:52:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'et', 6854, NULL, 1, '2018-12-21 06:36:17', '1946-08-01 10:31:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'quibusdam', 8217, NULL, 2, '1969-03-09 00:06:21', '1921-04-27 17:17:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'veniam', 4480, NULL, 3, '1942-06-30 16:42:42', '1951-04-28 18:17:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'optio', 4512, NULL, 4, '2000-01-01 12:55:45', '1975-02-14 21:55:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'praesentium', 6644, NULL, 1, '1936-07-17 14:32:42', '1945-03-20 22:45:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'aut', 1681, NULL, 2, '1941-08-22 05:44:20', '1996-09-14 19:38:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'sunt', 6728, NULL, 3, '1952-12-04 16:53:17', '1997-08-17 07:56:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'dicta', 4816, NULL, 4, '1965-10-22 19:13:55', '1995-10-07 19:15:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'incidunt', 9126, NULL, 1, '1995-11-18 07:57:22', '1994-12-30 11:24:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'maxime', 7538, NULL, 2, '1982-08-29 09:51:36', '1991-09-11 07:51:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'voluptatibus', 8242, NULL, 3, '1984-03-14 18:26:19', '1948-11-20 06:42:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'occaecati', 8458, NULL, 4, '1998-01-27 13:34:36', '1965-08-05 18:35:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'ducimus', 7136, NULL, 1, '1924-03-29 05:49:35', '2018-11-05 08:23:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'non', 3582, NULL, 2, '2017-08-13 20:35:40', '1924-05-03 04:14:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'qui', 5892, NULL, 3, '1932-12-02 06:30:32', '1956-07-10 11:29:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'dolore', 4788, NULL, 4, '1975-06-09 12:08:06', '2000-09-10 17:22:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'quo', 3410, NULL, 1, '1997-12-20 01:33:13', '1964-09-18 08:02:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'voluptatem', 5713, NULL, 2, '1986-05-12 08:27:04', '1993-03-05 11:47:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'voluptas', 10145, NULL, 3, '1988-01-09 09:30:03', '1977-07-26 01:52:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'nemo', 6519, NULL, 4, '2005-12-22 15:05:37', '1989-11-21 06:37:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'ab', 6020, NULL, 1, '1921-02-07 06:38:14', '1957-04-18 09:29:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'labore', 6973, NULL, 2, '1960-11-01 11:12:32', '1977-06-30 17:55:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'sint', 8269, NULL, 3, '1936-12-12 16:49:25', '2002-05-25 11:35:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'qui', 7382, NULL, 4, '1994-01-30 06:48:49', '1988-09-05 12:53:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'illo', 3767, NULL, 1, '1967-02-16 00:21:17', '1951-10-09 20:44:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'nesciunt', 9355, NULL, 2, '1981-03-22 17:27:37', '1990-09-08 22:53:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'vero', 3796, NULL, 3, '1961-05-21 21:57:59', '2007-07-06 04:43:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'quam', 9408, NULL, 4, '1922-01-16 22:35:47', '2006-10-20 09:08:59');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'iste', '2017-03-30 10:29:38', '1988-05-11 17:11:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'suscipit', '1950-06-05 04:41:10', '1941-05-19 08:35:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'quia', '1964-03-17 03:28:59', '1975-07-16 02:35:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'fuga', '1959-01-19 21:12:10', '1968-08-28 23:25:58');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 29, 94, 'Aut nesciunt dolor eaque nihil. Quia est dolores fuga. Provident asperiores eos saepe suscipit omnis. Atque et veniam illo voluptatem.', 1, 1, '2012-01-28 04:41:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 31, 8, 'Eius esse qui eligendi tenetur. Reprehenderit voluptatum minima vitae repudiandae architecto labore nisi. Quo at et excepturi autem aliquam. Esse repellendus non quas et eaque.', 0, 0, '1978-10-17 20:32:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 60, 83, 'Et quia ullam eveniet ipsum eum. Minima architecto a doloribus eum placeat facilis. Officiis quaerat totam provident quia voluptate nam eos. Quis ipsa doloremque repudiandae molestiae facilis.', 1, 0, '1996-11-24 19:05:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 86, 52, 'Consequatur repellat dolor sed sed. Itaque perferendis voluptas eveniet id. Quibusdam debitis voluptatem consectetur vel nobis et.', 1, 1, '1973-10-22 08:28:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 60, 9, 'Reiciendis animi ullam neque sit totam sint. Eligendi ipsa et earum natus sed eaque est. Odio et aut facere eligendi ea aut itaque.', 1, 0, '2009-12-27 03:55:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 8, 90, 'Pariatur dicta et earum impedit dolores sint. Omnis et modi porro consectetur veniam et dolore. Nihil veritatis inventore reiciendis enim et.', 1, 1, '1980-09-19 20:31:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 12, 50, 'Et consequatur sed illum provident possimus. In est ad velit voluptatibus occaecati aliquid corporis est. Et doloremque inventore laborum adipisci quae officiis blanditiis quo. Molestias ut maiores eius ut maiores at culpa.', 0, 1, '1990-08-02 05:44:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 74, 47, 'Quae sint molestiae sit pariatur. Eum officia magnam laborum consequatur deserunt rerum placeat. Sed itaque atque molestias deleniti aut. Vitae voluptate esse quo non consectetur.', 1, 1, '1997-09-07 00:58:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 75, 53, 'Accusantium suscipit consequatur earum enim sed libero dolore. Occaecati sunt facere aut modi. Non quos ipsa dolorem excepturi. Minus tenetur beatae aliquam accusantium et.', 1, 0, '1997-03-14 03:22:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 7, 61, 'Delectus laborum quas voluptate reiciendis vitae et. Error maxime quia eos porro. Quia accusamus sequi sint possimus facilis. Corporis itaque et maiores consequatur reiciendis ipsa vero ipsum.', 0, 1, '1991-12-30 02:46:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 82, 22, 'Ut itaque iure consequatur tenetur perspiciatis. Dolore sit consequatur quasi molestiae rerum expedita. Voluptas fugit dolores ab in esse placeat.', 1, 1, '1971-08-20 14:13:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 71, 82, 'Enim sunt placeat rerum vero. Ipsa consequatur iure vel ullam neque. Hic laboriosam et nemo. Facere aliquam totam et exercitationem provident consequatur nobis.', 1, 1, '1989-08-17 15:17:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 28, 41, 'Repudiandae qui neque dolor amet. Mollitia qui nam eaque possimus. Sit ut eaque repudiandae sint soluta.', 1, 1, '1974-09-11 23:36:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 50, 12, 'Ut labore molestiae quia excepturi et molestiae. Consequatur aut assumenda eos quia aliquid fuga eum alias. Voluptatum nisi repudiandae reiciendis sunt. Aliquid quaerat corrupti itaque omnis.', 1, 1, '2008-01-25 08:57:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 40, 71, 'Rerum fugit excepturi porro sit nam pariatur. Ullam et neque est quasi. Vel doloremque non asperiores quo aut placeat ad possimus. Tempore quas qui reiciendis iure dignissimos aut.', 0, 0, '2011-07-22 05:46:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 3, 44, 'Dolorem beatae pariatur alias libero quaerat consequatur eligendi. Unde aut quam accusantium odio. Sit sunt minima aut et alias. Facere ipsum id et dolorum voluptatem vel fuga doloremque.', 1, 0, '2000-01-22 01:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 38, 71, 'Voluptate voluptas nostrum pariatur. Praesentium voluptate similique expedita quia est. Qui repellat id eligendi.', 0, 1, '1975-08-06 12:36:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 84, 9, 'Sit a quidem maxime explicabo ratione molestias natus qui. Repudiandae quos perferendis repellat aut fugiat repudiandae nihil. Nulla enim dolores ut deleniti eligendi ea ea iste. Blanditiis in tempora consectetur adipisci unde.', 1, 1, '2002-10-15 22:43:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 69, 64, 'Sed ut qui architecto et animi. Quis ea repellat odit qui consequatur illo distinctio. Laboriosam dolorem porro delectus est. Fugit impedit aut illum in quisquam.', 0, 0, '1976-08-05 11:26:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 56, 21, 'Sed repellendus sunt error. Aliquam odio animi ab atque debitis. Tempora deleniti consequatur qui est.', 0, 0, '2005-05-11 03:31:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 54, 30, 'Incidunt quam et vitae nulla. Quidem suscipit ut sed dolorum. Aut assumenda dolorem debitis qui ut.', 1, 1, '1993-11-16 10:22:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 65, 31, 'Suscipit aut et eaque velit dolor voluptatem. Vitae velit eos quia quae ut ratione. Vero vitae asperiores qui asperiores eum impedit cum vero.', 1, 1, '1998-02-22 00:45:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 28, 99, 'Voluptatum omnis facilis excepturi delectus est tempora qui. Repellat id eligendi excepturi recusandae praesentium aliquam eligendi. Sed perspiciatis iusto et et rem at aut animi.', 1, 1, '2003-03-10 16:15:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 1, 55, 'Provident dolorum neque et soluta nesciunt ipsa quia incidunt. Consectetur doloremque in repellat et voluptatem nisi enim.', 0, 1, '1977-09-28 21:05:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 68, 86, 'Voluptas cupiditate ipsam atque aut sunt eos veritatis. Nulla vero sit suscipit enim qui hic. Quasi fugiat aliquid consequatur et necessitatibus porro. Est eveniet reiciendis aliquid tempora sit autem dolores.', 1, 0, '1975-01-08 02:16:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 16, 75, 'Non dignissimos dolor qui animi voluptate expedita. Praesentium quasi velit placeat et veritatis. Voluptatibus tempora soluta doloribus officiis sit enim ut. Qui dolorem consequuntur quisquam dolor illo.', 1, 0, '2006-01-20 17:16:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 4, 74, 'Error voluptas alias cum. Recusandae quae laudantium ad nemo tempore omnis omnis. Rerum sit consectetur totam consequatur excepturi dolor qui.', 1, 1, '2009-12-04 06:00:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 31, 95, 'Nemo harum veniam fugit corporis et omnis consequatur. Non voluptatem nihil aut asperiores.', 1, 1, '2010-11-08 16:12:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 42, 32, 'Numquam dolores sunt molestiae ab. Ea rerum aliquid autem nihil eum. Voluptates provident ut molestiae at.', 1, 0, '2007-04-04 04:41:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 39, 34, 'Sunt vel quis sint in odit nemo laudantium atque. Consequatur alias velit tenetur eos quaerat. Molestias tempora culpa veniam odit eaque autem. Autem esse eaque quia nesciunt qui.', 1, 0, '1993-05-12 19:08:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 94, 6, 'Natus soluta beatae exercitationem sed officia. Deleniti ut deserunt autem repellendus itaque illo. Dolore explicabo eveniet aut ad cumque voluptatum optio. Iure possimus possimus ut ut dolorum enim.', 1, 1, '1971-10-23 03:58:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 93, 17, 'Laudantium numquam corporis quia. Ullam exercitationem sed laborum nam tempore. Modi voluptatem dolor amet eos maxime ipsum illo.', 1, 1, '1987-05-06 08:09:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 61, 30, 'Recusandae enim autem eum veritatis. Eius commodi id placeat voluptatem repellat distinctio libero. Impedit ipsa omnis modi odio et provident.', 0, 0, '2000-12-30 19:45:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 47, 59, 'Et fugiat distinctio eum consectetur aliquam eveniet ipsa modi. Quisquam voluptates consectetur aut similique quo aliquid eum. Aut impedit eos et quisquam voluptas voluptates. Autem nemo provident dicta sunt corporis repellendus necessitatibus consequatur.', 1, 1, '2020-11-04 00:50:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 77, 65, 'Fuga facilis laborum nemo velit consequatur. Vitae rem ab voluptas velit ut qui dolore. Dolores voluptate ea sequi. Fugiat omnis molestias suscipit porro officia id. Et nulla cumque ipsa et totam quis.', 0, 1, '2017-07-07 02:27:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 31, 92, 'Praesentium vitae vel laboriosam culpa. Repudiandae in harum natus natus esse et. At quibusdam excepturi repudiandae eligendi neque. Ipsum ut sint ex. Nobis soluta quas a numquam.', 1, 0, '2007-04-02 17:59:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 49, 95, 'A soluta inventore qui sit officiis sit et. Tempore eius porro autem ut suscipit laborum. Aliquid et fugit ut eius dolores. In quam et rerum.', 0, 0, '2002-05-12 23:37:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 100, 8, 'In enim ut aliquam illum. Et reiciendis qui et iure. Fugiat magni et aut aut officia.', 0, 0, '2016-10-24 18:53:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 75, 41, 'Ut accusamus consequatur quo odit atque non. Libero est magnam porro animi iusto. Amet animi numquam sunt quia eligendi. Excepturi quisquam qui ut porro dolorem.', 0, 0, '1983-11-18 22:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 89, 33, 'Quia et et praesentium dolores sit. Aut earum perferendis sapiente.', 1, 1, '1993-03-19 20:20:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 33, 25, 'Voluptas dolor laudantium itaque adipisci repudiandae quod. Autem occaecati delectus ipsa explicabo possimus labore sed optio. Vel ea at reiciendis mollitia.', 0, 1, '1975-07-22 17:08:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 95, 73, 'Ut et ratione et sed eveniet. Qui voluptas ut vitae vel.', 1, 1, '1972-07-03 03:28:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 77, 50, 'Sunt est quas veniam vel. Aut repudiandae impedit quas porro. Qui aut magni occaecati molestias et.', 0, 0, '1979-04-14 14:19:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 5, 91, 'Enim asperiores cum cumque vel fugit ut fugiat vel. Quo repudiandae neque voluptas quo molestias numquam.', 0, 0, '2017-11-04 16:52:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 22, 37, 'Quis velit pariatur voluptas nobis nisi nihil iste qui. Veritatis assumenda dolorum autem quae.', 1, 0, '1970-07-27 23:00:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 81, 45, 'Natus cumque fugiat dolor iste. Quis molestiae tenetur commodi unde odit omnis sequi. Animi possimus voluptatem quisquam.', 0, 0, '1998-08-15 04:15:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 1, 53, 'Sit quis et vitae voluptatem adipisci. Praesentium id dolore aut ut qui tempora et amet. Dolor cum rerum ut non. Voluptatem et quae omnis sit.', 0, 1, '1993-10-04 05:14:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 76, 78, 'Dolore sit in voluptatibus cupiditate vero et qui. Quia et autem est. Dignissimos consequatur qui ex.', 0, 0, '1974-10-06 22:56:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 9, 37, 'Qui hic impedit minima eius. Ipsum occaecati autem neque dolorum. Doloribus est eligendi nihil. Dolorem et nemo occaecati voluptas reprehenderit magni veritatis mollitia.', 0, 1, '1991-11-12 02:07:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 11, 17, 'Voluptatibus suscipit corporis eaque sit placeat quasi similique voluptatem. Occaecati et labore veritatis eligendi. Quisquam laudantium et odio et.', 0, 1, '2019-01-30 21:06:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 4, 57, 'Quibusdam blanditiis dicta facere officia possimus sit est quam. Sunt architecto sit ut officia est asperiores. Nostrum dolor similique blanditiis quo architecto. Quo iusto minus voluptate dignissimos soluta accusamus.', 0, 0, '2013-12-23 23:46:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 7, 86, 'Ipsam voluptatibus voluptas alias nihil odit neque delectus. Pariatur consequuntur accusantium labore culpa aut rerum. Quod adipisci hic dolor adipisci adipisci dolorem. Quod quidem sunt totam praesentium qui dolores. Natus tempora voluptatum ab eos exercitationem tempore.', 0, 0, '2004-07-02 13:48:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 5, 21, 'Consequuntur eligendi atque architecto nam. Nulla maiores id amet voluptas temporibus. Alias quidem ut aut voluptatem praesentium qui.', 1, 1, '1987-03-04 08:33:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 16, 11, 'Vitae dolor dolorem cumque maiores aspernatur necessitatibus. Sapiente aut qui dolore autem necessitatibus. Repellendus perferendis nesciunt sit unde laboriosam. Quas quae est minima error ea et voluptas. Qui sed dolorum iure et quia voluptatem voluptas.', 1, 0, '2011-07-11 04:01:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 26, 89, 'Dolorem maxime ducimus magni saepe. Vel aut qui qui est praesentium facere reprehenderit. Voluptas eius voluptatem dolore vel qui sit quibusdam aspernatur.', 1, 1, '1982-03-04 10:21:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 42, 19, 'Omnis aut laudantium et atque et rerum. Quia porro odio reprehenderit molestias minima dolor. Accusantium aut itaque provident quis a impedit. Accusamus aliquid quia consequatur et.', 1, 0, '1984-12-31 17:47:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 66, 23, 'Eum quia sunt laborum consectetur cumque commodi ea. Omnis voluptas voluptas vel nulla est minima quidem. Sed excepturi aperiam sunt maiores. Eum excepturi qui cum culpa. Facilis qui qui asperiores excepturi eum minima asperiores.', 0, 1, '2009-10-20 10:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 98, 22, 'Est aspernatur eveniet excepturi animi qui sint. Et nisi quia culpa rem eius quae itaque. Dolores quo assumenda iste ut voluptatum.', 1, 0, '1977-01-15 06:16:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 34, 58, 'Est tenetur animi et enim aut deleniti eos dicta. Minima quam ut itaque ea eligendi culpa labore.', 0, 1, '1973-12-23 13:46:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 20, 78, 'Non blanditiis occaecati non aut sapiente nisi voluptas. Magni laborum consequuntur quasi et voluptatem perferendis. Quia voluptas voluptatem et voluptatem at tempora animi.', 0, 1, '2017-02-25 02:25:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 76, 42, 'Rerum vero a cupiditate earum dolores nobis. Necessitatibus explicabo soluta tenetur ad quasi assumenda a praesentium. Rerum ea officia optio dolorem eveniet et. Et quia aut sed est tempore dolores. Nulla perferendis ea odit asperiores.', 0, 1, '1988-02-04 16:23:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 45, 45, 'Magnam consequatur omnis itaque ipsa non enim. Earum eum modi quo et sunt laudantium. Corporis blanditiis accusantium omnis molestias. Quo maiores suscipit nam sapiente.', 0, 0, '2005-05-12 06:05:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 88, 51, 'Sed ullam quibusdam doloribus maxime sit. Minima nihil eveniet quod rerum. Tempore sunt placeat eius iste ipsa necessitatibus consequuntur.', 1, 1, '2018-02-15 08:35:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 53, 66, 'Beatae iste vitae sint voluptas iure totam. Qui et repellat molestiae commodi est cumque. Nostrum omnis veniam molestiae inventore vero qui consequatur.', 0, 0, '1987-01-04 19:10:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 95, 53, 'Distinctio nihil quis facilis. Nihil dolorem architecto perspiciatis assumenda qui dolor. Ut ullam consequatur alias velit rerum illum quia. Corporis commodi voluptatem incidunt quae.', 0, 1, '1994-07-14 20:42:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 45, 18, 'Et alias assumenda consequatur. Ab perferendis ipsam sequi facilis et perspiciatis est.', 0, 1, '1981-08-21 03:31:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 10, 85, 'Ratione architecto maiores eum numquam alias sed sed. Et repellat dicta mollitia molestiae. Repudiandae et at soluta vero est repellat. Quaerat corporis ipsam aut tempore natus ea nemo omnis. Inventore at quo quia sed in qui.', 1, 1, '2002-03-09 04:07:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 18, 31, 'Ut necessitatibus quis quaerat quia aut deleniti. Nihil eos quod qui molestias ipsa. Voluptas porro aut dicta blanditiis.', 0, 0, '1973-08-09 00:13:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 18, 35, 'Nulla quisquam perferendis similique quos voluptatibus nihil itaque consectetur. Magnam sint est architecto est incidunt autem aut. Qui ducimus amet modi est dolorem. Repellendus amet voluptas minima nihil reiciendis accusantium. Voluptate ut quibusdam voluptatum porro in consequatur.', 0, 0, '2000-02-12 23:50:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 55, 65, 'Dolorem rem culpa fugit labore voluptatem enim architecto dolor. Nemo magni necessitatibus odio sed. Sit cumque quia ut excepturi inventore pariatur.', 1, 1, '1970-11-28 04:23:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 76, 99, 'Nam ea sint in ut consequuntur qui vero cupiditate. Facere qui quidem cupiditate. Enim eveniet deserunt autem vitae eius vitae. Harum et praesentium velit ipsam doloremque.', 0, 0, '2003-10-31 03:55:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 27, 14, 'Unde ut occaecati sit dolorem aut eos. Omnis repellendus vero blanditiis ipsum iusto et architecto. Magni ex non aut. Ad aut placeat fuga id illum cupiditate deleniti.', 1, 0, '2019-03-31 03:34:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 22, 21, 'Neque laboriosam ex odio illum modi. Qui id inventore aliquid neque magnam tempore quaerat. Facere aut iusto quia ea expedita non. Molestiae deserunt qui aliquid iusto.', 1, 0, '2017-06-11 05:08:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 22, 28, 'Tempora sunt sapiente harum et et alias. Dolor labore voluptas dolor labore culpa. Iusto eos debitis commodi dolor iure ipsam qui ad.', 0, 0, '1991-03-10 02:03:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 44, 61, 'Quisquam ut quia nam reprehenderit sit enim omnis voluptas. Voluptatibus eos dolorem ad ratione corporis voluptatum quia voluptatem. Asperiores vitae aut odio illum numquam nesciunt.', 1, 0, '1986-11-19 10:20:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 35, 24, 'Voluptatem assumenda enim aut quisquam. Excepturi omnis commodi voluptate est nam. Magni blanditiis omnis commodi minus.', 0, 1, '2000-12-07 22:50:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 60, 71, 'Et exercitationem dolorem minus magni eos atque. In provident alias error expedita quibusdam. Dolores ipsum possimus vero fugiat id fugit aut.', 1, 0, '2013-05-11 19:49:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 46, 15, 'Nesciunt necessitatibus consequuntur sed ipsum. Dolore voluptatem eligendi earum perferendis. Occaecati culpa officia ullam asperiores nihil saepe. Officiis molestias veniam natus amet ipsum soluta et non.', 1, 0, '2011-05-09 17:57:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 15, 33, 'Rerum nesciunt sit omnis rerum. Culpa vel nulla doloribus iure quo ab maiores. Qui rerum quasi officiis dolores molestias qui.', 1, 0, '2010-02-14 04:55:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 10, 38, 'Enim officia enim animi id. Est quia occaecati temporibus recusandae magni.', 0, 1, '1979-11-28 04:59:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 2, 38, 'Ea enim aliquid dolores ut. Labore saepe corrupti tenetur maxime voluptatem. Aspernatur quia hic cum natus soluta necessitatibus autem.', 0, 1, '2017-02-02 06:46:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 97, 100, 'Omnis quo quis officia aspernatur. Laboriosam nemo expedita similique dolorem dolores et. Similique sed maxime eum labore.', 0, 1, '1994-11-08 17:06:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 21, 30, 'Illum officia voluptate ad dolorum velit consequatur. Voluptatem optio officiis expedita aliquid quos dolor. Totam mollitia veniam rerum et autem.', 0, 0, '1989-08-17 00:37:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 47, 34, 'Enim consectetur adipisci repellat cumque repudiandae dignissimos voluptate. Perspiciatis quidem dolor sed. Rerum assumenda iusto non facere.', 1, 0, '1981-04-04 07:58:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 68, 48, 'Quia libero necessitatibus ut harum hic. Iste qui sint ea voluptatem eligendi sint. Rerum qui dolorum ut totam. Culpa qui repellendus repellat voluptas.', 1, 0, '1996-05-23 08:45:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 75, 76, 'Perferendis et laboriosam voluptatum rerum dolor nihil amet. Ut dicta vero qui eos enim. Non quia repudiandae corporis dolorum corrupti consequatur necessitatibus dolorem. Omnis alias inventore quas.', 0, 1, '2003-04-05 19:37:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 56, 1, 'Minima cum velit et doloremque tenetur eum cum. Et porro sint id eos ea aliquam incidunt. Praesentium et dolores commodi esse. Quo omnis non voluptas quaerat qui incidunt consequatur.', 1, 1, '2011-03-08 10:06:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 36, 72, 'Dolor est repellendus aperiam odio omnis qui. Aliquid ea et recusandae reiciendis quos. Perspiciatis nihil aut incidunt amet.', 1, 1, '2016-02-05 06:06:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 99, 72, 'Earum itaque eligendi est assumenda sit. Voluptatem sit totam beatae quod eum laborum quibusdam. Est voluptatibus rerum dolorem fugiat.', 0, 0, '2009-11-30 11:54:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 49, 75, 'Ut cupiditate atque dignissimos illum est est. Voluptas cupiditate commodi consequuntur quia. Quos ad deserunt necessitatibus molestiae id ipsum maiores. Ea aut iure blanditiis tempore tenetur unde ipsum.', 1, 1, '1978-11-28 17:08:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 76, 55, 'Velit sit cum nobis itaque doloremque sint suscipit. Hic a nisi eum. Et a illum exercitationem harum nulla et nesciunt. Ut omnis eos velit aut natus praesentium et.', 0, 0, '2003-10-26 19:25:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 55, 29, 'Doloremque commodi sequi ratione quia. Dolores ullam non quia possimus asperiores voluptas similique. Et placeat qui quas cum officiis doloribus. Voluptas sed sed sint omnis est occaecati error impedit.', 1, 1, '2001-10-14 21:58:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 66, 9, 'Veritatis qui tempora est reprehenderit cum iste quod. Illum tempora magni velit quis et. Sequi voluptate reiciendis omnis quis laboriosam ratione. Dolorem quis quibusdam distinctio et occaecati modi itaque.', 1, 0, '1973-06-24 13:33:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 22, 85, 'Voluptatum eligendi sint rerum cumque. Ut eaque voluptatem omnis eos aut et. Aut alias culpa eum consectetur. Voluptas facere cum non nobis ad eligendi.', 1, 1, '1975-01-01 02:21:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 77, 50, 'Ut iure atque recusandae eveniet dolorum soluta sunt. Itaque nemo incidunt vel inventore officia enim voluptas. Quis et nihil harum rem laudantium. Repellat eos corrupti incidunt sed non velit.', 0, 1, '2006-10-03 11:42:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 57, 71, 'Sed provident vitae in. Error vero minus aspernatur doloremque qui nihil reprehenderit omnis. Blanditiis minima hic magni atque.', 0, 1, '1974-09-18 14:06:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 51, 73, 'Quos voluptates qui impedit inventore. Fugit voluptas quis possimus. Quaerat et molestiae non ipsam sed voluptatibus.', 0, 0, '1986-03-31 01:14:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 31, 5, 'Suscipit distinctio quos aut vero ut aut. Minima ut excepturi est illum a in accusantium. Quis consequatur commodi tempora aspernatur reprehenderit. Doloribus nihil distinctio officiis eius ipsa corporis.', 0, 0, '1998-06-30 05:11:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 31, 50, 'Velit consequatur quidem dolores. Sunt perspiciatis atque tenetur ab aut consequatur. Dolores fugiat iusto reiciendis non.', 1, 0, '2009-07-25 14:39:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 42, 42, 'Quia magni excepturi quia fugit. Dicta quod sint nam voluptatem cum. Officia excepturi neque possimus.', 1, 0, '2009-07-14 11:18:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (101, 96, 25, 'Est necessitatibus quis voluptatem architecto. Et at sequi cumque necessitatibus quam velit. Voluptatem ut et nihil ut sit laborum.', 0, 1, '1982-07-25 22:01:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (102, 12, 69, 'Doloremque voluptatem fugit voluptatibus quam. Dolorem ea magni cupiditate tempora asperiores et debitis recusandae. Dolor perferendis harum odio ea officia. Eaque aut laboriosam quisquam provident.', 1, 0, '2001-09-13 16:53:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (103, 4, 6, 'Doloremque laudantium non harum adipisci itaque in. Saepe quod rerum quidem aspernatur ipsum quisquam. Quidem libero et enim quis sequi eius. Est ducimus tempora eum provident vel.', 1, 0, '1994-09-07 10:43:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (104, 50, 37, 'Sed facilis sint et et repellat voluptate vel voluptatum. Et minus tempora nesciunt blanditiis quam aperiam. Eveniet asperiores qui est nostrum quibusdam. Quia corrupti quis sed qui voluptatem suscipit numquam.', 1, 1, '1989-05-27 05:29:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (105, 21, 98, 'Eos sed enim hic quas et et. Quo omnis nemo iure. Ut minus nam voluptas voluptas nostrum nihil. Est dolore at consequatur et iusto dicta adipisci.', 1, 1, '2019-01-01 13:05:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (106, 86, 15, 'Dicta consequuntur voluptas animi vel ipsum debitis deleniti. Sed nemo et maiores praesentium. Similique quisquam qui ea dolores consequatur dicta similique. Sit qui quas neque.', 0, 0, '2008-03-10 13:16:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (107, 49, 72, 'Enim facere iure necessitatibus aspernatur hic alias quis. Consequuntur enim voluptas non officia ab quidem totam. Beatae dolor perspiciatis voluptatem reprehenderit.', 0, 0, '2002-03-25 00:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (108, 93, 29, 'Et rerum enim sed. Quia et enim ut. Qui repellendus nemo sit voluptas quaerat laboriosam saepe veniam. Dolor enim officiis non dicta non.', 0, 0, '1974-02-07 12:52:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (109, 65, 48, 'Iusto iste est sint iure voluptatem eveniet atque. Natus aperiam maxime maxime omnis neque. Id omnis officia rerum eum et impedit maxime repellat. Voluptates fuga perspiciatis et inventore veniam quasi.', 1, 1, '1986-04-28 07:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (110, 96, 48, 'Omnis repellat qui a impedit. Voluptas quibusdam nihil possimus aut. Perspiciatis consequatur deserunt voluptate. Voluptatem accusamus hic molestiae odio ipsam.', 0, 1, '1980-07-01 10:53:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (111, 5, 45, 'Magnam optio explicabo molestias laboriosam odio. Libero optio eligendi rem ea atque cum. Cumque voluptas in sequi voluptas eum. Minima nam quasi aut id commodi vero ullam adipisci.', 0, 0, '2013-08-11 18:39:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (112, 39, 47, 'Sunt minima atque dolorem explicabo eum quae et. Rem ea alias quos quasi autem eos. Maxime nostrum animi earum laudantium odit harum ratione. Nihil et soluta est.', 1, 1, '1995-02-18 00:43:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (113, 81, 54, 'Ducimus libero ut et cum. Voluptas voluptate dolor eligendi. Non voluptate sunt dolorem ut adipisci tempore nihil. Expedita non molestiae in nostrum tempora iusto praesentium.', 1, 0, '1996-01-17 10:21:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (114, 57, 80, 'Veniam quasi iure dolor ea quo iure. Voluptas inventore harum vero. Ut ut voluptas odit et.', 0, 0, '1970-01-18 18:48:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (115, 26, 44, 'Quia illo magnam dolores facere voluptatem iusto et. Illo voluptas ut architecto. Ipsa fugiat illum eveniet asperiores rerum dolorem ipsum. Rerum asperiores enim veritatis libero omnis voluptatibus et.', 0, 0, '2009-08-10 09:16:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (116, 82, 46, 'Numquam et quae unde optio quia. Sed ea itaque et. Similique atque aut et est. Similique repellendus est assumenda ad libero.', 0, 1, '1970-04-28 12:44:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (117, 46, 98, 'Exercitationem sit repellendus sapiente nihil sed rerum. Maiores delectus illum velit at rem porro cum sit. Incidunt dolor eum ducimus.', 1, 0, '1979-04-28 13:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (118, 65, 14, 'Dolores iste et ipsam aperiam doloremque. Quibusdam dolores eius sed voluptas. Maxime mollitia quo repudiandae at minus. Mollitia reprehenderit pariatur dolorem. Qui accusamus nihil animi velit adipisci consequatur.', 0, 1, '2020-09-12 08:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (119, 51, 38, 'Quidem doloremque et quas quasi distinctio similique eaque. Dignissimos nobis dolorem iure quasi vero necessitatibus dolorem aut. Quam quia ut provident molestiae et animi at. Quia officiis eos ullam dolorum delectus nemo.', 0, 1, '2014-10-25 19:45:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (120, 4, 81, 'Non cum est nostrum nulla libero. Autem fuga et cum inventore ad culpa id. Commodi asperiores sit cupiditate magnam itaque. Molestiae sunt voluptatibus eaque in labore voluptate ad atque.', 0, 1, '2016-08-18 00:26:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (121, 67, 28, 'Aut harum eveniet pariatur veritatis ullam sed omnis. Et aut dolor veritatis.', 1, 0, '1971-01-26 15:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (122, 20, 43, 'Sint et in non enim beatae et. Occaecati ad recusandae optio consectetur labore ullam quia voluptatem. Dicta culpa ut earum et exercitationem nulla. Dolorum sapiente et laudantium pariatur libero amet debitis.', 0, 0, '2008-10-27 14:44:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (123, 48, 59, 'Quam quam repudiandae eos quibusdam. Laudantium incidunt sequi quisquam vitae.', 0, 1, '1984-09-06 10:09:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (124, 74, 32, 'Sit veritatis reiciendis iste aperiam architecto. Blanditiis soluta voluptatem voluptatem. Ducimus voluptas vitae quae similique sunt.', 0, 0, '1993-03-24 14:04:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (125, 26, 32, 'Iusto iusto est qui aut ipsam non accusamus. Quis ratione omnis vel enim quibusdam dolores. Ab ut eum sed asperiores laudantium accusamus et. Rerum et quidem qui porro.', 0, 0, '1983-10-20 04:13:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (126, 65, 83, 'Eum est molestias necessitatibus deserunt aut quo fugit. Laborum deleniti possimus facilis ab. Ipsum explicabo sit maiores animi. Tenetur animi fuga sequi vero beatae non at.', 0, 1, '1990-10-06 01:52:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (127, 22, 28, 'Est veniam perferendis doloremque voluptas. Vel asperiores voluptas quidem animi nostrum quis sint. Vero tenetur ratione nisi nulla quidem aut et. Est fugiat inventore magni eaque officiis ipsum. Est porro laudantium commodi vero enim cumque.', 1, 0, '1990-04-09 07:56:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (128, 81, 52, 'Ut sapiente ut deserunt nihil quidem. Consequatur in dolor quasi sequi consequatur illum. Fugit corrupti et et voluptatibus.', 0, 0, '2005-08-20 07:56:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (129, 50, 63, 'Blanditiis quod autem accusamus quia nihil. Recusandae voluptatibus consequatur sunt ipsam.', 1, 0, '2006-12-13 05:59:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (130, 56, 20, 'Totam sed debitis a molestias et quia dignissimos. Earum totam est earum facilis consequatur quam incidunt. Incidunt magni ad totam eos aut facere quas.', 0, 0, '1999-12-27 08:10:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (131, 21, 83, 'Molestias accusamus suscipit dignissimos modi aut ut. Voluptatem saepe enim reprehenderit soluta enim molestiae. Perspiciatis sed consequatur possimus non enim voluptatum tempore maiores. Illo minima sequi incidunt ex voluptatem minus necessitatibus. Enim ex voluptatem similique fugit et harum.', 1, 0, '1991-06-23 19:32:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (132, 16, 31, 'Sunt consequuntur sint eligendi sit. Id sunt quaerat quae laborum delectus earum. Qui id maiores voluptas corporis velit qui.', 1, 1, '2010-11-18 08:57:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (133, 72, 51, 'Sunt velit molestiae nostrum ut aspernatur autem. Soluta numquam dolorem sapiente sapiente et nesciunt. Odio corrupti fuga necessitatibus dolorem autem accusamus exercitationem. Dolores enim harum exercitationem aut voluptates reiciendis. Omnis deleniti explicabo voluptas quia quod.', 1, 1, '2012-07-22 12:10:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (134, 79, 32, 'Laudantium molestiae sit porro est quaerat quidem quasi. Asperiores eaque eius aut necessitatibus at. Sunt velit consequatur et praesentium optio tempora distinctio voluptatem. Impedit est minus assumenda ut magnam.', 1, 0, '1997-04-03 13:20:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (135, 39, 33, 'Vel ab modi laudantium ipsum minus nostrum omnis tempore. Et dolores aspernatur ut doloribus dicta. Nemo nemo vel iusto et repellendus consequuntur blanditiis voluptas. Praesentium iusto pariatur qui.', 0, 1, '1973-05-31 22:54:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (136, 92, 16, 'Atque repudiandae et corporis beatae. Eligendi mollitia itaque laudantium ut in. Quis officiis et harum ut.', 0, 1, '1972-02-09 08:10:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (137, 95, 81, 'Et vero consectetur quod repudiandae enim rerum nostrum. Ad animi voluptatibus saepe enim repellat quae et. Quo sunt ad deserunt nesciunt consequatur vel rem. Quis sunt et ut totam mollitia.', 1, 1, '2011-05-01 04:41:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (138, 23, 46, 'Et tempore debitis rerum consectetur delectus. Fugit fugiat nisi et totam eos. Omnis cupiditate ut reiciendis reprehenderit libero ipsum. Qui placeat est illum labore. Aut quod in aut molestiae esse.', 0, 0, '1985-09-30 00:52:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (139, 2, 11, 'Maxime doloremque magni iusto consequatur doloribus quos. Consectetur corrupti quam sed. Beatae odio eum rerum dignissimos dolorum ea.', 0, 1, '2007-11-15 04:34:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (140, 2, 40, 'Qui perspiciatis dolorum impedit sunt enim vero ut laudantium. Rerum dicta commodi tempore aut tempora maxime in. Sunt animi aperiam illum vel et quibusdam exercitationem voluptatibus. Autem iste voluptates dolor quas alias voluptas quis.', 1, 0, '1974-04-07 12:22:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (141, 39, 37, 'Qui voluptatem dolor cumque. Dolor ut eos officiis dolorum. A consequatur vitae delectus quasi ducimus veritatis quis. Quidem et qui minus. Laudantium officiis necessitatibus omnis nihil natus vero vel.', 0, 0, '1979-02-10 11:55:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (142, 70, 11, 'Aut voluptatem voluptatem ullam. Architecto amet tempore nihil quia. Et voluptatibus suscipit distinctio quis inventore nihil aliquam. Corporis enim earum fugit laboriosam. Vitae in a aut voluptatem velit repudiandae.', 1, 0, '1984-03-05 22:32:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (143, 86, 58, 'Consectetur autem officiis aut veritatis et. Quia sed aliquam et ipsa. Quisquam nesciunt quo quasi quaerat.', 1, 0, '1987-10-07 00:14:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (144, 29, 44, 'Quod qui ratione voluptatibus vero quis sed harum. Ex rerum aspernatur optio doloremque quidem. Est neque amet beatae. Quae veritatis similique quidem. Sed excepturi corporis voluptas.', 0, 0, '2013-11-02 13:49:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (145, 68, 40, 'Mollitia quam hic rerum. Quidem sed facere repellendus laboriosam iste fugiat. Est dolores blanditiis unde quasi inventore. Ea aut doloremque enim illo molestias similique rerum nam.', 0, 1, '1993-06-14 13:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (146, 55, 41, 'Laborum iure consequatur blanditiis exercitationem et. Commodi voluptatum blanditiis omnis qui quasi et vero. Voluptas non exercitationem odio deleniti. Vitae omnis voluptatem totam ipsum.', 1, 1, '1980-04-21 11:27:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (147, 62, 10, 'Distinctio facere consequuntur voluptas. Blanditiis numquam repellat asperiores pariatur molestiae et maiores. Alias vitae cum ut animi inventore doloribus ad. Est dolore modi quia et et repudiandae qui reiciendis.', 0, 0, '2010-05-14 08:52:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (148, 28, 86, 'Esse fugiat mollitia consequatur id explicabo magnam. Sit quidem omnis sed tempora minima voluptates. Molestiae sit et voluptas vel laudantium repudiandae. Adipisci quos unde soluta eius.', 0, 0, '1974-06-14 04:41:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (149, 22, 49, 'Blanditiis ex aliquam enim fugiat. Sunt eos natus facere eaque numquam dolores. Omnis temporibus pariatur hic nihil. Voluptatibus laboriosam quos est autem voluptatem labore.', 1, 1, '1975-02-18 11:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (150, 77, 57, 'Vel asperiores itaque error iste totam eligendi. Ut voluptates velit animi et amet molestiae consequatur. Iste est molestias natus.', 1, 1, '1984-02-05 19:33:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (151, 24, 94, 'Accusantium nisi officia et. Aliquam fugiat vel ea ad qui ad. Cumque non voluptas ipsam neque id quibusdam sequi.', 0, 1, '1994-12-05 04:00:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (152, 63, 62, 'Quisquam ut assumenda dolorem praesentium. Sit aspernatur quia voluptatem maiores ipsum consequatur dolore. Sed deserunt necessitatibus placeat accusantium omnis eum perferendis.', 0, 0, '2019-02-08 20:03:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (153, 19, 88, 'Vero animi et rem autem. Qui autem molestias porro quod. Dolore voluptas laboriosam accusantium. Quis voluptas tempora laboriosam nostrum qui. Provident consectetur officiis voluptatum quod voluptatem quos fugiat molestiae.', 1, 1, '1973-06-30 00:24:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (154, 30, 96, 'Nostrum mollitia maxime dolorem assumenda. Qui labore veniam placeat nostrum. Provident consectetur temporibus est quod ea repellat.', 1, 1, '2014-03-18 21:14:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (155, 83, 22, 'Consequatur fugiat enim quibusdam aliquid quia eos. Quaerat exercitationem natus non et. Non consectetur earum reiciendis incidunt.', 1, 1, '1975-10-14 07:29:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (156, 60, 91, 'Incidunt culpa aliquam ipsum maiores aut asperiores asperiores. Architecto placeat consequatur aut doloribus. Consequatur et expedita ad ut. Iusto possimus quo in facilis hic unde molestias sed.', 1, 1, '2018-02-28 06:05:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (157, 39, 10, 'Repellat et ipsum dolore alias provident dicta. Velit voluptatem maiores repellendus. Similique itaque quibusdam architecto est in iure. Ut et debitis dolores corporis. Quia quia ea nesciunt id voluptates ipsum nam.', 1, 1, '2003-02-25 09:13:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (158, 72, 27, 'Nisi impedit vel quisquam aut qui explicabo qui. Quod earum ad tempore officia esse. Rerum consequatur omnis et voluptatibus officiis. Sequi non ullam eveniet sed.', 0, 0, '2013-07-30 22:01:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (159, 8, 91, 'Et quae voluptatum nihil. Ea ab veritatis sed fuga molestias et alias quas. Numquam sed architecto debitis ut perspiciatis molestiae qui facere. Eius provident nihil inventore distinctio repellendus nemo esse adipisci.', 0, 1, '2011-02-23 01:43:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (160, 94, 61, 'Dignissimos quidem veniam id laudantium quo labore officia. Nisi voluptatem non velit laborum.', 0, 1, '1991-07-04 23:57:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (161, 61, 35, 'Ratione mollitia dolor id consequatur quia labore assumenda saepe. Culpa mollitia voluptatem ad doloremque fugit. Dolores autem et rerum excepturi rerum rerum inventore.', 1, 0, '1972-09-26 01:07:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (162, 76, 34, 'Distinctio quasi pariatur sapiente excepturi voluptatibus cupiditate alias. Et deserunt labore est placeat voluptatem dolores ut. Pariatur fugit quisquam hic quia molestiae saepe.', 0, 1, '1983-11-05 04:01:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (163, 38, 58, 'Reprehenderit et quae harum aut. Cum iste dolores aspernatur qui maiores. Autem et expedita id corrupti. Fugiat porro explicabo possimus omnis ratione laudantium rerum quia. Explicabo vel et tenetur vel tempora hic saepe delectus.', 1, 0, '2009-05-29 01:24:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (164, 87, 23, 'Qui quisquam iste nostrum ullam quod corrupti laboriosam. Nisi deleniti est est ut sit.', 1, 0, '2011-02-06 18:17:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (165, 7, 17, 'Pariatur totam odio illo qui rem hic dolor. Perspiciatis dolor eius exercitationem numquam quas quis. Placeat eum placeat amet repudiandae architecto eum eum.', 1, 0, '2012-05-11 12:07:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (166, 33, 16, 'Ducimus rerum repellendus omnis corporis amet aut tempora. Eaque et minima iusto et ut soluta cumque. Itaque aut eum tempore vel iste assumenda fugiat odio. Iure error illo veniam assumenda. Rerum dolores ut vel ad voluptatem sint qui.', 0, 1, '1986-12-15 03:31:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (167, 68, 64, 'Expedita dolorem officia et sint ducimus. Consectetur cupiditate quos architecto vitae. Quae quam rem numquam et et. Quae quis sunt nemo blanditiis.', 1, 1, '2002-08-06 02:07:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (168, 73, 38, 'Eligendi beatae ducimus et qui sunt ullam id velit. Impedit aut doloremque debitis saepe blanditiis perferendis. Maiores consequuntur eum quis ab voluptatum.', 0, 0, '2006-11-23 08:54:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (169, 21, 84, 'Magni molestiae voluptatibus eveniet blanditiis et. Quis deleniti et aut aut atque.', 0, 1, '1974-02-12 03:35:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (170, 70, 15, 'Quisquam necessitatibus quia et nostrum omnis. Sequi culpa beatae nam tempore placeat ipsa deleniti.', 0, 0, '1997-10-16 05:13:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (171, 2, 76, 'Cupiditate placeat temporibus maxime aliquid molestiae placeat. At autem sit atque fuga. Voluptas enim molestias aspernatur quos.', 1, 0, '1977-01-03 10:25:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (172, 35, 19, 'Id rerum qui consequuntur modi est eum. Nihil nostrum quaerat incidunt sunt. Est nisi et soluta omnis.', 1, 1, '2000-03-07 10:50:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (173, 87, 22, 'Magni numquam sunt nisi delectus. Impedit dolorem consequatur qui voluptatum facere beatae ipsa quam. Consectetur tempora praesentium aspernatur esse. Labore voluptatem velit qui. Id ut earum quas eveniet.', 1, 1, '2019-03-27 17:56:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (174, 48, 38, 'Deleniti sit cumque impedit voluptatem et sit vero. Quae harum sit omnis quia tempora fugiat delectus qui. Dolorem neque laudantium harum nulla vero porro veritatis voluptatum.', 0, 0, '1989-07-23 16:54:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (175, 65, 64, 'Nemo sed quaerat officiis eaque esse vitae. Fugiat quia minus vero est nam sed. Earum ipsa unde enim.', 1, 0, '2005-01-07 03:29:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (176, 57, 45, 'Aspernatur facere nostrum est odit veritatis. Quod sint natus illum atque occaecati soluta. Et unde et autem iusto. Voluptas voluptatum ut neque autem similique consequatur.', 0, 0, '1992-07-24 19:41:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (177, 81, 15, 'Voluptatem ex reiciendis porro. Aliquid occaecati et dignissimos. Non eaque omnis doloremque porro dolorem ipsa tenetur ut.', 0, 1, '1998-05-29 19:07:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (178, 29, 13, 'Doloribus voluptatum iusto pariatur amet. Saepe ullam quia eaque est necessitatibus. Quisquam aut culpa ut. Consequuntur odit perferendis doloremque sint soluta.', 0, 0, '1986-04-28 06:47:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (179, 35, 25, 'Rerum quis omnis in unde voluptate quisquam est. Et maxime odit nostrum laborum et. Aut est occaecati non velit rem adipisci consectetur.', 1, 0, '1988-03-02 18:26:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (180, 87, 70, 'Veritatis exercitationem ex veniam. Eum eum magni quam omnis. Quae eos ea beatae sit.', 1, 1, '1973-03-24 09:24:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (181, 42, 1, 'Asperiores debitis eos repellat vero cumque ut consequuntur. Illo nesciunt ut accusamus molestiae et voluptatum. Commodi vitae est omnis ipsam qui alias est ex.', 0, 0, '1999-05-08 15:27:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (182, 48, 5, 'Aut rerum blanditiis aut unde ea quia molestiae. Repellat quo ut mollitia occaecati. Et dignissimos et corporis odit et sed. Modi dolorem voluptatem et hic enim at iusto rerum.', 0, 1, '2005-09-15 12:55:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (183, 12, 21, 'Asperiores nam hic mollitia. Consectetur sapiente at quaerat magnam et aut ducimus. Officiis numquam natus et et quia assumenda. Et natus voluptatum impedit quasi totam et.', 0, 1, '1992-10-10 09:20:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (184, 87, 37, 'Dolorem dolor voluptas sit veritatis quo. Alias quis iste laudantium quo nam.', 1, 0, '2003-12-26 08:39:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (185, 45, 41, 'Rerum fugiat suscipit consequatur reiciendis laudantium ipsam deserunt perferendis. Itaque numquam aut ad eum soluta maiores ducimus. Culpa laboriosam nostrum et. Et minus rerum fuga quia fuga ut repellendus.', 1, 1, '2001-05-18 09:22:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (186, 40, 93, 'Consequuntur eum quasi reiciendis quas occaecati. Maiores ullam quidem mollitia assumenda. Sunt ex quas ut nostrum repellat ut. Sint pariatur quaerat nulla blanditiis quis quaerat deserunt.', 0, 1, '1990-01-14 09:35:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (187, 66, 99, 'Numquam suscipit nulla adipisci unde ea ut reiciendis. Mollitia non iure eligendi ex. Molestiae facilis sit architecto. Impedit id molestiae et ad.', 0, 1, '1981-11-10 05:12:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (188, 17, 95, 'Molestiae quae vel tempora aut assumenda. Aut repellat atque ipsum. Quod sequi totam rem quasi placeat sunt. Ea iste expedita vel ratione voluptatum.', 1, 0, '1974-03-08 03:39:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (189, 21, 45, 'Rem natus consequuntur cum non soluta autem. Alias et ad qui explicabo sint quis. Facilis quam veniam neque optio sed doloremque atque quia.', 0, 1, '1975-06-20 07:17:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (190, 5, 30, 'Inventore et magnam totam veritatis cum enim. Aut corporis eligendi laboriosam qui quia qui quisquam. Est mollitia enim a aut reprehenderit maxime vel. Exercitationem quam velit perferendis fuga rerum.', 0, 1, '2003-12-01 08:17:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (191, 67, 66, 'Itaque optio et voluptatem doloremque commodi quod. Optio qui quaerat eos et. Accusamus sit in quasi tempora dolor sequi eum.', 1, 0, '1995-04-14 07:12:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (192, 6, 82, 'Neque quasi mollitia qui dolore. Earum iure est minima voluptatem laudantium. Facilis doloremque possimus natus suscipit praesentium quo.', 0, 0, '1972-11-08 13:48:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (193, 49, 84, 'Architecto ut aut voluptas qui. Adipisci delectus sit eveniet sit exercitationem necessitatibus velit. Quisquam libero est nihil iusto iusto qui molestiae ut. Eveniet expedita adipisci numquam veritatis nostrum.', 0, 0, '2016-05-17 05:20:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (194, 67, 63, 'Omnis doloremque deleniti quo quasi. Corporis quod dolores facere quo rem error cum. Culpa non odit voluptates dolor minus vel voluptas consequatur. Laudantium ut tempora cumque nostrum magni quis et.', 1, 1, '1981-07-25 05:10:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (195, 20, 74, 'Ut pariatur sint libero et omnis et. Et minus id provident vero labore ut optio dolor. Veritatis ab recusandae et quo harum qui blanditiis tempora.', 1, 0, '2001-06-13 15:51:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (196, 79, 74, 'Distinctio voluptas voluptate quod sint explicabo voluptatum quo qui. Maiores voluptatem repellendus voluptatem iste velit numquam. Voluptatem placeat neque unde fugiat ratione error.', 1, 1, '1983-06-10 00:27:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (197, 47, 6, 'Quam et officia officia ut. Officiis sunt sint dolores ea repellat. Quam aut rerum ut repudiandae.', 1, 1, '1973-03-13 07:58:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (198, 69, 31, 'Dolor quibusdam sapiente commodi quia ut. Incidunt quasi adipisci dolorem qui ratione voluptatem. Numquam quibusdam beatae repellendus.', 0, 0, '1977-02-13 03:17:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (199, 5, 52, 'Aspernatur nihil est qui qui. Nobis voluptatum expedita voluptates pariatur modi. Sunt est rerum totam libero omnis sit.', 1, 0, '1999-01-21 16:42:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (200, 5, 57, 'Earum ratione et aut harum et saepe. Esse incidunt ut ut nobis qui aspernatur fugit. Omnis enim quisquam quod exercitationem.', 0, 0, '1970-07-21 18:07:20');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '1975-04-16', 'Boganview', 'Venezuela', '1921-05-20 06:54:50', '1921-05-09 23:16:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1983-10-10', 'West Santinoberg', 'United States of America', '1921-08-08 09:36:23', '1921-07-05 07:25:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '2004-06-22', 'Gerholdburgh', 'Mali', '1923-01-12 15:12:12', '1924-05-23 12:44:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1971-09-10', 'New Dawsonland', 'French Southern Territories', '1924-09-25 19:12:49', '1925-06-03 09:08:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '2011-01-26', 'Dillonshire', 'Djibouti', '1926-09-07 20:30:36', '1925-07-20 11:38:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'f', '2018-12-31', 'East Jarred', 'Guadeloupe', '1929-03-01 13:16:27', '1926-06-17 00:50:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '2000-01-13', 'Walshstad', 'Paraguay', '1929-05-11 23:43:49', '1930-06-03 08:51:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '2000-05-07', 'Blickstad', 'Greece', '1931-10-07 11:53:01', '1931-04-05 14:48:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '1991-09-23', 'West Wyman', 'Albania', '1933-10-19 21:27:30', '1931-10-10 06:27:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'f', '2010-05-01', 'Lake Regan', 'France', '1934-03-03 14:28:41', '1931-11-26 14:34:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '1977-01-17', 'North Bernitafort', 'British Indian Ocean Territory (Chagos Archipelago)', '1934-12-04 12:07:55', '1931-12-16 19:57:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1970-01-12', 'South Abby', 'Norfolk Island', '1936-10-02 05:07:32', '1932-02-28 08:58:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '2000-03-15', 'West Loisstad', 'Portugal', '1938-04-20 02:30:32', '1932-09-29 07:41:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1984-12-19', 'Aaronton', 'Jamaica', '1939-02-15 23:18:22', '1933-12-08 23:44:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '2012-05-16', 'East Jazmynemouth', 'Samoa', '1939-05-15 00:16:35', '1934-10-09 22:57:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '2010-09-26', 'West Dorothea', 'Chile', '1941-04-20 17:05:54', '1935-09-04 12:52:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '1987-05-28', 'Port Graciela', 'Chad', '1941-08-12 20:17:10', '1935-09-14 17:32:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '1988-11-27', 'Reggieside', 'Azerbaijan', '1941-08-25 01:00:34', '1936-11-11 22:12:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '2007-03-12', 'Feestfort', 'United States Minor Outlying Islands', '1942-12-21 03:49:11', '1937-12-04 17:28:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2005-07-09', 'Rozellaside', 'Puerto Rico', '1944-01-16 13:25:28', '1939-08-01 02:54:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '1980-12-31', 'East Neoma', 'Tonga', '1945-02-20 16:07:07', '1940-05-22 12:01:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2018-03-20', 'Joneston', 'Ecuador', '1945-05-29 00:54:27', '1940-06-18 21:28:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '2008-01-22', 'Port Samantha', 'Morocco', '1945-05-30 05:49:00', '1940-09-03 10:07:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '1996-07-16', 'East Louveniachester', 'South Africa', '1945-12-18 08:36:03', '1940-12-15 08:59:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '1976-10-30', 'South Mireillehaven', 'Australia', '1946-12-25 06:31:04', '1942-10-06 03:17:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '1971-05-24', 'Dickibury', 'Gambia', '1947-07-31 01:04:12', '1943-11-11 02:52:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '1974-07-13', 'Collinsberg', 'Slovakia (Slovak Republic)', '1948-04-04 05:06:35', '1944-10-02 11:49:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '1997-05-21', 'Dachmouth', 'Croatia', '1948-10-09 00:47:10', '1945-06-30 23:06:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '2017-06-21', 'South Salvador', 'Trinidad and Tobago', '1950-05-11 04:37:17', '1946-03-24 04:03:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'f', '1982-06-15', 'East Kristinmouth', 'Rwanda', '1953-07-15 00:44:08', '1946-08-10 18:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1988-07-09', 'New Jakob', 'China', '1955-02-20 20:33:20', '1947-09-21 09:11:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '1986-08-23', 'New Jaron', 'Saint Vincent and the Grenadines', '1957-02-19 22:37:05', '1948-09-19 05:14:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1982-11-06', 'Josephinemouth', 'Tokelau', '1957-05-14 21:41:15', '1955-02-23 21:21:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '1975-08-16', 'Bruenhaven', 'Russian Federation', '1958-03-16 21:16:14', '1955-06-15 04:42:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '2000-03-16', 'South Brooke', 'Bosnia and Herzegovina', '1958-07-27 08:47:32', '1955-08-31 02:09:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '2013-09-23', 'Albinaburgh', 'Saint Helena', '1959-08-14 11:56:47', '1956-04-02 09:54:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '2002-09-21', 'South Camryn', 'El Salvador', '1959-11-29 16:30:53', '1956-04-28 05:19:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '1986-05-02', 'Hansenstad', 'Monaco', '1960-08-17 14:29:21', '1958-01-31 19:32:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '2009-11-03', 'Loyalmouth', 'Wallis and Futuna', '1963-06-20 23:39:40', '1958-12-10 07:13:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '1986-12-22', 'New Elta', 'Philippines', '1964-05-14 18:57:17', '1959-01-19 03:44:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '1982-12-12', 'Hettiechester', 'Albania', '1964-08-25 05:19:14', '1959-02-21 17:15:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '1988-06-02', 'North Pattie', 'United Kingdom', '1966-02-26 17:15:35', '1959-06-21 22:43:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '2002-05-06', 'North Osvaldoview', 'Benin', '1966-11-20 05:18:38', '1959-08-19 05:38:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '2017-01-30', 'O\'Konburgh', 'Luxembourg', '1967-03-06 11:44:04', '1960-04-28 06:17:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '1972-04-01', 'Marqueshaven', 'Luxembourg', '1969-08-25 08:52:09', '1962-06-27 06:20:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2019-04-16', 'New Jarrodhaven', 'Saint Martin', '1969-09-18 07:31:24', '1963-08-08 12:10:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'f', '1975-12-02', 'North Bradley', 'Netherlands Antilles', '1970-01-27 13:47:48', '1965-12-16 12:55:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '1989-11-07', 'Durganfurt', 'Slovenia', '1970-07-26 23:10:32', '1967-01-21 15:25:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'f', '1988-10-26', 'Sydneestad', 'Pakistan', '1970-10-27 14:36:05', '1971-03-22 07:33:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '2002-07-02', 'West Jarrellshire', 'Finland', '1972-08-13 07:42:41', '1971-11-10 11:46:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '2012-07-15', 'Port Amy', 'Korea', '1972-12-01 11:59:50', '1972-10-08 09:53:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'f', '1974-07-11', 'Willberg', 'Bermuda', '1975-01-13 00:57:55', '1975-06-06 14:20:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '2020-08-02', 'North Daisha', 'Faroe Islands', '1975-02-05 12:26:06', '1976-04-07 04:33:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '2020-07-01', 'East Candida', 'Zimbabwe', '1975-11-14 02:16:06', '1976-09-07 00:09:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '2013-01-18', 'Satterfieldberg', 'Nepal', '1977-04-23 07:41:45', '1977-08-02 20:42:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '1978-02-02', 'Bednarmouth', 'Iraq', '1977-05-01 02:41:19', '1980-01-09 06:37:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1976-01-18', 'Karlmouth', 'Qatar', '1977-06-14 14:31:59', '1980-06-07 22:43:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '1977-03-17', 'Mayertborough', 'Israel', '1978-11-18 11:33:37', '1981-09-28 17:59:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '1985-02-17', 'Lake Sage', 'Swaziland', '1978-11-21 00:32:47', '1981-10-01 10:50:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1973-09-18', 'Johnathanshire', 'Holy See (Vatican City State)', '1982-05-12 21:33:00', '1981-12-01 20:35:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '1999-10-14', 'Port Karianne', 'Nepal', '1983-09-19 15:45:38', '1982-06-09 09:20:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '2008-08-13', 'Alysontown', 'Cote d\'Ivoire', '1984-03-02 12:17:32', '1984-02-03 10:12:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '2013-09-19', 'West Celestinemouth', 'Saudi Arabia', '1984-05-10 11:46:52', '1984-02-24 02:21:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '1977-09-03', 'Lake Kevon', 'Haiti', '1987-03-30 00:11:42', '1985-02-15 17:54:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '1975-11-30', 'Lake Yasmin', 'Estonia', '1987-11-23 21:13:38', '1985-05-04 23:37:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '2007-01-15', 'Bergeton', 'Togo', '1988-02-12 09:39:04', '1986-01-01 21:19:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '2009-02-04', 'Lake Jessborough', 'Venezuela', '1989-11-25 13:47:01', '1986-04-29 04:36:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '2003-12-30', 'West Mertie', 'Ecuador', '1991-09-04 09:58:44', '1986-12-19 00:03:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '2004-09-15', 'Lake Gia', 'Northern Mariana Islands', '1992-01-14 01:38:18', '1988-04-16 15:20:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '1977-04-04', 'Adamsshire', 'Guyana', '1994-01-06 11:01:30', '1988-12-23 22:50:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'f', '2014-01-07', 'North Orpha', 'Ecuador', '1995-07-08 12:31:12', '1989-04-26 04:29:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '1972-12-30', 'Swaniawskistad', 'Sri Lanka', '1996-08-25 05:38:42', '1989-07-29 13:51:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '2012-01-25', 'Marcobury', 'Morocco', '1996-11-19 11:22:40', '1989-08-18 09:43:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '1982-05-15', 'Bodeton', 'Saint Lucia', '1996-12-14 20:49:03', '1992-01-11 15:13:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'f', '2011-03-31', 'East Nikki', 'Swaziland', '1997-06-13 17:26:34', '1992-03-30 08:02:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '1992-08-11', 'New Wendell', 'Saint Pierre and Miquelon', '2000-06-30 14:08:05', '1994-07-05 02:42:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '2007-10-22', 'Beahanshire', 'Peru', '2000-11-18 22:40:48', '1997-03-24 12:28:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1992-12-26', 'North Lawsonport', 'Mexico', '2004-03-04 19:33:26', '1997-10-08 08:34:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '2000-12-05', 'South Camden', 'Pakistan', '2004-09-13 20:18:50', '1997-12-13 19:45:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '1987-04-16', 'East Justice', 'Tuvalu', '2004-10-16 14:39:27', '1999-09-15 18:59:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'f', '1987-06-23', 'Oberbrunnerside', 'Christmas Island', '2005-05-29 21:07:10', '2000-08-11 03:31:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '1989-11-13', 'Xavierfurt', 'Armenia', '2005-08-17 06:35:36', '2000-10-07 20:29:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'f', '2007-10-26', 'Alexaville', 'Argentina', '2006-04-19 19:57:29', '2001-03-12 09:00:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'f', '1977-07-28', 'South Adolph', 'Bolivia', '2007-09-28 17:11:31', '2001-12-27 18:17:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '1992-02-19', 'South Margotborough', 'Peru', '2009-08-21 06:01:28', '2003-03-28 13:59:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '1991-02-05', 'New Keagan', 'Malta', '2010-05-11 08:57:55', '2007-01-23 13:46:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '2008-09-12', 'East Ludie', 'United Kingdom', '2011-04-13 21:40:22', '2007-07-13 11:10:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '1977-05-31', 'Port Kamronton', 'Albania', '2011-11-13 14:10:46', '2007-08-08 12:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '1998-04-28', 'South Yesseniaburgh', 'Jamaica', '2011-12-04 10:38:00', '2008-03-24 22:44:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '2018-11-20', 'Aldenton', 'French Polynesia', '2013-04-03 23:32:29', '2010-01-22 06:42:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '1986-08-08', 'Labadieville', 'Japan', '2013-11-29 04:36:17', '2011-05-26 14:04:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'f', '2004-12-23', 'West Noeliaport', 'Malaysia', '2014-04-25 07:51:00', '2011-11-26 15:52:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '1987-08-12', 'North Jessikaborough', 'Botswana', '2015-03-06 12:46:01', '2013-06-05 12:30:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1976-12-26', 'New Barbara', 'Cote d\'Ivoire', '2015-07-27 02:59:57', '2013-10-29 16:16:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '1970-09-06', 'Schambergerfort', 'Portugal', '2017-05-03 05:51:22', '2014-07-04 23:19:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1982-07-22', 'East Jacky', 'Thailand', '2018-08-18 08:17:27', '2015-03-15 15:36:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2014-07-20', 'Caleighbury', 'Denmark', '2019-08-12 07:25:59', '2015-11-14 06:52:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '1999-03-08', 'North Lorenzastad', 'Benin', '2019-09-30 01:41:42', '2016-10-17 06:27:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '2006-01-04', 'Walterland', 'Aruba', '2019-12-16 19:55:39', '2016-10-29 02:15:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '2009-11-28', 'West Yvonnehaven', 'Burundi', '2020-04-18 09:18:45', '2020-08-13 08:12:55');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Dayana', 'Bins', 'streich.jermaine@example.org', '344.083.2432x30204', '2019-12-16 19:55:39', '2007-01-23 13:46:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Kristoffer', 'Lakin', 'jaeden79@example.org', '(570)414-5122x343', '2006-04-19 19:57:29', '1955-02-23 21:21:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Macie', 'Block', 'udaugherty@example.org', '+58(7)0958199379', '1978-11-21 00:32:47', '1976-04-07 04:33:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Vaughn', 'Beier', 'payton25@example.com', '+56(8)5976631129', '1996-12-14 20:49:03', '1937-12-04 17:28:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Marjory', 'Mosciski', 'brekke.brenda@example.org', '949.217.0848x497', '1926-09-07 20:30:36', '1931-12-16 19:57:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Rhea', 'Zboncak', 'dquitzon@example.com', '(530)685-6910', '1996-11-19 11:22:40', '1959-06-21 22:43:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Lavon', 'Wisozk', 'cameron93@example.com', '1-752-316-4513x1987', '2010-05-11 08:57:55', '2007-08-08 12:22:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Sharon', 'Hansen', 'alexanne88@example.org', '09821810646', '2011-11-13 14:10:46', '1989-08-18 09:43:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Rick', 'Witting', 'borer.clement@example.org', '(516)748-5525x2327', '1933-10-19 21:27:30', '2003-03-28 13:59:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Maxwell', 'McCullough', 'pfannerstill.dedrick@example.net', '1-608-954-0747x116', '1988-02-12 09:39:04', '1924-05-23 12:44:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Wilmer', 'Klein', 'corwin.pearline@example.com', '04285490731', '1938-04-20 02:30:32', '1921-07-05 07:25:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Lincoln', 'Runolfsson', 'libbie.hauck@example.org', '166.846.2735', '1964-08-25 05:19:14', '1992-01-11 15:13:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Sebastian', 'Russel', 'vallie.klocko@example.org', '786-022-7268x312', '1966-11-20 05:18:38', '1958-12-10 07:13:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Gilberto', 'Kohler', 'lrice@example.com', '542-872-3246x77366', '1939-05-15 00:16:35', '1945-06-30 23:06:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Chloe', 'Haley', 'dennis.heidenreich@example.com', '758-564-2778x1662', '1931-10-07 11:53:01', '2000-08-11 03:31:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Margarita', 'Hahn', 'paris88@example.org', '780-117-0704', '1970-07-26 23:10:32', '1986-04-29 04:36:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Rachelle', 'Runolfsson', 'annalise.rodriguez@example.com', '(665)277-5822', '1970-10-27 14:36:05', '1933-12-08 23:44:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Effie', 'Daniel', 'jnicolas@example.org', '539-554-7059x07353', '1967-03-06 11:44:04', '1948-09-19 05:14:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jarod', 'Purdy', 'gerson.ullrich@example.com', '619-466-1809', '1942-12-21 03:49:11', '2010-01-22 06:42:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Dayton', 'Kunze', 'paucek.cordell@example.net', '1-768-616-9078x488', '1923-01-12 15:12:12', '1935-09-14 17:32:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Abner', 'Bruen', 'dlemke@example.com', '02069998937', '1924-09-25 19:12:49', '1947-09-21 09:11:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Percival', 'Brekke', 'georgiana.trantow@example.com', '01030321973', '1984-03-02 12:17:32', '1992-03-30 08:02:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Yessenia', 'White', 'kolson@example.com', '807-763-8700x84789', '1929-03-01 13:16:27', '1963-08-08 12:10:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Makenna', 'Armstrong', 'fcole@example.org', '983.784.5170x222', '1934-12-04 12:07:55', '1926-06-17 00:50:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Belle', 'O\'Connell', 'bernier.lesly@example.com', '02164403642', '1972-12-01 11:59:50', '2000-10-07 20:29:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Derrick', 'Rosenbaum', 'tyundt@example.com', '355.063.5274x21404', '2000-11-18 22:40:48', '2015-03-15 15:36:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Marvin', 'Herman', 'rvandervort@example.com', '+63(9)6874976371', '1959-11-29 16:30:53', '1980-06-07 22:43:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Santino', 'Wilkinson', 'spinka.gordon@example.net', '1-476-206-6513x698', '1948-10-09 00:47:10', '1940-09-03 10:07:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Tessie', 'Howe', 'ledner.serena@example.net', '+56(5)9654032657', '1955-02-20 20:33:20', '1946-08-10 18:54:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Jeffery', 'Towne', 'rgibson@example.org', '00583959444', '2005-05-29 21:07:10', '1988-04-16 15:20:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Noelia', 'Weissnat', 'jhudson@example.org', '493.875.5606x360', '1992-01-14 01:38:18', '1981-09-28 17:59:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Lee', 'Effertz', 'antwan.hamill@example.net', '305-423-4526', '1921-05-20 06:54:50', '2011-05-26 14:04:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Clifton', 'Thompson', 'brook.sanford@example.net', '775-214-9714', '1989-11-25 13:47:01', '1959-08-19 05:38:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Marco', 'Larson', 'price.winfield@example.net', '+25(4)5714385947', '2009-08-21 06:01:28', '1940-05-22 12:01:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Keaton', 'Fadel', 'jreynolds@example.com', '1-827-152-9597x3565', '1941-04-20 17:05:54', '2001-03-12 09:00:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Royal', 'Brekke', 'anthony53@example.org', '1-058-387-2151x36890', '1939-02-15 23:18:22', '2001-12-27 18:17:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Johnpaul', 'Littel', 'eichmann.raoul@example.net', '655.856.1900x474', '2019-09-30 01:41:42', '1944-10-02 11:49:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Tia', 'Macejkovic', 'kristofer.hickle@example.org', '1-713-120-0429x2636', '1944-01-16 13:25:28', '1962-06-27 06:20:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Bianka', 'Wiegand', 'zulauf.stephanie@example.net', '019-457-8765x9220', '1960-08-17 14:29:21', '1956-04-02 09:54:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Rosalind', 'McCullough', 'julianne55@example.net', '480.665.1945x335', '1977-06-14 14:31:59', '2008-03-24 22:44:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Rowan', 'Kemmer', 'nleannon@example.net', '515.455.7662x3085', '1936-10-02 05:07:32', '1971-03-22 07:33:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Gus', 'Schmitt', 'eichmann.junius@example.net', '(955)698-1783', '1997-06-13 17:26:34', '1958-01-31 19:32:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Vanessa', 'Sauer', 'amclaughlin@example.com', '+69(0)5994511921', '1966-02-26 17:15:35', '1976-09-07 00:09:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Abel', 'Denesik', 'brook55@example.org', '542.396.2245x025', '1977-04-23 07:41:45', '1935-09-04 12:52:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Earl', 'Tromp', 'aida15@example.com', '(945)141-1928x0812', '1945-05-29 00:54:27', '2014-07-04 23:19:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Cecilia', 'Cartwright', 'bernadine85@example.net', '1-328-190-5100x6276', '1963-06-20 23:39:40', '1965-12-16 12:55:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Hudson', 'Simonis', 'kschultz@example.com', '(313)910-8456', '1958-07-27 08:47:32', '1984-02-03 10:12:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Judy', 'Larkin', 'caesar13@example.com', '+56(2)4854862204', '1983-09-19 15:45:38', '2007-07-13 11:10:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Henry', 'Bailey', 'rohan.nils@example.com', '175-932-5484', '1945-02-20 16:07:07', '1925-07-20 11:38:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Raven', 'Kihn', 'hertha59@example.net', '715-345-9477', '2013-04-03 23:32:29', '1985-02-15 17:54:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Henriette', 'Koss', 'roberts.glenda@example.net', '023.734.2998', '1964-05-14 18:57:17', '2015-11-14 06:52:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Sigurd', 'Bergstrom', 'simonis.ayden@example.com', '(743)043-4694x9736', '1946-12-25 06:31:04', '1981-12-01 20:35:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Monty', 'Kiehn', 'considine.xzavier@example.com', '+07(1)8053837378', '1953-07-15 00:44:08', '1934-10-09 22:57:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Imogene', 'Paucek', 'rsenger@example.net', '1-902-941-3172x125', '1969-08-25 08:52:09', '1999-09-15 18:59:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Jamaal', 'Satterfield', 'gleason.neal@example.org', '(659)705-9204x877', '2017-05-03 05:51:22', '1959-01-19 03:44:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Kianna', 'Ankunding', 'alan38@example.com', '533.404.4122', '2004-03-04 19:33:26', '1931-10-10 06:27:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Freeman', 'Wilkinson', 'harris.clark@example.org', '1-618-853-2655', '1947-07-31 01:04:12', '1984-02-24 02:21:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Gunnar', 'Weber', 'lang.eduardo@example.net', '(908)724-9756x2342', '1957-05-14 21:41:15', '1989-07-29 13:51:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Mossie', 'Farrell', 'tobin67@example.org', '901-239-7427', '1945-05-30 05:49:00', '1967-01-21 15:25:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Jeanette', 'Bechtelar', 'ubarton@example.org', '(449)186-3203x99060', '1921-08-08 09:36:23', '1975-06-06 14:20:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Tabitha', 'Moen', 'miles76@example.org', '(226)357-7586x62919', '1941-08-12 20:17:10', '1955-06-15 04:42:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Mustafa', 'Bahringer', 'heathcote.harmony@example.net', '176.827.6448', '1982-05-12 21:33:00', '1932-09-29 07:41:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Armando', 'Hilll', 'meggie19@example.org', '(443)799-4341x0385', '1950-05-11 04:37:17', '2011-11-26 15:52:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Kendall', 'Bergstrom', 'cbergstrom@example.net', '07387918725', '1995-07-08 12:31:12', '1989-04-26 04:29:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Reanna', 'Romaguera', 'alexandro87@example.com', '1-537-421-7435', '1970-01-27 13:47:48', '1925-06-03 09:08:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Humberto', 'Walsh', 'rwindler@example.org', '(121)709-5368', '2000-06-30 14:08:05', '2013-06-05 12:30:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Gino', 'Bechtelar', 'ibeatty@example.com', '490.593.4361', '2007-09-28 17:11:31', '1986-01-01 21:19:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Mackenzie', 'Paucek', 'mclaughlin.sheila@example.net', '1-441-923-3392', '2015-07-27 02:59:57', '1982-06-09 09:20:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Wilfrid', 'Morar', 'sconroy@example.com', '09483546146', '1972-08-13 07:42:41', '1994-07-05 02:42:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Pascale', 'Krajcik', 'feeney.jamaal@example.net', '1-697-257-3850x687', '2019-08-12 07:25:59', '2016-10-17 06:27:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Era', 'Buckridge', 'ford28@example.com', '(942)429-3057', '1977-05-01 02:41:19', '1940-06-18 21:28:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Harold', 'Wiegand', 'gbeer@example.net', '664.484.6118x4479', '1959-08-14 11:56:47', '1997-03-24 12:28:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Laurie', 'Beier', 'alana.bauch@example.org', '(929)791-4777', '1945-12-18 08:36:03', '1943-11-11 02:52:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Terence', 'Rolfson', 'yvon@example.org', '727-719-3812x35982', '1978-11-18 11:33:37', '1931-11-26 14:34:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Alejandra', 'Beatty', 'sunny29@example.org', '08916251213', '1929-05-11 23:43:49', '1959-02-21 17:15:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Uriah', 'Wilkinson', 'ddickinson@example.org', '+47(6)0953425438', '1948-04-04 05:06:35', '1997-10-08 08:34:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Mercedes', 'Bartell', 'kkessler@example.com', '03514524949', '1969-09-18 07:31:24', '1971-11-10 11:46:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Makenzie', 'Corwin', 'braun.timmy@example.org', '1-516-587-7384x466', '1958-03-16 21:16:14', '1940-12-15 08:59:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Ariel', 'Ratke', 'aiyana.dach@example.net', '09666865905', '1991-09-04 09:58:44', '2013-10-29 16:16:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Jamel', 'Hodkiewicz', 'nbernhard@example.net', '(599)488-1048', '2011-04-13 21:40:22', '2016-10-29 02:15:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Janick', 'Schulist', 'roosevelt.kihn@example.net', '310.304.2226x124', '1987-03-30 00:11:42', '1997-12-13 19:45:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Armando', 'Roob', 'wilkinson.dianna@example.org', '(767)728-4173x2472', '1994-01-06 11:01:30', '1986-12-19 00:03:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Casimer', 'Renner', 'kenya.rice@example.net', '(403)952-3806x83765', '1941-08-25 01:00:34', '2020-08-13 08:12:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Renee', 'Wiza', 'travis32@example.com', '(287)421-4534', '2018-08-18 08:17:27', '1930-06-03 08:51:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Lydia', 'Boyle', 'schoen.damien@example.net', '1-611-914-4695', '2004-10-16 14:39:27', '1972-10-08 09:53:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Margret', 'Littel', 'feest.antonietta@example.net', '(392)518-6385x53659', '1975-02-05 12:26:06', '1988-12-23 22:50:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Lina', 'Bashirian', 'wmueller@example.com', '802-911-8083', '1984-05-10 11:46:52', '1985-05-04 23:37:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Kira', 'Gibson', 'ldickens@example.com', '(550)169-5119', '2004-09-13 20:18:50', '1946-03-24 04:03:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Wilfred', 'Harber', 'wehner.fred@example.org', '(166)197-2697', '1975-01-13 00:57:55', '1921-05-09 23:16:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Rodrick', 'Larson', 'purdy.angelina@example.org', '(874)538-1571x375', '2015-03-06 12:46:01', '1931-04-05 14:48:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Murphy', 'Rolfson', 'xbayer@example.org', '1-385-554-9662x887', '2013-11-29 04:36:17', '1981-10-01 10:50:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Jarrell', 'Krajcik', 'qnitzsche@example.com', '1-777-284-9995x019', '2005-08-17 06:35:36', '1956-04-28 05:19:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Kelvin', 'Mann', 'mmarquardt@example.net', '(833)653-6434', '1987-11-23 21:13:38', '1942-10-06 03:17:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Julianne', 'Bartell', 'delores.padberg@example.com', '905-448-4504', '1996-08-25 05:38:42', '1936-11-11 22:12:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Amos', 'Kulas', 'trace.prosacco@example.org', '(360)535-6135x7528', '1934-03-03 14:28:41', '1960-04-28 06:17:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Abelardo', 'Bechtelar', 'parker.viviane@example.org', '1-722-385-1996x361', '1975-11-14 02:16:06', '1955-08-31 02:09:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Margaretta', 'Mertz', 'graham.herminia@example.org', '1-721-281-5605x58798', '2011-12-04 10:38:00', '1980-01-09 06:37:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Lisandro', 'Johns', 'tbalistreri@example.org', '1-154-546-0777x02988', '2020-04-18 09:18:45', '1977-08-02 20:42:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Hugh', 'Volkman', 'emard.amely@example.org', '769.958.8811', '1957-02-19 22:37:05', '1932-02-28 08:58:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Presley', 'Gottlieb', 'mikel58@example.com', '1-292-210-3872x144', '2014-04-25 07:51:00', '1939-08-01 02:54:58');


