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
# Table structure for table 'docs'
#

CREATE TABLE "docs_recent" (
  "doc_id" bigint(20) unsigned NOT NULL,
  "filename" varchar(50) default NULL,
  "original_filename" varchar(50) default NULL,
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
