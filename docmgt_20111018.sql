# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 Richmond
# Database:             docmgt
# Server version:       5.0.51a-community-log
# Server OS:            redhat-linux-gnu
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'docmgt'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "docmgt" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "docmgt";


#
# Table structure for table 'actionlog'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "actionlog" (
  "user_id" varchar(8) default NULL,
  "doc_id" bigint(20) unsigned default NULL,
  "type_id" tinyint(3) unsigned default NULL,
  "datatype_id" tinyint(3) unsigned default NULL,
  "update_id" tinyint(3) unsigned default NULL,
  "action_ts" datetime default NULL,
  "action_text" varchar(255) default NULL,
  "additional_text" text
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'actionlog'
#

LOCK TABLES "actionlog" WRITE;
/*!40000 ALTER TABLE "actionlog" DISABLE KEYS;*/
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,2,1,'2010-04-22 13:38:44','invoice_num varchar value set to 1019666',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,3,1,'2010-04-22 13:38:44','po_num varchar value set to 8788',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,4,1,'2010-04-22 13:38:44','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,5,1,'2010-04-22 13:38:44','amount numeric value set to 171.32',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,6,1,'2010-04-22 13:38:44','due_date date value set to 2010-02-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,1,1,'2010-04-22 13:38:44','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,1,1,'2010-04-22 13:38:44','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,1,1,'2010-04-22 13:38:44','Filename is 1.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','1',1,1,1,'2010-04-22 13:38:44','Original filename was Invoice 1019666.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,2,1,'2010-04-22 13:48:16','invoice_num varchar value set to 1018809',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,3,1,'2010-04-22 13:48:16','po_num varchar value set to 8788',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,4,1,'2010-04-22 13:48:16','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,5,1,'2010-04-22 13:48:16','amount numeric value set to 165.39',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,6,1,'2010-04-22 13:48:16','due_date date value set to 2009-12-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,1,'2010-04-22 13:48:16','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,1,'2010-04-22 13:48:16','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,1,'2010-04-22 13:48:16','Filename is 2.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,1,'2010-04-22 13:48:16','Original filename was Invoice 1018809.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,2,1,'2010-04-22 16:21:36','invoice_num varchar value set to 1020548',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,3,1,'2010-04-22 16:21:36','po_num varchar value set to 8788',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,4,1,'2010-04-22 16:21:36','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,5,1,'2010-04-22 16:21:36','amount numeric value set to 181.32',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,6,1,'2010-04-22 16:21:36','due_date date value set to 2010-04-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,1,1,'2010-04-22 16:21:36','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,1,1,'2010-04-22 16:21:36','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,1,1,'2010-04-22 16:21:36','Filename is 3.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','3',1,1,1,'2010-04-22 16:21:36','Original filename was Invoice 1020548.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,2,1,'2010-04-22 16:22:38','invoice_num varchar value set to 1020107',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,3,1,'2010-04-22 16:22:38','po_num varchar value set to 8788',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,4,1,'2010-04-22 16:22:38','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,5,1,'2010-04-22 16:22:38','amount numeric value set to 179.43',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,6,1,'2010-04-22 16:22:39','due_date date value set to 2010-03-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,1,1,'2010-04-22 16:22:39','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,1,1,'2010-04-22 16:22:39','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,1,1,'2010-04-22 16:22:39','Filename is 4.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','4',1,1,1,'2010-04-22 16:22:39','Original filename was Invoice 1020107.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,2,1,'2010-04-22 16:23:23','invoice_num varchar value set to 1019235',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,3,1,'2010-04-22 16:23:23','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,4,1,'2010-04-22 16:23:23','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,5,1,'2010-04-22 16:23:23','amount numeric value set to 166.4',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,6,1,'2010-04-22 16:23:23','due_date date value set to 2010-01-04 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,1,1,'2010-04-22 16:23:23','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,1,1,'2010-04-22 16:23:23','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,1,1,'2010-04-22 16:23:23','Filename is 5.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','5',1,1,1,'2010-04-22 16:23:23','Original filename was Invoice 1019235.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,2,1,'2010-04-22 16:24:01','invoice_num varchar value set to 1018391',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,3,1,'2010-04-22 16:24:01','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,4,1,'2010-04-22 16:24:01','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,5,1,'2010-04-22 16:24:01','amount numeric value set to 189.11',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,6,1,'2010-04-22 16:24:01','due_date date value set to 2009-11-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,1,'2010-04-22 16:24:02','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,1,'2010-04-22 16:24:02','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,1,'2010-04-22 16:24:02','Filename is 6.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,1,'2010-04-22 16:24:02','Original filename was Invoice 1018391.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,2,1,'2010-04-22 16:24:45','invoice_num varchar value set to 1017988',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,3,1,'2010-04-22 16:24:45','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,4,1,'2010-04-22 16:24:45','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,5,1,'2010-04-22 16:24:45','amount numeric value set to 190.05',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,6,1,'2010-04-22 16:24:45','due_date date value set to 2009-10-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,1,1,'2010-04-22 16:24:45','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,1,1,'2010-04-22 16:24:45','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,1,1,'2010-04-22 16:24:45','Filename is 7.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,1,1,'2010-04-22 16:24:45','Original filename was Invoice 1017988.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,2,1,'2010-04-22 16:30:29','invoice_num varchar value set to 1017593',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,3,1,'2010-04-22 16:30:29','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,4,1,'2010-04-22 16:30:29','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,5,1,'2010-04-22 16:30:29','amount numeric value set to 151.62',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,6,1,'2010-04-22 16:30:29','due_date date value set to 2009-09-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,1,1,'2010-04-22 16:30:29','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,1,1,'2010-04-22 16:30:29','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,1,1,'2010-04-22 16:30:29','Filename is 8.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','8',1,1,1,'2010-04-22 16:30:29','Original filename was Invoice 1017593.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,2,1,'2010-04-22 16:31:12','invoice_num varchar value set to 1017200',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,3,1,'2010-04-22 16:31:12','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,4,1,'2010-04-22 16:31:12','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,5,1,'2010-04-22 16:31:12','amount numeric value set to 154.47',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,6,1,'2010-04-22 16:31:12','due_date date value set to 2009-08-03 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,1,1,'2010-04-22 16:31:12','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,1,1,'2010-04-22 16:31:12','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,1,1,'2010-04-22 16:31:12','Filename is 9.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','9',1,1,1,'2010-04-22 16:31:12','Original filename was Invoice 1017200.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,2,1,'2010-04-22 16:31:47','invoice_num varchar value set to 1016804',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,3,1,'2010-04-22 16:31:47','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,4,1,'2010-04-22 16:31:47','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,5,1,'2010-04-22 16:31:47','amount numeric value set to 209.19',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,6,1,'2010-04-22 16:31:47','due_date date value set to 2009-07-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,1,1,'2010-04-22 16:31:47','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,1,1,'2010-04-22 16:31:47','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,1,1,'2010-04-22 16:31:47','Filename is 10.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','10',1,1,1,'2010-04-22 16:31:47','Original filename was Invoice 1016804.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,2,1,'2010-04-22 16:32:21','invoice_num varchar value set to 1016411',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,3,1,'2010-04-22 16:32:21','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,4,1,'2010-04-22 16:32:21','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,5,1,'2010-04-22 16:32:21','amount numeric value set to 201.91',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,6,1,'2010-04-22 16:32:21','due_date date value set to 2009-06-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,1,1,'2010-04-22 16:32:21','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,1,1,'2010-04-22 16:32:21','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,1,1,'2010-04-22 16:32:21','Filename is 11.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','11',1,1,1,'2010-04-22 16:32:21','Original filename was Invoice 1016411.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,2,1,'2010-04-22 16:32:53','invoice_num varchar value set to 1016021',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,3,1,'2010-04-22 16:32:53','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,4,1,'2010-04-22 16:32:53','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,5,1,'2010-04-22 16:32:53','amount numeric value set to 180.56',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,6,1,'2010-04-22 16:32:53','due_date date value set to 2009-05-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,1,1,'2010-04-22 16:32:53','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,1,1,'2010-04-22 16:32:53','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,1,1,'2010-04-22 16:32:53','Filename is 12.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','12',1,1,1,'2010-04-22 16:32:53','Original filename was Invoice 1016021.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,2,1,'2010-04-22 16:33:27','invoice_num varchar value set to 1015636',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,3,1,'2010-04-22 16:33:27','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,4,1,'2010-04-22 16:33:27','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,5,1,'2010-04-22 16:33:27','amount numeric value set to 156.71',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,6,1,'2010-04-22 16:33:27','due_date date value set to 2009-04-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,1,1,'2010-04-22 16:33:27','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,1,1,'2010-04-22 16:33:27','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,1,1,'2010-04-22 16:33:27','Filename is 13.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','13',1,1,1,'2010-04-22 16:33:27','Original filename was Invoice 1015636.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,2,1,'2010-04-22 16:34:04','invoice_num varchar value set to 1015256',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,3,1,'2010-04-22 16:34:04','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,4,1,'2010-04-22 16:34:04','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,5,1,'2010-04-22 16:34:04','amount numeric value set to 151.91',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,6,1,'2010-04-22 16:34:04','due_date date value set to 2009-03-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,1,1,'2010-04-22 16:34:04','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,1,1,'2010-04-22 16:34:04','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,1,1,'2010-04-22 16:34:04','Filename is 14.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','14',1,1,1,'2010-04-22 16:34:04','Original filename was Invoice 1015256.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,2,1,'2010-04-22 16:34:37','invoice_num varchar value set to 1014884',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,3,1,'2010-04-22 16:34:37','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,4,1,'2010-04-22 16:34:37','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,5,1,'2010-04-22 16:34:37','amount numeric value set to 150.92',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,6,1,'2010-04-22 16:34:37','due_date date value set to 2009-02-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,1,1,'2010-04-22 16:34:37','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,1,1,'2010-04-22 16:34:37','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,1,1,'2010-04-22 16:34:37','Filename is 15.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,1,1,'2010-04-22 16:34:37','Original filename was Invoice 1014884.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,2,1,'2010-04-22 16:35:06','invoice_num varchar value set to 1014514',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,3,1,'2010-04-22 16:35:06','po_num varchar value set to 5695',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,4,1,'2010-04-22 16:35:06','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,5,1,'2010-04-22 16:35:06','amount numeric value set to 144.09',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,6,1,'2010-04-22 16:35:06','due_date date value set to 2009-01-05 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,1,1,'2010-04-22 16:35:06','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,1,1,'2010-04-22 16:35:06','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,1,1,'2010-04-22 16:35:06','Filename is 16.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,1,1,'2010-04-22 16:35:06','Original filename was Invoice 1014514.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,2,1,'2010-04-22 16:35:44','invoice_num varchar value set to 1014153',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,3,1,'2010-04-22 16:35:44','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,4,1,'2010-04-22 16:35:44','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,5,1,'2010-04-22 16:35:44','amount numeric value set to 183.76',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,6,1,'2010-04-22 16:35:44','due_date date value set to 2008-12-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,1,'2010-04-22 16:35:44','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,1,'2010-04-22 16:35:44','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,1,'2010-04-22 16:35:44','Filename is 17.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,1,'2010-04-22 16:35:44','Original filename was Invoice 1014153.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,2,1,'2010-04-22 16:36:44','invoice_num varchar value set to 1013796',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,3,1,'2010-04-22 16:36:44','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,4,1,'2010-04-22 16:36:44','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,5,1,'2010-04-22 16:36:44','amount numeric value set to 178.14',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,6,1,'2010-04-22 16:36:44','due_date date value set to 2008-11-04 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,1,'2010-04-22 16:36:44','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,1,'2010-04-22 16:36:44','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,1,'2010-04-22 16:36:44','Filename is 18.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,1,'2010-04-22 16:36:44','Original filename was Invoice 1013796.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,2,1,'2010-04-22 16:37:35','invoice_num varchar value set to 1013449',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,3,1,'2010-04-22 16:37:35','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,4,1,'2010-04-22 16:37:35','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,5,1,'2010-04-22 16:37:35','amount numeric value set to 178.14',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,6,1,'2010-04-22 16:37:35','due_date date value set to 2008-10-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,1,'2010-04-22 16:37:35','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,1,'2010-04-22 16:37:35','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,1,'2010-04-22 16:37:35','Filename is 19.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,1,'2010-04-22 16:37:35','Original filename was Invoice 1013449.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,2,1,'2010-04-22 16:38:07','invoice_num varchar value set to 1013115',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,3,1,'2010-04-22 16:38:07','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,4,1,'2010-04-22 16:38:07','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,5,1,'2010-04-22 16:38:07','amount numeric value set to 206.09',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,6,1,'2010-04-22 16:38:07','due_date date value set to 2008-09-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,1,'2010-04-22 16:38:07','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,1,'2010-04-22 16:38:07','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,1,'2010-04-22 16:38:07','Filename is 20.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,1,'2010-04-22 16:38:07','Original filename was Invoice 1013115.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,2,1,'2010-04-22 16:38:36','invoice_num varchar value set to 1012784',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,3,1,'2010-04-22 16:38:36','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,4,1,'2010-04-22 16:38:36','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,5,1,'2010-04-22 16:38:36','amount numeric value set to 187.38',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,6,1,'2010-04-22 16:38:36','due_date date value set to 2008-08-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,1,'2010-04-22 16:38:36','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,1,'2010-04-22 16:38:36','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,1,'2010-04-22 16:38:36','Filename is 21.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,1,'2010-04-22 16:38:36','Original filename was Invoice 1012784.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,2,1,'2010-04-22 16:39:22','invoice_num varchar value set to 1012460',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,3,1,'2010-04-22 16:39:22','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,4,1,'2010-04-22 16:39:22','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,5,1,'2010-04-22 16:39:22','amount numeric value set to 193.18',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,6,1,'2010-04-22 16:39:22','due_date date value set to 2008-07-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,1,'2010-04-22 16:39:22','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,1,'2010-04-22 16:39:22','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,1,'2010-04-22 16:39:22','Filename is 22.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,1,'2010-04-22 16:39:22','Original filename was Invoice 1012460.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,2,1,'2010-04-22 16:39:56','invoice_num varchar value set to 1012142',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,3,1,'2010-04-22 16:39:56','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,4,1,'2010-04-22 16:39:56','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,5,1,'2010-04-22 16:39:56','amount numeric value set to 179.14',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,6,1,'2010-04-22 16:39:56','due_date date value set to 2008-06-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,1,'2010-04-22 16:39:56','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,1,'2010-04-22 16:39:56','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,1,'2010-04-22 16:39:56','Filename is 23.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,1,'2010-04-22 16:39:56','Original filename was Invoice 1012142.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,2,1,'2010-04-22 16:40:30','invoice_num varchar value set to 1011833',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,3,1,'2010-04-22 16:40:30','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,4,1,'2010-04-22 16:40:30','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,5,1,'2010-04-22 16:40:30','amount numeric value set to 196.48',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,6,1,'2010-04-22 16:40:30','due_date date value set to 5008-05-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,1,'2010-04-22 16:40:30','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,1,'2010-04-22 16:40:30','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,1,'2010-04-22 16:40:30','Filename is 24.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,1,'2010-04-22 16:40:30','Original filename was Invoice 1011833.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,2,1,'2010-04-22 16:41:05','invoice_num varchar value set to 1011528',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,3,1,'2010-04-22 16:41:05','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,4,1,'2010-04-22 16:41:05','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,5,1,'2010-04-22 16:41:05','amount numeric value set to 186.26',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,6,1,'2010-04-22 16:41:05','due_date date value set to 2008-04-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,1,'2010-04-22 16:41:05','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,1,'2010-04-22 16:41:05','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,1,'2010-04-22 16:41:05','Filename is 25.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,1,'2010-04-22 16:41:05','Original filename was Invoice 1011528.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,2,1,'2010-04-22 16:41:39','invoice_num varchar value set to 1011232',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,3,1,'2010-04-22 16:41:39','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,4,1,'2010-04-22 16:41:39','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,5,1,'2010-04-22 16:41:39','amount numeric value set to 830.95',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,6,1,'2010-04-22 16:41:39','due_date date value set to 2008-03-03 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,1,'2010-04-22 16:41:39','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,1,'2010-04-22 16:41:39','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,1,'2010-04-22 16:41:39','Filename is 26.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,1,'2010-04-22 16:41:39','Original filename was Invoice 1011232.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,2,1,'2010-04-22 16:42:07','invoice_num varchar value set to 1010938',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,3,1,'2010-04-22 16:42:07','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,4,1,'2010-04-22 16:42:07','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,5,1,'2010-04-22 16:42:07','amount numeric value set to 869.13',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,6,1,'2010-04-22 16:42:07','due_date date value set to 2008-02-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,1,'2010-04-22 16:42:07','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,1,'2010-04-22 16:42:07','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,1,'2010-04-22 16:42:07','Filename is 27.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,1,'2010-04-22 16:42:07','Original filename was Invoice 1010938.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,2,1,'2010-04-22 16:42:42','invoice_num varchar value set to 1010653',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,3,1,'2010-04-22 16:42:42','po_num varchar value set to 2861',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,4,1,'2010-04-22 16:42:42','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,5,1,'2010-04-22 16:42:42','amount numeric value set to 1620.14',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,6,1,'2010-04-22 16:42:42','due_date date value set to 2008-01-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,1,'2010-04-22 16:42:42','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,1,'2010-04-22 16:42:42','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,1,'2010-04-22 16:42:42','Filename is 28.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,1,'2010-04-22 16:42:42','Original filename was Invoice 1010653.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,2,1,'2010-04-22 16:43:24','invoice_num varchar value set to 109841',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,3,1,'2010-04-22 16:43:24','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,4,1,'2010-04-22 16:43:24','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,5,1,'2010-04-22 16:43:24','amount numeric value set to 151.68',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,6,1,'2010-04-22 16:43:24','due_date date value set to 2007-10-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,1,'2010-04-22 16:43:24','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,1,'2010-04-22 16:43:24','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,1,'2010-04-22 16:43:24','Filename is 29.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,1,'2010-04-22 16:43:24','Original filename was Invoice 109841.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,2,1,'2010-04-22 16:43:59','invoice_num varchar value set to 1010376',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,3,1,'2010-04-22 16:43:59','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,4,1,'2010-04-22 16:43:59','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,5,1,'2010-04-22 16:43:59','amount numeric value set to 1175.89',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,6,1,'2010-04-22 16:43:59','due_date date value set to 2007-12-03 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,1,'2010-04-22 16:43:59','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,1,'2010-04-22 16:43:59','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,1,'2010-04-22 16:43:59','Filename is 30.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,1,'2010-04-22 16:43:59','Original filename was Invoice 1010376.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,2,1,'2010-04-22 16:44:30','invoice_num varchar value set to 1010103',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,3,1,'2010-04-22 16:44:30','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,4,1,'2010-04-22 16:44:30','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,5,1,'2010-04-22 16:44:30','amount numeric value set to 162.39',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,6,1,'2010-04-22 16:44:30','due_date date value set to 2007-11-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,1,'2010-04-22 16:44:30','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,1,'2010-04-22 16:44:30','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,1,'2010-04-22 16:44:30','Filename is 31.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,1,'2010-04-22 16:44:30','Original filename was Invoice 1010103.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,2,1,'2010-04-22 16:45:05','invoice_num varchar value set to 109583',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,3,1,'2010-04-22 16:45:05','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,4,1,'2010-04-22 16:45:05','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,5,1,'2010-04-22 16:45:05','amount numeric value set to 174.35',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,6,1,'2010-04-22 16:45:05','due_date date value set to 2007-09-04 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,1,'2010-04-22 16:45:05','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,1,'2010-04-22 16:45:05','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,1,'2010-04-22 16:45:05','Filename is 32.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,1,'2010-04-22 16:45:05','Original filename was Invoice 109583.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,2,1,'2010-04-22 16:45:46','invoice_num varchar value set to 109330',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,3,1,'2010-04-22 16:45:46','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,4,1,'2010-04-22 16:45:46','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,5,1,'2010-04-22 16:45:46','amount numeric value set to 174.28',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,6,1,'2010-04-22 16:45:46','due_date date value set to 2007-08-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,1,'2010-04-22 16:45:46','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,1,'2010-04-22 16:45:46','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,1,'2010-04-22 16:45:46','Filename is 33.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,1,'2010-04-22 16:45:46','Original filename was Invoice 109330.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,2,1,'2010-04-22 16:46:21','invoice_num varchar value set to 109077',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,3,1,'2010-04-22 16:46:21','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,4,1,'2010-04-22 16:46:21','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,5,1,'2010-04-22 16:46:21','amount numeric value set to 143.24',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,6,1,'2010-04-22 16:46:21','due_date date value set to 2007-07-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,1,'2010-04-22 16:46:21','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,1,'2010-04-22 16:46:21','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,1,'2010-04-22 16:46:21','Filename is 34.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,1,'2010-04-22 16:46:21','Original filename was Invoice 109077.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,2,1,'2010-04-22 16:46:52','invoice_num varchar value set to 108833',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,3,1,'2010-04-22 16:46:52','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,4,1,'2010-04-22 16:46:52','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,5,1,'2010-04-22 16:46:52','amount numeric value set to 634.41',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,6,1,'2010-04-22 16:46:52','due_date date value set to 2007-06-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,1,'2010-04-22 16:46:52','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,1,'2010-04-22 16:46:52','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,1,'2010-04-22 16:46:52','Filename is 35.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,1,'2010-04-22 16:46:52','Original filename was Invoice 108833.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,2,1,'2010-04-22 16:47:21','invoice_num varchar value set to 108592',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,3,1,'2010-04-22 16:47:21','po_num varchar value set to 621',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,4,1,'2010-04-22 16:47:21','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,5,1,'2010-04-22 16:47:21','amount numeric value set to 1127.39',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,6,1,'2010-04-22 16:47:21','due_date date value set to 2007-05-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,1,'2010-04-22 16:47:21','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,1,'2010-04-22 16:47:21','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,1,'2010-04-22 16:47:21','Filename is 36.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,1,'2010-04-22 16:47:21','Original filename was Invoice 108592.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,5,2,'2010-04-22 16:49:50','Changed amount numeric value from 178.14 to 172.28',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,2,1,'2010-04-23 12:35:42','invoice_num varchar value set to 1270864319',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,3,1,'2010-04-23 12:35:42','po_num varchar value set to 361',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,4,1,'2010-04-23 12:35:42','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,5,1,'2010-04-23 12:35:42','amount numeric value set to 1378.26',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,6,1,'2010-04-23 12:35:42','due_date date value set to 2007-02-12 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,1,'2010-04-23 12:35:42','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,1,'2010-04-23 12:35:42','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,1,'2010-04-23 12:35:42','Filename is 37.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,1,'2010-04-23 12:35:42','Original filename was Invoice 1270864319.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,2,1,'2010-04-23 12:36:36','invoice_num varchar value set to 1517669317',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,3,1,'2010-04-23 12:36:36','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,4,1,'2010-04-23 12:36:36','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,5,1,'2010-04-23 12:36:36','amount numeric value set to 1124.04',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,6,1,'2010-04-23 12:36:36','due_date date value set to 2009-03-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,1,1,'2010-04-23 12:36:36','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,1,1,'2010-04-23 12:36:36','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,1,1,'2010-04-23 12:36:36','Filename is 38.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,1,1,'2010-04-23 12:36:36','Original filename was Invoice 1517669317.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,2,1,'2010-04-23 12:37:14','invoice_num varchar value set to 1506916801',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,3,1,'2010-04-23 12:37:14','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,4,1,'2010-04-23 12:37:14','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,5,1,'2010-04-23 12:37:14','amount numeric value set to 913.64',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,6,1,'2010-04-23 12:37:14','due_date date value set to 2009-02-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,1,1,'2010-04-23 12:37:14','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,1,1,'2010-04-23 12:37:14','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,1,1,'2010-04-23 12:37:14','Filename is 39.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,1,1,'2010-04-23 12:37:14','Original filename was Invoice 1506916801.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,2,1,'2010-04-23 12:38:06','invoice_num varchar value set to 1496197873',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,3,1,'2010-04-23 12:38:06','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,4,1,'2010-04-23 12:38:06','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,5,1,'2010-04-23 12:38:06','amount numeric value set to 1129.38',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,6,1,'2010-04-23 12:38:06','due_date date value set to 2009-01-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,1,1,'2010-04-23 12:38:06','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,1,1,'2010-04-23 12:38:06','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,1,1,'2010-04-23 12:38:06','Filename is 40.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,1,1,'2010-04-23 12:38:06','Original filename was Invoice 1496197873.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,2,1,'2010-04-23 12:38:58','invoice_num varchar value set to 1528496689',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,3,1,'2010-04-23 12:38:58','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,4,1,'2010-04-23 12:38:58','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,5,1,'2010-04-23 12:38:58','amount numeric value set to 2219.13',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,6,1,'2010-04-23 12:38:58','due_date date value set to 2009-03-12 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,1,1,'2010-04-23 12:38:58','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,1,1,'2010-04-23 12:38:58','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,1,1,'2010-04-23 12:38:58','Filename is 41.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,1,1,'2010-04-23 12:38:58','Original filename was Invoice 1528495689.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,2,1,'2010-04-23 12:39:45','invoice_num varchar value set to 1550085508',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,3,1,'2010-04-23 12:39:45','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,4,1,'2010-04-23 12:39:45','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,5,1,'2010-04-23 12:39:45','amount numeric value set to 1144.07',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,6,1,'2010-04-23 12:39:45','due_date date value set to 2009-06-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,1,1,'2010-04-23 12:39:46','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,1,1,'2010-04-23 12:39:46','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,1,1,'2010-04-23 12:39:46','Filename is 42.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,1,1,'2010-04-23 12:39:46','Original filename was Invoice 1550085508.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,2,1,'2010-04-23 12:41:26','invoice_num varchar value set to 1539315677',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,3,1,'2010-04-23 12:41:26','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,4,1,'2010-04-23 12:41:26','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,5,1,'2010-04-23 12:41:26','amount numeric value set to 1102.73',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,6,1,'2010-04-23 12:41:26','due_date date value set to 2009-05-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,1,1,'2010-04-23 12:41:26','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,1,1,'2010-04-23 12:41:26','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,1,1,'2010-04-23 12:41:26','Filename is 43.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,1,1,'2010-04-23 12:41:26','Original filename was Invoice 1539315677.PDF',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,2,1,'2010-04-23 12:42:00','invoice_num varchar value set to 1560938575',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,3,1,'2010-04-23 12:42:00','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,4,1,'2010-04-23 12:42:00','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,5,1,'2010-04-23 12:42:00','amount numeric value set to 1412.3',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,6,1,'2010-04-23 12:42:00','due_date date value set to 2009-07-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,1,1,'2010-04-23 12:42:00','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,1,1,'2010-04-23 12:42:00','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,1,1,'2010-04-23 12:42:00','Filename is 44.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,1,1,'2010-04-23 12:42:00','Original filename was Invoice 1560938575.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,2,1,'2010-04-23 12:42:42','invoice_num varchar value set to 6289971379',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,3,1,'2010-04-23 12:42:42','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,4,1,'2010-04-23 12:42:42','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,5,1,'2010-04-23 12:42:42','amount numeric value set to 1310.62',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,6,1,'2010-04-23 12:42:42','due_date date value set to 2009-08-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,1,1,'2010-04-23 12:42:42','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,1,1,'2010-04-23 12:42:42','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,1,1,'2010-04-23 12:42:42','Filename is 45.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,1,1,'2010-04-23 12:42:42','Original filename was Invoice 6289971379.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,2,1,'2010-04-23 12:55:55','invoice_num varchar value set to 6303460271',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,3,1,'2010-04-23 12:55:55','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,4,1,'2010-04-23 12:55:55','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,5,1,'2010-04-23 12:55:55','amount numeric value set to 1165.57',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,6,1,'2010-04-23 12:55:55','due_date date value set to 2009-09-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,1,1,'2010-04-23 12:55:55','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,1,1,'2010-04-23 12:55:55','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,1,1,'2010-04-23 12:55:55','Filename is 46.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,1,1,'2010-04-23 12:55:55','Original filename was Invoice 6303460271.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,2,1,'2010-04-23 12:56:29','invoice_num varchar value set to 6316911228',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,3,1,'2010-04-23 12:56:29','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,4,1,'2010-04-23 12:56:29','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,5,1,'2010-04-23 12:56:29','amount numeric value set to 1198.88',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,6,1,'2010-04-23 12:56:29','due_date date value set to 2009-10-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,1,1,'2010-04-23 12:56:29','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,1,1,'2010-04-23 12:56:29','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,1,1,'2010-04-23 12:56:29','Filename is 47.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,1,1,'2010-04-23 12:56:29','Original filename was Invoice 6316911228.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,2,1,'2010-04-23 12:57:18','invoice_num varchar value set to 6330288505',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,3,1,'2010-04-23 12:57:18','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,4,1,'2010-04-23 12:57:18','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,5,1,'2010-04-23 12:57:18','amount numeric value set to 1218.32',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,6,1,'2010-04-23 12:57:18','due_date date value set to 2009-11-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,1,1,'2010-04-23 12:57:18','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,1,1,'2010-04-23 12:57:18','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,1,1,'2010-04-23 12:57:18','Filename is 48.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,1,1,'2010-04-23 12:57:18','Original filename was Invoice 6330288505.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,2,1,'2010-04-23 12:58:09','invoice_num varchar value set to 6343615712',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,3,1,'2010-04-23 12:58:09','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,4,1,'2010-04-23 12:58:09','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,5,1,'2010-04-23 12:58:09','amount numeric value set to 1598.43',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,6,1,'2010-04-23 12:58:09','due_date date value set to 2009-12-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,1,1,'2010-04-23 12:58:09','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,1,1,'2010-04-23 12:58:09','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,1,1,'2010-04-23 12:58:09','Filename is 49.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,1,1,'2010-04-23 12:58:09','Original filename was Invoice 6343615712.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,2,1,'2010-04-23 12:58:57','invoice_num varchar value set to 6356950593',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,3,1,'2010-04-23 12:58:57','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,4,1,'2010-04-23 12:58:57','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,5,1,'2010-04-23 12:58:57','amount numeric value set to 1838.06',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,6,1,'2010-04-23 12:58:57','due_date date value set to 2010-01-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,1,1,'2010-04-23 12:58:57','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,1,1,'2010-04-23 12:58:57','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,1,1,'2010-04-23 12:58:57','Filename is 50.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,1,1,'2010-04-23 12:58:57','Original filename was Invoice 6356950593.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,2,1,'2010-04-23 12:59:41','invoice_num varchar value set to 6370261042',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,3,1,'2010-04-23 12:59:41','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,4,1,'2010-04-23 12:59:41','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,5,1,'2010-04-23 12:59:41','amount numeric value set to 1611',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,6,1,'2010-04-23 12:59:41','due_date date value set to 2010-02-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,1,1,'2010-04-23 12:59:41','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,1,1,'2010-04-23 12:59:41','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,1,1,'2010-04-23 12:59:41','Filename is 51.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','51',1,1,1,'2010-04-23 12:59:41','Original filename was Invoice 6370261042.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,2,1,'2010-04-23 13:00:22','invoice_num varchar value set to 6383503638',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,3,1,'2010-04-23 13:00:22','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,4,1,'2010-04-23 13:00:22','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,5,1,'2010-04-23 13:00:22','amount numeric value set to 1868.69',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,6,1,'2010-04-23 13:00:22','due_date date value set to 2010-03-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,1,1,'2010-04-23 13:00:22','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,1,1,'2010-04-23 13:00:22','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,1,1,'2010-04-23 13:00:22','Filename is 52.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','52',1,1,1,'2010-04-23 13:00:22','Original filename was Invoice 6383503638.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,2,1,'2010-04-23 13:01:05','invoice_num varchar value set to 6396722213',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,3,1,'2010-04-23 13:01:05','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,4,1,'2010-04-23 13:01:05','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,5,1,'2010-04-23 13:01:05','amount numeric value set to 1588.29',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,6,1,'2010-04-23 13:01:05','due_date date value set to 2010-04-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,1,1,'2010-04-23 13:01:05','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,1,1,'2010-04-23 13:01:05','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,1,1,'2010-04-23 13:01:05','Filename is 53.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','53',1,1,1,'2010-04-23 13:01:05','Original filename was Invoice 6396722213.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,2,1,'2010-04-23 13:01:39','invoice_num varchar value set to 6409916837',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,3,1,'2010-04-23 13:01:39','po_num varchar value set to 2555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,4,1,'2010-04-23 13:01:39','vendor_id numeric value set to 1737',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,5,1,'2010-04-23 13:01:39','amount numeric value set to 1662.98',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,6,1,'2010-04-23 13:01:39','due_date date value set to 2010-05-07 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,1,1,'2010-04-23 13:01:39','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,1,1,'2010-04-23 13:01:39','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,1,1,'2010-04-23 13:01:39','Filename is 54.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','54',1,1,1,'2010-04-23 13:01:39','Original filename was Invoice 6409916837.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,13,1,'2010-04-23 13:07:26','project varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,10,1,'2010-04-23 13:07:26','quote_num varchar value set to 20080827',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,12,1,'2010-04-23 13:07:26','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,18,1,'2010-04-23 13:07:26','receive_date date value set to 2008-08-27 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,17,1,'2010-04-23 13:07:26','vendor_id numeric value set to 2321',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,11,1,'2010-04-23 13:07:26','contact varchar value set to Derek Nicely',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,14,1,'2010-04-23 13:07:26','expiration_date date value set to 2008-09-27 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,1,1,'2010-04-23 13:07:26','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,1,1,'2010-04-23 13:07:26','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,1,1,'2010-04-23 13:07:26','Filename is 55.htm',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,1,1,'2010-04-23 13:07:26','Original filename was Quote for ActiveSocket License.htm',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,2,1,'2010-04-23 13:09:16','invoice_num varchar value set to 398',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,3,1,'2010-04-23 13:09:16','po_num varchar value set to 5542',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,4,1,'2010-04-23 13:09:16','vendor_id numeric value set to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,5,1,'2010-04-23 13:09:16','amount numeric value set to 188.5',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,6,1,'2010-04-23 13:09:16','due_date date value set to 2008-12-11 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,1,1,'2010-04-23 13:09:16','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,1,1,'2010-04-23 13:09:16','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,1,1,'2010-04-23 13:09:16','Filename is 56.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,1,1,'2010-04-23 13:09:16','Original filename was Invoice 398.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,2,1,'2010-04-23 13:10:13','invoice_num varchar value set to 410',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,3,1,'2010-04-23 13:10:13','po_num varchar value set to 5542',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,4,1,'2010-04-23 13:10:13','vendor_id numeric value set to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,5,1,'2010-04-23 13:10:13','amount numeric value set to 34',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,6,1,'2010-04-23 13:10:13','due_date date value set to 2009-11-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,1,1,'2010-04-23 13:10:13','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,1,1,'2010-04-23 13:10:13','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,1,1,'2010-04-23 13:10:13','Filename is 57.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,1,1,'2010-04-23 13:10:13','Original filename was Invoice 410.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,2,1,'2010-04-23 13:10:42','invoice_num varchar value set to 414',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,3,1,'2010-04-23 13:10:42','po_num varchar value set to 5542',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,1,'2010-04-23 13:10:42','vendor_id numeric value set to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,5,1,'2010-04-23 13:10:42','amount numeric value set to 24',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,6,1,'2010-04-23 13:10:42','due_date date value set to 2009-11-03 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,1,1,'2010-04-23 13:10:42','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,1,1,'2010-04-23 13:10:42','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,1,1,'2010-04-23 13:10:42','Filename is 58.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,1,1,'2010-04-23 13:10:42','Original filename was Invoice 414.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,2,1,'2010-04-23 13:14:52','invoice_num varchar value set to 821717482X01072009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,3,1,'2010-04-23 13:14:52','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,4,1,'2010-04-23 13:14:52','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,5,1,'2010-04-23 13:14:52','amount numeric value set to 762.48',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,6,1,'2010-04-23 13:14:52','due_date date value set to 2009-06-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,1,'2010-04-23 13:14:53','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,1,'2010-04-23 13:14:53','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,1,'2010-04-23 13:14:53','Filename is 60.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,1,'2010-04-23 13:14:53','Original filename was Invoice 821717482X01072009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,2,1,'2010-04-23 13:15:54','invoice_num varchar value set to 821717482X01052010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,3,1,'2010-04-23 13:15:54','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,4,1,'2010-04-23 13:15:54','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,5,1,'2010-04-23 13:15:54','amount numeric value set to 681.99',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,6,1,'2010-04-23 13:15:54','due_date date value set to 2010-01-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,1,'2010-04-23 13:15:54','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,1,'2010-04-23 13:15:54','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,1,'2010-04-23 13:15:54','Filename is 61.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,1,'2010-04-23 13:15:54','Original filename was Invoice 821717482X01052010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,2,1,'2010-04-23 13:16:36','invoice_num varchar value set to 821717482X02052010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,3,1,'2010-04-23 13:16:36','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,4,1,'2010-04-23 13:16:36','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,5,1,'2010-04-23 13:16:36','amount numeric value set to 360.32',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,6,1,'2010-04-23 13:16:36','due_date date value set to 2010-02-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,1,1,'2010-04-23 13:16:36','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,1,1,'2010-04-23 13:16:36','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,1,1,'2010-04-23 13:16:36','Filename is 62.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','62',1,1,1,'2010-04-23 13:16:36','Original filename was Invoice 821717482X02052010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,2,1,'2010-04-23 13:17:16','invoice_num varchar value set to 821717482X03052010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,3,1,'2010-04-23 13:17:16','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,4,1,'2010-04-23 13:17:16','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,5,1,'2010-04-23 13:17:16','amount numeric value set to 723.85',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,6,1,'2010-04-23 13:17:16','due_date date value set to 2010-03-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,1,1,'2010-04-23 13:17:16','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,1,1,'2010-04-23 13:17:16','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,1,1,'2010-04-23 13:17:16','Filename is 63.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','63',1,1,1,'2010-04-23 13:17:16','Original filename was Invoice 821717482X03052010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,2,1,'2010-04-23 13:18:03','invoice_num varchar value set to 8217174482X04052010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,3,1,'2010-04-23 13:18:03','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,4,1,'2010-04-23 13:18:03','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,5,1,'2010-04-23 13:18:03','amount numeric value set to 2321.07',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,6,1,'2010-04-23 13:18:03','due_date date value set to 2010-04-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,1,1,'2010-04-23 13:18:03','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,1,1,'2010-04-23 13:18:03','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,1,1,'2010-04-23 13:18:03','Filename is 64.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','64',1,1,1,'2010-04-23 13:18:03','Original filename was Invoice 821717482X04052010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,2,1,'2010-04-23 13:19:04','invoice_num varchar value set to 821717482X12052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,3,1,'2010-04-23 13:19:04','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,4,1,'2010-04-23 13:19:04','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,5,1,'2010-04-23 13:19:04','amount numeric value set to 1184.09',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,6,1,'2010-04-23 13:19:04','due_date date value set to 2009-12-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,1,1,'2010-04-23 13:19:04','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,1,1,'2010-04-23 13:19:04','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,1,1,'2010-04-23 13:19:04','Filename is 65.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,1,1,'2010-04-23 13:19:04','Original filename was Invoice 821717482X12052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,2,1,'2010-04-23 13:19:45','invoice_num varchar value set to 821717482X11052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,3,1,'2010-04-23 13:19:45','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,4,1,'2010-04-23 13:19:45','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,5,1,'2010-04-23 13:19:45','amount numeric value set to 592.88',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,6,1,'2010-04-23 13:19:45','due_date date value set to 2009-11-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,1,'2010-04-23 13:19:45','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,1,'2010-04-23 13:19:45','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,1,'2010-04-23 13:19:45','Filename is 66.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,1,'2010-04-23 13:19:45','Original filename was Invoice 821717482X11052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,2,1,'2010-04-23 13:20:38','invoice_num varchar value set to 821717482X10052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,3,1,'2010-04-23 13:20:38','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,4,1,'2010-04-23 13:20:38','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,5,1,'2010-04-23 13:20:38','amount numeric value set to 741.65',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,6,1,'2010-04-23 13:20:38','due_date date value set to 2009-10-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,1,1,'2010-04-23 13:20:38','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,1,1,'2010-04-23 13:20:38','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,1,1,'2010-04-23 13:20:38','Filename is 67.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,1,1,'2010-04-23 13:20:38','Original filename was Invoice 821717482X10052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,2,1,'2010-04-23 13:21:29','invoice_num varchar value set to 821717482X09052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,3,1,'2010-04-23 13:21:29','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,4,1,'2010-04-23 13:21:29','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,5,1,'2010-04-23 13:21:29','amount numeric value set to 695.16',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,6,1,'2010-04-23 13:21:29','due_date date value set to 2009-09-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,1,1,'2010-04-23 13:21:29','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,1,1,'2010-04-23 13:21:29','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,1,1,'2010-04-23 13:21:29','Filename is 68.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,1,1,'2010-04-23 13:21:29','Original filename was Invoice 821717482X09052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,2,1,'2010-04-23 13:22:04','invoice_num varchar value set to 821717482X08052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,3,1,'2010-04-23 13:22:04','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,4,1,'2010-04-23 13:22:04','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,5,1,'2010-04-23 13:22:04','amount numeric value set to 791.56',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,6,1,'2010-04-23 13:22:04','due_date date value set to 2009-08-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,1,1,'2010-04-23 13:22:04','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,1,1,'2010-04-23 13:22:04','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,1,1,'2010-04-23 13:22:04','Filename is 69.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,1,1,'2010-04-23 13:22:04','Original filename was Invoice 821717482X08052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,2,1,'2010-04-23 13:22:52','invoice_num varchar value set to 821717482X07052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,3,1,'2010-04-23 13:22:52','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,4,1,'2010-04-23 13:22:52','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,5,1,'2010-04-23 13:22:52','amount numeric value set to 702.38',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,6,1,'2010-04-23 13:22:52','due_date date value set to 2009-07-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,1,'2010-04-23 13:22:52','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,1,'2010-04-23 13:22:52','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,1,'2010-04-23 13:22:52','Filename is 70.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,1,'2010-04-23 13:22:52','Original filename was Invoice 821717482X07052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,2,1,'2010-04-23 13:23:37','invoice_num varchar value set to 821717482X06052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,3,1,'2010-04-23 13:23:37','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,4,1,'2010-04-23 13:23:37','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,5,1,'2010-04-23 13:23:37','amount numeric value set to 964.81',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,6,1,'2010-04-23 13:23:37','due_date date value set to 2009-06-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,1,1,'2010-04-23 13:23:37','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,1,1,'2010-04-23 13:23:37','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,1,1,'2010-04-23 13:23:37','Filename is 71.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,1,1,'2010-04-23 13:23:37','Original filename was Invoice 821717482X06052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,2,1,'2010-04-23 13:24:21','invoice_num varchar value set to 821717482X05052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,3,1,'2010-04-23 13:24:21','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,4,1,'2010-04-23 13:24:21','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,5,1,'2010-04-23 13:24:21','amount numeric value set to 1186.22',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,6,1,'2010-04-23 13:24:21','due_date date value set to 2009-05-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,1,1,'2010-04-23 13:24:21','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,1,1,'2010-04-23 13:24:21','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,1,1,'2010-04-23 13:24:21','Filename is 72.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,1,1,'2010-04-23 13:24:21','Original filename was Invoice 821717482X05052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,2,1,'2010-04-23 13:25:39','invoice_num varchar value set to 821717482X04052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,3,1,'2010-04-23 13:25:39','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,4,1,'2010-04-23 13:25:39','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,5,1,'2010-04-23 13:25:39','amount numeric value set to 1041.29',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,6,1,'2010-04-23 13:25:39','due_date date value set to 2009-04-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,1,1,'2010-04-23 13:25:39','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,1,1,'2010-04-23 13:25:39','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,1,1,'2010-04-23 13:25:39','Filename is 73.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,1,1,'2010-04-23 13:25:39','Original filename was Invoice 821717482X04052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,2,1,'2010-04-23 13:26:20','invoice_num varchar value set to 821717482X03052009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,3,1,'2010-04-23 13:26:20','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,4,1,'2010-04-23 13:26:20','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,5,1,'2010-04-23 13:26:20','amount numeric value set to 1140.87',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,6,1,'2010-04-23 13:26:20','due_date date value set to 2009-03-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,1,1,'2010-04-23 13:26:20','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,1,1,'2010-04-23 13:26:20','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,1,1,'2010-04-23 13:26:20','Filename is 74.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,1,1,'2010-04-23 13:26:20','Original filename was Invoice 821717482X03052009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,2,1,'2010-04-23 13:27:07','invoice_num varchar value set to 821717482X02072009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,3,1,'2010-04-23 13:27:07','po_num varchar value set to 2552',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,4,1,'2010-04-23 13:27:07','vendor_id numeric value set to 612',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,5,1,'2010-04-23 13:27:07','amount numeric value set to 806.21',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,6,1,'2010-04-23 13:27:07','due_date date value set to 2009-02-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,1,1,'2010-04-23 13:27:07','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,1,1,'2010-04-23 13:27:07','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,1,1,'2010-04-23 13:27:07','Filename is 75.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,1,1,'2010-04-23 13:27:07','Original filename was Invoice 821717482X02072009.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,13,1,'2010-04-23 13:35:37','project varchar value set to Backup Exec',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,10,1,'2010-04-23 13:35:37','quote_num varchar value set to 66018',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,12,1,'2010-04-23 13:35:37','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,18,1,'2010-04-23 13:35:37','receive_date date value set to 2009-07-29 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,17,1,'2010-04-23 13:35:37','vendor_id numeric value set to 402',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,11,1,'2010-04-23 13:35:37','contact varchar value set to Brian Rohan',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,14,1,'2010-04-23 13:35:37','expiration_date date value set to 2009-10-15 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,1,1,'2010-04-23 13:35:37','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,1,1,'2010-04-23 13:35:37','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,1,1,'2010-04-23 13:35:37','Filename is 76.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,1,1,'2010-04-23 13:35:37','Original filename was Est_66018_from_Advantec_Glo.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,2,1,'2010-04-23 13:36:15','invoice_num varchar value set to 10325',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,3,1,'2010-04-23 13:36:15','po_num varchar value set to 7469',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,4,1,'2010-04-23 13:36:15','vendor_id numeric value set to 402',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,5,1,'2010-04-23 13:36:15','amount numeric value set to 555',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,6,1,'2010-04-23 13:36:15','due_date date value set to 2009-11-12 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,1,'2010-04-23 13:36:15','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,1,'2010-04-23 13:36:15','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,1,'2010-04-23 13:36:15','Filename is 77.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,1,'2010-04-23 13:36:15','Original filename was Invoice 10325.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,13,1,'2010-04-23 13:37:31','project varchar value set to Backup Exec',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,10,1,'2010-04-23 13:37:31','quote_num varchar value set to 65472',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,12,1,'2010-04-23 13:37:31','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,18,1,'2010-04-23 13:37:31','receive_date date value set to 2008-09-23 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,17,1,'2010-04-23 13:37:31','vendor_id numeric value set to 402',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,11,1,'2010-04-23 13:37:31','contact varchar value set to Brian Rohan',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,14,1,'2010-04-23 13:37:31','expiration_date date value set to 2008-10-23 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,1,1,'2010-04-23 13:37:31','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,1,1,'2010-04-23 13:37:31','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,1,1,'2010-04-23 13:37:31','Filename is 78.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,1,1,'2010-04-23 13:37:31','Original filename was Est_65472_from_Advantec_Glo.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,13,1,'2010-04-23 13:40:18','project varchar value set to Bigfoot',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,10,1,'2010-04-23 13:40:18','quote_num varchar value set to 20080117',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,12,1,'2010-04-23 13:40:18','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,18,1,'2010-04-23 13:40:18','receive_date date value set to 2008-01-17 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,17,1,'2010-04-23 13:40:18','vendor_id numeric value set to 1934',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,11,1,'2010-04-23 13:40:18','contact varchar value set to Michele Title',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,14,1,'2010-04-23 13:40:18','expiration_date date value set to 2008-02-17 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,1,1,'2010-04-23 13:40:18','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,1,1,'2010-04-23 13:40:18','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,1,1,'2010-04-23 13:40:18','Filename is 79.htm',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,1,1,'2010-04-23 13:40:18','Original filename was Smart Maintenance Quote for 2008.htm',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,13,1,'2010-04-23 13:42:27','project varchar value set to Bigfoot',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,10,1,'2010-04-23 13:42:27','quote_num varchar value set to 20100105',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,12,1,'2010-04-23 13:42:27','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,18,1,'2010-04-23 13:42:27','receive_date date value set to 2010-01-06 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,17,1,'2010-04-23 13:42:27','vendor_id numeric value set to 1934',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,11,1,'2010-04-23 13:42:27','contact varchar value set to Michele Title',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,14,1,'2010-04-23 13:42:27','expiration_date date value set to 2010-02-06 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,1,'2010-04-23 13:42:27','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,1,'2010-04-23 13:42:27','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,1,'2010-04-23 13:42:27','Filename is 80.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,1,'2010-04-23 13:42:27','Original filename was Quote 20100106.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,2,1,'2010-04-23 13:43:05','invoice_num varchar value set to 7753',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,3,1,'2010-04-23 13:43:05','po_num varchar value set to 8809',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,4,1,'2010-04-23 13:43:05','vendor_id numeric value set to 1934',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,5,1,'2010-04-23 13:43:05','amount numeric value set to 8420',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,6,1,'2010-04-23 13:43:05','due_date date value set to 2010-02-24 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,1,1,'2010-04-23 13:43:05','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,1,1,'2010-04-23 13:43:05','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,1,1,'2010-04-23 13:43:05','Filename is 81.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','81',1,1,1,'2010-04-23 13:43:05','Original filename was Invoice 7753.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,13,1,'2010-04-23 13:43:56','project varchar value set to Bigfoot',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,10,1,'2010-04-23 13:43:56','quote_num varchar value set to 20090122',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,12,1,'2010-04-23 13:43:56','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,18,1,'2010-04-23 13:43:56','receive_date date value set to 2009-01-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,17,1,'2010-04-23 13:43:56','vendor_id numeric value set to 1934',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,11,1,'2010-04-23 13:43:56','contact varchar value set to Michele Title',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,14,1,'2010-04-23 13:43:56','expiration_date date value set to 2009-02-22 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,1,1,'2010-04-23 13:43:56','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,1,1,'2010-04-23 13:43:56','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,1,1,'2010-04-23 13:43:56','Filename is 82.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,1,1,'2010-04-23 13:43:56','Original filename was Quote 20090122.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,2,1,'2010-04-23 13:44:24','invoice_num varchar value set to 6817',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,3,1,'2010-04-23 13:44:24','po_num varchar value set to 5916',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,4,1,'2010-04-23 13:44:24','vendor_id numeric value set to 1934',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,5,1,'2010-04-23 13:44:24','amount numeric value set to 7000',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,6,1,'2010-04-23 13:44:24','due_date date value set to 2009-02-27 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,1,1,'2010-04-23 13:44:24','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,1,1,'2010-04-23 13:44:24','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,1,1,'2010-04-23 13:44:24','Filename is 83.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,1,1,'2010-04-23 13:44:24','Original filename was Invoice 6817.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,13,1,'2010-04-23 13:47:00','project varchar value set to BlackBerry',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,10,1,'2010-04-23 13:47:00','quote_num varchar value set to 66205',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,12,1,'2010-04-23 13:47:00','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,18,1,'2010-04-23 13:47:00','receive_date date value set to 2009-11-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,17,1,'2010-04-23 13:47:00','vendor_id numeric value set to 402',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,11,1,'2010-04-23 13:47:00','contact varchar value set to Brian Rohan',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,14,1,'2010-04-23 13:47:00','expiration_date date value set to 2009-12-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,1,1,'2010-04-23 13:47:00','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,1,1,'2010-04-23 13:47:00','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,1,1,'2010-04-23 13:47:00','Filename is 84.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,1,1,'2010-04-23 13:47:00','Original filename was AdvantecGlobalServices quote 66205.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,2,1,'2010-04-23 13:47:35','invoice_num varchar value set to 10339',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,3,1,'2010-04-23 13:47:35','po_num varchar value set to 8315',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,4,1,'2010-04-23 13:47:35','vendor_id numeric value set to 402',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,5,1,'2010-04-23 13:47:35','amount numeric value set to 385',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,6,1,'2010-04-23 13:47:35','due_date date value set to 2009-12-24 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,1,1,'2010-04-23 13:47:35','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,1,1,'2010-04-23 13:47:35','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,1,1,'2010-04-23 13:47:35','Filename is 85.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,1,1,'2010-04-23 13:47:35','Original filename was Invoice 10339.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,2,1,'2010-04-23 14:07:49','invoice_num varchar value set to AKSA-6656',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,3,1,'2010-04-23 14:07:49','po_num varchar value set to 6656',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,4,1,'2010-04-23 14:07:49','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,5,1,'2010-04-23 14:07:49','amount numeric value set to 300',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,6,1,'2010-04-23 14:07:49','due_date date value set to 2009-06-28 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,1,'2010-04-23 14:07:49','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,1,'2010-04-23 14:07:49','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,1,'2010-04-23 14:07:49','Filename is 86.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,1,'2010-04-23 14:07:49','Original filename was Invoice AKSA-6656.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,2,1,'2010-04-23 14:08:34','invoice_num varchar value set to AKSA-4941-08',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,3,1,'2010-04-23 14:08:34','po_num varchar value set to 4941',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,4,1,'2010-04-23 14:08:34','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,5,1,'2010-04-23 14:08:34','amount numeric value set to 600',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,6,1,'2010-04-23 14:08:34','due_date date value set to 2008-11-19 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,1,'2010-04-23 14:08:34','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,1,'2010-04-23 14:08:34','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,1,'2010-04-23 14:08:34','Filename is 87.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,1,'2010-04-23 14:08:34','Original filename was Invoice AKSA-4941-08.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,2,1,'2010-04-23 14:09:04','invoice_num varchar value set to AKSA-4940-08',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,3,1,'2010-04-23 14:09:04','po_num varchar value set to 4940',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,4,1,'2010-04-23 14:09:04','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,5,1,'2010-04-23 14:09:04','amount numeric value set to 600',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,6,1,'2010-04-23 14:09:04','due_date date value set to 2008-11-19 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,1,'2010-04-23 14:09:05','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,1,'2010-04-23 14:09:05','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,1,'2010-04-23 14:09:05','Filename is 88.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,1,'2010-04-23 14:09:05','Original filename was Invoice AKSA-4940-08.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,2,1,'2010-04-23 14:09:36','invoice_num varchar value set to AKSA-8088',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,3,1,'2010-04-23 14:09:36','po_num varchar value set to 8088',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,4,1,'2010-04-23 14:09:36','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,5,1,'2010-04-23 14:09:36','amount numeric value set to 1200',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,6,1,'2010-04-23 14:09:36','due_date date value set to 2009-11-20 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,1,'2010-04-23 14:09:36','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,1,'2010-04-23 14:09:36','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,1,'2010-04-23 14:09:36','Filename is 89.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,1,'2010-04-23 14:09:36','Original filename was Invoice AKSA-8088.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,2,1,'2010-04-23 14:10:03','invoice_num varchar value set to AKSA-7123',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,3,1,'2010-04-23 14:10:03','po_num varchar value set to 7123',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,4,1,'2010-04-23 14:10:03','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,5,1,'2010-04-23 14:10:03','amount numeric value set to 300',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,6,1,'2010-04-23 14:10:03','due_date date value set to 2009-08-15 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,1,'2010-04-23 14:10:03','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,1,'2010-04-23 14:10:03','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,1,'2010-04-23 14:10:03','Filename is 90.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,1,'2010-04-23 14:10:03','Original filename was Invoice AKSA-7123.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,2,1,'2010-04-23 14:10:35','invoice_num varchar value set to AKSA-9004',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,3,1,'2010-04-23 14:10:35','po_num varchar value set to 9004',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,4,1,'2010-04-23 14:10:35','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,5,1,'2010-04-23 14:10:35','amount numeric value set to 150',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,6,1,'2010-04-23 14:10:35','due_date date value set to 2010-03-05 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,1,'2010-04-23 14:10:35','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,1,'2010-04-23 14:10:35','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,1,'2010-04-23 14:10:35','Filename is 91.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,1,'2010-04-23 14:10:35','Original filename was Invoice AKSA-9004.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,2,1,'2010-04-23 14:11:11','invoice_num varchar value set to AKSA-8754-02',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,3,1,'2010-04-23 14:11:11','po_num varchar value set to 9036',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,4,1,'2010-04-23 14:11:11','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,5,1,'2010-04-23 14:11:11','amount numeric value set to 600',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,6,1,'2010-04-23 14:11:11','due_date date value set to 2010-02-28 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,1,'2010-04-23 14:11:11','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,1,'2010-04-23 14:11:11','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,1,'2010-04-23 14:11:11','Filename is 92.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,1,'2010-04-23 14:11:11','Original filename was Invoice AKSA-8745-02.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,2,1,'2010-04-23 14:12:01','invoice_num varchar value set to AKSA-PRIONE-08-1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,3,1,'2010-04-23 14:12:01','po_num varchar value set to 5793',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,4,1,'2010-04-23 14:12:01','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,5,1,'2010-04-23 14:12:01','amount numeric value set to 450',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,6,1,'2010-04-23 14:12:01','due_date date value set to 2008-12-19 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,1,'2010-04-23 14:12:01','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,1,'2010-04-23 14:12:01','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,1,'2010-04-23 14:12:01','Filename is 93.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,1,'2010-04-23 14:12:01','Original filename was Invoice PRIONE-08-1.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,2,1,'2010-04-23 14:12:32','invoice_num varchar value set to AKSA-9005',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,3,1,'2010-04-23 14:12:32','po_num varchar value set to 9005',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,4,1,'2010-04-23 14:12:32','vendor_id numeric value set to 618',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,5,1,'2010-04-23 14:12:32','amount numeric value set to 150',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,6,1,'2010-04-23 14:12:32','due_date date value set to 2010-03-05 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,1,'2010-04-23 14:12:32','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,1,'2010-04-23 14:12:32','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,1,'2010-04-23 14:12:32','Filename is 94.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,1,'2010-04-23 14:12:32','Original filename was Invoice AKSA-9005.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,13,1,'2010-04-23 14:14:33','project varchar value set to wifi',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,10,1,'2010-04-23 14:14:33','quote_num varchar value set to 8276',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,12,1,'2010-04-23 14:14:33','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,18,1,'2010-04-23 14:14:33','receive_date date value set to 2008-10-28 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,17,1,'2010-04-23 14:14:33','vendor_id numeric value set to 738',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,11,1,'2010-04-23 14:14:33','contact varchar value set to Ryan Davis',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,14,1,'2010-04-23 14:14:33','expiration_date date value set to 2008-11-28 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,1,'2010-04-23 14:14:33','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,1,'2010-04-23 14:14:33','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,1,'2010-04-23 14:14:33','Filename is 95.doc',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,1,'2010-04-23 14:14:33','Original filename was ETI Quote 8276.doc',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,2,1,'2010-04-23 14:15:32','invoice_num varchar value set to 102789',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,3,1,'2010-04-23 14:15:32','po_num varchar value set to 5339',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,4,1,'2010-04-23 14:15:32','vendor_id numeric value set to 738',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,5,1,'2010-04-23 14:15:32','amount numeric value set to 836.47',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,6,1,'2010-04-23 14:15:32','due_date date value set to 2008-11-20 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,1,'2010-04-23 14:15:32','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,1,'2010-04-23 14:15:32','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,1,'2010-04-23 14:15:32','Filename is 96.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,1,'2010-04-23 14:15:32','Original filename was Invoice 102789.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,13,1,'2010-04-23 14:18:12','project varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,10,1,'2010-04-23 14:18:12','quote_num varchar value set to 530561',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,12,1,'2010-04-23 14:18:12','addressee varchar value set to lyigf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,18,1,'2010-04-23 14:18:12','receive_date date value set to 2008-02-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,17,1,'2010-04-23 14:18:12','vendor_id numeric value set to 625',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,11,1,'2010-04-23 14:18:12','contact varchar value set to Christopher J Carter',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,14,1,'2010-04-23 14:18:12','expiration_date date value set to 2008-03-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,1,'2010-04-23 14:18:12','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,1,'2010-04-23 14:18:12','Fiscal year is 2008',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,1,'2010-04-23 14:18:12','Filename is 97.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,1,'2010-04-23 14:18:12','Original filename was Clean Harbors Quote 530561.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,7,1,'2010-04-26 11:48:23','reference_num varchar value set to H108917573',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,9,1,'2010-04-26 11:48:23','receive_date date value set to 2009-10-12 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,15,1,'2010-04-26 11:48:23','po_num varchar value set to Visa',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,16,1,'2010-04-26 11:48:23','vendor_id numeric value set to 857',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,8,1,'2010-04-26 11:48:23','received_by varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,1,'2010-04-26 11:48:24','Document type is Packing List',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,1,'2010-04-26 11:48:24','Fiscal year is 2009',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,1,'2010-04-26 11:48:24','Filename is 104.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,1,'2010-04-26 11:48:24','Original filename was Packing List.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,7,'2010-04-26 12:59:01','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,4,'2010-04-26 12:59:01','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,6,'2010-04-26 12:59:14','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','104',2,1,4,'2010-04-26 12:59:14','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,7,'2010-04-26 13:02:04','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,4,'2010-04-26 13:02:04','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,7,'2010-04-26 13:02:10','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,4,'2010-04-26 13:02:10','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,7,'2010-04-26 13:02:15','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,4,'2010-04-26 13:02:15','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,7,'2010-04-26 13:02:20','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,4,'2010-04-26 13:02:20','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,7,'2010-04-26 13:02:26','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,4,'2010-04-26 13:02:26','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,7,'2010-04-26 13:02:32','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,4,'2010-04-26 13:02:32','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,7,'2010-04-26 13:02:37','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,4,'2010-04-26 13:02:37','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,7,'2010-04-26 13:02:42','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,4,'2010-04-26 13:02:42','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,7,'2010-04-26 13:02:48','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,4,'2010-04-26 13:02:48','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,7,'2010-04-26 13:02:53','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,4,'2010-04-26 13:02:53','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,7,'2010-04-26 13:02:59','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,4,'2010-04-26 13:02:59','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,7,'2010-04-26 13:03:05','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,4,'2010-04-26 13:03:05','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,1,7,'2010-04-26 13:03:11','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','85',1,1,4,'2010-04-26 13:03:11','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,1,7,'2010-04-26 13:03:16','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','84',3,1,4,'2010-04-26 13:03:16','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,1,7,'2010-04-26 13:03:23','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','83',1,1,4,'2010-04-26 13:03:23','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,1,7,'2010-04-26 13:03:28','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','82',3,1,4,'2010-04-26 13:03:29','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,7,'2010-04-26 13:03:47','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,4,'2010-04-26 13:03:47','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,7,'2010-04-26 13:03:56','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,4,'2010-04-26 13:03:56','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,7,'2010-04-26 13:04:14','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,4,'2010-04-26 13:04:14','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,1,7,'2010-04-26 13:04:21','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','79',3,1,4,'2010-04-26 13:04:21','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,1,7,'2010-04-26 13:04:27','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','78',3,1,4,'2010-04-26 13:04:27','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,7,'2010-04-26 13:04:33','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,4,'2010-04-26 13:04:33','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,1,7,'2010-04-26 13:04:40','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','76',3,1,4,'2010-04-26 13:04:40','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,1,7,'2010-04-26 13:04:44','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','75',1,1,4,'2010-04-26 13:04:45','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,1,7,'2010-04-26 13:04:51','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','74',1,1,4,'2010-04-26 13:04:51','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,1,7,'2010-04-26 13:04:56','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','73',1,1,4,'2010-04-26 13:04:56','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,1,7,'2010-04-26 13:05:03','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','72',1,1,4,'2010-04-26 13:05:03','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,1,7,'2010-04-26 13:05:09','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','71',1,1,4,'2010-04-26 13:05:09','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,7,'2010-04-26 13:05:15','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,4,'2010-04-26 13:05:15','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,1,7,'2010-04-26 13:05:23','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','69',1,1,4,'2010-04-26 13:05:23','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,1,7,'2010-04-26 13:05:30','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','68',1,1,4,'2010-04-26 13:05:30','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,1,7,'2010-04-26 13:05:35','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','67',1,1,4,'2010-04-26 13:05:35','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,7,'2010-04-26 13:05:41','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,4,'2010-04-26 13:05:41','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,1,7,'2010-04-26 13:05:46','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','65',1,1,4,'2010-04-26 13:05:46','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,7,'2010-04-26 13:05:52','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,4,'2010-04-26 13:05:53','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,7,'2010-04-26 13:05:58','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,4,'2010-04-26 13:05:58','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,1,7,'2010-04-26 13:06:04','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,1,4,'2010-04-26 13:06:04','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,1,7,'2010-04-26 13:06:10','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','57',1,1,4,'2010-04-26 13:06:10','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,1,7,'2010-04-26 13:06:18','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','56',1,1,4,'2010-04-26 13:06:18','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,1,7,'2010-04-26 13:06:24','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','55',3,1,4,'2010-04-26 13:06:24','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,1,7,'2010-04-26 13:06:32','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','50',1,1,4,'2010-04-26 13:06:32','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,1,7,'2010-04-26 13:06:40','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','49',1,1,4,'2010-04-26 13:06:40','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,1,7,'2010-04-26 13:06:46','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','48',1,1,4,'2010-04-26 13:06:46','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,1,7,'2010-04-26 13:06:52','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','47',1,1,4,'2010-04-26 13:06:52','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,1,7,'2010-04-26 13:07:00','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','46',1,1,4,'2010-04-26 13:07:00','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,1,7,'2010-04-26 13:07:06','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','45',1,1,4,'2010-04-26 13:07:06','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,1,7,'2010-04-26 13:07:10','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','44',1,1,4,'2010-04-26 13:07:10','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,1,7,'2010-04-26 13:07:14','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','43',1,1,4,'2010-04-26 13:07:14','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,1,7,'2010-04-26 13:07:19','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','42',1,1,4,'2010-04-26 13:07:19','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,1,7,'2010-04-26 13:07:24','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','41',1,1,4,'2010-04-26 13:07:24','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,1,7,'2010-04-26 13:07:29','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','40',1,1,4,'2010-04-26 13:07:29','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,1,7,'2010-04-26 13:07:34','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','39',1,1,4,'2010-04-26 13:07:34','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,1,7,'2010-04-26 13:07:39','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','38',1,1,4,'2010-04-26 13:07:39','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,7,'2010-04-26 13:07:46','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,4,'2010-04-26 13:07:46','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,7,'2010-04-26 13:07:51','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,4,'2010-04-26 13:07:51','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,7,'2010-04-26 13:07:55','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,4,'2010-04-26 13:07:55','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,7,'2010-04-26 13:08:00','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,4,'2010-04-26 13:08:00','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,7,'2010-04-26 13:08:05','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,4,'2010-04-26 13:08:05','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,7,'2010-04-26 13:08:09','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,4,'2010-04-26 13:08:09','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,7,'2010-04-26 13:08:13','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,4,'2010-04-26 13:08:13','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,7,'2010-04-26 13:08:18','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,4,'2010-04-26 13:08:18','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,7,'2010-04-26 13:08:23','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,4,'2010-04-26 13:08:23','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,7,'2010-04-26 13:08:27','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,4,'2010-04-26 13:08:27','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,7,'2010-04-26 13:08:34','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,4,'2010-04-26 13:08:34','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,7,'2010-04-26 13:08:38','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,4,'2010-04-26 13:08:38','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,7,'2010-04-26 13:08:44','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,4,'2010-04-26 13:08:44','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,7,'2010-04-26 13:08:49','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,4,'2010-04-26 13:08:49','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,7,'2010-04-26 13:08:55','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,4,'2010-04-26 13:08:55','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,7,'2010-04-26 13:09:02','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,4,'2010-04-26 13:09:02','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,7,'2010-04-26 13:09:06','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,4,'2010-04-26 13:09:06','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,7,'2010-04-26 13:09:11','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,4,'2010-04-26 13:09:11','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,7,'2010-04-26 13:09:16','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,4,'2010-04-26 13:09:16','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,7,'2010-04-26 13:09:21','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,4,'2010-04-26 13:09:21','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,1,7,'2010-04-26 13:09:26','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','16',1,1,4,'2010-04-26 13:09:26','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,1,7,'2010-04-26 13:09:32','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','15',1,1,4,'2010-04-26 13:09:32','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,6,'2010-04-26 13:10:03','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','97',3,1,4,'2010-04-26 13:10:04','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,6,'2010-04-26 13:10:08','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','96',1,1,4,'2010-04-26 13:10:08','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,6,'2010-04-26 13:10:12','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','95',3,1,4,'2010-04-26 13:10:13','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,6,'2010-04-26 13:10:17','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','94',1,1,4,'2010-04-26 13:10:17','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,6,'2010-04-26 13:10:20','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','93',1,1,4,'2010-04-26 13:10:21','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,6,'2010-04-26 13:10:24','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','92',1,1,4,'2010-04-26 13:10:24','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,6,'2010-04-26 13:10:29','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','91',1,1,4,'2010-04-26 13:10:29','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,6,'2010-04-26 13:10:32','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','90',1,1,4,'2010-04-26 13:10:32','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,6,'2010-04-26 13:10:35','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','89',1,1,4,'2010-04-26 13:10:36','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,6,'2010-04-26 13:10:41','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','66',1,1,4,'2010-04-26 13:10:41','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,6,'2010-04-26 13:10:44','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','70',1,1,4,'2010-04-26 13:10:45','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,6,'2010-04-26 13:10:48','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','77',1,1,4,'2010-04-26 13:10:48','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,6,'2010-04-26 13:10:52','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','60',1,1,4,'2010-04-26 13:10:52','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,6,'2010-04-26 13:10:56','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','32',1,1,4,'2010-04-26 13:10:57','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,6,'2010-04-26 13:11:02','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','37',1,1,4,'2010-04-26 13:11:02','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,6,'2010-04-26 13:11:07','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','36',1,1,4,'2010-04-26 13:11:07','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,6,'2010-04-26 13:11:11','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','35',1,1,4,'2010-04-26 13:11:12','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,6,'2010-04-26 13:11:16','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','34',1,1,4,'2010-04-26 13:11:16','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,6,'2010-04-26 13:11:21','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','33',1,1,4,'2010-04-26 13:11:21','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,6,'2010-04-26 13:11:25','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','31',1,1,4,'2010-04-26 13:11:26','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,6,'2010-04-26 13:11:30','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','30',1,1,4,'2010-04-26 13:11:30','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,6,'2010-04-26 13:11:36','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','29',1,1,4,'2010-04-26 13:11:36','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,6,'2010-04-26 13:11:42','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','2',1,1,4,'2010-04-26 13:11:42','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,6,'2010-04-26 13:11:51','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','61',1,1,4,'2010-04-26 13:11:51','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,6,'2010-04-26 13:11:56','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','26',1,1,4,'2010-04-26 13:11:56','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,6,'2010-04-26 13:12:02','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','28',1,1,4,'2010-04-26 13:12:02','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,6,'2010-04-26 13:12:07','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','27',1,1,4,'2010-04-26 13:12:07','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,6,'2010-04-26 13:12:15','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','25',1,1,4,'2010-04-26 13:12:15','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,6,'2010-04-26 13:12:20','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','24',1,1,4,'2010-04-26 13:12:20','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,6,'2010-04-26 13:12:25','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','23',1,1,4,'2010-04-26 13:12:25','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,6,'2010-04-26 13:12:30','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','22',1,1,4,'2010-04-26 13:12:30','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,6,'2010-04-26 13:12:36','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','21',1,1,4,'2010-04-26 13:12:37','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,6,'2010-04-26 13:12:42','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','17',1,1,4,'2010-04-26 13:12:43','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,6,'2010-04-26 13:12:46','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','18',1,1,4,'2010-04-26 13:12:47','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,6,'2010-04-26 13:12:51','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','19',1,1,4,'2010-04-26 13:12:51','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,6,'2010-04-26 13:12:56','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','20',1,1,4,'2010-04-26 13:12:56','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,6,'2010-04-26 13:13:10','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','88',1,1,4,'2010-04-26 13:13:10','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,1,7,'2010-04-26 13:38:51','Action For Review assigned to Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','7',1,1,4,'2010-04-26 13:38:51','Bob Rhett was notified of this change',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,2,1,'2010-04-30 16:05:16','invoice_num varchar value set to 10435250',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,3,1,'2010-04-30 16:05:16','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,4,1,'2010-04-30 16:05:16','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,5,1,'2010-04-30 16:05:16','amount numeric value set to 2533.17',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,6,1,'2010-04-30 16:05:16','due_date date value set to 2007-01-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,1,1,'2010-04-30 16:05:16','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,1,1,'2010-04-30 16:05:16','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,1,1,'2010-04-30 16:05:16','Filename is 110.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','110',1,1,1,'2010-04-30 16:05:16','Original filename was Invoice 10435250.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,2,1,'2010-04-30 16:07:26','invoice_num varchar value set to 10410010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,3,1,'2010-04-30 16:07:26','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,4,1,'2010-04-30 16:07:26','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,5,1,'2010-04-30 16:07:26','amount numeric value set to 2533.17',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,6,1,'2010-04-30 16:07:26','due_date date value set to 2006-11-15 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,1,1,'2010-04-30 16:07:26','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,1,1,'2010-04-30 16:07:26','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,1,1,'2010-04-30 16:07:26','Filename is 111.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,1,1,'2010-04-30 16:07:26','Original filename was Invoice 10410010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,2,1,'2010-04-30 16:08:07','invoice_num varchar value set to 10359947',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,3,1,'2010-04-30 16:08:07','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,4,1,'2010-04-30 16:08:07','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,5,1,'2010-04-30 16:08:07','amount numeric value set to 2527.23',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,6,1,'2010-04-30 16:08:07','due_date date value set to 2006-10-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,1,1,'2010-04-30 16:08:07','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,1,1,'2010-04-30 16:08:07','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,1,1,'2010-04-30 16:08:07','Filename is 112.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','112',1,1,1,'2010-04-30 16:08:07','Original filename was Invoice 10359947.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,2,1,'2010-04-30 16:08:44','invoice_num varchar value set to 10335261',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,3,1,'2010-04-30 16:08:44','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,4,1,'2010-04-30 16:08:44','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,5,1,'2010-04-30 16:08:44','amount numeric value set to 2578.3',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,6,1,'2010-04-30 16:08:44','due_date date value set to 2006-09-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,1,1,'2010-04-30 16:08:44','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,1,1,'2010-04-30 16:08:44','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,1,1,'2010-04-30 16:08:44','Filename is 113.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','113',1,1,1,'2010-04-30 16:08:44','Original filename was Invoice 10335261.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,2,1,'2010-04-30 16:09:31','invoice_num varchar value set to 10311478',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,3,1,'2010-04-30 16:09:31','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,4,1,'2010-04-30 16:09:31','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,5,1,'2010-04-30 16:09:31','amount numeric value set to 2525.5',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,6,1,'2010-04-30 16:09:31','due_date date value set to 2006-08-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,1,1,'2010-04-30 16:09:31','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,1,1,'2010-04-30 16:09:31','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,1,1,'2010-04-30 16:09:31','Filename is 114.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','114',1,1,1,'2010-04-30 16:09:31','Original filename was Invoice 10311478.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,2,1,'2010-04-30 16:10:16','invoice_num varchar value set to 10287677',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,3,1,'2010-04-30 16:10:16','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,4,1,'2010-04-30 16:10:16','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,5,1,'2010-04-30 16:10:16','amount numeric value set to 3400.57',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,6,1,'2010-04-30 16:10:16','due_date date value set to 2006-07-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,1,1,'2010-04-30 16:10:16','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,1,1,'2010-04-30 16:10:16','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,1,1,'2010-04-30 16:10:16','Filename is 115.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','115',1,1,1,'2010-04-30 16:10:16','Original filename was Invoice 10287677.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,2,1,'2010-04-30 16:14:57','invoice_num varchar value set to 10384562',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,3,1,'2010-04-30 16:14:57','po_num varchar value set to 4500023466',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,4,1,'2010-04-30 16:14:57','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,5,1,'2010-04-30 16:14:57','amount numeric value set to 2533.17',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,6,1,'2010-04-30 16:14:57','due_date date value set to 2006-11-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,1,1,'2010-04-30 16:14:57','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,1,1,'2010-04-30 16:14:57','Fiscal year is 2006',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,1,1,'2010-04-30 16:14:57','Filename is 117.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','117',1,1,1,'2010-04-30 16:14:57','Original filename was Invoice 10284562.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','111',1,6,2,'2010-04-30 16:16:01','Changed due_date date value from 2006-11-15  to 2006-12-10 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,6,'2010-04-30 16:41:57','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','87',1,1,4,'2010-04-30 16:41:57','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,2,1,'2010-05-19 13:17:49','invoice_num varchar value set to 3350412',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,3,1,'2010-05-19 13:17:49','po_num varchar value set to Visa',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,4,1,'2010-05-19 13:17:49','vendor_id numeric value set to 699',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,5,1,'2010-05-19 13:17:49','amount numeric value set to 14',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,6,1,'2010-05-19 13:17:49','due_date date value set to 2010-05-18 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,1,'2010-05-19 13:17:49','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,1,'2010-05-19 13:17:49','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,1,'2010-05-19 13:17:49','Filename is 119.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,1,'2010-05-19 13:17:49','Original filename was Order 3350412.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,7,'2010-05-19 13:28:51','Assigned to Bob RhettFor Approval',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,4,'2010-05-19 13:28:51','Bob Rhett was notified of this assignment',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,5,'2010-05-19 13:29:59','Action For Approval completed by Bob Rhett',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,1,4,'2010-05-19 13:29:59','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,6,'2010-05-19 13:33:14','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','86',1,1,4,'2010-05-19 13:33:14','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,7,'2010-05-19 13:45:28','Assigned to Debbie LinsenmeyerFor Information',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,4,'2010-05-19 13:45:28','Debbie Linsenmeyer was notified of a request for additional information','Is this ok?');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('moexb','80',3,1,6,'2010-05-19 13:51:10','Response for requested information was sent from Debbie Linsenmeyer to Bob Rhett','are you kidding???');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,7,'2010-05-19 15:39:24','Assigned to Debbie LinsenmeyerFor Information',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,4,'2010-05-19 15:39:24','Debbie Linsenmeyer was notified of a request for additional information','dats right.');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,7,'2010-05-19 16:13:49','Assigned to Debbie Linsenmeyer For Information',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,7,'2010-05-19 16:17:59','Assigned to Debbie Linsenmeyer For Information',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,4,'2010-05-19 16:17:59','Debbie Linsenmeyer was notified of a request for additional information','Let''s try again.');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,7,'2010-05-19 16:18:30','Assigned to Debbie Linsenmeyer For Information',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','80',3,1,4,'2010-05-19 16:18:30','Debbie Linsenmeyer was notified of a request for additional information','Let''s try again.');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('moexb','80',3,1,6,'2010-05-20 06:56:53','Response for requested information was sent from Debbie Linsenmeyer to Bob Rhett','This works great!!!');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('moexb','80',3,1,7,'2010-05-20 06:56:53','Assigned to Sha Nommay For Review',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('moexb','80',3,1,4,'2010-05-20 06:56:53','Sha Nommay was notified of this assignment',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('moaan','80',3,1,6,'2010-05-20 08:13:20','Sha Nommay reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('moaan','80',3,1,4,'2010-05-20 08:13:21','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,13,1,'2010-05-26 11:28:48','project varchar value set to Tech',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,10,1,'2010-05-26 11:28:48','quote_num varchar value set to A1234',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,12,1,'2010-05-26 11:28:48','addressee varchar value set to mjvce',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,18,1,'2010-05-26 11:28:48','receive_date date value set to 2010-05-26 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,17,1,'2010-05-26 11:28:48','vendor_id numeric value set to 3232',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,11,1,'2010-05-26 11:28:48','contact varchar value set to Joe',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,14,1,'2010-05-26 11:28:48','expiration_date date value set to 2010-08-26 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,1,1,'2010-05-26 11:28:48','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,1,1,'2010-05-26 11:28:48','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,1,1,'2010-05-26 11:28:48','Filename is 127.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,1,1,'2010-05-26 11:28:48','Original filename was Tuesday, May 25, 2010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,1,7,'2010-05-26 11:33:00','Assigned to Bob Rhett For Information',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('miaju','127',3,1,4,'2010-05-26 11:33:00','Bob Rhett was notified of a request for additional information','Is this yours?');
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','127',3,18,2,'2010-05-27 10:10:24','Changed receive_date date value from 2010-05-26  to 2010-05-25 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:10:15','Changed vendor_id numeric value from 416 to 541',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:11:58','Changed vendor_id numeric value from 541 to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:12:12','Changed vendor_id numeric value from 416 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:19:06','Changed vendor_id numeric value from 0 to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:19:31','Changed vendor_id numeric value from 416 to 541',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:19:48','Changed vendor_id numeric value from 541 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:24:43','Changed vendor_id numeric value from 0 to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:27:03','Changed vendor_id numeric value from 416 to 541',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:37:17','Changed vendor_id numeric value from 541 to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:37:56','Changed vendor_id numeric value from 416 to 541',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:38:09','Changed vendor_id numeric value from 541 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:39:01','Changed vendor_id numeric value from 0 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 13:40:22','Changed vendor_id numeric value from 0 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 15:50:21','Changed vendor_id numeric value from -1 to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 15:51:50','Changed vendor_id numeric value from 416 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','58',1,4,2,'2010-05-28 15:52:12','Changed vendor_id numeric value from -1 to 416',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,13,1,'2010-06-02 13:56:08','project varchar value set to Google',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,10,1,'2010-06-02 13:56:08','quote_num varchar value set to 20100602',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,12,1,'2010-06-02 13:56:08','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,18,1,'2010-06-02 13:56:08','receive_date date value set to 2010-06-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,17,1,'2010-06-02 13:56:08','vendor_id numeric value set to 680',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,11,1,'2010-06-02 13:56:08','contact varchar value set to Joe',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,14,1,'2010-06-02 13:56:08','expiration_date date value set to 2010-09-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,1,1,'2010-06-02 13:56:08','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,1,1,'2010-06-02 13:56:08','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,1,1,'2010-06-02 13:56:08','Filename is 129.htm',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,1,1,'2010-06-02 13:56:08','Original filename was Google.htm',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','129',3,14,2,'2010-06-02 13:57:46','Changed expiration_date date value from 2010-09-02  to 2010-09-03 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,23,1,'2010-06-02 14:54:28','contact varchar value set to Joe',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,25,1,'2010-06-02 14:54:28','receive_date date value set to 2010-06-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,24,1,'2010-06-02 14:54:28','addressee varchar value set to mjnbd',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,1,1,'2010-06-02 14:54:28','Document type is Memo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,1,1,'2010-06-02 14:54:28','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,1,1,'2010-06-02 14:54:28','Filename is 130.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',6,1,1,'2010-06-02 14:54:28','Original filename was Thursday, April 22, 2010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,1,2,'2010-06-02 14:55:17','Changed document type from Memo to Contracts',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,39,1,'2010-06-02 15:29:11','cost_center varchar value set to Marketing',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,37,1,'2010-06-02 15:29:11','employee varchar value set to cwineb',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,38,1,'2010-06-02 15:29:11','date date value set to 2010-06-02 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,1,1,'2010-06-02 15:29:11','Document type is Expense Report',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,1,1,'2010-06-02 15:29:11','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,1,1,'2010-06-02 15:29:11','Filename is 132.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','132',9,1,1,'2010-06-02 15:29:11','Original filename was scan.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,39,1,'2010-06-02 15:52:34','cost_center varchar value set to Marketing',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,37,1,'2010-06-02 15:52:34','employee varchar value set to cwineb',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,38,1,'2010-06-02 15:52:34','date date value set to 2010-05-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,40,1,'2010-06-02 15:52:34','doc_num varchar value set to SN111',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,1,1,'2010-06-02 15:52:34','Document type is Expense Report',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,1,1,'2010-06-02 15:52:34','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,1,1,'2010-06-02 15:52:34','Filename is 133.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','133',9,1,1,'2010-06-02 15:52:34','Original filename was Page 1.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,4,2,'2010-06-02 16:09:24','Changed vendor_id numeric value from 699 to -3',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','119',1,4,2,'2010-06-02 16:09:56','Changed vendor_id numeric value from -3 to 699',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,3,1,'2010-06-03 09:54:55','po_num varchar value set to 8788',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,5,1,'2010-06-03 09:54:55','amount numeric value set to 173.87',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,4,1,'2010-06-03 09:54:55','vendor_id numeric value set to 1800',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,6,1,'2010-06-03 09:54:55','due_date date value set to 2010-06-01 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,2,1,'2010-06-03 09:54:55','invoice_num varchar value set to 1021427',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,1,1,'2010-06-03 09:54:55','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,1,1,'2010-06-03 09:54:55','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,1,1,'2010-06-03 09:54:55','Filename is 136.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','136',1,1,1,'2010-06-03 09:54:55','Original filename was scan0023.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,27,1,'2010-06-04 14:05:26','equip_desc varchar value set to DMAC Tank',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,29,1,'2010-06-04 14:05:26','end_date date value set to 2011-06-04 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,31,1,'2010-06-04 14:05:26','contact varchar value set to miaju',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,30,1,'2010-06-04 14:05:27','vendor_id numeric value set to 1138',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,28,1,'2010-06-04 14:05:27','start_date date value set to 2010-06-04 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,42,1,'2010-06-04 14:05:27','url varchar value set to http://mogsb8/esg/fst_doc/fst_doc.asp?fst=ADD-CHGDMAC',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','130',7,42,2,'2010-06-04 14:19:35','Changed url varchar value from http://mogsb8/esg/fst_doc/fst_doc.asp?fst=ADD-CHGD to http://mogsb8/esg/fst_doc/fst_doc.asp?fst=ADD-CHGDMAC',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,39,1,'2010-06-04 14:46:15','cost_center varchar value set to admi',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,37,1,'2010-06-04 14:46:15','employee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,38,1,'2010-06-04 14:46:15','date date value set to 2010-06-08 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,40,1,'2010-06-04 14:46:15','doc_num varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,1,1,'2010-06-04 14:46:16','Document type is Expense Report',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,1,1,'2010-06-04 14:46:16','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,1,1,'2010-06-04 14:46:16','Filename is 137.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,1,1,'2010-06-04 14:46:16','Original filename was scan.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,39,2,'2010-06-04 14:56:22','Changed cost_center varchar value from admi to mark',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,39,2,'2010-06-04 15:04:36','Changed cost_center varchar value from mark to admi',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,39,2,'2010-06-04 15:04:43','Changed cost_center varchar value from admi to othe',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','137',9,39,2,'2010-06-04 15:04:49','Changed cost_center varchar value from othe to admi',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,13,1,'2010-07-28 16:24:45','project varchar value set to Machine',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,10,1,'2010-07-28 16:24:45','quote_num varchar value set to 1.6329',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,12,1,'2010-07-28 16:24:45','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,18,1,'2010-07-28 16:24:45','receive_date date value set to 2010-02-24 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,17,1,'2010-07-28 16:24:45','vendor_id numeric value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,11,1,'2010-07-28 16:24:45','contact varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,14,1,'2010-07-28 16:24:45','expiration_date date value set to 2010-05-24 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,1,1,'2010-07-28 16:24:45','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,1,1,'2010-07-28 16:24:45','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,1,1,'2010-07-28 16:24:45','Filename is 139.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,1,1,'2010-07-28 16:24:45','Original filename was Wednesday, March 03, 2010.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,17,2,'2010-07-28 16:26:57','Changed vendor_id numeric value from 0 to 2131',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','139',3,17,2,'2010-07-28 16:28:00','Changed vendor_id numeric value from 2131 to -1',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,14,1,'2010-07-28 16:34:59','expiration_date date value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,11,1,'2010-07-28 16:34:59','contact varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,17,1,'2010-07-28 16:34:59','vendor_id numeric value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,18,1,'2010-07-28 16:34:59','receive_date date value set to 2010-07-28 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,12,1,'2010-07-28 16:34:59','addressee varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,10,1,'2010-07-28 16:34:59','quote_num varchar value set to 21TN42',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,13,1,'2010-07-28 16:34:59','project varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,1,1,'2010-07-28 16:34:59','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,1,1,'2010-07-28 16:34:59','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,1,1,'2010-07-28 16:34:59','Filename is 140.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','140',3,1,1,'2010-07-28 16:34:59','Original filename was Wednesday, March 03, 2010 (2).pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,14,1,'2010-07-28 16:38:40','expiration_date date value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,11,1,'2010-07-28 16:38:40','contact varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,17,1,'2010-07-28 16:38:40','vendor_id numeric value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,18,1,'2010-07-28 16:38:40','receive_date date value set to 2010-07-28 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,12,1,'2010-07-28 16:38:40','addressee varchar value set to mjwrx',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,10,1,'2010-07-28 16:38:40','quote_num varchar value set to Watanabe',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,13,1,'2010-07-28 16:38:40','project varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,1,1,'2010-07-28 16:38:40','Document type is Quote',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,1,1,'2010-07-28 16:38:40','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,1,1,'2010-07-28 16:38:40','Filename is 141.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','141',3,1,1,'2010-07-28 16:38:40','Original filename was Friday, March 05, 2010 (7).pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,2,1,'2010-10-20 10:08:11','invoice_num varchar value set to ELB  0017714513004 - 01',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,3,1,'2010-10-20 10:08:11','po_num varchar value set to 1234',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,4,1,'2010-10-20 10:08:11','vendor_id numeric value set to 682',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,5,1,'2010-10-20 10:08:11','amount numeric value set to 755.13',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,6,1,'2010-10-20 10:08:11','receive_date date value set to 2007-08-03 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,1,1,'2010-10-20 10:08:11','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,1,1,'2010-10-20 10:08:11','Fiscal year is 2007',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,1,1,'2010-10-20 10:08:11','Filename is 150.xls',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','150',1,1,1,'2010-10-20 10:08:11','Original filename was Invoice JS3KF51.xls',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,2,1,'2010-10-20 11:04:27','invoice_num varchar value set to 10679842',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,3,1,'2010-10-20 11:04:27','po_num varchar value set to 8717',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,4,1,'2010-10-20 11:04:27','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,5,1,'2010-10-20 11:04:27','amount numeric value set to 2340.09',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,6,1,'2010-10-20 11:04:27','receive_date date value set to 2010-09-16 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,1,1,'2010-10-20 11:04:27','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,1,1,'2010-10-20 11:04:27','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,1,1,'2010-10-20 11:04:27','Filename is 151.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','151',1,1,1,'2010-10-20 11:04:27','Original filename was Invoice 10679842.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,30,1,'2010-10-20 11:08:03','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,27,1,'2010-10-20 11:08:03','equip_desc varchar value set to WAN',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,29,1,'2010-10-20 11:08:03','end_date date value set to 2013-06-18 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,28,1,'2010-10-20 11:08:03','start_date date value set to 2010-06-18 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,42,1,'2010-10-20 11:08:03','url varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,31,1,'2010-10-20 11:08:03','contact varchar value set to mibqo',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,1,1,'2010-10-20 11:08:03','Document type is Contracts',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,1,1,'2010-10-20 11:08:03','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,1,1,'2010-10-20 11:08:03','Filename is 152.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','152',7,1,1,'2010-10-20 11:08:03','Original filename was CSA 1371805.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,6,'2010-10-20 13:00:06','Bob Rhett reviewed the document',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','6',1,1,4,'2010-10-20 13:00:06','Bob Rhett was notified of completion',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,6,1,'2010-10-22 10:18:54','receive_date date value set to 2010-10-21 ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,5,1,'2010-10-22 10:18:54','amount numeric value set to 1448',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,4,1,'2010-10-22 10:18:54','vendor_id numeric value set to 1099',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,3,1,'2010-10-22 10:18:54','po_num varchar value set to ',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,2,1,'2010-10-22 10:18:54','invoice_num varchar value set to 123',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,1,1,'2010-10-22 10:18:54','Document type is Invoice',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,1,1,'2010-10-22 10:18:54','Fiscal year is 2010',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,1,1,'2010-10-22 10:18:54','Filename is 166.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,1,1,'2010-10-22 10:18:54','Original filename was scan0160.pdf',NULL);
INSERT INTO "actionlog" ("user_id", "doc_id", "type_id", "datatype_id", "update_id", "action_ts", "action_text", "additional_text") VALUES
	('mibqo','166',1,4,2,'2010-10-22 10:20:23','Changed vendor_id numeric value from 1099 to 1737',NULL);
/*!40000 ALTER TABLE "actionlog" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'datatype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "datatype" (
  "datatype_id" int(10) unsigned NOT NULL auto_increment,
  "doctype_id" tinyint(3) unsigned default NULL,
  "sortorder" tinyint(3) unsigned default NULL,
  "datatype_text" varchar(50) default NULL,
  "datatype" varchar(12) default NULL,
  "input_prompt" varchar(50) default NULL,
  "search_prompt" varchar(50) default NULL,
  "is_uid" tinyint(3) unsigned default '0',
  "is_currency" tinyint(3) unsigned default NULL,
  "is_reqd" tinyint(3) unsigned default NULL,
  PRIMARY KEY  ("datatype_id"),
  UNIQUE KEY "datatype_id" ("datatype_id"),
  KEY "datatype_id_2" ("datatype_id")
) AUTO_INCREMENT=43 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'datatype'
#

LOCK TABLES "datatype" WRITE;
/*!40000 ALTER TABLE "datatype" DISABLE KEYS;*/
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('1',NULL,NULL,'doc_id','numeric','Document',NULL,NULL,NULL,NULL);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('2',1,1,'invoice_num','varchar','Invoice Number','Invoice Number',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('3',1,2,'po_num','varchar','Purchase Order Number','Purchase Order Number',NULL,NULL,NULL);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('4',1,3,'vendor_id','numeric','Vendor','Vendor',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('5',1,4,'amount','numeric','Dollar Amount','Dollar Amount',NULL,1,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('6',1,5,'receive_date','date','Receive Date','Receive Date',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('7',2,1,'reference_num','varchar','Reference No','Reference No',NULL,NULL,NULL);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('8',2,4,'received_by','varchar','Received By','Received By',1,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('9',2,5,'receive_date','date','Receive Date','Receive Date',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('10',3,1,'quote_num','varchar','Quote Number','Quote Number',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('11',3,3,'contact','varchar','Vendor Contact','Vendor Contact',NULL,NULL,0);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('12',3,4,'addressee','varchar','Addressee','Addressee',1,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('13',3,5,'project','varchar','Project','Project',NULL,NULL,NULL);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('14',3,7,'expiration_date','date','Expiration Date','Expiration Date',NULL,NULL,0);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('15',2,2,'po_num','varchar','Purchase Order Number','Purchase Order',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('16',2,3,'vendor_id','numeric','Vendor','Vendor',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('17',3,2,'vendor_id','numeric','Select Vendor','Vendor',NULL,NULL,NULL);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('18',3,6,'receive_date','date','Receive Date','Receive Date',NULL,NULL,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('42',7,6,'url','varchar','Link','Link',0,0,0);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('27',7,1,'equip_desc','varchar','Equipment Description','Equipment Description',0,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('28',7,2,'start_date','date','Effective Date','Effective Date',0,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('29',7,3,'end_date','date','Ending Date','Ending Date',0,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('30',7,4,'vendor_id','numeric','Select Vendor','Vendor',0,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('31',7,5,'contact','varchar','Responsibility','Responsible Party',1,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('37',9,1,'employee','varchar','Employee','Employee',1,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('38',9,2,'date','date','Date','Date',0,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('39',9,3,'cost_center','varchar','Cost Center','Cost Center',0,0,1);
INSERT INTO "datatype" ("datatype_id", "doctype_id", "sortorder", "datatype_text", "datatype", "input_prompt", "search_prompt", "is_uid", "is_currency", "is_reqd") VALUES
	('40',9,4,'doc_num','varchar','Internal Document Number','Internal Document Number',0,0,0);
/*!40000 ALTER TABLE "datatype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'docdata'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "docdata" (
  "datatype_id" int(10) unsigned NOT NULL,
  "doc_id" bigint(20) unsigned NOT NULL,
  "varchar_val" varchar(255) default NULL,
  "numeric_val" float default NULL,
  "date_val" date default NULL,
  PRIMARY KEY  ("doc_id","datatype_id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'docdata'
#

LOCK TABLES "docdata" WRITE;
/*!40000 ALTER TABLE "docdata" DISABLE KEYS;*/
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','1','1019666',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','1','8788',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','1',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','1',NULL,'171.32',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','1',NULL,NULL,'2010-02-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','2','1018809',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','2','8788',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','2',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','2',NULL,'165.39',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','2',NULL,NULL,'2009-12-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','3','1020548',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','3','8788',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','3',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','3',NULL,'181.32',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','3',NULL,NULL,'2010-04-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','4','1020107',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','4','8788',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','4',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','4',NULL,'179.43',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','4',NULL,NULL,'2010-03-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','5','1019235',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','5','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','5',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','5',NULL,'166.4',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','5',NULL,NULL,'2010-01-04');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','6','1018391',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','6','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','6',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','6',NULL,'189.11',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','6',NULL,NULL,'2009-11-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','7','1017988',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','7','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','7',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','7',NULL,'190.05',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','7',NULL,NULL,'2009-10-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','8','1017593',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','8','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','8',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','8',NULL,'151.62',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','8',NULL,NULL,'2009-09-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','9','1017200',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','9','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','9',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','9',NULL,'154.47',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','9',NULL,NULL,'2009-08-03');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','10','1016804',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','10','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','10',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','10',NULL,'209.19',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','10',NULL,NULL,'2009-07-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','11','1016411',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','11','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','11',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','11',NULL,'201.91',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','11',NULL,NULL,'2009-06-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','12','1016021',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','12','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','12',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','12',NULL,'180.56',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','12',NULL,NULL,'2009-05-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','13','1015636',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','13','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','13',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','13',NULL,'156.71',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','13',NULL,NULL,'2009-04-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','14','1015256',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','14','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','14',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','14',NULL,'151.91',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','14',NULL,NULL,'2009-03-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','15','1014884',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','15','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','15',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','15',NULL,'150.92',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','15',NULL,NULL,'2009-02-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','16','1014514',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','16','5695',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','16',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','16',NULL,'144.09',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','16',NULL,NULL,'2009-01-05');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','17','1014153',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','17','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','17',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','17',NULL,'183.76',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','17',NULL,NULL,'2008-12-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','18','1013796',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','18','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','18',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','18',NULL,'172.28',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','18',NULL,NULL,'2008-11-04');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','19','1013449',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','19','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','19',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','19',NULL,'178.14',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','19',NULL,NULL,'2008-10-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','20','1013115',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','20','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','20',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','20',NULL,'206.09',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','20',NULL,NULL,'2008-09-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','21','1012784',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','21','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','21',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','21',NULL,'187.38',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','21',NULL,NULL,'2008-08-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','22','1012460',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','22','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','22',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','22',NULL,'193.18',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','22',NULL,NULL,'2008-07-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','23','1012142',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','23','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','23',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','23',NULL,'179.14',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','23',NULL,NULL,'2008-06-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','24','1011833',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','24','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','24',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','24',NULL,'196.48',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','24',NULL,NULL,'5008-05-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','25','1011528',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','25','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','25',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','25',NULL,'186.26',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','25',NULL,NULL,'2008-04-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','26','1011232',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','26','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','26',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','26',NULL,'830.95',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','26',NULL,NULL,'2008-03-03');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','27','1010938',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','27','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','27',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','27',NULL,'869.13',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','27',NULL,NULL,'2008-02-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','28','1010653',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','28','2861',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','28',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','28',NULL,'1620.14',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','28',NULL,NULL,'2008-01-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','29','109841',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','29','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','29',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','29',NULL,'151.68',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','29',NULL,NULL,'2007-10-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','30','1010376',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','30','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','30',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','30',NULL,'1175.89',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','30',NULL,NULL,'2007-12-03');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','31','1010103',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','31','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','31',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','31',NULL,'162.39',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','31',NULL,NULL,'2007-11-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','32','109583',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','32','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','32',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','32',NULL,'174.35',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','32',NULL,NULL,'2007-09-04');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','33','109330',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','33','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','33',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','33',NULL,'174.28',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','33',NULL,NULL,'2007-08-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','34','109077',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','34','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','34',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','34',NULL,'143.24',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','34',NULL,NULL,'2007-07-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','35','108833',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','35','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','35',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','35',NULL,'634.41',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','35',NULL,NULL,'2007-06-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','36','108592',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','36','621',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','36',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','36',NULL,'1127.39',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','36',NULL,NULL,'2007-05-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','37','1270864319',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','37','361',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','37',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','37',NULL,'1378.26',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','37',NULL,NULL,'2007-02-12');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','38','1517669317',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','38','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','38',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','38',NULL,'1124.04',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','38',NULL,NULL,'2009-03-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','39','1506916801',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','39','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','39',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','39',NULL,'913.64',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','39',NULL,NULL,'2009-02-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','40','1496197873',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','40','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','40',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','40',NULL,'1129.38',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','40',NULL,NULL,'2009-01-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','41','1528496689',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','41','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','41',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','41',NULL,'2219.13',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','41',NULL,NULL,'2009-03-12');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','42','1550085508',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','42','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','42',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','42',NULL,'1144.07',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','42',NULL,NULL,'2009-06-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','43','1539315677',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','43','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','43',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','43',NULL,'1102.73',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','43',NULL,NULL,'2009-05-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','44','1560938575',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','44','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','44',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','44',NULL,'1412.3',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','44',NULL,NULL,'2009-07-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','45','6289971379',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','45','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','45',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','45',NULL,'1310.62',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','45',NULL,NULL,'2009-08-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','46','6303460271',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','46','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','46',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','46',NULL,'1165.57',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','46',NULL,NULL,'2009-09-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','47','6316911228',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','47','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','47',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','47',NULL,'1198.88',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','47',NULL,NULL,'2009-10-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','48','6330288505',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','48','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','48',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','48',NULL,'1218.32',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','48',NULL,NULL,'2009-11-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','49','6343615712',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','49','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','49',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','49',NULL,'1598.43',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','49',NULL,NULL,'2009-12-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','50','6356950593',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','50','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','50',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','50',NULL,'1838.06',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','50',NULL,NULL,'2010-01-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','51','6370261042',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','51','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','51',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','51',NULL,'1611',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','51',NULL,NULL,'2010-02-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','52','6383503638',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','52','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','52',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','52',NULL,'1868.69',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','52',NULL,NULL,'2010-03-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','53','6396722213',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','53','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','53',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','53',NULL,'1588.29',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','53',NULL,NULL,'2010-04-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','54','6409916837',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','54','2555',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','54',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','54',NULL,'1662.98',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','54',NULL,NULL,'2010-05-07');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','55','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','55','20080827',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','55','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','55',NULL,NULL,'2008-08-27');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','55',NULL,'2321',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','55','Derek Nicely',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','55',NULL,NULL,'2008-09-27');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','56','398',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','56','5542',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','56',NULL,'416',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','56',NULL,'188.5',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','56',NULL,NULL,'2008-12-11');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','57','410',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','57','5542',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','57',NULL,'416',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','57',NULL,'34',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','57',NULL,NULL,'2009-11-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','58','414',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','58','5542',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','58',NULL,'416',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','58',NULL,'24',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','58',NULL,NULL,'2009-11-03');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','60','821717482X01072009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','60','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','60',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','60',NULL,'762.48',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','60',NULL,NULL,'2009-06-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','61','821717482X01052010',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','61','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','61',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','61',NULL,'681.99',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','61',NULL,NULL,'2010-01-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','62','821717482X02052010',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','62','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','62',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','62',NULL,'360.32',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','62',NULL,NULL,'2010-02-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','63','821717482X03052010',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','63','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','63',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','63',NULL,'723.85',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','63',NULL,NULL,'2010-03-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','64','8217174482X04052010',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','64','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','64',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','64',NULL,'2321.07',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','64',NULL,NULL,'2010-04-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','65','821717482X12052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','65','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','65',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','65',NULL,'1184.09',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','65',NULL,NULL,'2009-12-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','66','821717482X11052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','66','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','66',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','66',NULL,'592.88',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','66',NULL,NULL,'2009-11-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','67','821717482X10052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','67','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','67',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','67',NULL,'741.65',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','67',NULL,NULL,'2009-10-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','68','821717482X09052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','68','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','68',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','68',NULL,'695.16',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','68',NULL,NULL,'2009-09-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','69','821717482X08052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','69','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','69',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','69',NULL,'791.56',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','69',NULL,NULL,'2009-08-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','70','821717482X07052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','70','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','70',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','70',NULL,'702.38',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','70',NULL,NULL,'2009-07-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','71','821717482X06052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','71','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','71',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','71',NULL,'964.81',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','71',NULL,NULL,'2009-06-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','72','821717482X05052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','72','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','72',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','72',NULL,'1186.22',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','72',NULL,NULL,'2009-05-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','73','821717482X04052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','73','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','73',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','73',NULL,'1041.29',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','73',NULL,NULL,'2009-04-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','74','821717482X03052009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','74','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','74',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','74',NULL,'1140.87',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','74',NULL,NULL,'2009-03-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','75','821717482X02072009',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','75','2552',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','75',NULL,'612',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','75',NULL,'806.21',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','75',NULL,NULL,'2009-02-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','76','Backup Exec',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','76','66018',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','76','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','76',NULL,NULL,'2009-07-29');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','76',NULL,'402',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','76','Brian Rohan',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','76',NULL,NULL,'2009-10-15');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','77','10325',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','77','7469',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','77',NULL,'402',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','77',NULL,'555',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','77',NULL,NULL,'2009-11-12');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','78','Backup Exec',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','78','65472',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','78','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','78',NULL,NULL,'2008-09-23');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','78',NULL,'402',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','78','Brian Rohan',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','78',NULL,NULL,'2008-10-23');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','79','Bigfoot',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','79','20080117',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','79','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','79',NULL,NULL,'2008-01-17');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','79',NULL,'1934',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','79','Michele Title',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','79',NULL,NULL,'2008-02-17');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','80','Bigfoot',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','80','20100105',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','80','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','80',NULL,NULL,'2010-01-06');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','80',NULL,'1934',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','80','Michele Title',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','80',NULL,NULL,'2010-02-06');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','81','7753',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','81','8809',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','81',NULL,'1934',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','81',NULL,'8420',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','81',NULL,NULL,'2010-02-24');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','82','Bigfoot',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','82','20090122',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','82','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','82',NULL,NULL,'2009-01-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','82',NULL,'1934',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','82','Michele Title',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','82',NULL,NULL,'2009-02-22');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','83','6817',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','83','5916',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','83',NULL,'1934',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','83',NULL,'7000',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','83',NULL,NULL,'2009-02-27');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','84','BlackBerry',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','84','66205',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','84','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','84',NULL,NULL,'2009-11-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','84',NULL,'402',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','84','Brian Rohan',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','84',NULL,NULL,'2009-12-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','85','10339',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','85','8315',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','85',NULL,'402',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','85',NULL,'385',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','85',NULL,NULL,'2009-12-24');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','86','AKSA-6656',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','86','6656',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','86',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','86',NULL,'300',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','86',NULL,NULL,'2009-06-28');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','87','AKSA-4941-08',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','87','4941',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','87',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','87',NULL,'600',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','87',NULL,NULL,'2008-11-19');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','88','AKSA-4940-08',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','88','4940',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','88',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','88',NULL,'600',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','88',NULL,NULL,'2008-11-19');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','89','AKSA-8088',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','89','8088',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','89',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','89',NULL,'1200',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','89',NULL,NULL,'2009-11-20');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','90','AKSA-7123',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','90','7123',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','90',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','90',NULL,'300',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','90',NULL,NULL,'2009-08-15');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','91','AKSA-9004',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','91','9004',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','91',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','91',NULL,'150',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','91',NULL,NULL,'2010-03-05');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','92','AKSA-8754-02',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','92','9036',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','92',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','92',NULL,'600',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','92',NULL,NULL,'2010-02-28');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','93','AKSA-PRIONE-08-1',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','93','5793',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','93',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','93',NULL,'450',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','93',NULL,NULL,'2008-12-19');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','94','AKSA-9005',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','94','9005',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','94',NULL,'618',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','94',NULL,'150',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','94',NULL,NULL,'2010-03-05');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','95','wifi',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','95','8276',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','95','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','95',NULL,NULL,'2008-10-28');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','95',NULL,'738',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','95','Ryan Davis',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','95',NULL,NULL,'2008-11-28');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','96','102789',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','96','5339',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','96',NULL,'738',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','96',NULL,'836.47',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','96',NULL,NULL,'2008-11-20');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','97','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','97','530561',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','97','lyigf',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','97',NULL,NULL,'2008-02-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','97',NULL,'625',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','97','Christopher J Carter',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','97',NULL,NULL,'2008-03-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('7','104','H108917573',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('9','104',NULL,NULL,'2009-10-12');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('15','104','Visa',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('16','104',NULL,'857',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('8','104','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','110','10435250',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','110','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','110',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','110',NULL,'2533.17',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','110',NULL,NULL,'2007-01-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','111','10410010',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','111','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','111',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','111',NULL,'2533.17',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','111',NULL,NULL,'2006-12-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','112','10359947',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','112','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','112',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','112',NULL,'2527.23',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','112',NULL,NULL,'2006-10-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','113','10335261',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','113','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','113',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','113',NULL,'2578.3',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','113',NULL,NULL,'2006-09-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','114','10311478',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','114','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','114',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','114',NULL,'2525.5',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','114',NULL,NULL,'2006-08-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','115','10287677',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','115','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','115',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','115',NULL,'3400.57',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','115',NULL,NULL,'2006-07-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','117','10384562',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','117','4500023466',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','117',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','117',NULL,'2533.17',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','117',NULL,NULL,'2006-11-10');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','119','3350412',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','119','Visa',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','119',NULL,'699',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','119',NULL,'14',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','119',NULL,NULL,'2010-05-18');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','127','Tech',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','127','A1234',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','127','mjvce',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','127',NULL,NULL,'2010-05-25');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','127',NULL,'3232',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','127','Joe',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','127',NULL,NULL,'2010-08-26');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','129','Google',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','129','20100602',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','129','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','129',NULL,NULL,'2010-06-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','129',NULL,'680',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','129','Joe',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','129',NULL,NULL,'2010-09-03');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('37','132','cwineb',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('39','132','Marketing',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('38','132',NULL,NULL,'2010-06-02');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('39','133','Marketing',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('37','133','cwineb',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('38','133',NULL,NULL,'2010-05-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('40','133','SN111',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','136','8788',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','136',NULL,'173.87',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','136',NULL,'1800',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','136',NULL,NULL,'2010-06-01');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','136','1021427',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('27','130','DMAC Tank',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('29','130',NULL,NULL,'2011-06-04');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('31','130','miaju',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('30','130',NULL,'1138',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('28','130',NULL,NULL,'2010-06-04');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('42','130','http://mogsb8/esg/fst_doc/fst_doc.asp?fst=ADD-CHGDMAC',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('39','137','admi',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('37','137','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('38','137',NULL,NULL,'2010-06-08');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('40','137','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','139','Machine',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','139','1.6329',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','139','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','139',NULL,NULL,'2010-02-24');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','139',NULL,'-1',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','139','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','139',NULL,NULL,'2010-05-24');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','140',NULL,NULL,'0000-00-00');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','140','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','140',NULL,'0',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','140',NULL,NULL,'2010-07-28');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','140','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','140','21TN42',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','140','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('14','141',NULL,NULL,'0000-00-00');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('11','141','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('17','141',NULL,'0',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('18','141',NULL,NULL,'2010-07-28');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('12','141','mjwrx',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('10','141','Watanabe',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('13','141','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','150','ELB  0017714513004 - 01',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','150','1234',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','150',NULL,'682',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','150',NULL,'755.13',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','150',NULL,NULL,'2007-08-03');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','151','10679842',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','151','8717',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','151',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','151',NULL,'2340.09',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','151',NULL,NULL,'2010-09-16');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('30','152',NULL,'1099',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('27','152','WAN',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('29','152',NULL,NULL,'2013-06-18');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('28','152',NULL,NULL,'2010-06-18');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('42','152','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('31','152','mibqo',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('6','166',NULL,NULL,'2010-10-21');
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('5','166',NULL,'1448',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('4','166',NULL,'1737',NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('3','166','',NULL,NULL);
INSERT INTO "docdata" ("datatype_id", "doc_id", "varchar_val", "numeric_val", "date_val") VALUES
	('2','166','123',NULL,NULL);
/*!40000 ALTER TABLE "docdata" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'docs'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "docs" (
  "doc_id" bigint(20) unsigned NOT NULL,
  "filename" varchar(255) default NULL,
  "original_filename" varchar(255) default NULL,
  "type_id" int(11) default NULL,
  "year" int(10) unsigned default NULL,
  "status_id" varchar(4) default '1',
  "reqd" varchar(8) default NULL,
  "originator" varchar(8) default NULL,
  "insert_ts" datetime default NULL,
  PRIMARY KEY  ("doc_id"),
  UNIQUE KEY "id" ("doc_id"),
  KEY "id_2" ("doc_id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'docs'
#

LOCK TABLES "docs" WRITE;
/*!40000 ALTER TABLE "docs" DISABLE KEYS;*/
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('1','1.pdf','Invoice 1019666.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 13:37:17');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('2','2.pdf','Invoice 1018809.pdf',1,'2009','4','mibqo','mibqo','2010-04-22 13:38:47');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('3','3.pdf','Invoice 1020548.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 16:20:58');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('4','4.pdf','Invoice 1020107.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 16:22:02');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('5','5.pdf','Invoice 1019235.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 16:22:42');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('6','6.pdf','Invoice 1018391.pdf',1,'2009','4','mibqo','mibqo','2010-04-22 16:23:25');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('7','7.pdf','Invoice 1017988.pdf',1,'2009','5','mibqo','mibqo','2010-04-22 16:24:04');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('8','8.pdf','Invoice 1017593.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:24:52');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('9','9.pdf','Invoice 1017200.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:30:32');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('10','10.pdf','Invoice 1016804.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:31:14');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('11','11.pdf','Invoice 1016411.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:31:50');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('12','12.pdf','Invoice 1016021.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:32:23');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('13','13.pdf','Invoice 1015636.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:32:58');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('14','14.PDF','Invoice 1015256.PDF',1,'2009','1',NULL,'mibqo','2010-04-22 16:33:33');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('15','15.PDF','Invoice 1014884.PDF',1,'2009','5','mibqo','mibqo','2010-04-22 16:34:06');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('16','16.PDF','Invoice 1014514.PDF',1,'2009','5','mibqo','mibqo','2010-04-22 16:34:39');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('17','17.pdf','Invoice 1014153.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:35:08');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('18','18.pdf','Invoice 1013796.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:35:46');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('19','19.pdf','Invoice 1013449.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:36:46');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('20','20.pdf','Invoice 1013115.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:37:37');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('21','21.pdf','Invoice 1012784.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:38:09');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('22','22.pdf','Invoice 1012460.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:38:38');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('23','23.pdf','Invoice 1012142.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:39:24');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('24','24.pdf','Invoice 1011833.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:39:58');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('25','25.pdf','Invoice 1011528.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:40:32');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('26','26.pdf','Invoice 1011232.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:41:08');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('27','27.pdf','Invoice 1010938.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:41:41');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('28','28.pdf','Invoice 1010653.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:42:09');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('29','29.pdf','Invoice 109841.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:42:45');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('30','30.pdf','Invoice 1010376.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:43:26');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('31','31.pdf','Invoice 1010103.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:44:01');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('32','32.pdf','Invoice 109583.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:44:32');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('33','33.pdf','Invoice 109330.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:45:07');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('34','34.pdf','Invoice 109077.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:45:48');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('35','35.pdf','Invoice 108833.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:46:23');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('36','36.pdf','Invoice 108592.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:46:54');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('37','37.PDF','Invoice 1270864319.PDF',1,'2007','4','mibqo','mibqo','2010-04-23 12:30:22');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('38','38.PDF','Invoice 1517669317.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:35:47');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('39','39.PDF','Invoice 1506916801.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:36:39');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('40','40.PDF','Invoice 1496197873.PDF',1,'2008','5','mibqo','mibqo','2010-04-23 12:37:17');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('41','41.PDF','Invoice 1528495689.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:38:09');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('42','42.pdf','Invoice 1550085508.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:39:00');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('43','43.PDF','Invoice 1539315677.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:39:48');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('44','44.pdf','Invoice 1560938575.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:41:28');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('45','45.pdf','Invoice 6289971379.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:42:02');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('46','46.pdf','Invoice 6303460271.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:54:25');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('47','47.pdf','Invoice 6316911228.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:55:58');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('48','48.pdf','Invoice 6330288505.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:56:32');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('49','49.pdf','Invoice 6343615712.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:57:22');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('50','50.pdf','Invoice 6356950593.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:58:11');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('51','51.pdf','Invoice 6370261042.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 12:58:59');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('52','52.pdf','Invoice 6383503638.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 12:59:43');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('53','53.pdf','Invoice 6396722213.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:00:24');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('54','54.pdf','Invoice 6409916837.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:01:07');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('55','55.htm','Quote for ActiveSocket License.htm',3,'2008','5','mibqo','mibqo','2010-04-23 13:06:05');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('56','56.pdf','Invoice 398.pdf',1,'2008','5','mibqo','mibqo','2010-04-23 13:08:03');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('57','57.pdf','Invoice 410.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:09:19');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('58','58.pdf','Invoice 414.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:10:15');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('60','60.pdf','Invoice 821717482X01072009.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:12:51');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('61','61.pdf','Invoice 821717482X01052010.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:14:55');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('62','62.pdf','Invoice 821717482X02052010.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:15:56');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('63','63.pdf','Invoice 821717482X03052010.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:16:38');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('64','64.pdf','Invoice 821717482X04052010.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:17:18');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('65','65.pdf','Invoice 821717482X12052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:18:05');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('66','66.pdf','Invoice 821717482X11052009.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:19:06');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('67','67.pdf','Invoice 821717482X10052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:19:46');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('68','68.pdf','Invoice 821717482X09052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:20:40');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('69','69.pdf','Invoice 821717482X08052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:21:30');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('70','70.pdf','Invoice 821717482X07052009.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:22:06');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('71','71.pdf','Invoice 821717482X06052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:22:55');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('72','72.pdf','Invoice 821717482X05052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:23:39');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('73','73.pdf','Invoice 821717482X04052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:24:23');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('74','74.pdf','Invoice 821717482X03052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:25:41');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('75','75.pdf','Invoice 821717482X02072009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:26:26');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('76','76.pdf','Est_66018_from_Advantec_Glo.pdf',3,'2009','5','mibqo','mibqo','2010-04-23 13:34:07');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('77','77.pdf','Invoice 10325.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:35:38');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('78','78.pdf','Est_65472_from_Advantec_Glo.pdf',3,'2008','5','mibqo','mibqo','2010-04-23 13:36:17');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('79','79.htm','Smart Maintenance Quote for 2008.htm',3,'2008','5','mibqo','mibqo','2010-04-23 13:39:03');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('80','80.pdf','Quote 20100106.pdf',3,'2010','4','moaan','mibqo','2010-04-23 13:40:58');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('81','81.pdf','Invoice 7753.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:42:31');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('82','82.pdf','Quote 20090122.pdf',3,'2009','5','mibqo','mibqo','2010-04-23 13:43:11');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('83','83.pdf','Invoice 6817.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:43:59');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('84','84.pdf','AdvantecGlobalServices quote 66205.pdf',3,'2009','5','mibqo','mibqo','2010-04-23 13:45:51');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('85','85.pdf','Invoice 10339.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:47:02');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('86','86.pdf','Invoice AKSA-6656.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 14:07:02');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('87','87.pdf','Invoice AKSA-4941-08.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:07:51');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('88','88.pdf','Invoice AKSA-4940-08.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:08:36');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('89','89.pdf','Invoice AKSA-8088.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 14:09:07');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('90','90.pdf','Invoice AKSA-7123.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 14:09:40');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('91','91.pdf','Invoice AKSA-9004.pdf',1,'2010','4','mibqo','mibqo','2010-04-23 14:10:06');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('92','92.pdf','Invoice AKSA-8745-02.pdf',1,'2010','4','mibqo','mibqo','2010-04-23 14:10:37');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('93','93.pdf','Invoice PRIONE-08-1.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:11:13');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('94','94.pdf','Invoice AKSA-9005.pdf',1,'2010','4','mibqo','mibqo','2010-04-23 14:12:03');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('95','95.doc','ETI Quote 8276.doc',3,'2008','4','mibqo','mibqo','2010-04-23 14:13:11');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('96','96.pdf','Invoice 102789.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:14:35');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('97','97.pdf','Clean Harbors Quote 530561.pdf',3,'2008','4','mibqo','mibqo','2010-04-23 14:16:47');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('104','104.pdf','Packing List.pdf',2,'2009','4','mibqo','mibqo','2010-04-26 11:46:41');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('110','110.pdf','Invoice 10435250.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 15:55:31');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('111','111.pdf','Invoice 10410010.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:05:24');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('112','112.pdf','Invoice 10359947.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:07:29');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('113','113.pdf','Invoice 10335261.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:08:11');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('114','114.pdf','Invoice 10311478.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:08:51');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('115','115.pdf','Invoice 10287677.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:09:34');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('117','117.pdf','Invoice 10284562.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:13:28');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('119','119.pdf','Order 3350412.pdf',1,'2010','4','mibqo','mibqo','2010-05-19 13:11:48');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('127','127.pdf','Tuesday, May 25, 2010.pdf',3,'2010','3','mibqo','miaju','2010-05-26 11:27:57');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('129','129.htm','Google.htm',3,'2010','1',NULL,'mibqo','2010-06-02 13:53:57');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('130','130.pdf','Thursday, April 22, 2010.pdf',7,'2010','1',NULL,'mibqo','2010-06-02 14:47:32');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('132','132.pdf','scan.pdf',9,'2010','1',NULL,'mibqo','2010-06-02 15:26:18');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('133','133.pdf','Page 1.pdf',9,'2010','1',NULL,'mibqo','2010-06-02 15:52:08');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('136','136.pdf','scan0023.pdf',1,'2010','1',NULL,'mibqo','2010-06-03 09:53:40');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('137','137.pdf','scan.pdf',9,'2010','1',NULL,'mibqo','2010-06-04 14:45:14');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('139','139.pdf','Wednesday, March 03, 2010.pdf',3,'2010','1',NULL,'mibqo','2010-07-28 16:22:32');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('140','140.pdf','Wednesday, March 03, 2010 (2).pdf',3,'2010','1',NULL,'mibqo','2010-07-28 16:30:49');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('141','141.pdf','Friday, March 05, 2010 (7).pdf',3,'2010','1',NULL,'mibqo','2010-07-28 16:37:45');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('150','150.xls','Invoice JS3KF51.xls',1,'2007','1',NULL,'mibqo','2010-10-20 10:04:10');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('151','151.pdf','Invoice 10679842.pdf',1,'2010','1','','mibqo','2010-10-20 11:03:04');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('152','152.pdf','CSA 1371805.pdf',7,'2010','1','','mibqo','2010-10-20 11:06:09');
INSERT INTO "docs" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('166','166.pdf','scan0160.pdf',1,'2010','1',NULL,'mibqo','2010-10-22 10:13:23');
/*!40000 ALTER TABLE "docs" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'docs_recent'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "docs_recent" (
  "doc_id" bigint(20) unsigned NOT NULL,
  "filename" varchar(255) default NULL,
  "original_filename" varchar(255) default NULL,
  "type_id" int(11) default NULL,
  "year" int(10) unsigned default NULL,
  "status_id" varchar(4) default '1',
  "reqd" varchar(8) default NULL,
  "originator" varchar(8) default NULL,
  "insert_ts" datetime default NULL,
  PRIMARY KEY  ("doc_id"),
  UNIQUE KEY "id" ("doc_id"),
  KEY "id_2" ("doc_id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'docs_recent'
#

LOCK TABLES "docs_recent" WRITE;
/*!40000 ALTER TABLE "docs_recent" DISABLE KEYS;*/
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('166','166.pdf','scan0160.pdf',1,'2010','1',NULL,'mibqo','2010-10-22 10:13:23');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('152','152.pdf','CSA 1371805.pdf',7,'2010','1','','mibqo','2010-10-20 11:06:09');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('151','151.pdf','Invoice 10679842.pdf',1,'2010','1','','mibqo','2010-10-20 11:03:04');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('150','150.xls','Invoice JS3KF51.xls',1,'2007','1',NULL,'mibqo','2010-10-20 10:04:10');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('141','141.pdf','Friday, March 05, 2010 (7).pdf',3,'2010','1',NULL,'mibqo','2010-07-28 16:37:45');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('140','140.pdf','Wednesday, March 03, 2010 (2).pdf',3,'2010','1',NULL,'mibqo','2010-07-28 16:30:49');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('139','139.pdf','Wednesday, March 03, 2010.pdf',3,'2010','1',NULL,'mibqo','2010-07-28 16:22:32');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('137','137.pdf','scan.pdf',9,'2010','1',NULL,'mibqo','2010-06-04 14:45:14');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('136','136.pdf','scan0023.pdf',1,'2010','1',NULL,'mibqo','2010-06-03 09:53:40');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('133','133.pdf','Page 1.pdf',9,'2010','1',NULL,'mibqo','2010-06-02 15:52:08');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('132','132.pdf','scan.pdf',9,'2010','1',NULL,'mibqo','2010-06-02 15:26:18');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('130','130.pdf','Thursday, April 22, 2010.pdf',7,'2010','1',NULL,'mibqo','2010-06-02 14:47:32');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('129','129.htm','Google.htm',3,'2010','1',NULL,'mibqo','2010-06-02 13:53:57');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('127','127.pdf','Tuesday, May 25, 2010.pdf',3,'2010','3','mibqo','miaju','2010-05-26 11:27:57');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('119','119.pdf','Order 3350412.pdf',1,'2010','4','mibqo','mibqo','2010-05-19 13:11:48');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('117','117.pdf','Invoice 10284562.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:13:28');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('115','115.pdf','Invoice 10287677.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:09:34');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('114','114.pdf','Invoice 10311478.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:08:51');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('113','113.pdf','Invoice 10335261.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:08:11');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('112','112.pdf','Invoice 10359947.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:07:29');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('111','111.pdf','Invoice 10410010.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 16:05:24');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('110','110.pdf','Invoice 10435250.pdf',1,'2006','1',NULL,'mibqo','2010-04-30 15:55:31');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('104','104.pdf','Packing List.pdf',2,'2009','4','mibqo','mibqo','2010-04-26 11:46:41');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('97','97.pdf','Clean Harbors Quote 530561.pdf',3,'2008','4','mibqo','mibqo','2010-04-23 14:16:47');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('96','96.pdf','Invoice 102789.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:14:35');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('95','95.doc','ETI Quote 8276.doc',3,'2008','4','mibqo','mibqo','2010-04-23 14:13:11');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('94','94.pdf','Invoice AKSA-9005.pdf',1,'2010','4','mibqo','mibqo','2010-04-23 14:12:03');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('93','93.pdf','Invoice PRIONE-08-1.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:11:13');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('92','92.pdf','Invoice AKSA-8745-02.pdf',1,'2010','4','mibqo','mibqo','2010-04-23 14:10:37');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('91','91.pdf','Invoice AKSA-9004.pdf',1,'2010','4','mibqo','mibqo','2010-04-23 14:10:06');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('90','90.pdf','Invoice AKSA-7123.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 14:09:40');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('89','89.pdf','Invoice AKSA-8088.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 14:09:07');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('88','88.pdf','Invoice AKSA-4940-08.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:08:36');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('87','87.pdf','Invoice AKSA-4941-08.pdf',1,'2008','4','mibqo','mibqo','2010-04-23 14:07:51');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('86','86.pdf','Invoice AKSA-6656.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 14:07:02');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('85','85.pdf','Invoice 10339.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:47:02');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('84','84.pdf','AdvantecGlobalServices quote 66205.pdf',3,'2009','5','mibqo','mibqo','2010-04-23 13:45:51');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('83','83.pdf','Invoice 6817.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:43:59');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('82','82.pdf','Quote 20090122.pdf',3,'2009','5','mibqo','mibqo','2010-04-23 13:43:11');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('81','81.pdf','Invoice 7753.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:42:31');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('80','80.pdf','Quote 20100106.pdf',3,'2010','4','moaan','mibqo','2010-04-23 13:40:58');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('79','79.htm','Smart Maintenance Quote for 2008.htm',3,'2008','5','mibqo','mibqo','2010-04-23 13:39:03');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('78','78.pdf','Est_65472_from_Advantec_Glo.pdf',3,'2008','5','mibqo','mibqo','2010-04-23 13:36:17');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('77','77.pdf','Invoice 10325.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:35:38');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('76','76.pdf','Est_66018_from_Advantec_Glo.pdf',3,'2009','5','mibqo','mibqo','2010-04-23 13:34:07');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('75','75.pdf','Invoice 821717482X02072009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:26:26');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('74','74.pdf','Invoice 821717482X03052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:25:41');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('73','73.pdf','Invoice 821717482X04052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:24:23');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('72','72.pdf','Invoice 821717482X05052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:23:39');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('71','71.pdf','Invoice 821717482X06052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:22:55');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('70','70.pdf','Invoice 821717482X07052009.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:22:06');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('69','69.pdf','Invoice 821717482X08052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:21:30');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('68','68.pdf','Invoice 821717482X09052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:20:40');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('67','67.pdf','Invoice 821717482X10052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:19:46');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('66','66.pdf','Invoice 821717482X11052009.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:19:06');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('65','65.pdf','Invoice 821717482X12052009.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:18:05');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('64','64.pdf','Invoice 821717482X04052010.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:17:18');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('63','63.pdf','Invoice 821717482X03052010.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:16:38');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('62','62.pdf','Invoice 821717482X02052010.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:15:56');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('61','61.pdf','Invoice 821717482X01052010.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:14:55');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('60','60.pdf','Invoice 821717482X01072009.pdf',1,'2009','4','mibqo','mibqo','2010-04-23 13:12:51');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('58','58.pdf','Invoice 414.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:10:15');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('57','57.pdf','Invoice 410.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 13:09:19');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('56','56.pdf','Invoice 398.pdf',1,'2008','5','mibqo','mibqo','2010-04-23 13:08:03');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('55','55.htm','Quote for ActiveSocket License.htm',3,'2008','5','mibqo','mibqo','2010-04-23 13:06:05');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('54','54.pdf','Invoice 6409916837.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:01:07');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('53','53.pdf','Invoice 6396722213.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 13:00:24');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('52','52.pdf','Invoice 6383503638.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 12:59:43');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('51','51.pdf','Invoice 6370261042.pdf',1,'2010','1',NULL,'mibqo','2010-04-23 12:58:59');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('50','50.pdf','Invoice 6356950593.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:58:11');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('49','49.pdf','Invoice 6343615712.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:57:22');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('48','48.pdf','Invoice 6330288505.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:56:32');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('47','47.pdf','Invoice 6316911228.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:55:58');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('46','46.pdf','Invoice 6303460271.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:54:25');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('45','45.pdf','Invoice 6289971379.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:42:02');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('44','44.pdf','Invoice 1560938575.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:41:28');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('43','43.PDF','Invoice 1539315677.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:39:48');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('42','42.pdf','Invoice 1550085508.pdf',1,'2009','5','mibqo','mibqo','2010-04-23 12:39:00');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('41','41.PDF','Invoice 1528495689.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:38:09');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('40','40.PDF','Invoice 1496197873.PDF',1,'2008','5','mibqo','mibqo','2010-04-23 12:37:17');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('39','39.PDF','Invoice 1506916801.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:36:39');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('38','38.PDF','Invoice 1517669317.PDF',1,'2009','5','mibqo','mibqo','2010-04-23 12:35:47');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('37','37.PDF','Invoice 1270864319.PDF',1,'2007','4','mibqo','mibqo','2010-04-23 12:30:22');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('36','36.pdf','Invoice 108592.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:46:54');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('35','35.pdf','Invoice 108833.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:46:23');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('34','34.pdf','Invoice 109077.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:45:48');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('33','33.pdf','Invoice 109330.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:45:07');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('32','32.pdf','Invoice 109583.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:44:32');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('31','31.pdf','Invoice 1010103.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:44:01');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('30','30.pdf','Invoice 1010376.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:43:26');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('29','29.pdf','Invoice 109841.pdf',1,'2007','4','mibqo','mibqo','2010-04-22 16:42:45');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('28','28.pdf','Invoice 1010653.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:42:09');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('27','27.pdf','Invoice 1010938.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:41:41');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('26','26.pdf','Invoice 1011232.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:41:08');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('25','25.pdf','Invoice 1011528.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:40:32');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('24','24.pdf','Invoice 1011833.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:39:58');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('23','23.pdf','Invoice 1012142.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:39:24');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('22','22.pdf','Invoice 1012460.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:38:38');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('21','21.pdf','Invoice 1012784.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:38:09');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('20','20.pdf','Invoice 1013115.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:37:37');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('19','19.pdf','Invoice 1013449.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:36:46');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('18','18.pdf','Invoice 1013796.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:35:46');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('17','17.pdf','Invoice 1014153.pdf',1,'2008','4','mibqo','mibqo','2010-04-22 16:35:08');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('16','16.PDF','Invoice 1014514.PDF',1,'2009','5','mibqo','mibqo','2010-04-22 16:34:39');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('15','15.PDF','Invoice 1014884.PDF',1,'2009','5','mibqo','mibqo','2010-04-22 16:34:06');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('14','14.PDF','Invoice 1015256.PDF',1,'2009','1',NULL,'mibqo','2010-04-22 16:33:33');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('13','13.pdf','Invoice 1015636.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:32:58');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('12','12.pdf','Invoice 1016021.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:32:23');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('11','11.pdf','Invoice 1016411.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:31:50');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('10','10.pdf','Invoice 1016804.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:31:14');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('9','9.pdf','Invoice 1017200.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:30:32');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('8','8.pdf','Invoice 1017593.pdf',1,'2009','1',NULL,'mibqo','2010-04-22 16:24:52');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('7','7.pdf','Invoice 1017988.pdf',1,'2009','5','mibqo','mibqo','2010-04-22 16:24:04');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('6','6.pdf','Invoice 1018391.pdf',1,'2009','4','mibqo','mibqo','2010-04-22 16:23:25');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('5','5.pdf','Invoice 1019235.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 16:22:42');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('4','4.pdf','Invoice 1020107.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 16:22:02');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('3','3.pdf','Invoice 1020548.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 16:20:58');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('2','2.pdf','Invoice 1018809.pdf',1,'2009','4','mibqo','mibqo','2010-04-22 13:38:47');
INSERT INTO "docs_recent" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts") VALUES
	('1','1.pdf','Invoice 1019666.pdf',1,'2010','1',NULL,'mibqo','2010-04-22 13:37:17');
/*!40000 ALTER TABLE "docs_recent" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'doctype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "doctype" (
  "type_id" int(10) unsigned NOT NULL auto_increment,
  "type_text" varchar(25) default NULL,
  PRIMARY KEY  ("type_id"),
  UNIQUE KEY "type_id" ("type_id"),
  KEY "type_id_2" ("type_id")
) AUTO_INCREMENT=10 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'doctype'
#

LOCK TABLES "doctype" WRITE;
/*!40000 ALTER TABLE "doctype" DISABLE KEYS;*/
INSERT INTO "doctype" ("type_id", "type_text") VALUES
	('1','Invoice');
INSERT INTO "doctype" ("type_id", "type_text") VALUES
	('2','Packing List');
INSERT INTO "doctype" ("type_id", "type_text") VALUES
	('3','Quote');
INSERT INTO "doctype" ("type_id", "type_text") VALUES
	('7','Contracts');
INSERT INTO "doctype" ("type_id", "type_text") VALUES
	('9','Expense Report');
/*!40000 ALTER TABLE "doctype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'route'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "route" (
  "doc_id" bigint(20) unsigned default NULL,
  "step" tinyint(3) unsigned default NULL,
  "route_to" varchar(8) default NULL,
  "status_id" int(10) unsigned default NULL,
  "request" text,
  "in_proc" tinyint(3) unsigned default '0'
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'route'
#

LOCK TABLES "route" WRITE;
/*!40000 ALTER TABLE "route" DISABLE KEYS;*/
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('7',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('85',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('84',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('83',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('82',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('79',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('78',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('76',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('75',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('74',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('73',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('72',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('71',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('69',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('68',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('67',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('65',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('58',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('57',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('56',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('55',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('50',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('49',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('48',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('47',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('46',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('45',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('44',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('43',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('42',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('41',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('40',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('39',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('38',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('127',1,'mibqo','3','Is this yours?',1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('16',1,'mibqo','5',NULL,1);
INSERT INTO "route" ("doc_id", "step", "route_to", "status_id", "request", "in_proc") VALUES
	('15',1,'mibqo','5',NULL,1);
/*!40000 ALTER TABLE "route" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sandbox'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sandbox" (
  "doc_id" bigint(20) unsigned NOT NULL auto_increment,
  "filename" varchar(255) default NULL,
  "original_filename" varchar(255) default NULL,
  "type_id" int(11) default NULL,
  "year" int(10) unsigned default NULL,
  "status_id" varchar(4) default '1',
  "reqd" varchar(8) default NULL,
  "originator" varchar(8) default NULL,
  "insert_ts" datetime default NULL,
  "update_by" varchar(8) default NULL,
  "update_id" varchar(4) default NULL,
  "update_ts" datetime default NULL,
  PRIMARY KEY  ("doc_id"),
  UNIQUE KEY "id" ("doc_id"),
  KEY "id_2" ("doc_id")
) AUTO_INCREMENT=175 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sandbox'
#

LOCK TABLES "sandbox" WRITE;
/*!40000 ALTER TABLE "sandbox" DISABLE KEYS;*/
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('156','156.xml','Invoice JS3KF51.xml',NULL,NULL,'1',NULL,'mibqo','2010-10-21 12:16:54',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('146','146.xls','Invoice JS3KF51.xls',NULL,NULL,'1',NULL,'mibqo','2010-10-19 16:28:32',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('147','147.xls','MySpreadsheet.xls',NULL,NULL,'1',NULL,'mibqo','2010-10-19 16:46:48',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('155','155.xml','Invoice JS3KF51.xml',NULL,NULL,'1',NULL,'mibqo','2010-10-21 12:15:18',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('154','154.xml','Invoice JS3KF51.xml',NULL,NULL,'1',NULL,'mibqo','2010-10-21 10:57:50',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('153','153.jpg','zenscape.jpg',NULL,NULL,'1',NULL,'mibqo','2010-10-21 09:26:32',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('148','148.xls','Invoice JS3KF51.xls',NULL,NULL,'1',NULL,'mibqo','2010-10-20 10:02:28',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('149','149.xls','Invoice JS3KF51.xls',NULL,NULL,'1',NULL,'mibqo','2010-10-20 10:03:13',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('157','157.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 12:58:25',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('158','158.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 12:58:51',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('159','159.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 12:59:40',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('160','160.pdf','scan2orders.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 14:02:36',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('161','161.pdf','scan2orders.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 14:03:18',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('162','162.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 14:03:27',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('163','163.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 14:03:54',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('164','164.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 14:03:59',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('165','165.pdf','scan0044.pdf',NULL,NULL,'1',NULL,'mibqo','2010-10-21 14:20:03',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('167','167.xls','Invoice JS3KF51.xls',NULL,NULL,'1',NULL,'mibqo','2010-10-22 10:34:28',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('168','168.xls','Invoice JS3KF51.xls',NULL,NULL,'1',NULL,'mibqo','2010-10-22 10:35:07',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('169','169.htm','FedEx Pickup Confirmation.htm',NULL,NULL,'1',NULL,'mibqo','2010-10-22 10:35:57',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('170','170.pdf','scan0280.pdf',NULL,NULL,'1',NULL,'mibqo','2011-01-26 16:16:14',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('171','171.pdf','scan0366.pdf',NULL,NULL,'1',NULL,'exjrz','2011-03-04 09:41:29',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('172','172.pdf','scan0486.pdf',NULL,NULL,'1',NULL,'mmontg','2011-04-25 11:26:09',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('173','173.pdf','scan0423.pdf',NULL,NULL,'1',NULL,'mmontg','2011-05-25 11:04:43',NULL,NULL,NULL);
INSERT INTO "sandbox" ("doc_id", "filename", "original_filename", "type_id", "year", "status_id", "reqd", "originator", "insert_ts", "update_by", "update_id", "update_ts") VALUES
	('174','174.pdf','scanJOY BOL.pdf',NULL,NULL,'1',NULL,'mibqo','2011-07-14 13:03:20',NULL,NULL,NULL);
/*!40000 ALTER TABLE "sandbox" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'status'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "status" (
  "status_id" int(10) unsigned NOT NULL auto_increment,
  "status_text" varchar(50) default NULL,
  "is_done" tinyint(3) unsigned default NULL,
  "sortorder" tinyint(3) unsigned default NULL,
  PRIMARY KEY  ("status_id"),
  UNIQUE KEY "id" ("status_id"),
  KEY "id_2" ("status_id")
) AUTO_INCREMENT=8 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'status'
#

LOCK TABLES "status" WRITE;
/*!40000 ALTER TABLE "status" DISABLE KEYS;*/
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('1','New',1,1);
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('2','For Approval',0,2);
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('3','For Information',0,4);
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('4','Completed',1,99);
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('5','For Review',0,3);
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('6','Information Provided',1,5);
INSERT INTO "status" ("status_id", "status_text", "is_done", "sortorder") VALUES
	('7','Declined',1,6);
/*!40000 ALTER TABLE "status" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'supported_MIME'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "supported_MIME" (
  "file_ext" varchar(12) default NULL,
  "mime_str" varchar(50) default NULL,
  "use_mime" tinyint(3) unsigned default '0',
  "clsid" varchar(50) default NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'supported_MIME'
#

LOCK TABLES "supported_MIME" WRITE;
/*!40000 ALTER TABLE "supported_MIME" DISABLE KEYS;*/
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('pdf','application/pdf',1,NULL);
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('doc','application/msword',0,'00020906-0000-0000-C000-000000000046');
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('xls','application/vnd.ms-excel',0,'DA2A7F82-EB60-4AD0-8297-A26F7110D0BE');
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('ppt','application/vnd.ms-powerpoint',0,'91493441-5A91-11CF-8700-00AA0060263B');
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('jpg','image/jpeg',1,NULL);
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('jpeg','image/jpeg',1,NULL);
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('htm','text/html',1,NULL);
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('html','text/html',1,NULL);
INSERT INTO "supported_MIME" ("file_ext", "mime_str", "use_mime", "clsid") VALUES
	('xml',NULL,0,'0002E559-0000-0000-C000-000000000046');
/*!40000 ALTER TABLE "supported_MIME" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'updates'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "updates" (
  "update_id" int(10) unsigned NOT NULL auto_increment,
  "update_text" varchar(50) default NULL,
  "sortorder" tinyint(3) unsigned default NULL,
  PRIMARY KEY  ("update_id"),
  UNIQUE KEY "update_id" ("update_id"),
  KEY "update_id_2" ("update_id")
) AUTO_INCREMENT=9 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'updates'
#

LOCK TABLES "updates" WRITE;
/*!40000 ALTER TABLE "updates" DISABLE KEYS;*/
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('1','Document Inserted',1);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('2','Document Update',1);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('3','Status Change',2);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('4','Notification',3);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('5','Approval',1);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('6','Response',1);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('7','Assignment',4);
INSERT INTO "updates" ("update_id", "update_text", "sortorder") VALUES
	('8','Declined',1);
/*!40000 ALTER TABLE "updates" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'vendors'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "vendors" (
  "vendor_id" int(10) NOT NULL,
  "name" varchar(50) default NULL,
  PRIMARY KEY  ("vendor_id"),
  UNIQUE KEY "id" ("vendor_id"),
  KEY "id_2" ("vendor_id")
) AUTO_INCREMENT=1039 /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'vendors'
#

LOCK TABLES "vendors" WRITE;
/*!40000 ALTER TABLE "vendors" DISABLE KEYS;*/
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2131,'3E Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2729,'3R of Charleston, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2304,'A & E Engineering, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(44,'A C Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(287,'A-1 Locksmith');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(392,'AAA Cooper Transportation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1842,'ABB, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1507,'ABN AMRO Bank NV');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(395,'ABS Consulting Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(397,'AC Controls Co. Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(401,'ADP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(403,'AEA Technology Engineering Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2857,'AKSA - BB&T Charges');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2856,'AKSA - FSA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2855,'AKSA - HSA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1647,'AKSA Bushy Park');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2164,'AL BILTON FORD-MERCURY, INC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(501,'APV Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(612,'AT&T Mobility');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(517,'ATG-CSAV & Libra Lines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(393,'Abernathy Thomas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(394,'Able Electrical Construction');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(396,'Absolutely Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(398,'Access Portable Toilets, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(399,'Accratec Engineering, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3230,'Accusort (Credit card ONLY)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(400,'Ace USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2293,'Action Locksmith Service');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2129,'Advanced Computing Solutions, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1926,'Advanced Handling Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2035,'Advanced Technology Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(402,'Advantec Global Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(553,'Aero Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(404,'Aero Service Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(405,'Aetna Life Insurance Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(406,'Air Centers of South Carolina, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(407,'Air Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(408,'Airgas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1079,'Airgas National Welders');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(409,'Airstar');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(410,'Akzo Nobel Functional Chemicals LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(411,'Albahealth');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(473,'Alexim Trading (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(474,'Alfa Laval c/o Custom Equipment Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(476,'Alfa Lavall');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3316,'Alianca Lines, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(478,'All Coast Intermodal Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(479,'All Hands Fire Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(480,'Allen and Webb Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(481,'Allied Electronics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(482,'Allied Steel Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(484,'Alston & Bird LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(485,'Altex Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(486,'Altyn Sales Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2349,'American Cancer Society');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1984,'American Express Bank Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(488,'American Fiber Association');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(489,'American Lewa, INC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2406,'American Pensions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(490,'American Petroleum Institute');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(491,'American Pipe, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1815,'American President Lines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(493,'American Steamship');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1901,'American United Life Insurance Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2388,'American Wiping Rags');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2134,'Andover Coated Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(495,'Ann Voit Language School');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(496,'Aon Risk Services Inc of Georgia');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(497,'Apartment & Corporate Relocation Service');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(499,'Applebee-Church, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1680,'Applied Engineering, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(500,'Applied Industrial Tech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1834,'Aquilex HydroChem, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(504,'Aramark Uniform Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(505,'Arbil Safety');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(506,'Arizona Instrument LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2342,'Asahi Chemical Hong Kong');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1429,'Asahi Kasei America, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3163,'Asahi Kasei Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(508,'Asahi Kasei Engineering Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(509,'Asahi Kasei Fibers Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(416,'Asahi Kasei Spandex Europe GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(391,'Asahi Kasei Trading Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(511,'Ashland Specialty Chemical Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(518,'Atlan-Tec Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(519,'Atlantic Coast Steel');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1551,'Atlantic Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2846,'Atlantic Packaging Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2043,'Atlantic Process Controls, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3177,'Automatic Controls Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3184,'Automation Integration Services LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2001,'Averitt Express Inc.  (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1967,'B & D Boilers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(523,'B & D Marine & Industrial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(525,'B.W. Clark');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(425,'BASF Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(536,'BAX Global');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2100,'BB&T of South Carolina');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2341,'BFA S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1795,'BPIC 25 Year Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(565,'BSI Management Systems America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(526,'Babst, Caland, Clements and Zomnir');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2326,'Bank of Tokyo-Mitsubishi UFJ, Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(531,'Barker Air & Hydraulics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(532,'Barloworld Handling Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1552,'Barnett-Hornberg Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2467,'Bartlett Controls, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(535,'Batteries Plus - 231');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(538,'Bayer Corp & Business Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2217,'Bayer Heritage FCU');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(415,'Bayer Material Science');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(540,'Bayer SA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(541,'Bayer Thai Co., Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(543,'Bearing Distributors, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1733,'Belcan Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(546,'Benjamin Bruner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3283,'Berger Transfer & Storage');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2837,'Berkeley/Dorchester V R Center');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(550,'Berlitz (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(551,'Bertelkamp Automation, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(43,'Bestway');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(552,'Billings Freight Systems (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(554,'Bircher America Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(555,'Blaze Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(556,'Blue Cross Blue Shield of SC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1852,'BlueChoice HealthPlan');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3235,'Boasso America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(558,'Boot Jack');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(412,'Brenntag');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(559,'Bridge Terminal Transport (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1598,'Brodie Meter c/o Robert S. Hudgins Comapny');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(563,'Brookfield Engineering Lab, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(564,'Brooks Instrumentation Division (see Robert S. Hud');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2233,'Bryan, Truesdale, Adkins & Williams, PA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(567,'Busak and Shamban');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(568,'C M Marketing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(569,'C.H. Robinson Worldwide (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2160,'CAMH Star Forwarding Agency, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(592,'CCNI (Norton Lilly Int''l)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(593,'CDI Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1709,'CEM');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2040,'CIMTEC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1917,'CMMC Machine');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1846,'COBRAsource, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(648,'CPI Graphics, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1774,'CRX laboratories L.L.C');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1694,'CSAV');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(654,'CSC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(655,'CSI Automation & Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1847,'CT Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3001,'CWFC Farris');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1575,'Cabot Cove Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2790,'Calgon Carbon Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(572,'Cannon Instrument Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1553,'Caraustar');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(574,'Cardinal Container Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1768,'Carlton-Bates Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(577,'Carolina Chemical Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(578,'Carolina Chillers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(579,'Carolina Controls Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2848,'Carolina Elevator Service Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(580,'Carolina Filters, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(581,'Carolina Fluid Components');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(790,'Carolina Fluidair');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2184,'Carolina Industry Technical Services Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(582,'Carolina Mobile Storage Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(583,'Carolina Office System');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(586,'Carolina RX Labs LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2810,'Carolina Waste Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2121,'Carolyn M. Umphlett');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(588,'Caroplast');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(589,'Carotek, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(591,'Carrington Engineering');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1925,'Central Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(645,'Century 21 Properties Plus, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1898,'Century Fasteners');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(595,'CeramTec N.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(594,'Ceramco Printech');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1703,'Champion Trading Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2471,'Chandler''s Reed Hooks');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2029,'Charleston Metro Chamber of Commerce');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(600,'Charleston Rubber and Gasket');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(601,'Charleston Sign & Banner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(602,'Charleston Women in International Trade');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2096,'Charlestowne Engineering LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(604,'Cheetah Transportation Inc LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(605,'Chem-Dry');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2365,'ChemPoint');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1915,'Chemcentral');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(606,'Chemineer Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(597,'Chemineer Inc. c/o Chapman Associates, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2350,'Chemson');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(422,'Chemtura');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3234,'Chromalox (PO''s must be issued/e-mailed to Applebe');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(608,'Chromalox - South Carolina');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(610,'Chubb Group of Insurance Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(613,'Cintas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2148,'CintasCorporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(616,'Circle Environmental (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2462,'Circle Int. Inc. DBA EGL Global Brokerage');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(618,'Cirrus Tech');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2738,'City Electric Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(624,'Clean Earth Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(625,'Clean Harbors Environmental Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(627,'Clear Mountain Spring Water');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(631,'Coastal Hydraulics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3334,'Columbia Container Lines USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(634,'Columbia Fluid System (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2340,'Columbiana De Comercio S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(635,'Combotronics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1740,'Comfort Suites');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(641,'Computer Plus');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1490,'Continental Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1874,'Continuum Trasportation Services, LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(642,'Control Corporation of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(644,'Conway Transportation Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3207,'Cooper River Partners, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2640,'Core One Properties, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(647,'Corporate Express');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2113,'Cramer Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(649,'Cranston Trucking Company (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(652,'Cross Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(657,'Cuno Filtration Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1787,'Curd Enterprises');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(659,'Customs + Exports Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1780,'Cyclops Industries Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(414,'Cytec Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(662,'D & B');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(663,'D and S International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3329,'DBR Associates, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2102,'DHEC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3049,'DHL - (USA Chicago)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(687,'DHL Danzas Air & Ocean');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(691,'DHL Express');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2460,'DHL Express (USA - Atlanta)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3007,'DHL Express (USA - California), Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2391,'DHL Express (USA), Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2482,'DHL Express (USA-Boston)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1692,'DINOX Handels-GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2258,'DP Warnecki Enterprise, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(665,'Danner MOC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(669,'Datacolor');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(673,'Davis Vision');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(674,'Davison Publishing Co, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(675,'Day & Zimmerman International, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(677,'Dayton Freight Lines, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2268,'DeSales Trading Company, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2128,'Delaware Division of Revenue');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(680,'Dell Computer Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(681,'Dell Financial (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(682,'Dell Financial Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(683,'Dell Marketing L.P.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2107,'Dell Service Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(684,'Deloitte Tax LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1686,'Delta Dental of Missouri');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(685,'Department of Revenue Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(686,'Deringer');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2031,'Diamond Springs Water');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(694,'Dienes Apparatus, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(697,'Dillon Supply Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(699,'Diners Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2414,'Docugraphics, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(700,'Dodson Brothers Exterminating');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3039,'Doug Vance');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(424,'Dow Corning Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2398,'Doyle & Roth Manufacturing Co. Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3232,'DuPont');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1813,'Duncan - Parnell');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(707,'Dunn & Bradd Street (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(708,'Duratech Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(709,'Dynisco Instruments');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(710,'E.M.E.S.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(713,'E=MC4I,Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(714,'ECK Supply Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(743,'ERD Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1945,'Eagle Systems Trucking Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2445,'Eastern Electric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3270,'Easy Way Insulation Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1923,'Eaton Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3022,'Echo Industry Limited');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(716,'Eclectic Chef');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(718,'Econocaribe Consolidators (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(720,'Edwards Wood Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(721,'Edwards Wood Products - Scotland');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(723,'Ekato Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2272,'Electrical Reliability Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(728,'Embassy Suites Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(982,'Emerson Network Power, Liebert Services Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(730,'Emerson Process Management');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(731,'Emil Broell GmbH & Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(732,'Emory Wilson');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2742,'Emory Wilson Process, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1646,'Emotron');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2786,'Employ+ Ability, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(734,'Endress+Hauser c/o Carotek, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(735,'Enecon Southeast');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2710,'Engineered Lifting Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(736,'Englewood Company, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(737,'Enka Technica, GMBH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(738,'Enterprise Technologies, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1893,'Enterprise Transportation Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(739,'Entivity');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2151,'Environmental Engineering Sciences, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(740,'Environmental Resource Center (remi');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(741,'Equipment & Controls Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2364,'Errol Thomas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(745,'Estanit GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(746,'Estes Express Lines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(748,'Evergreen America Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1885,'Everlight USA, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(749,'Excel Apparatus Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2277,'Excel, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(751,'Exel Global (Logistics)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(753,'Exel Global Logistics (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2175,'Express Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1784,'FCX Performance');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(778,'FKI Logistex (Alvey)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(777,'FKI Logistix (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(781,'FLIR Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(797,'FS Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3079,'FSL');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3366,'Fairbanks Scales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2930,'Fastenal');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(756,'Faulkner/Haynes Associates, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(762,'FedEx Custom Critical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2701,'FedEx Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(757,'Federal Express (Pri - 10:30)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(758,'Federal Express (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(759,'Federal Express 2nd day');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(760,'Federal Express Saver (Pkg)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(764,'Feirwerkbau A. Hammer');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(766,'Fennell Container Company, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(767,'Festo Corp C/O Bertelkamp Automatio');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(776,'Fi-Tech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(769,'Fike c/o Met-Tric Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(770,'Filtration Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(772,'Fisher Controls International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(773,'Fisher Scientific');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(780,'Flex-Kleen Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1789,'Flexible Corporate Plans, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(783,'Flotech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(784,'Flowserve US (Duriron)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(787,'Fluid Flow Products, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(788,'Fluid Power of the Carolinas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(791,'Fluidair (of Chas) (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(792,'Food Service, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2186,'Ford Motor Credit Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2133,'Forschungsinstitut Hohenstein');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1714,'Fragomen, Del Rey, bernsen & Loewy, LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2179,'Franchise Tax Board');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1804,'Frischkorn Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(798,'Fuji America, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1586,'Fuji Filter Manufacturing Co. LTD.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3178,'Furniture Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(801,'G.Frey GMBH & Company KG');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(809,'GE Corporate Card Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(417,'GE Silicones');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1173,'GEA Renzmann & Grunewald GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(812,'GEL Engineering, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(833,'GXS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(803,'Gai-Tronics Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(804,'Galbraith Laboratories');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3075,'Gantrade Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(807,'Gaston Fabrication');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2221,'Gemworth Financial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2920,'General Laboratory Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2696,'Genworth Financial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(813,'George E.Missbach & Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(817,'Global Exchange Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2332,'Global Fil');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3183,'Godshall and Godshall');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(819,'Gold Toe Brands Attn: Chappel Whitt');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(820,'Good Earth');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(821,'Goodfellow Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(822,'Goodman Factors');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2032,'Goodway');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(421,'Goulston Technologies');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2200,'Graphic Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2270,'Gray Contracting LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2821,'Greg Hearn');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(825,'Gregory Poole Equipment Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(826,'Groth Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2480,'Groth Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(829,'Groz-Beckert Canada');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(830,'Groz-Beckert USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(831,'Grr! Giant Resource Recovery Co, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(834,'H P small-medium business machines');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(835,'H.C. Warner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(836,'H.C. Warner (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3303,'HANGZHOU CORENSO HUALUN PAPER CORE CO.,LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1573,'HSA Bank');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(837,'Hagemeyer North America Electrical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(839,'Hahn-Mason Air Systems, inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(841,'Hamburg Sud');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3281,'Hangzhou Asahikasei Spandex Co., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(843,'Hanjin Shipping');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1855,'Hank Kearse, M.D.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2111,'Hankyu Int''l Transport (USA) Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(845,'Hapag Lloyd America (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(847,'Haskell International, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(849,'Haver & Boecker');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(850,'Haynsworth Sinkler Boyd, P.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3138,'Heat Transfer Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(851,'Heavenly Ham');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1879,'Hellmann Worldwide Logistics, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2132,'Henderson Machinery');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2211,'Heritage Transformer Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(856,'Heute + Comp GmbH + Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(857,'Hewlett Packard Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(859,'Hewlett-Packard (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(860,'Hobgood Electric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(862,'Hohenstein Institute America, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(863,'Holox/Linde Gas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1712,'Home Telephone co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(865,'HomeWood Suites');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(866,'Honor Equipment Company LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2321,'Hookset Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2383,'Horai Co., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1942,'I & M Industrials');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(871,'IBM Direct');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2259,'IDEA LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3244,'INDA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2282,'IPS Packaging');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2310,'ITOCHU CHEMICAL FRONTIER Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2835,'ITOCHU Chemicals America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2804,'ITW Shippers Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2632,'Idea Global');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2921,'IndSpec Systems Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2692,'Industrial Concepts, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(877,'Industrial Container Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2086,'Industrial Electronics Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3392,'Industrial Mechanical, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(880,'Inform, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(430,'Innovative Packaging, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(882,'Inspect Tech, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(883,'Instrument & Valve Services Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(884,'Instrument & Valve Services Co (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2339,'Insumtex LTDA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3241,'Integrated Power Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1503,'Interflow (T.C.S.) Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(886,'Intergraph Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(888,'Intermodal Bridge Transport (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2158,'Internal Revenue Service');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(890,'International Crystal Labs');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(891,'International Data Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1788,'International Machinery Sales');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(426,'International Paper');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2464,'Intertek Group plc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1887,'Intex DIY, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(896,'Invensys Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(899,'Ishihara Electric Heater MFG');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(901,'J & J Mid-South');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3290,'J C Pallet');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(903,'J.E.  Teske CHB');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(904,'J.E. Merit Constructors (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(905,'J.E. Merit Constructors, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(906,'J.K.Brooks & Associates, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(910,'JB Systems (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2815,'JBB Enterprises,Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(915,'JMS Southeast Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2198,'JUMO');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(927,'JW Rew');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2202,'Jacobs');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1609,'Jamco International Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2110,'Jarrard, Nowell & Russell, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(908,'Jauregui, Navarrete, Nader Y Rojas,');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3095,'Jerry Reeves');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(912,'Jerry Stafford Public Relations');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(919,'Johnson Controls (parts only)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(920,'Johnson Controls (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(921,'Johnson Controls (service only)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1540,'Jones Management LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(941,'K-Line America Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(932,'KDP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(933,'KDP  remit (was Intex-Legg & Platt)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(934,'KEP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(935,'KEP (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(928,'Kano Laboratories');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2386,'Kansai USA Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(930,'Kasen International Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(931,'Kawajyu Shoji Co. Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2403,'Kellett Enterprises');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1992,'Ken Clary & Co., LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2429,'Keyence');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3305,'Kiln Direct, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2137,'Kimberly-Clark Administrative Center (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(938,'King Media Associate');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2337,'Kinob Traders S.A. de C.V.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(939,'Kinsmen Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(940,'Kinsmen Corp (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2078,'Klaus Union, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(942,'Kluber Lubrication');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(943,'Kluber Lubrication (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1785,'Koch-Glitsch LP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(944,'Kolene Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(946,'Kone, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(947,'Kone, Inc (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2376,'Kuehne & Nagel, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(418,'Kyowa Chemicals');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1744,'Kyuasa Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(950,'L & R Manufacturing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(951,'L.R.Gorrell');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2014,'LIST USA Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(989,'LLR Engineers & Surveyor Board');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(994,'LXE (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(952,'Lab Safety Supply, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(953,'Lab Safety Supply, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2214,'LabelMaster');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2333,'Lacotex');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(956,'Landmark Construction');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(957,'Landstar Ranger / Express (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(958,'Lanxess (PTY) LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(959,'Lanxess (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(960,'Lanxess Brazil SA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(413,'Lanxess Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(962,'Lanxess Deutschland GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(963,'Lanxess Distribution (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(964,'Lanxess Distribution GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(965,'Lanxess India Private Limited');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(961,'Lanxess de Mexico S.A. de C.V.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2395,'Laredo Becnel Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(967,'Laser Perfect Imaging Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(969,'Lawson-Hemphill');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(970,'Lawson-Hemphill (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(971,'Leggemann Machinery');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(972,'Leistritz Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(973,'Lemco Mills');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(974,'Leschaco, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(975,'Leschaco, Inc (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(976,'Leslie C. Turner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1197,'Lewis-Goetz & Co., Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3087,'LexisNexis');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(977,'Lexisnexis Peoplewise');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(978,'Liberty Fire Protection, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(979,'Liberty Fire Protection, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(980,'Lidorr Chemical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(981,'Liebert Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2336,'Lima Bremen E.I.R.L.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(983,'Limehouse & Sons');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(984,'Linden Bulk');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(985,'Liquid Dynamics, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(986,'Liquid Dynamics, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2265,'Livingston & Haven');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(990,'Lockwood Greene');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(991,'Lockwood Greene (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1980,'Louisiana Chemical Equipment Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1858,'Low Country Medical Claims and Billing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1856,'Low Country Urology Clinics, P.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(992,'Lowcountry Regional EMS Council, In');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(995,'Lykes Lines LTD LLC (Remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(996,'M & P Machinery (formerly Leggemann');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2335,'M.W. Mercosul Represetacoes Commerciais LTDA.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1595,'MC Schroeder Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2139,'MCS Environmental Labratory');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(562,'METROHM USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3214,'MG Trust');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1047,'MHNet');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3272,'MS Sales Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1069,'MSC Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2065,'MSDS Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1071,'MTM Recognition (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1077,'MUSC Executive Health Program');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(997,'Maag Pump Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(999,'Machinist, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1002,'Maersk-Sealand (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1003,'Magnatex');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(789,'Magnatex Pumps c/o Fluid Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1004,'Magnetrol Intl');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1005,'Magnetrol Intl (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1006,'Magnum Freight (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1007,'Majemac Enterprises, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1008,'Malden Mills Creditor Trust');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1009,'Malvern Instruments, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1010,'Malvern Instruments, Inc. (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2116,'Management Dynamics Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1011,'Management Dynamics, inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2436,'Management Recruiters of East Hempfield');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1708,'Manufacturas Voila SA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2103,'Maplewood Mobile Home Resellers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1013,'Marc Workshop , Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1014,'Marian de Ruyter');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2400,'Marketing Technology Service, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2358,'Marlena Fass');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1016,'Marsh USA Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1017,'Martor USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1019,'Massey Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1020,'Master Sheet Metal, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1021,'Matcon USA, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(423,'Matsumoto Yushi-Seyaku Co., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1022,'Maverick Technologies (formerly GEA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1000,'Mayer Electric Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1023,'Mayer Textile Machine Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1025,'McJunkin Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1027,'McMaster Carr Supply Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1029,'McNair Law Firm');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1031,'McNaughton-McKay Electric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1032,'McNichols Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1033,'McNichols Co. (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1034,'Measured Solutions, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1747,'Mec-Tric');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2069,'Mediterranean Shipping Co. (USA)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1036,'Mediterranean Shipping MSC S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1037,'Meisei & Company, Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2412,'Meisei Chemical works, Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1038,'Mellon Bank');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1039,'Menardi LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1040,'Menardi LLC (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1041,'Mennes GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1042,'Meridian Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1044,'Metro Electric, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1045,'Mettler Toledo');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1046,'Mettler-Toledo (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2240,'Meyers Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1052,'Micro Motion Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1053,'Micro Motion Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1054,'Microgenics Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1055,'Midac Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1056,'Mighty Lube');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2185,'Mike Finley');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2021,'Mill-Rose Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1723,'Mineral & Pigment Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1057,'Minuteman Press');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1058,'Misc. Package Carrier');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2017,'Mitsui Bussan Textile Co., LTD (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1059,'Mitternight (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2839,'Mizuho Corporate Bank Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1060,'Mobile Communications of Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1062,'Mohn Media Kalender');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1545,'Momentive Performance Mtls.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1063,'Monarch');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1907,'Moore Industries-Int., Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1065,'Moroil');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2699,'Mosaic Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1067,'Motion Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1070,'Mt Zion AME Church (Education fund)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2316,'Mueller Steam Specialty');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1072,'Multi-Coatings Co, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1073,'Multiplastics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1074,'Munters Corporation - ME Division');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1075,'Murata');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2311,'Murata Machinery Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3257,'NCBFAA Educational Institute Director');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2775,'NCO Financial Systems, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1081,'NCO Financial-Commercial Div');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1082,'NCS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1837,'NICCA USA Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2058,'NISHIYAMA CORPORATION OF AMERICA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2854,'NSCSA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2338,'NYARA Projects');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1078,'National Textile Association');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1084,'Netsuite');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1086,'Netzsch Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1088,'Neuville Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1089,'New Century Transport (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1090,'New Pig');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1091,'Nexsen-Pruet');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2275,'Nippon Express USA, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1092,'Noble Distribution / RFT (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1093,'Nordson Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1095,'North Charleston Fluid System Tech');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1097,'Northern Safeco Inc. (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1096,'Northern Safety');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1191,'Northern Safety Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1098,'Norton Lilly');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2230,'OCS Checkweighers, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1820,'OOCL');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1100,'Office Depot Corporate Support Cent');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3324,'Ohno E Oshikiri Advogados');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1101,'Old Dominion Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1102,'Olsten');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1599,'Olympus Industrial America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1103,'Omega Engineering, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1105,'Omegasonics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1106,'One Stop Seafood Shop');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1107,'OneSource LLC (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2688,'Onen & Kalac Law Office');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1108,'Overhead Door Co of Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1109,'Overnite Transportation (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1110,'P & O Nedlloyd (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1111,'P.A.C.E. (Marley)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1112,'PA Dept of Revenue');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3280,'PAF Sales, L.L.C');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1119,'PAM Trading Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1120,'PAM Trading Corp (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3262,'PAM Trading Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1137,'PGC, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2455,'PROTERM, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1160,'PRP International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1161,'PST Charleston, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1164,'PVM GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1113,'Pacific Data Marketing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1114,'Pacific Express');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1115,'Pacific Toxicology Laboratories');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2826,'Packaging Corporation of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1116,'Palmetto Consulting Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1117,'Palmetto Equipment & Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2393,'Palmetto Outfitters');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1118,'Palmetto Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3161,'Palmetto State Property Mgt.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2173,'Palmetto State Transportation Co. Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1121,'Panalpina - Chas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1122,'Panametrics Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1123,'Panametrics Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1124,'Panther II Transportation (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2415,'Parameter Generation & Control, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1125,'Parker Instrument Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1127,'Patriots Plaza');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1128,'Patt Fitration');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2231,'Patty''s Custom Leather & Canvas');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1149,'Pawling Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1131,'Penn Bottle & Supply');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1132,'Penn Bottle & Supply (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1133,'Pepper Moon Catering');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1134,'Permik Industrial Supply, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1135,'PetroLiance');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1136,'PetroLiance (ex Lubricants Technonology) (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1754,'Philadelphia Mixing Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1138,'Phillips Industrial Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1829,'Piedmont Instruments & Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1139,'Piedmont Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1140,'Pitney Bowes Credit Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1142,'Pittsfield Plastics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1143,'Plantation Florist & Gifts');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1145,'Pnucor (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1144,'Pnucor, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1146,'Pomeroy IT Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1147,'Pomeroy IT Solutions (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1148,'Postage By Phone');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2698,'Power Plus International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1805,'Power Technology Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1150,'PricewaterhouseCoopers LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1151,'Prime Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1152,'Prime Industries (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1153,'Prime Technology Group LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1154,'Prime Technology Group LLC (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1155,'Printerm Datascribe, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1156,'Printerm Datascribe, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1159,'ProPart Quality Pump Parts');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1157,'Process Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1158,'Process Technical Sales Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3258,'Progressive Business Publications');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1162,'Puersan Pigment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1862,'Pumps, Parts & Service, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1163,'Purolator E.F.P.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(949,'Pye Barker');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2261,'Qingdao Taiji Packing Co.  LTD.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1902,'Quality Carriers');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3279,'Quality International Cartage, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1165,'Quantum');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1166,'R A Moore Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1167,'R A Moore Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1169,'RCC (Radio Communications of Chas)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1172,'REM Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1180,'REM Services, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1462,'RHDC International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3384,'RSC Equipment Rental');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2120,'Ramsey Mfg. Co, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1170,'Regional Material Handling');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1171,'Rehabilitation Centers of Charleston');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1174,'Repack Industrie - Verpackungs GmbH');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1810,'Residence Inn-Mt Pleasant');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1760,'Resolution Management Consultants');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1175,'Restaurant Equipment Rental');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1176,'Restek Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1177,'Restek Corp (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1178,'Richard P.Joblove, P.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1179,'Roadway Express (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1892,'Robert E Mason & Associates');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1181,'Robert Half Finance & Accounting (r');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1183,'Robert S. Hudgins Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1184,'Rockhurst University');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1185,'Rockwell Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1186,'Rosemount Analytical Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1187,'Rosemount Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1188,'Rosemount Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1189,'Roto-Rooter, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3323,'Rush Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2055,'Rutherford Pump Systems Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3380,'S. A. Charron & Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2771,'S.C. Toyota Tsusho Do Brasil Ltda');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1190,'S.I.T.INDEVA, INC (ex Scaglia)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2180,'SC Department of Revenue');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1204,'SC Dept of Labor, Licensing & Reg');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1207,'SDT North America Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1208,'SDV (USA) Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1215,'SENKO CO., LTD');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2071,'SOR c/o Criterion');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1705,'SSI Schaefer Systems Int., Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1277,'SWS Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1193,'Safety-Kleen Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1194,'Safety-Kleen Systems, Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2243,'Sage Software');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1195,'Saint-Gobain');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1196,'Sam''s Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1199,'Santee Industrial Products');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1200,'Sapona Mfg. Co Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1201,'Sapona Mfg.Co. Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1202,'Saurer Inc (Barmag) remit');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1203,'Saurer Inc (Barmag) repairs only');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1205,'Schuetz Container System, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1206,'Scientific Technologies, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1209,'Seaco Industries, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1210,'Seafront Law Office, Suite 1008B');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1212,'Secretary of State Corporate Div');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1213,'Secretary of the State');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1853,'Security Life Ins. co. of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1214,'Seltrol');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1920,'Sensonetics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2060,'Service Industrial Supply Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1216,'Service Solutions Inc  SSC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1217,'Service Transfer, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1218,'Service Transport');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3179,'Shanghai Acoustics Laboratory');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1219,'Shanghai Kelee Industry Co. Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1541,'Shanghai Myfair Industry Co. Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1800,'Shannon Systems, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2727,'Shealy Electrical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1220,'Sheer Delight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1221,'Shipco LCL');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1222,'Shipco LCL (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2359,'Shipping Digest');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1223,'Siemens Energy & Automation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1224,'Siemens Energy & Automation (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1225,'Siemens Water Technologies Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1226,'Siemens Water Technologies Corp. (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1227,'Sigma-Aldrich Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1229,'Sikes Radio');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2301,'Simmons & Simmons');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1230,'Simplex Grinnell');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1231,'Sisson Scale & Equipment Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1232,'SkillPath Seminars (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1233,'Slay Transportation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1234,'Slot-Nankai Company Limited');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3064,'Smalley Steel Ring Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1934,'Smartware Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2251,'Smurfit-Stone Container Enterprises, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1235,'Smurph Express (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1236,'Snap Trucking Inc (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1237,'Society for Human Resource Mgmt');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1238,'Software Projects Consulting');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1239,'Soil Consultants, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(427,'Sonoco Products Ind Div');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2709,'Sonoco Recycling');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1241,'South Carolina Fire Academy');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1851,'South Carolina Health Insurance Pool');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1242,'Southeast Industrial Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1243,'Southeastern Dock & Door');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1244,'Southeastern Freight Lines (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1245,'Southern Elevator');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1246,'Southern Loom Reed');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1247,'Southern Management, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1248,'Southern Optical (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1249,'Southern Pump & Tank');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1250,'Southern Substation Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1251,'SpandexOne LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1252,'Sprint PCS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1253,'Square D Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1254,'Squire-Cogswell/Aeros');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1263,'St-Gobain-Zirpro');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1255,'Stallings Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1256,'Standard Coffee Service Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1257,'Standard Corp Integrated Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1258,'Staples');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1751,'Staples -- Remit');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1261,'Steve Ray');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1262,'Stevens Roofing Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1264,'Stier, Kent & Canady, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1265,'Stolt-Nielsen Transportation Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(472,'Store Tax Agency');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1266,'Stretchline UK Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2451,'Subway dba Kilgore Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(419,'Sud-Chemie Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1267,'Sullivan and Associates');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1268,'Sulzer Chemtech USA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1269,'Summer Industries');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1270,'Sun Chemical');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1272,'Sunbelt Scanning Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2222,'Superior Technical Ceramics Corp.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1273,'Supreme Elastic Corp (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1275,'Swisslog Logistics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1276,'Swisslog Warehouse (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1278,'Symbol');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1279,'Symtech, Inc (SSM)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1280,'Syndicon Group Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1539,'Systech (Shanghai) Ltd.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1281,'T & T Sports');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2207,'T.Q.Abrasive Machining');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2093,'TABY America, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2334,'TAS');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1681,'TCI America Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1318,'TLV');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2083,'TMT MACHINERY, INC.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1319,'TNT Logistics (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1950,'TTI Instruments');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1336,'TYR Packaging');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1282,'Tape Resources');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1283,'Taylor Data Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2992,'Taylor Pallets and Recycling Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1284,'Team Industrial Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1285,'Tech Depot');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1286,'Technical Associates of Charlotte,');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1287,'Technical Consulting International');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1288,'Teikoku USA c/o Process Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2689,'Teikoku USA, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1289,'Tencarva (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1290,'Tencarva U.S.A.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2048,'Terminal Trucking Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1293,'Texas Processs Equipment');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1294,'Textile');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2229,'The Austin Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1295,'The Balancing System Group Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1296,'The Carpet Shop');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1297,'The Corporation Trust Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1298,'The Foxboro Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1299,'The Hartford');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1300,'The Home Telephone Co, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1301,'The Hoove, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1302,'The Hosiery Association');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2713,'The Journal of Commerce');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1303,'The Mill-Rose Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1304,'The Mills House Hotel');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1888,'The New York Blower Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1305,'The Post and Courier (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1306,'The Pump Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1307,'The Underfashion Club');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1308,'Thermo Cahn Corp (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1309,'Thermo Electron (remit to)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1310,'Thermo Electron (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1542,'Thermo Electron NA LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1311,'Thermo Neslab Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1312,'Thermon Heat Tracing');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1313,'Third Party Solutions');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1315,'Thornley Oil');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1316,'Tiger Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2315,'Tim Koonts');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1317,'Tips, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2759,'Titan Transport LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1321,'Toyota Motor Credit');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2215,'Trane');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1322,'Trane Comfort Solutions, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1323,'Trans-America Storage & Forwarding');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1324,'Transatlantic Connection, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1325,'Transcat');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1326,'Transport Service Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1327,'Transportation Alliance Bank, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1738,'Tranter Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1328,'Travaini Vacuum Pumps');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1329,'Travers Tool Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1330,'Tri Star Freight Systems Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1331,'Triad Mechanical Contractors');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1332,'Trident Technical College');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1333,'Trident United Way');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1983,'Trimac Transportation South Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1334,'Troemer');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1335,'Tuscatube inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1337,'U.S. Filter Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1880,'U.S. Security Associates, Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1338,'U.S. Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1339,'UCO Fabrics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3043,'UE Systems Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1343,'UPS - Ground');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1344,'UPS - Next Day Air');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1345,'UPS - Third Day');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2440,'UPS -- Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1346,'UPS Customhouse Brokerage, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1347,'UPS Freight');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1348,'UPS Supply Chain');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1349,'UPS Supply Chain Solutions (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1350,'US Filter');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3307,'US Transportation, LLC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3285,'USF Holland Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1351,'USF Red Star');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2421,'Ulrich Ebbinghaus');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1340,'Unifi');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1341,'Unisource');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2702,'United Concordia');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3388,'United Physicians-Patients First');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1342,'United Refrigeration Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3319,'United States Treasury');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2324,'United Way of Southern Kentucky');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2281,'Univar USA - ChemCare');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(420,'Univar USA Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1352,'Vaisala');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1353,'Valve and Filter Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1354,'Van De Wiele Group');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2145,'Vanguard');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1650,'Vashaw Scientific Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1758,'VeeArc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1737,'Verizon Wireless');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1358,'Vi-Cas Manufacturing Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1356,'Vibration Institute');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1357,'Vibration Institute Piedmont Chapte');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1359,'View Engineering, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(587,'Virginia R. Hamilton');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1360,'Vital Records Control of SC Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3221,'Vitec Inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(695,'Vnetek Communications');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1361,'W R Controls');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1387,'W. W. Grainger, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1362,'W.Fritz Mezger, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2714,'W.J. Turpish and Company');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1363,'W.P.Law.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1364,'W.S. Oshea');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1365,'W.S. Tyler');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1371,'WCDC Private Truck');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1764,'Wacker Silicones');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1366,'Waco Instruments');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1368,'Warren Fastenings South, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1369,'Washington Consular Services');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1370,'Waste Management');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1373,'Weber Marking Systems, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1372,'Weber Marking Systems, inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2418,'Webster Rogers LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1374,'Welco Technologies');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1375,'Wells Fargo Financial');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1376,'White Systems');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1377,'Wholesale Industrial Electronics');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1378,'Wicker Services, Inc');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1379,'Willard Termite & Pest Control');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1380,'William F.Bland Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1382,'Williams Machine & tool Co.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1383,'Wilson');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3326,'Wilson Trucking Corporation (WTVA)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1099,'Windstream Communications');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1384,'Winthrop Couchot Professional Corp');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2106,'Winyah Community Hospice Care');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1385,'World Textile Publications Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1386,'Wulftec');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3321,'Wuxi Taiji Paper Industry Co., Ltd');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1388,'Xerox');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(428,'Xpedx');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(2747,'YRC');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1389,'Yangming America Corporation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1390,'Yellow Freight Lines (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1391,'Yellow Transportation');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1392,'Yokogawa Corp of America');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1393,'Young Clement Rivers LLP');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1394,'Zenith (remit)');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1395,'Zenith Pumps');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(1396,'Zim-American Israeli Shipping Co');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(3067,'an epicurean feast, inc.');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(-1,'Bruckner');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(-2,'NASA');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(-6,'Apple');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(-4,'Comoli');
INSERT INTO "vendors" ("vendor_id", "name") VALUES
	(-5,'AARP');
/*!40000 ALTER TABLE "vendors" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
