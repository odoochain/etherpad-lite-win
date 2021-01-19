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

Date: 2021-01-03 05:14:17
*/


-- ----------------------------
-- Table structure for mail_mail
-- ----------------------------
DROP TABLE IF EXISTS "public"."mail_mail";
CREATE TABLE "public"."mail_mail" (
"id" int4 DEFAULT nextval('mail_mail_id_seq'::regclass) NOT NULL,
"mail_message_id" int4 NOT NULL,
"body_html" text COLLATE "default",
"references" text COLLATE "default",
"headers" text COLLATE "default",
"notification" bool,
"email_to" text COLLATE "default",
"email_cc" varchar COLLATE "default",
"state" varchar COLLATE "default",
"auto_delete" bool,
"failure_reason" text COLLATE "default",
"scheduled_date" varchar COLLATE "default",
"create_uid" int4,
"create_date" timestamp(6),
"write_uid" int4,
"write_date" timestamp(6),
"fetchmail_server_id" int4,
"mailing_id" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."mail_mail" IS 'Outgoing Mails';
COMMENT ON COLUMN "public"."mail_mail"."mail_message_id" IS 'Message';
COMMENT ON COLUMN "public"."mail_mail"."body_html" IS 'Rich-text Contents';
COMMENT ON COLUMN "public"."mail_mail"."references" IS 'References';
COMMENT ON COLUMN "public"."mail_mail"."headers" IS 'Headers';
COMMENT ON COLUMN "public"."mail_mail"."notification" IS 'Is Notification';
COMMENT ON COLUMN "public"."mail_mail"."email_to" IS 'To';
COMMENT ON COLUMN "public"."mail_mail"."email_cc" IS 'Cc';
COMMENT ON COLUMN "public"."mail_mail"."state" IS 'Status';
COMMENT ON COLUMN "public"."mail_mail"."auto_delete" IS 'Auto Delete';
COMMENT ON COLUMN "public"."mail_mail"."failure_reason" IS 'Failure Reason';
COMMENT ON COLUMN "public"."mail_mail"."scheduled_date" IS 'Scheduled Send Date';
COMMENT ON COLUMN "public"."mail_mail"."create_uid" IS 'Created by';
COMMENT ON COLUMN "public"."mail_mail"."create_date" IS 'Created on';
COMMENT ON COLUMN "public"."mail_mail"."write_uid" IS 'Last Updated by';
COMMENT ON COLUMN "public"."mail_mail"."write_date" IS 'Last Updated on';
COMMENT ON COLUMN "public"."mail_mail"."fetchmail_server_id" IS 'Inbound Mail Server';
COMMENT ON COLUMN "public"."mail_mail"."mailing_id" IS 'Mass Mailing';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Indexes structure for table mail_mail
-- ----------------------------
CREATE INDEX "mail_mail_mail_message_id_index" ON "public"."mail_mail" USING btree ("mail_message_id");
CREATE INDEX "mail_mail_fetchmail_server_id_index" ON "public"."mail_mail" USING btree ("fetchmail_server_id");

-- ----------------------------
-- Primary Key structure for table mail_mail
-- ----------------------------
ALTER TABLE "public"."mail_mail" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."mail_mail"
-- ----------------------------
ALTER TABLE "public"."mail_mail" ADD FOREIGN KEY ("write_uid") REFERENCES "public"."res_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."mail_mail" ADD FOREIGN KEY ("mailing_id") REFERENCES "public"."mailing_mailing" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."mail_mail" ADD FOREIGN KEY ("fetchmail_server_id") REFERENCES "public"."fetchmail_server" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
ALTER TABLE "public"."mail_mail" ADD FOREIGN KEY ("mail_message_id") REFERENCES "public"."mail_message" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."mail_mail" ADD FOREIGN KEY ("create_uid") REFERENCES "public"."res_users" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;
