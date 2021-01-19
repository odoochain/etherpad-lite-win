/*
Navicat PGSQL Data Transfer

Source Server         : mypostgres
Source Server Version : 101000
Source Host           : localhost:5432
Source Database       : odoo14
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 101000
File Encoding         : 65001
mysql

CREATE TABLE `store` (
  `key` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
Date: 2021-01-03 05:14:17
*/


-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS "public"."store";
CREATE TABLE "public"."store" (
"value" text COLLATE "default",
"key" varchar COLLATE "default",
"create_uid" int4,
"create_date" timestamp(6),
"write_uid" int4,
"write_date" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Primary Key structure for table mail_mail
-- ----------------------------
ALTER TABLE "public"."store" ADD PRIMARY KEY ("key");

-- ----------------------------

