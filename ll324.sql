--
-- 由SQLiteStudio v3.2.1 产生的文件 周一 11月 30 22:42:33 2020
--
-- 文本编码：UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- 表：admins
CREATE TABLE "admins" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar, "password_digest" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "remember_digest" varchar);
INSERT INTO admins (id, username, password_digest, created_at, updated_at, remember_digest) VALUES (1, 'admin', '5994471ABB01112AFCC18159F6CC74B4F511B99806DA59B3CAF5A9C173CACFC5', '2020-11-27 17:45:00.953136', '2020-11-30 21:29:45.794990', NULL);
INSERT INTO admins (id, username, password_digest, created_at, updated_at, remember_digest) VALUES (2, 'tester', '36BBE50ED96841D10443BCB670D6554F0A34B761BE67EC9C4A8AD2C0C44CA42C', '2020-11-30 21:27:28.842680', '2020-11-30 21:31:33.530829', NULL);

-- 表：ar_internal_metadata
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO ar_internal_metadata ("key", value, created_at, updated_at) VALUES ('environment', 'development', '2020-11-26 01:59:05.694351', '2020-11-26 01:59:05.694351');

-- 表：schema_migrations
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations (version) VALUES ('20201126015854');
INSERT INTO schema_migrations (version) VALUES ('20201126021250');
INSERT INTO schema_migrations (version) VALUES ('20201126022848');
INSERT INTO schema_migrations (version) VALUES ('20201126033721');
INSERT INTO schema_migrations (version) VALUES ('20201126034114');
INSERT INTO schema_migrations (version) VALUES ('20201126034211');
INSERT INTO schema_migrations (version) VALUES ('20201129153802');
INSERT INTO schema_migrations (version) VALUES ('20201130173221');

-- 表：test_kits
CREATE TABLE "test_kits" ("id" integer NOT NULL PRIMARY KEY, "used" boolean DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "TTNcode" varchar);
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (1, 1, '2020-11-26 05:15:34.842463', '2020-11-30 17:09:01.309355', 'sfaj');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (2, 0, '2020-11-30 20:13:22.432121', '2020-11-30 20:13:22.432121', '12');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (3, 0, '2020-11-30 20:17:58.705423', '2020-11-30 20:17:58.705423', 'MM2874Z6');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (4, 0, '2020-11-30 20:27:57.182168', '2020-11-30 20:27:57.182168', '122121');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (5, 1, '2020-11-30 21:32:09.402144', '2020-11-30 21:32:41.801280', '1');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (6, 0, '2020-11-30 21:32:11.379946', '2020-11-30 21:32:11.379946', '2');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (7, 0, '2020-11-30 21:32:13.081956', '2020-11-30 21:32:13.081956', '3');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (8, 0, '2020-11-30 21:32:14.710465', '2020-11-30 21:32:14.710465', '4');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (9, 0, '2020-11-30 21:32:16.290874', '2020-11-30 21:32:16.290874', '5');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (10, 0, '2020-11-30 21:33:33.919919', '2020-11-30 21:33:33.919919', 'FEQQ6UUG');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (11, 0, '2020-11-30 21:33:44.613175', '2020-11-30 21:33:44.613175', '34GC829B');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (12, 0, '2020-11-30 21:33:53.126644', '2020-11-30 21:33:53.126644', 'CB8FBCCM');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (13, 0, '2020-11-30 21:34:06.153113', '2020-11-30 21:34:06.153113', '8RL4ENTK');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (14, 0, '2020-11-30 21:34:40.873060', '2020-11-30 21:34:40.873060', '57UBS5J6');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (15, 0, '2020-11-30 21:34:48.619716', '2020-11-30 21:34:48.619716', '4F7YKH9G');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (16, 0, '2020-11-30 21:35:07.489699', '2020-11-30 21:35:07.489699', 'R9KZ2NXL');
INSERT INTO test_kits (id, used, created_at, updated_at, TTNcode) VALUES (17, 0, '2020-11-30 21:35:22.754688', '2020-11-30 21:35:22.754688', 'CCZTQ8KW');

-- 表：test_results
CREATE TABLE "test_results" ("id" integer NOT NULL PRIMARY KEY, "email" varchar DEFAULT NULL, "fullname" varchar DEFAULT NULL, "age" integer DEFAULT NULL, "gender" integer DEFAULT NULL, "postcode" varchar DEFAULT NULL, "ttn" varchar DEFAULT NULL, "result" varchar DEFAULT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO test_results (id, email, fullname, age, gender, postcode, ttn, result, created_at, updated_at) VALUES (1, 'ab@cd.com', 'foo bar', 16, 1, 'LE12ED', NULL, NULL, '2020-11-26 03:18:09.089240', '2020-11-26 03:18:09.089240');
INSERT INTO test_results (id, email, fullname, age, gender, postcode, ttn, result, created_at, updated_at) VALUES (2, 'fae@a.c', '1', 1, 1, '1', 'sfaj', '1', '2020-11-30 17:09:01.300468', '2020-11-30 17:09:01.300468');
INSERT INTO test_results (id, email, fullname, age, gender, postcode, ttn, result, created_at, updated_at) VALUES (3, 'ab@c.c', 'few', 100, 0, 'LE34GB', '1', '0', '2020-11-30 21:32:41.783482', '2020-11-30 21:32:41.783482');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
