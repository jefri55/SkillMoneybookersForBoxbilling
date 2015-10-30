/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.0.17-MariaDB : Database - boxbilling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`boxbilling` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `boxbilling`;

/*Table structure for table `activity_admin_history` */

DROP TABLE IF EXISTS `activity_admin_history`;

CREATE TABLE `activity_admin_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id_idx` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `activity_admin_history` */

LOCK TABLES `activity_admin_history` WRITE;

UNLOCK TABLES;

/*Table structure for table `activity_client_email` */

DROP TABLE IF EXISTS `activity_client_email`;

CREATE TABLE `activity_client_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `recipients` text,
  `subject` varchar(255) DEFAULT NULL,
  `content_html` text,
  `content_text` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `activity_client_email` */

LOCK TABLES `activity_client_email` WRITE;

UNLOCK TABLES;

/*Table structure for table `activity_client_history` */

DROP TABLE IF EXISTS `activity_client_history`;

CREATE TABLE `activity_client_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `activity_client_history` */

LOCK TABLES `activity_client_history` WRITE;

UNLOCK TABLES;

/*Table structure for table `activity_system` */

DROP TABLE IF EXISTS `activity_system`;

CREATE TABLE `activity_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `priority` tinyint(4) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `message` text,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id_idx` (`admin_id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

/*Data for the table `activity_system` */

LOCK TABLES `activity_system` WRITE;

insert  into `activity_system`(`id`,`priority`,`admin_id`,`client_id`,`message`,`ip`,`created_at`,`updated_at`) values (1,6,NULL,NULL,'Added new  email template #1','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(2,6,NULL,NULL,'Added new  email template #2','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(3,6,NULL,NULL,'Added new  email template #3','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(4,6,NULL,NULL,'Added new  email template #4','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(5,6,NULL,NULL,'Added new  email template #5','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(6,6,NULL,NULL,'Added new  email template #6','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(7,6,NULL,NULL,'Added new  email template #7','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(8,6,NULL,NULL,'Added new  email template #8','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(9,6,NULL,NULL,'Added new  email template #9','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(10,6,NULL,NULL,'Added new  email template #10','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(11,6,NULL,NULL,'Added new  email template #11','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(12,6,NULL,NULL,'Added new  email template #12','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(13,6,NULL,NULL,'Added new  email template #13','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(14,6,NULL,NULL,'Added new  email template #14','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(15,6,NULL,NULL,'Added new  email template #15','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(16,6,NULL,NULL,'Added new  email template #16','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(17,6,NULL,NULL,'Added new  email template #17','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(18,6,NULL,NULL,'Added new  email template #18','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(19,6,NULL,NULL,'Added new  email template #19','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(20,6,NULL,NULL,'Added new  email template #20','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(21,6,NULL,NULL,'Added new  email template #21','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(22,6,NULL,NULL,'Added new  email template #22','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(23,6,NULL,NULL,'Added new  email template #23','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(24,6,NULL,NULL,'Added new  email template #24','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(25,6,NULL,NULL,'Added new  email template #25','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(26,6,NULL,NULL,'Added new  email template #26','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(27,6,NULL,NULL,'Added new  email template #27','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(28,6,NULL,NULL,'Added new  email template #28','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(29,6,NULL,NULL,'Added new  email template #29','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(30,6,NULL,NULL,'Added new  email template #30','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(31,6,NULL,NULL,'Added new  email template #31','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(32,6,NULL,NULL,'Added new  email template #32','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(33,6,NULL,NULL,'Added new  email template #33','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(34,6,NULL,NULL,'Added new  email template #34','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(35,6,NULL,NULL,'Added new  email template #35','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(36,6,NULL,NULL,'Added new  email template #36','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(37,6,NULL,NULL,'Added new  email template #37','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(38,6,NULL,NULL,'Added new  email template #38','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(39,6,NULL,NULL,'Added new  email template #39','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(40,6,NULL,NULL,'Added new  email template #40','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(41,6,NULL,NULL,'Added new  email template #41','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(42,6,NULL,NULL,'Added new  email template #42','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(43,6,NULL,NULL,'Added new  email template #43','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(44,6,NULL,NULL,'Added new  email template #44','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(45,6,NULL,NULL,'Added new  email template #45','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(46,6,NULL,NULL,'Added new  email template #46','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(47,6,NULL,NULL,'Added new  email template #47','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(48,6,NULL,NULL,'Generated email templates for installed extensions','::1','2015-10-30 01:26:05','2015-10-30 01:26:05'),(49,7,NULL,NULL,'onBeforeClientSignUp: array (\n  \'email\' => \'jefriskrill@gmail.com\',\n  \'first_name\' => \'jefri\',\n  \'password\' => \'jefri12345\',\n  \'password_confirm\' => \'jefri12345\',\n  \'auto_login\' => \'1\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:38:58','2015-10-30 08:38:58'),(50,7,NULL,NULL,'onAfterClientSignUp: array (\n  \'id\' => \'1\',\n  \'password\' => \'jefri12345\',\n)','::1','2015-10-30 08:38:58','2015-10-30 08:38:58'),(51,6,NULL,NULL,'Client #1 signed up','::1','2015-10-30 08:38:58','2015-10-30 08:38:58'),(52,7,NULL,NULL,'onBeforeClientLogin: array (\n  \'email\' => \'jefriskrill@gmail.com\',\n  \'password\' => \'jefri12345\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:38:58','2015-10-30 08:38:58'),(53,7,NULL,NULL,'onAfterClientLogin: array (\n  \'id\' => \'1\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:38:59','2015-10-30 08:38:59'),(54,6,NULL,NULL,'Client #1 logged in','::1','2015-10-30 08:38:59','2015-10-30 08:38:59'),(55,7,NULL,1,'onBeforeClientLogin: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'jefri123\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:12','2015-10-30 08:39:12'),(56,7,NULL,1,'onEventClientLoginFailed: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'jefri123\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:12','2015-10-30 08:39:12'),(57,7,NULL,1,'onBeforeClientLogin: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'jefri12345\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:21','2015-10-30 08:39:21'),(58,7,NULL,1,'onEventClientLoginFailed: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'jefri12345\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:21','2015-10-30 08:39:21'),(59,7,NULL,1,'onBeforeClientLogin: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'Eikontech55\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:35','2015-10-30 08:39:35'),(60,7,NULL,1,'onEventClientLoginFailed: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'Eikontech55\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:35','2015-10-30 08:39:35'),(61,7,NULL,1,'onBeforeAdminLogin: array (\n  \'email\' => \'jefrisugiarto@gmail.com\',\n  \'password\' => \'jefri123\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:39:59','2015-10-30 08:39:59'),(62,7,NULL,1,'onAfterAdminLogin: array (\n  \'id\' => \'1\',\n  \'ip\' => \'::1\',\n)','::1','2015-10-30 08:40:00','2015-10-30 08:40:00'),(63,6,NULL,1,'Staff member 1 logged in','::1','2015-10-30 08:40:00','2015-10-30 08:40:00'),(64,6,1,NULL,'Updated payment gateway Custom','::1','2015-10-30 08:40:27','2015-10-30 08:40:27'),(65,6,1,NULL,'Updated payment gateway PayPalEmail','::1','2015-10-30 08:41:02','2015-10-30 08:41:02'),(66,7,1,NULL,'onBeforeProductAddedToCart: array (\n  \'register_sld\' => \'yespleasetes\',\n  \'register_tld\' => \'.com\',\n  \'register_years\' => \'1\',\n  \'ns1\' => \'\',\n  \'ns2\' => \'\',\n  \'ns3\' => \'\',\n  \'ns4\' => \'\',\n  \'transfer_sld\' => \'\',\n  \'transfer_tld\' => \'.com\',\n  \'transfer_code\' => \'\',\n  \'id\' => \'1\',\n  \'action\' => \'register\',\n  \'multiple\' => \'1\',\n  \'cart_id\' => \'1\',\n  \'product_id\' => \'1\',\n)','::1','2015-10-30 08:45:51','2015-10-30 08:45:51'),(67,6,1,NULL,'Added \"Domains registration and transfer\" to shopping cart','::1','2015-10-30 08:45:51','2015-10-30 08:45:51'),(68,7,1,NULL,'onAfterProductAddedToCart: array (\n  \'register_sld\' => \'yespleasetes\',\n  \'register_tld\' => \'.com\',\n  \'register_years\' => \'1\',\n  \'ns1\' => \'\',\n  \'ns2\' => \'\',\n  \'ns3\' => \'\',\n  \'ns4\' => \'\',\n  \'transfer_sld\' => \'\',\n  \'transfer_tld\' => \'.com\',\n  \'transfer_code\' => \'\',\n  \'id\' => \'1\',\n  \'action\' => \'register\',\n  \'multiple\' => \'1\',\n  \'cart_id\' => \'1\',\n  \'product_id\' => \'1\',\n)','::1','2015-10-30 08:45:51','2015-10-30 08:45:51'),(69,7,1,NULL,'onBeforeClientCheckout: array (\n  \'ip\' => \'::1\',\n  \'client_id\' => \'1\',\n  \'cart_id\' => \'1\',\n)','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(70,6,1,NULL,'Prepared new invoice \"1\"','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(71,7,1,NULL,'onBeforeAdminInvoiceApprove: array (\n  \'id\' => \'1\',\n)','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(72,7,1,NULL,'onAfterAdminInvoiceApprove: array (\n  \'id\' => \'1\',\n)','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(73,6,1,NULL,'Approved invoice \"1\"','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(74,6,1,NULL,'Checked out shopping cart','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(75,7,1,NULL,'onAfterClientOrderCreate: array (\n  \'ip\' => \'::1\',\n  \'client_id\' => \'1\',\n  \'id\' => \'1\',\n)','::1','2015-10-30 08:46:09','2015-10-30 08:46:09'),(76,7,1,NULL,'onBeforeClientCheckout: array (\n  \'ip\' => \'::1\',\n  \'client_id\' => \'1\',\n  \'cart_id\' => \'2\',\n)','::1','2015-10-30 08:46:21','2015-10-30 08:46:21'),(77,7,1,NULL,'onBeforeClientCheckout: array (\n  \'ip\' => \'::1\',\n  \'client_id\' => \'1\',\n  \'cart_id\' => \'2\',\n)','::1','2015-10-30 08:46:27','2015-10-30 08:46:27'),(78,7,1,NULL,'onBeforeProductAddedToCart: array (\n  \'register_sld\' => \'tesdfsdf\',\n  \'register_tld\' => \'.com\',\n  \'register_years\' => \'1\',\n  \'ns1\' => \'\',\n  \'ns2\' => \'\',\n  \'ns3\' => \'\',\n  \'ns4\' => \'\',\n  \'transfer_sld\' => \'\',\n  \'transfer_tld\' => \'.com\',\n  \'transfer_code\' => \'\',\n  \'id\' => \'1\',\n  \'action\' => \'register\',\n  \'multiple\' => \'1\',\n  \'cart_id\' => \'2\',\n  \'product_id\' => \'1\',\n)','::1','2015-10-30 09:05:57','2015-10-30 09:05:57'),(79,6,1,NULL,'Added \"Domains registration and transfer\" to shopping cart','::1','2015-10-30 09:05:57','2015-10-30 09:05:57'),(80,7,1,NULL,'onAfterProductAddedToCart: array (\n  \'register_sld\' => \'tesdfsdf\',\n  \'register_tld\' => \'.com\',\n  \'register_years\' => \'1\',\n  \'ns1\' => \'\',\n  \'ns2\' => \'\',\n  \'ns3\' => \'\',\n  \'ns4\' => \'\',\n  \'transfer_sld\' => \'\',\n  \'transfer_tld\' => \'.com\',\n  \'transfer_code\' => \'\',\n  \'id\' => \'1\',\n  \'action\' => \'register\',\n  \'multiple\' => \'1\',\n  \'cart_id\' => \'2\',\n  \'product_id\' => \'1\',\n)','::1','2015-10-30 09:05:57','2015-10-30 09:05:57'),(81,7,1,NULL,'onBeforeClientCheckout: array (\n  \'ip\' => \'::1\',\n  \'client_id\' => \'1\',\n  \'cart_id\' => \'2\',\n)','::1','2015-10-30 09:06:00','2015-10-30 09:06:00'),(82,6,1,NULL,'Prepared new invoice \"2\"','::1','2015-10-30 09:06:01','2015-10-30 09:06:01'),(83,7,1,NULL,'onBeforeAdminInvoiceApprove: array (\n  \'id\' => \'2\',\n)','::1','2015-10-30 09:06:01','2015-10-30 09:06:01'),(84,7,1,NULL,'onAfterAdminInvoiceApprove: array (\n  \'id\' => \'2\',\n)','::1','2015-10-30 09:06:01','2015-10-30 09:06:01'),(85,6,1,NULL,'Approved invoice \"2\"','::1','2015-10-30 09:06:01','2015-10-30 09:06:01'),(86,6,1,NULL,'Checked out shopping cart','::1','2015-10-30 09:06:01','2015-10-30 09:06:01'),(87,7,1,NULL,'onAfterClientOrderCreate: array (\n  \'ip\' => \'::1\',\n  \'client_id\' => \'1\',\n  \'id\' => \'2\',\n)','::1','2015-10-30 09:06:01','2015-10-30 09:06:01'),(88,6,1,NULL,'Installed new payment gateway SkrillMoneybookers','::1','2015-10-30 10:24:24','2015-10-30 10:24:24'),(89,6,1,NULL,'Updated payment gateway SkrillMoneybookers','::1','2015-10-30 10:38:54','2015-10-30 10:38:54');

UNLOCK TABLES;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) DEFAULT 'staff' COMMENT 'admin, staff',
  `admin_group_id` bigint(20) DEFAULT '1',
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `protected` tinyint(1) DEFAULT '0',
  `status` varchar(30) DEFAULT 'active' COMMENT 'active, inactive',
  `api_token` varchar(128) DEFAULT NULL,
  `permissions` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `admin_group_id_idx` (`admin_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

LOCK TABLES `admin` WRITE;

insert  into `admin`(`id`,`role`,`admin_group_id`,`email`,`pass`,`salt`,`name`,`signature`,`protected`,`status`,`api_token`,`permissions`,`created_at`,`updated_at`) values (1,'admin',1,'jefrisugiarto@gmail.com','$2y$10$abSh3ArLIpbtx5QhMtPbleEOikuwKrdMDXZzSeQhsHjjHHBOyKCoS',NULL,'Jefri',NULL,1,'active',NULL,NULL,'2015-10-30 08:26:03','2015-10-30 08:26:03'),(2,'cron',1,'EAS9pRvB@sv4uiuUe.com','$2y$10$H9MbTXbUkzNkwTWYTC67lOtgTzjPphWEB025UXiQQueshOOspNQQq',NULL,'System Cron Job','',1,'active',NULL,NULL,'2015-10-30 08:46:09','2015-10-30 08:46:09');

UNLOCK TABLES;

/*Table structure for table `admin_group` */

DROP TABLE IF EXISTS `admin_group`;

CREATE TABLE `admin_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admin_group` */

LOCK TABLES `admin_group` WRITE;

insert  into `admin_group`(`id`,`name`,`created_at`,`updated_at`) values (1,'Administrators','2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,'Support','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `api_request` */

DROP TABLE IF EXISTS `api_request`;

CREATE TABLE `api_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) DEFAULT NULL,
  `request` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `api_request` */

LOCK TABLES `api_request` WRITE;

insert  into `api_request`(`id`,`ip`,`request`,`created_at`) values (1,'::1','/box/index.php?_url=/api/guest/client/create','2015-10-30 08:38:58'),(2,'::1','/box/index.php?_url=/api/guest/client/login','2015-10-30 08:39:12'),(3,'::1','/box/index.php?_url=/api/guest/client/login','2015-10-30 08:39:21'),(4,'::1','/box/index.php?_url=/api/guest/client/login','2015-10-30 08:39:35'),(5,'::1','/box/api/guest/staff/login','2015-10-30 08:39:59'),(6,'::1','/box/api/admin/invoice/gateway_update','2015-10-30 08:40:27'),(7,'::1','/box/api/admin/invoice/gateway_update','2015-10-30 08:41:02'),(8,'::1','/box/index.php?_url=/api/guest/servicedomain/check','2015-10-30 08:45:48'),(9,'::1','/box/index.php?_url=/api/guest/servicedomain/pricing','2015-10-30 08:45:48'),(10,'::1','/box/index.php?_url=/api/guest/cart/add_item','2015-10-30 08:45:51'),(11,'::1','/box/index.php?_url=/api/client/cart/checkout','2015-10-30 08:46:09'),(12,'::1','/box/index.php?_url=/api/guest/invoice/payment','2015-10-30 08:46:09'),(13,'::1','/box/index.php?_url=/api/client/cart/checkout','2015-10-30 08:46:21'),(14,'::1','/box/index.php?_url=/api/client/cart/checkout','2015-10-30 08:46:27'),(15,'::1','/box/index.php?_url=/api/guest/servicedomain/check','2015-10-30 09:05:55'),(16,'::1','/box/index.php?_url=/api/guest/servicedomain/pricing','2015-10-30 09:05:55'),(17,'::1','/box/index.php?_url=/api/guest/cart/add_item','2015-10-30 09:05:57'),(18,'::1','/box/index.php?_url=/api/client/cart/checkout','2015-10-30 09:06:00'),(19,'::1','/box/index.php?_url=/api/guest/invoice/payment','2015-10-30 09:06:01'),(20,'::1','/box/api/admin/invoice/gateway_install?&code=SkrillMoneybookers','2015-10-30 10:24:24'),(21,'::1','/box/api/admin/invoice/gateway_update','2015-10-30 10:38:54');

UNLOCK TABLES;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `promo_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id_idx` (`session_id`),
  KEY `currency_id_idx` (`currency_id`),
  KEY `promo_id_idx` (`promo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

LOCK TABLES `cart` WRITE;

UNLOCK TABLES;

/*Table structure for table `cart_product` */

DROP TABLE IF EXISTS `cart_product`;

CREATE TABLE `cart_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `config` text,
  PRIMARY KEY (`id`),
  KEY `cart_id_idx` (`cart_id`),
  KEY `product_id_idx` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cart_product` */

LOCK TABLES `cart_product` WRITE;

UNLOCK TABLES;

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aid` varchar(255) DEFAULT NULL COMMENT 'Alternative id for foreign systems',
  `client_group_id` bigint(20) DEFAULT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'client' COMMENT 'client',
  `auth_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'active' COMMENT 'active, suspended, canceled',
  `email_approved` tinyint(1) DEFAULT NULL,
  `tax_exempt` tinyint(1) DEFAULT '0',
  `type` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone_cc` varchar(10) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_vat` varchar(100) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `address_1` varchar(100) DEFAULT NULL,
  `address_2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `document_nr` varchar(20) DEFAULT NULL,
  `notes` text,
  `currency` varchar(10) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `api_token` varchar(128) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `custom_1` text,
  `custom_2` text,
  `custom_3` text,
  `custom_4` text,
  `custom_5` text,
  `custom_6` text,
  `custom_7` text,
  `custom_8` text,
  `custom_9` text,
  `custom_10` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `alternative_id_idx` (`aid`),
  KEY `client_group_id_idx` (`client_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `client` */

LOCK TABLES `client` WRITE;

insert  into `client`(`id`,`aid`,`client_group_id`,`role`,`auth_type`,`email`,`pass`,`salt`,`status`,`email_approved`,`tax_exempt`,`type`,`first_name`,`last_name`,`gender`,`birthday`,`phone_cc`,`phone`,`company`,`company_vat`,`company_number`,`address_1`,`address_2`,`city`,`state`,`postcode`,`country`,`document_type`,`document_nr`,`notes`,`currency`,`lang`,`ip`,`api_token`,`referred_by`,`custom_1`,`custom_2`,`custom_3`,`custom_4`,`custom_5`,`custom_6`,`custom_7`,`custom_8`,`custom_9`,`custom_10`,`created_at`,`updated_at`) values (1,NULL,NULL,'client',NULL,'jefriskrill@gmail.com','$2y$10$FRs04wwMLBIRjEa1iOlZL.sD3yd85vBKY9vG/TQUxqllrmZzJVmNW',NULL,'active',NULL,0,NULL,'Jefri',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'USD',NULL,'::1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-10-30 08:38:58','2015-10-30 08:38:58');

UNLOCK TABLES;

/*Table structure for table `client_balance` */

DROP TABLE IF EXISTS `client_balance`;

CREATE TABLE `client_balance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `rel_id` varchar(20) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT '0.00',
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `client_balance` */

LOCK TABLES `client_balance` WRITE;

UNLOCK TABLES;

/*Table structure for table `client_group` */

DROP TABLE IF EXISTS `client_group`;

CREATE TABLE `client_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `client_group` */

LOCK TABLES `client_group` WRITE;

insert  into `client_group`(`id`,`title`,`created_at`,`updated_at`) values (1,'Default','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `client_order` */

DROP TABLE IF EXISTS `client_order`;

CREATE TABLE `client_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `promo_id` bigint(20) DEFAULT NULL,
  `promo_recurring` tinyint(1) DEFAULT NULL,
  `promo_used` bigint(20) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `group_master` tinyint(1) DEFAULT '0',
  `invoice_option` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `unpaid_invoice_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT '1',
  `unit` varchar(100) DEFAULT NULL,
  `price` double(18,2) DEFAULT NULL,
  `discount` double(18,2) DEFAULT NULL COMMENT 'first invoice discount',
  `status` varchar(50) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL COMMENT 'suspend/cancel reason',
  `notes` text,
  `config` text,
  `referred_by` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `suspended_at` datetime DEFAULT NULL,
  `unsuspended_at` datetime DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`),
  KEY `product_id_idx` (`product_id`),
  KEY `form_id_idx` (`form_id`),
  KEY `promo_id_idx` (`promo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `client_order` */

LOCK TABLES `client_order` WRITE;

insert  into `client_order`(`id`,`client_id`,`product_id`,`form_id`,`promo_id`,`promo_recurring`,`promo_used`,`group_id`,`group_master`,`invoice_option`,`title`,`currency`,`unpaid_invoice_id`,`service_id`,`service_type`,`period`,`quantity`,`unit`,`price`,`discount`,`status`,`reason`,`notes`,`config`,`referred_by`,`expires_at`,`activated_at`,`suspended_at`,`unsuspended_at`,`canceled_at`,`created_at`,`updated_at`) values (1,1,1,NULL,NULL,NULL,NULL,'1',1,'issue-invoice','Domain yespleasetes.com registration','USD',1,NULL,'domain','1Y',1,'year',11.99,0.00,'pending_setup',NULL,NULL,'{\"register_sld\":\"yespleasetes\",\"register_tld\":\".com\",\"register_years\":\"1\",\"ns1\":\"\",\"ns2\":\"\",\"ns3\":\"\",\"ns4\":\"\",\"transfer_sld\":\"\",\"transfer_tld\":\".com\",\"transfer_code\":\"\",\"action\":\"register\",\"multiple\":\"1\",\"period\":\"1Y\",\"quantity\":1,\"id\":\"1\",\"product_id\":\"1\",\"form_id\":null,\"title\":\"Domain yespleasetes.com registration\",\"type\":\"domain\",\"unit\":\"year\",\"price\":\"11.99\",\"setup_price\":0,\"discount\":0,\"discount_price\":0,\"discount_setup\":0,\"total\":11.99}',NULL,NULL,NULL,NULL,NULL,NULL,'2015-10-30 08:46:09','2015-10-30 08:46:09'),(2,1,1,NULL,NULL,NULL,NULL,'2',1,'issue-invoice','Domain tesdfsdf.com registration','USD',2,NULL,'domain','1Y',1,'year',11.99,0.00,'pending_setup',NULL,NULL,'{\"register_sld\":\"tesdfsdf\",\"register_tld\":\".com\",\"register_years\":\"1\",\"ns1\":\"\",\"ns2\":\"\",\"ns3\":\"\",\"ns4\":\"\",\"transfer_sld\":\"\",\"transfer_tld\":\".com\",\"transfer_code\":\"\",\"action\":\"register\",\"multiple\":\"1\",\"period\":\"1Y\",\"quantity\":1,\"id\":\"2\",\"product_id\":\"1\",\"form_id\":null,\"title\":\"Domain tesdfsdf.com registration\",\"type\":\"domain\",\"unit\":\"year\",\"price\":\"11.99\",\"setup_price\":0,\"discount\":0,\"discount_price\":0,\"discount_setup\":0,\"total\":11.99}',NULL,NULL,NULL,NULL,NULL,NULL,'2015-10-30 09:06:01','2015-10-30 09:06:01');

UNLOCK TABLES;

/*Table structure for table `client_order_meta` */

DROP TABLE IF EXISTS `client_order_meta`;

CREATE TABLE `client_order_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_order_id_idx` (`client_order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `client_order_meta` */

LOCK TABLES `client_order_meta` WRITE;

UNLOCK TABLES;

/*Table structure for table `client_order_status` */

DROP TABLE IF EXISTS `client_order_status`;

CREATE TABLE `client_order_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `notes` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_order_id_idx` (`client_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `client_order_status` */

LOCK TABLES `client_order_status` WRITE;

insert  into `client_order_status`(`id`,`client_order_id`,`status`,`notes`,`created_at`,`updated_at`) values (1,1,'pending_setup','Order created','2015-10-30 08:46:09','2015-10-30 08:46:09'),(2,2,'pending_setup','Order created','2015-10-30 09:06:01','2015-10-30 09:06:01');

UNLOCK TABLES;

/*Table structure for table `client_password_reset` */

DROP TABLE IF EXISTS `client_password_reset`;

CREATE TABLE `client_password_reset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `client_password_reset` */

LOCK TABLES `client_password_reset` WRITE;

UNLOCK TABLES;

/*Table structure for table `currency` */

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `conversion_rate` decimal(13,6) DEFAULT '1.000000',
  `format` varchar(30) DEFAULT NULL,
  `price_format` varchar(50) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `currency` */

LOCK TABLES `currency` WRITE;

insert  into `currency`(`id`,`title`,`code`,`is_default`,`conversion_rate`,`format`,`price_format`,`created_at`,`updated_at`) values (1,'US Dollar','USD',1,1.000000,'${{price}}','1','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `email_template` */

DROP TABLE IF EXISTS `email_template`;

CREATE TABLE `email_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_code` varchar(255) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL COMMENT 'general, domain, invoice, hosting, support, download, custom, license',
  `enabled` tinyint(1) DEFAULT '1',
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `description` text,
  `vars` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `action_code` (`action_code`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `email_template` */

LOCK TABLES `email_template` WRITE;

insert  into `email_template`(`id`,`action_code`,`category`,`enabled`,`subject`,`content`,`description`,`vars`) values (1,'mod_client_confirm','client',1,'[{{ guest.system_company.name }}] Please confirm your email address ','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nPlease verify your email by clicking on the link below:\n\n{{email_confirmation_link}}\n\nTo login, visit {{\'login\'|link({\'email\' : c.email }) }}\nEdit your profile at {{\'client/me\'|link}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(2,'mod_client_password_reset_approve','client',1,'[{{ guest.system_company.name }}] Password Changed','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nAs you requested, your password for our client area has now been reset. \nYour new login details are as follows:\n\nLogin at: {{\'login\'|link({\'email\' : c.email }) }}\nEmail: {{ c.email }}\nPassword: {{ password }}\n\nTo change your password to something more memorable, after logging in go to \nProfile &gt; Change Password.\n\nEdit your profile at {{ \'client/me\'|link }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(3,'mod_client_password_reset_request','client',1,'[{{ guest.system_company.name }}] Confirm Password Reset','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nRecently a request was submitted to reset your password for the client area.\nIf you did not request this, please ignore this email. It will expire and will not work in 2 hours time.\n\nTo reset your password, please visit the url below:    \n{{\'client/reset-password-confirm\'|link}}/{{ hash }}\n\n\nWhen you visit the link above, your password will be reset and a new \npassword will be emailed to you.\n\nTo login, visit {{\'login\'|link({\'email\' : c.email }) }}\nEdit your profile at {{\'client/me\'|link}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(4,'mod_client_signup','client',1,'[{{ guest.system_company.name }}] Welcome {{ c.first_name }}','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nThank you for signing up with us. Your new account has been setup and you can now login to our client area using the details below.\n\n\nEmail: {{c.email}}    \nPassword: {{password}}\n\n{% if require_email_confirmation %}\n\nApprove your email by clicking on the link below:\n\n{{email_confirmation_link}}\n\n{% endif %}\n\nTo login, visit {{\'login\'|link({\'email\' : c.email }) }}\nEdit your profile at {{\'client/me\'|link}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(5,'mod_email_test','email',1,'[{{ guest.system_company.name }}] BoxBilling Email Test','\n{% filter markdown %}\nHi {{ staff.name }},\n\nIf you are reading this email, BoxBilling is **configured properly** \nand is **able to send emails**.\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(6,'mod_forum_new_post','forum',1,'[{{ guest.system_company.name }}] New Forum Message','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nNew message was posted on Forum **{{ topic.forum.title }} > {{ topic.title }}**\n\n***\n\n{{ message.message }}\n\n***\n\nTo reply to this message or disable notifications, visit the link below:\n\n{{ \'forum\'|link }}/{{ topic.forum.slug }}/{{ topic.slug }}   \n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(7,'mod_invoice_created','invoice',1,'[{{ guest.system_company.name }}] Invoice Created','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nThis is to notify that proforma invoice {{ invoice.id }} was generated on {{ invoice.created_at|bb_date }}.\nAmount Due: {{ invoice.total | money(invoice.currency) }}\nDue Date: {{invoice.due_at|bb_date}}\n\nYou can view and pay the invoice at: {{\'invoice\'|link}}/{{invoice.hash}}\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(8,'mod_invoice_due_after','invoice',1,'[{{ guest.system_company.name }}] Invoice Due','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nThis is a payment reminder that your proforma invoice **{{ invoice.serie_nr }}** is already\ndue for {{ days_passed }} days.   \n\nAmount due: {{ invoice.total | money(invoice.currency) }}\nDue Date: {{ invoice.due_at|bb_date }}\n\nYou can view and pay the invoice at: {{\'invoice\'|link}}/{{invoice.hash}}\n\nYou may review your invoice history at any time by logging in to your client area.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nView and manage invoices: {{\'invoice\'|link}}  \n\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(9,'mod_invoice_paid','invoice',1,'[{{ guest.system_company.name }}] Payment Received','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nThis is a payment receipt for Invoice **{{ invoice.serie_nr }}** issued on\n{{invoice.created_at|date(\'Y-m-d\')}}\n\nTotal Paid: {{ invoice.total | money(invoice.currency) }}\n\nYou may review your invoice history at any time by logging in to your client area.\nNote: This email serves as an official receipt for this payment.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nView invoice: {{\'invoice\'|link}}/{{invoice.hash}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(10,'mod_invoice_payment_reminder','invoice',1,'[{{ guest.system_company.name }}] Payment Reminder','\n{% filter markdown %}\nHello {{ c.first_name }} {{ c.last_name }},\n\nThis is to remind that your proforma invoice **{{ invoice.serie_nr }}** is due\nin {{ invoice.due_at|daysleft }} days.   \n\nAmount due: {{ invoice.total | money(invoice.currency) }}\nDue Date: {{ invoice.due_at|bb_date }}\n\nYou can view and pay the invoice at: {{\'invoice\'|link}}/{{invoice.hash}}\n\nYou may review your invoice history at any time by logging in to your client area.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nView and manage invoices: {{\'invoice\'|link}}  \n\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(11,'mod_servicecustom_activated','servicecustom',1,'[{{ guest.system_company.name }}] {{ order.title }} Activated','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** is now active.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(12,'mod_servicecustom_canceled','servicecustom',1,'[{{ guest.system_company.name }}] {{ order.title }} Canceled','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was activated on *{{ order.activated_at|bb_date }}* is now canceled\n{% if order.reason %} Reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(13,'mod_servicecustom_renewed','servicecustom',1,'[{{ guest.system_company.name }}] {{ order.title }} Renewed','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** has been renewed.\n\n{% if order.expires_at %}\n\nNext renewal date: {{ order.expires_at|bb_date }}\n\n{% endif %}\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(14,'mod_servicecustom_suspended','servicecustom',1,'[{{ guest.system_company.name }}] {{ order.title }} Suspended','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was activated at *{{ order.activated_at|bb_date }}* is now suspended\n{% if order.reason %} Reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(15,'mod_servicecustom_unsuspended','servicecustom',1,'[{{ guest.system_company.name }}] {{ order.title }} Reactivated ','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* has been reactivated. \n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(16,'mod_servicedomain_activated','servicedomain',1,'[{{ guest.system_company.name }}] {{ order.title }}','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nThis message is to confirm that your **{{ order.title }}** has been successful. \n\nPlease keep in mind that your domain name will not be visible  on the internet \ninstantly. This process is called propagation and can take up to 48 hours. \nYour website and  email will not function until the domain has propagated.\n\n\n**Domain details:**\n\n\nDomain: {{ service.domain }}     \nRegistration date: {{order.created_at|bb_date}}\nRegistration period: {{service.period}} Year(s)   \n{% if order.expires_at %}Expires on: {{ order.expires_at|bb_date }} {% endif %}\n{% if order.period %}\nBilling period:\n\n{{ order.total | money(order.currency) }}\n{{ order.period | period_title }}\n\n{% endif %}       \n\n\n**Domain nameservers**\n\nNameserver 1: {{ service.ns1 }}   \nNameserver 2: {{ service.ns2 }}   \n{% if  service.server.ns3 %}Nameserver 3: {{ service.ns3 }}   {% endif %}\n{% if  service.server.ns4 %}Nameserver 4: {{ service.ns4 }}   {% endif %}\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(17,'mod_servicedomain_renewed','servicedomain',1,'[{{ guest.system_company.name }}] {{ order.title }} Renewed','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** has been renewed.\n\n{% if order.expires_at %}\n\nNext renewal date: {{ order.expires_at|bb_date }}\n\n{% endif %}\n\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(18,'mod_servicedomain_suspended','servicedomain',1,'[{{ guest.system_company.name }}] {{ order.title }} Suspended','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was activated on *{{ order.activated_at|bb_date }}* is now suspended.\n{% if order.reason %} Reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(19,'mod_servicedomain_unsuspended','servicedomain',1,'[{{ guest.system_company.name }}] {{ order.title }} Reactivated','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* has been reactivated. \n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(20,'mod_servicedownloadable_activated','servicedownloadable',1,'[{{ guest.system_company.name }}] {{ order.title }} Ready to Download','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** is now active and ready for download.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nDownload URL: {{ \'servicedownloadable/get-file\'|link }}/{{ order.id }}     \n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(21,'mod_servicehosting_activated','servicehosting',1,'[{{ guest.system_company.name }}] {{ order.title }} Activated','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nThank you for ordering with us! Your hosting account has now been set up. This email contains all the information you will need in order to begin using your service.\n\nIf you have requested a domain name during the signup, please keep in mind that \nyour domain name will not be visible  on the internet instantly. \nThis process is called propagation and can take up to 48 hours. \nYour website and email will not function until your domain has propagated.\n\n**{{ order.title }}**\n\nActivated: {{ order.activated_at|bb_date }}\n{% if order.expires_at %}Expires: {{ order.expires_at|bb_date }} {% endif %}\n{% if order.period %}\nBilling period:\n\n{{ order.total | money(order.currency) }}\n{{ order.period | period_title }}\n\n{% endif %}       \n\n**New Account Information**\n\n\nHosting Package: {{ service.hosting_plan.name }}    \nDomain: {{ service.domain }}    \nIP Address: {{ service.server.ip }}\n\n\n**Control Panel Login Details**\n\nUsername: {{ service.username }}    \nPassword: {{ password }}     \nControl Panel URL: {{ service.server.cpanel_url }}\n\n\n**Server Information**\n\nServer Name: {{ service.server.name }}     \nServer IP: {{ service.server.ip }}\n\nIf you are using an existing domain with your new hosting account, you  will \nneed to update the domain settings to point it to the nameservers listed below.\n\nNameserver 1: {{ service.server.ns1 }}   \nNameserver 2: {{ service.server.ns2 }}   \n{% if  service.server.ns3 %}Nameserver 3: {{ service.server.ns3 }}   {% endif %}\n{% if  service.server.ns4 %}Nameserver 4: {{ service.server.ns4 }}   {% endif %}\n\n**Uploading Your Website**\n\n\nYou may use one of the addresses given below to manage your web site:\n\n\nTemporary FTP Hostname: {{ service.server.ip }}    \nFull FTP Hostname: {{ service.domain }}    \nFTP Username: {{ service.username }}    \nFTP Password: {{ password }}    \n\nYou must upload files to the **public_html** folder!\nThank you for choosing us.\n\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(22,'mod_servicehosting_canceled','servicehosting',1,'[{{ guest.system_company.name }}] {{ order.title }} Canceled','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was issued on *{{ order.activated_at|bb_date }}* is now canceled.\n{% if order.reason %} Reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(23,'mod_servicehosting_renewed','servicehosting',1,'[{{ guest.system_company.name }}] {{ order.title }} Renewed','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** has been renewed.\n\n{% if order.expires_at %}\n\nNext renewal date: {{ order.expires_at|bb_date }}\n\n{% endif %}\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(24,'mod_servicehosting_suspended','servicehosting',1,'[{{ guest.system_company.name }}] {{ order.title }} Suspended','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was issued on *{{ order.activated_at|bb_date }}* is now suspended.\n{% if order.reason %} Reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(25,'mod_servicehosting_unsuspended','servicehosting',1,'[{{ guest.system_company.name }}] {{ order.title }} Reactivated','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* has been reactivated.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(26,'mod_servicelicense_activated','servicelicense',1,'[{{ guest.system_company.name }}] {{ order.title }} Activated','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** is now active.\n\nLicense key: **{{ service.license_key }}**\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(27,'mod_servicelicense_canceled','servicelicense',1,'[{{ guest.system_company.name }}] {{ order.title }} Canceled','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was issued on *{{ order.activated_at|bb_date }}* is now canceled.\n{% if order.reason %} due to reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(28,'mod_servicelicense_renewed','servicelicense',1,'[{{ guest.system_company.name }}] {{ order.title }} Renewed','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour **{{ order.title }}** has been renewed.\n\n{% if order.expires_at %}\n\nNext renewal date: {{ order.expires_at|bb_date }}\n\n{% endif %}\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(29,'mod_servicelicense_suspended','servicelicense',1,'[{{ guest.system_company.name }}] {{ order.title }} Suspended','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* that was issued on *{{ order.activated_at|bb_date }}* is now suspended.\n{% if order.reason %} due to reason:     \n\n**{{ order.reason }}** {% endif %}   \n\nIf you have any questions regarding this message please login to the members area and submit a support ticket.\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nSubmit support ticket: {{ \'support\'|link({\'ticket\' : 1}) }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(30,'mod_servicelicense_unsuspended','servicelicense',1,'[{{ guest.system_company.name }}] {{ order.title }} Reactivated','\n{% filter markdown %}\n\nHello {{ c.first_name }} {{ c.last_name }},\n\nYour *{{ order.title }}* has been reactivated. \n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nManage order: {{ \'order/service/manage\'|link }}/{{ order.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(31,'mod_staff_client_order','staff',1,'[{{ guest.system_company.name }}] New Order Placed','\n{% filter markdown %}\nHi {{ staff.name }},\n\nClient **{{ order.client.first_name }} {{ order.client.last_name }}** placed a new order for **{{ order.title }}** on {{ order.created_at|bb_date }}\n\nManage order {{\'order/manage\'|alink}}/{{order.id}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(32,'mod_staff_client_signup','staff',1,'[{{ guest.system_company.name }}] New Client Signed Up','\n{% filter markdown %}\nHi {{ staff.name }},\n\n *{{ c.first_name }} {{ c.last_name }}* has just signed up with {{ guest.system_company.name }}\n\nManage client at {{\'client/manage\'|alink}}/{{c.id}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(33,'mod_staff_pticket_close','staff',1,'[{{ guest.system_company.name }}] {{ticket.subject}} [closed]','\n{% filter markdown %}\n\nHi {{ staff.name }},\n\nPublic ticket {{ \'support/public-ticket/\'|alink }}/{{ticket.id}} was closed by client.\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(34,'mod_staff_pticket_open','staff',1,'[{{ guest.system_company.name }}] {{ ticket.subject }}','\n{% filter markdown %}\nHi {{ staff.name }},\n\nNew public ticket received. \n\nReply at {{\'support/public-ticket\'|alink }}/{{ ticket.id }}\n\nTrack conversation at:  {{\'support/contact-us/conversation\'|link }}/{{ ticket.hash }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(35,'mod_staff_pticket_reply','staff',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\nHi {{ staff.name }},\n\nNew reply posted on ticket {{ \'support/public-ticket/\'|alink }}/{{ticket.id}}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(36,'mod_staff_ticket_close','staff',1,'[{{ guest.system_company.name }}] {{ ticket.subject }}','\n{% filter markdown %}\nHi {{ staff.name }},\n\n **{{ ticket.client.first_name }} {{ ticket.client.last_name }}** closed support ticket #{{ ticket.id }}\n\nReview the ticket at {{\'support/ticket\'|alink }}/{{ ticket.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(37,'mod_staff_ticket_open','staff',1,'[{{ guest.system_company.name }}] {{ ticket.subject }}','\n{% filter markdown %}\nHi {{ staff.name }},\n\n **{{ ticket.client.first_name }} {{ ticket.client.last_name }}** opened a new support ticket #{{ ticket.id }}\n\n***\n\n{{ ticket.messages[0].content }}\n\n***\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}\n\nReply at {{\'support/ticket\'|alink }}/{{ ticket.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(38,'mod_staff_ticket_reply','staff',1,'[{{ guest.system_company.name }}] {{ ticket.subject }}','\n{% filter markdown %}\nHi {{ staff.name }},\n\n **{{ ticket.client.first_name }} {{ ticket.client.last_name }}** replied to support ticket #{{ ticket.id }}\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}\n\nReply at {{\'support/ticket\'|alink }}/{{ ticket.id }}\n\n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(39,'mod_support_helpdesk_ticket_open','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\n{{ticket.messages[0].content}}\n\n***\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}   \n\nReply Ticket at: {{\'support/ticket\'|link}}/{{ ticket.id }}\n\n\nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n\n',NULL,NULL),(40,'mod_support_pticket_open','support',1,'[{{ guest.system_company.name }}] {{ ticket.subject }}','\n{% filter markdown %}\nHi {{ ticket.author_name }},\n\nThank You for Your request. We will reply in 24 hours.\nYou can track and respond to this conversation at {{\'support/contact-us/conversation\'|link }}/{{ ticket.hash }}\n\nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(41,'mod_support_pticket_staff_close','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}} [closed]','\n{% filter markdown %}\n\nHi {{ ticket.author_name }},\n\nThis is a confirmation email to inform you that your ticket was closed.\n\nYou can track conversation at   \n\n{{\'support/contact-us/conversation\'|link }}/{{ ticket.hash }}\n      \nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(42,'mod_support_pticket_staff_open','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\nHi {{ ticket.author_name }},\n\n{{ticket.messages[0].content}}\n\n***\n\nYou can track and respond to this conversation at:\n\n{{\'support/contact-us/conversation\'|link }}/{{ ticket.hash }}\n      \nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(43,'mod_support_pticket_staff_reply','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\nHi {{ ticket.author_name }},\n\nNew reply was posted to request **{{ticket.subject}}**\n\nYou can track and respond to this conversation at:\n\n{{\'support/contact-us/conversation\'|link }}/{{ ticket.hash }}\n      \nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(44,'mod_support_ticket_open','support',1,'[{{ guest.system_company.name }}] {{ ticket.subject }}','\n{% filter markdown %}\nHi {{ c.first_name }} {{ c.last_name }},\n\nThank you for contacting our support team. \nA support ticket has now been opened for your request. You will be notified when \na response is made by email. The details of your ticket are shown below.\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}\n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nReply Ticket at: {{\'support/ticket\'|link}}/{{ ticket.id }}\n\nPlease do not reply to this email directly.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(45,'mod_support_ticket_staff_close','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\nHi {{ c.first_name }} {{ c.last_name }},\n\nThis a notification message to inform you that ticket **{{ticket.subject}}**\nis now closed.\n\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}   \n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nReply Ticket at: {{\'support/ticket\'|link}}/{{ ticket.id }}\n\nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL),(46,'mod_support_ticket_staff_open','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\nHi {{ c.first_name }} {{ c.last_name }},\n\n{{ticket.messages[0].content}}\n\n***\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}   \n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nReply Ticket at: {{\'support/ticket\'|link}}/{{ ticket.id }}\n\n\nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n\n',NULL,NULL),(47,'mod_support_ticket_staff_reply','support',1,'[{{ guest.system_company.name }}] {{ticket.subject}}','\n{% filter markdown %}\n\nHi {{ c.first_name }} {{ c.last_name }},\n\nNew reply was posted to request **{{ticket.subject}}**\n\nTicket ID: #{{ticket.id}}   \nDepartment: {{ticket.helpdesk.name}}   \nStatus: {{ticket.status|title}}  \n\nLogin to members area: {{\'login\'|link({\'email\' : c.email }) }}\nReply Ticket at: {{\'support/ticket\'|link}}/{{ ticket.id }}\n\n\nPlease do not reply to this email directly. Use the link provided above.\n      \n{{ guest.system_company.signature }}\n\n{% endfilter %}\n',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `extension` */

DROP TABLE IF EXISTS `extension`;

CREATE TABLE `extension` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `manifest` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `extension` */

LOCK TABLES `extension` WRITE;

insert  into `extension`(`id`,`type`,`name`,`status`,`version`,`manifest`) values (1,'mod','forum','installed','1.0.0','{\"id\":\"forum\",\"type\":\"mod\",\"name\":\"Forum\",\"description\":\"Forum for BoxBilling\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),(2,'mod','kb','installed','1.0.0','{\"id\":\"kb\",\"type\":\"mod\",\"name\":\"Knowledge base\",\"description\":\"Knowledge base module for BoxBilling\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),(3,'mod','news','installed','1.0.0','{\"id\":\"news\",\"type\":\"mod\",\"name\":\"News\",\"description\":\"News module for BoxBilling\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),(4,'mod','branding','installed','1.0.0','{\"id\":\"branding\",\"type\":\"mod\",\"name\":\"Branding\",\"description\":\"BoxBilling branding module. Can be deactivated by PRO license owners only.\",\"homepage_url\":\"http:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/extensions.boxbilling.com\\/\",\"license\":\"http:\\/\\/www.boxbilling.com\\/license.txt\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}\n'),(5,'mod','redirect','installed','1.0.0','{\"id\":\"redirect\",\"type\":\"mod\",\"name\":\"Redirect\",\"description\":\"Manage redirects\",\"homepage_url\":\"https:\\/\\/github.com\\/boxbilling\\/\",\"author\":\"BoxBilling\",\"author_url\":\"http:\\/\\/www.boxbilling.com\",\"license\":\"GPL version 2 or later - http:\\/\\/www.gnu.org\\/licenses\\/old-licenses\\/gpl-2.0.html\",\"version\":\"1.0.0\",\"icon_url\":null,\"download_url\":null,\"project_url\":\"https:\\/\\/extensions.boxbilling.com\\/\",\"minimum_boxbilling_version\":null,\"maximum_boxbilling_version\":null}');

UNLOCK TABLES;

/*Table structure for table `extension_meta` */

DROP TABLE IF EXISTS `extension_meta`;

CREATE TABLE `extension_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `rel_type` varchar(255) DEFAULT NULL,
  `rel_id` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `extension_meta` */

LOCK TABLES `extension_meta` WRITE;

insert  into `extension_meta`(`id`,`client_id`,`extension`,`rel_type`,`rel_id`,`meta_key`,`meta_value`,`created_at`,`updated_at`) values (1,NULL,'mod_theme','preset','current','huraga','Test','2015-10-30 08:29:26','2015-10-30 08:29:26');

UNLOCK TABLES;

/*Table structure for table `form` */

DROP TABLE IF EXISTS `form`;

CREATE TABLE `form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `style` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `form` */

LOCK TABLES `form` WRITE;

UNLOCK TABLES;

/*Table structure for table `form_field` */

DROP TABLE IF EXISTS `form_field`;

CREATE TABLE `form_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `hide_label` tinyint(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT NULL,
  `is_unique` tinyint(1) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `options` text,
  `show_initial` varchar(255) DEFAULT NULL,
  `show_middle` varchar(255) DEFAULT NULL,
  `show_prefix` varchar(255) DEFAULT NULL,
  `show_suffix` varchar(255) DEFAULT NULL,
  `text_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id_idx` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `form_field` */

LOCK TABLES `form_field` WRITE;

UNLOCK TABLES;

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `title` text,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `forum` */

LOCK TABLES `forum` WRITE;

insert  into `forum`(`id`,`category`,`title`,`description`,`slug`,`status`,`priority`,`created_at`,`updated_at`) values (1,'General','Discussions Rules','Please read our forum rules before posting to our forums','forum-rules','active',1,'2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `forum_topic` */

DROP TABLE IF EXISTS `forum_topic`;

CREATE TABLE `forum_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forum_id` bigint(20) DEFAULT NULL,
  `title` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `forum_id_idx` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `forum_topic` */

LOCK TABLES `forum_topic` WRITE;

UNLOCK TABLES;

/*Table structure for table `forum_topic_message` */

DROP TABLE IF EXISTS `forum_topic_message`;

CREATE TABLE `forum_topic_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forum_topic_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `message` text,
  `ip` varchar(45) DEFAULT NULL,
  `points` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_topic_id_idx` (`forum_topic_id`),
  KEY `client_id_idx` (`client_id`),
  KEY `admin_id_idx` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `forum_topic_message` */

LOCK TABLES `forum_topic_message` WRITE;

UNLOCK TABLES;

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `nr` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL COMMENT 'To access via public link',
  `currency` varchar(25) DEFAULT NULL,
  `currency_rate` decimal(13,6) DEFAULT NULL,
  `credit` double(18,2) DEFAULT NULL,
  `base_income` double(18,2) DEFAULT NULL COMMENT 'Income in default currency',
  `base_refund` double(18,2) DEFAULT NULL COMMENT 'Refund in default currency',
  `refund` double(18,2) DEFAULT NULL,
  `notes` text,
  `text_1` text,
  `text_2` text,
  `status` varchar(50) DEFAULT 'unpaid' COMMENT 'paid, unpaid',
  `seller_company` varchar(255) DEFAULT NULL,
  `seller_company_vat` varchar(255) DEFAULT NULL,
  `seller_company_number` varchar(255) DEFAULT NULL,
  `seller_address` varchar(255) DEFAULT NULL,
  `seller_phone` varchar(255) DEFAULT NULL,
  `seller_email` varchar(255) DEFAULT NULL,
  `buyer_first_name` varchar(255) DEFAULT NULL,
  `buyer_last_name` varchar(255) DEFAULT NULL,
  `buyer_company` varchar(255) DEFAULT NULL,
  `buyer_company_vat` varchar(255) DEFAULT NULL,
  `buyer_company_number` varchar(255) DEFAULT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_city` varchar(255) DEFAULT NULL,
  `buyer_state` varchar(255) DEFAULT NULL,
  `buyer_country` varchar(255) DEFAULT NULL,
  `buyer_zip` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `buyer_phone_cc` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `taxname` varchar(255) DEFAULT NULL,
  `taxrate` varchar(35) DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `reminded_at` datetime DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `invoice` */

LOCK TABLES `invoice` WRITE;

insert  into `invoice`(`id`,`client_id`,`serie`,`nr`,`hash`,`currency`,`currency_rate`,`credit`,`base_income`,`base_refund`,`refund`,`notes`,`text_1`,`text_2`,`status`,`seller_company`,`seller_company_vat`,`seller_company_number`,`seller_address`,`seller_phone`,`seller_email`,`buyer_first_name`,`buyer_last_name`,`buyer_company`,`buyer_company_vat`,`buyer_company_number`,`buyer_address`,`buyer_city`,`buyer_state`,`buyer_country`,`buyer_zip`,`buyer_phone`,`buyer_phone_cc`,`buyer_email`,`gateway_id`,`approved`,`taxname`,`taxrate`,`due_at`,`reminded_at`,`paid_at`,`created_at`,`updated_at`) values (1,1,'BOX','1','69a4b1ebfebe0628bcc19d6c63b203a3abfe6265','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaid','Company Name',NULL,NULL,'Demo address line 1 Demo address line 2 Demo address line 3','+123 456 12345','company@email.com','Jefri',NULL,NULL,NULL,NULL,' ',NULL,NULL,NULL,NULL,' ',NULL,'jefriskrill@gmail.com',2,1,'','0','2015-11-04 08:46:09',NULL,NULL,'2015-10-30 08:46:09','2015-10-30 08:46:09'),(2,1,'BOX','2','4b280aeedb99d0219dac647a098bc8793e4b6207','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaid','Company Name',NULL,NULL,'Demo address line 1 Demo address line 2 Demo address line 3','+123 456 12345','company@email.com','Jefri',NULL,NULL,NULL,NULL,' ',NULL,NULL,NULL,NULL,' ',NULL,'jefriskrill@gmail.com',2,1,'','0','2015-11-04 09:06:01',NULL,NULL,'2015-10-30 09:06:01','2015-10-30 09:06:01');

UNLOCK TABLES;

/*Table structure for table `invoice_item` */

DROP TABLE IF EXISTS `invoice_item`;

CREATE TABLE `invoice_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `rel_id` text,
  `task` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `period` varchar(10) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `price` double(18,2) DEFAULT NULL,
  `charged` tinyint(1) DEFAULT '0',
  `taxed` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id_idx` (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `invoice_item` */

LOCK TABLES `invoice_item` WRITE;

insert  into `invoice_item`(`id`,`invoice_id`,`type`,`rel_id`,`task`,`status`,`title`,`period`,`quantity`,`unit`,`price`,`charged`,`taxed`,`created_at`,`updated_at`) values (1,1,'order','1','activate','pending_payment','Domain yespleasetes.com registration','1Y',1,'year',11.99,0,0,'2015-10-30 08:46:09','2015-10-30 08:46:09'),(2,2,'order','2','activate','pending_payment','Domain tesdfsdf.com registration','1Y',1,'year',11.99,0,0,'2015-10-30 09:06:01','2015-10-30 09:06:01');

UNLOCK TABLES;

/*Table structure for table `kb_article` */

DROP TABLE IF EXISTS `kb_article`;

CREATE TABLE `kb_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kb_article_category_id` bigint(20) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'active' COMMENT 'active, draft',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `kb_article_category_id_idx` (`kb_article_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `kb_article` */

LOCK TABLES `kb_article` WRITE;

insert  into `kb_article`(`id`,`kb_article_category_id`,`views`,`title`,`content`,`slug`,`status`,`created_at`,`updated_at`) values (1,2,0,'How to contact support','Registered clients can contact our support team:\n------------------------------------------------------------\n\n* Login to clients area\n* Select **Support** menu item\n* Click **Submit new ticket**\n* Fill the form and press *Submit*\n\nGuests can contact our support team:\n------------------------------------------------------------\n\n* Use our contact form.\n* Fill the form and click *Submit*\n','how-to-contact-support','active','2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,2,0,'How to place new order','To place new order, follow these steps:\n------------------------------------------------------------\n\n* Select our services at *Order* page.\n* Depending on selected product, you might need to provide additional information to complete order request.\n* Click \"Continue\" and your product/service is now in shopping cart.\n* If you have promo code, you can apply it and get discount.\n* Click on \"Checkout\" button to proceed with checkout process\n    * If you are already logged in, uou will be automaticaly redirected to new invoice\n    * If you are registerd client, you can provide your login details\n    * If you have never purchased any service from us, fill up client sign up form, and continue checkout\n* Choose payment method to pay for invoice. List of all avalable payment methods will be listed below invoice details.\n* Choose payment method\n* You will be redirected to payment gateway page\n* After successfull payment, You will be redirected back to invoice page.\n* Depending on selected services your order will be reviewed and activated by our staff members.\n* After you receive confirmation email about order activation you are able to manage your services.\n','how-to-place-new-order','active','2012-01-01 12:00:00','2012-01-01 12:00:00'),(3,2,0,'Example article','Example article heading\n------------------------------------------------------------\n\nCursus, parturient porta dis sit? Habitasse non, sociis porttitor, sagittis dapibus scelerisque? Pid, porttitor integer, montes. Hac, in? Arcu nunc integer nascetur dis nisi. In, sed a amet? Adipiscing odio mauris mauris, porta, integer, adipiscing habitasse, elementum phasellus, turpis in? Quis magna placerat eu, cursus urna mattis egestas, a ac massa turpis mus et odio pid in, urna dapibus ridiculus in turpis cursus ac a urna magna purus etiam ac nisi porttitor! Auctor est? In adipiscing, hac platea augue vut, hac est cum sagittis! Montes nascetur pulvinar tristique porta platea? Magnis vel etiam nisi augue auctor sit pulvinar! Aliquet rhoncus, elit porta? Magnis pulvinar eu turpis purus sociis a augue? Sit, nascetur! Mattis nisi, penatibus ac ac natoque auctor turpis.\n\nExample article heading\n------------------------------------------------------------\n\nUt diam cursus, elit pulvinar, habitasse purus? Enim. Urna? Velit arcu, rhoncus sociis sed, et, ultrices nascetur lacus vut purus tempor a. Vel? Sagittis integer scelerisque, dapibus lectus mid, magnis, augue duis velit etiam tortor! Eros, a et phasellus est ultricies integer elementum in, tempor sed parturient. Dictumst rhoncus, ut sed sagittis facilisis? In, proin? Urna augue in sociis enim dignissim! Velit magna tincidunt ac. Nunc, vel auctor porta enim integer. Phasellus amet eu. Tristique lundium arcu! In? Massa penatibus arcu, rhoncus augue ut pid pulvinar, porttitor, porta, et! A sit odio, proin natoque ultrices cras cras magna porttitor! Ultrices sed magna in! Porttitor nunc, tincidunt nec, amet integer aenean. Tincidunt, placerat nec dolor parturient et ac pulvinar a.\n','example-article-slug','active','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `kb_article_category` */

DROP TABLE IF EXISTS `kb_article_category`;

CREATE TABLE `kb_article_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `kb_article_category` */

LOCK TABLES `kb_article_category` WRITE;

insert  into `kb_article_category`(`id`,`title`,`description`,`slug`,`created_at`,`updated_at`) values (1,'Frequently asked questions','Section for common issues','faq','2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,'How to\'s','Section dedicated for tutorials','how-to','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `mod_email_queue` */

DROP TABLE IF EXISTS `mod_email_queue`;

CREATE TABLE `mod_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `to_name` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `tries` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `mod_email_queue` */

LOCK TABLES `mod_email_queue` WRITE;

UNLOCK TABLES;

/*Table structure for table `mod_massmailer` */

DROP TABLE IF EXISTS `mod_massmailer`;

CREATE TABLE `mod_massmailer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `filter` text,
  `status` varchar(255) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `mod_massmailer` */

LOCK TABLES `mod_massmailer` WRITE;

UNLOCK TABLES;

/*Table structure for table `pay_gateway` */

DROP TABLE IF EXISTS `pay_gateway`;

CREATE TABLE `pay_gateway` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `accepted_currencies` text,
  `enabled` tinyint(1) DEFAULT '1',
  `allow_single` tinyint(1) DEFAULT '1',
  `allow_recurrent` tinyint(1) DEFAULT '1',
  `test_mode` tinyint(1) DEFAULT '0',
  `config` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `pay_gateway` */

LOCK TABLES `pay_gateway` WRITE;

insert  into `pay_gateway`(`id`,`name`,`gateway`,`accepted_currencies`,`enabled`,`allow_single`,`allow_recurrent`,`test_mode`,`config`) values (1,'Custom','Custom','[\"USD\"]',0,1,1,0,'{\"single\":\"tes\",\"recurrent\":\"tes\"}'),(2,'PayPal','PayPalEmail','[\"USD\"]',1,1,1,0,'{\"email\":\"jefrisugiartopaypal@gmail.com\"}'),(3,'AlertPay','AlertPay',NULL,0,1,1,0,NULL),(4,'SkrillMoneybookers','SkrillMoneybookers','[\"USD\"]',1,1,1,0,'{\"email\":\"jefrisugiartoskrill@gmail.com\"}');

UNLOCK TABLES;

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'draft' COMMENT 'active, draft',
  `image` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `admin_id_idx` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `post` */

LOCK TABLES `post` WRITE;

insert  into `post`(`id`,`admin_id`,`title`,`content`,`slug`,`status`,`image`,`section`,`publish_at`,`published_at`,`expires_at`,`created_at`,`updated_at`) values (1,1,'BoxBilling is the most affordable Billing Application Ever!','Just in case you weren\'t already aware, BoxBilling is the most affordable client management application ever!\n\nTo learn more about it You can always visit [www.boxbilling.com](http://www.boxbilling.com/)\n','boxbilling-is-affordable-billing-system','active',NULL,NULL,NULL,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,1,'Check out great features of BoxBilling','* Supports automated billing, invoicing, product provisioning\n* Automatically create accounts as soon as the payment is received, suspend when account becomes overdue, terminate when a specified amount of time passes.\n* Boxbilling is perfectly created to sell shared and reseller hosting accounts, software licenses and downloadable products.\n* Integrated helpdesk, knowledgebase, news and announcements system.\n','great-features-of-boxbilling','active',NULL,NULL,NULL,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(3,1,'BoxBilling is customizable','* You can create your own simple or advanced hooks on BoxBilling events. For example, send notification via sms when new client signs up.\n* Create custom theme for your client interface\n','boxbilling-is-customizable','active',NULL,NULL,NULL,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_payment_id` bigint(20) DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `unit` varchar(50) DEFAULT 'product',
  `active` tinyint(1) DEFAULT '1',
  `status` varchar(50) DEFAULT 'enabled' COMMENT 'enabled, disabled',
  `hidden` tinyint(1) DEFAULT '0',
  `is_addon` tinyint(1) DEFAULT '0',
  `setup` varchar(50) DEFAULT 'after_payment',
  `addons` text,
  `icon_url` varchar(255) DEFAULT NULL,
  `allow_quantity_select` tinyint(1) DEFAULT '0',
  `stock_control` tinyint(1) DEFAULT '0',
  `quantity_in_stock` int(11) DEFAULT '0',
  `plugin` varchar(255) DEFAULT NULL,
  `plugin_config` text,
  `upgrades` text,
  `priority` bigint(20) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `product_type_idx` (`type`),
  KEY `product_category_id_idx` (`product_category_id`),
  KEY `product_payment_id_idx` (`product_payment_id`),
  KEY `form_id_idx` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

LOCK TABLES `product` WRITE;

insert  into `product`(`id`,`product_category_id`,`product_payment_id`,`form_id`,`title`,`slug`,`description`,`unit`,`active`,`status`,`hidden`,`is_addon`,`setup`,`addons`,`icon_url`,`allow_quantity_select`,`stock_control`,`quantity_in_stock`,`plugin`,`plugin_config`,`upgrades`,`priority`,`config`,`created_at`,`updated_at`,`type`) values (1,1,NULL,NULL,'Domains registration and transfer','domain-checker',NULL,'product',1,'enabled',0,0,'after_payment',NULL,NULL,0,0,0,NULL,NULL,NULL,1,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00','domain');

UNLOCK TABLES;

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `icon_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `product_category` */

LOCK TABLES `product_category` WRITE;

insert  into `product_category`(`id`,`title`,`description`,`icon_url`,`created_at`,`updated_at`) values (1,'Default category',NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `product_payment` */

DROP TABLE IF EXISTS `product_payment`;

CREATE TABLE `product_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL COMMENT 'free, once, recurrent',
  `once_price` decimal(18,2) DEFAULT '0.00',
  `once_setup_price` decimal(18,2) DEFAULT '0.00',
  `w_price` decimal(18,2) DEFAULT '0.00',
  `m_price` decimal(18,2) DEFAULT '0.00',
  `q_price` decimal(18,2) DEFAULT '0.00',
  `b_price` decimal(18,2) DEFAULT '0.00',
  `a_price` decimal(18,2) DEFAULT '0.00',
  `bia_price` decimal(18,2) DEFAULT '0.00',
  `tria_price` decimal(18,2) DEFAULT '0.00',
  `w_setup_price` decimal(18,2) DEFAULT '0.00',
  `m_setup_price` decimal(18,2) DEFAULT '0.00',
  `q_setup_price` decimal(18,2) DEFAULT '0.00',
  `b_setup_price` decimal(18,2) DEFAULT '0.00',
  `a_setup_price` decimal(18,2) DEFAULT '0.00',
  `bia_setup_price` decimal(18,2) DEFAULT '0.00',
  `tria_setup_price` decimal(18,2) DEFAULT '0.00',
  `w_enabled` tinyint(1) DEFAULT '1',
  `m_enabled` tinyint(1) DEFAULT '1',
  `q_enabled` tinyint(1) DEFAULT '1',
  `b_enabled` tinyint(1) DEFAULT '1',
  `a_enabled` tinyint(1) DEFAULT '1',
  `bia_enabled` tinyint(1) DEFAULT '1',
  `tria_enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `product_payment` */

LOCK TABLES `product_payment` WRITE;

UNLOCK TABLES;

/*Table structure for table `promo` */

DROP TABLE IF EXISTS `promo`;

CREATE TABLE `promo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'percentage' COMMENT 'absolute, percentage, trial',
  `value` decimal(18,2) DEFAULT NULL,
  `maxuses` int(11) DEFAULT '0',
  `used` int(11) DEFAULT '0',
  `freesetup` tinyint(1) DEFAULT '0',
  `once_per_client` tinyint(1) DEFAULT '0',
  `recurring` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `products` text,
  `periods` text,
  `client_groups` text,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `start_index_idx` (`start_at`),
  KEY `end_index_idx` (`end_at`),
  KEY `active_index_idx` (`active`),
  KEY `code_index_idx` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `promo` */

LOCK TABLES `promo` WRITE;

UNLOCK TABLES;

/*Table structure for table `queue` */

DROP TABLE IF EXISTS `queue`;

CREATE TABLE `queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `timeout` bigint(20) DEFAULT NULL,
  `iteration` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `queue` */

LOCK TABLES `queue` WRITE;

UNLOCK TABLES;

/*Table structure for table `queue_message` */

DROP TABLE IF EXISTS `queue_message`;

CREATE TABLE `queue_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `queue_id` bigint(20) DEFAULT NULL,
  `handle` char(32) DEFAULT NULL,
  `handler` varchar(255) DEFAULT NULL,
  `body` longblob,
  `hash` char(32) DEFAULT NULL,
  `timeout` double(18,2) DEFAULT NULL,
  `log` text,
  `execute_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_id_idx` (`queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `queue_message` */

LOCK TABLES `queue_message` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_boxbillinglicense` */

DROP TABLE IF EXISTS `service_boxbillinglicense`;

CREATE TABLE `service_boxbillinglicense` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `oid` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oid` (`oid`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_boxbillinglicense` */

LOCK TABLES `service_boxbillinglicense` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_custom` */

DROP TABLE IF EXISTS `service_custom`;

CREATE TABLE `service_custom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `plugin_config` text,
  `f1` text,
  `f2` text,
  `f3` text,
  `f4` text,
  `f5` text,
  `f6` text,
  `f7` text,
  `f8` text,
  `f9` text,
  `f10` text,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_custom` */

LOCK TABLES `service_custom` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_domain` */

DROP TABLE IF EXISTS `service_domain`;

CREATE TABLE `service_domain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `tld_registrar_id` bigint(20) DEFAULT NULL,
  `sld` varchar(255) DEFAULT NULL,
  `tld` varchar(100) DEFAULT NULL,
  `ns1` varchar(255) DEFAULT NULL,
  `ns2` varchar(255) DEFAULT NULL,
  `ns3` varchar(255) DEFAULT NULL,
  `ns4` varchar(255) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '1',
  `transfer_code` varchar(255) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_company` varchar(255) DEFAULT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_address1` varchar(255) DEFAULT NULL,
  `contact_address2` varchar(255) DEFAULT NULL,
  `contact_city` varchar(255) DEFAULT NULL,
  `contact_state` varchar(255) DEFAULT NULL,
  `contact_postcode` varchar(255) DEFAULT NULL,
  `contact_country` varchar(255) DEFAULT NULL,
  `contact_phone_cc` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `details` text,
  `synced_at` datetime DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`),
  KEY `tld_registrar_id_idx` (`tld_registrar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_domain` */

LOCK TABLES `service_domain` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_downloadable` */

DROP TABLE IF EXISTS `service_downloadable`;

CREATE TABLE `service_downloadable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_downloadable` */

LOCK TABLES `service_downloadable` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_hosting` */

DROP TABLE IF EXISTS `service_hosting`;

CREATE TABLE `service_hosting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `service_hosting_server_id` bigint(20) DEFAULT NULL,
  `service_hosting_hp_id` bigint(20) DEFAULT NULL,
  `sld` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `reseller` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`),
  KEY `service_hosting_server_id_idx` (`service_hosting_server_id`),
  KEY `service_hosting_hp_id_idx` (`service_hosting_hp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_hosting` */

LOCK TABLES `service_hosting` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_hosting_hp` */

DROP TABLE IF EXISTS `service_hosting_hp`;

CREATE TABLE `service_hosting_hp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quota` varchar(50) DEFAULT NULL,
  `bandwidth` varchar(50) DEFAULT NULL,
  `max_ftp` varchar(50) DEFAULT NULL,
  `max_sql` varchar(50) DEFAULT NULL,
  `max_pop` varchar(50) DEFAULT NULL,
  `max_sub` varchar(50) DEFAULT NULL,
  `max_park` varchar(50) DEFAULT NULL,
  `max_addon` varchar(50) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_hosting_hp` */

LOCK TABLES `service_hosting_hp` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_hosting_server` */

DROP TABLE IF EXISTS `service_hosting_server`;

CREATE TABLE `service_hosting_server` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `hostname` varchar(100) DEFAULT NULL,
  `assigned_ips` text,
  `status_url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `max_accounts` bigint(20) DEFAULT NULL,
  `ns1` varchar(100) DEFAULT NULL,
  `ns2` varchar(100) DEFAULT NULL,
  `ns3` varchar(100) DEFAULT NULL,
  `ns4` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `username` text,
  `password` text,
  `accesshash` text,
  `port` varchar(20) DEFAULT NULL,
  `config` text,
  `secure` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_hosting_server` */

LOCK TABLES `service_hosting_server` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_license` */

DROP TABLE IF EXISTS `service_license`;

CREATE TABLE `service_license` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `license_key` varchar(255) DEFAULT NULL,
  `validate_ip` tinyint(1) DEFAULT '1',
  `validate_host` tinyint(1) DEFAULT '1',
  `validate_path` tinyint(1) DEFAULT '0',
  `validate_version` tinyint(1) DEFAULT '0',
  `ips` text,
  `hosts` text,
  `paths` text,
  `versions` text,
  `config` text,
  `plugin` varchar(255) DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `pinged_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_key` (`license_key`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_license` */

LOCK TABLES `service_license` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_membership` */

DROP TABLE IF EXISTS `service_membership`;

CREATE TABLE `service_membership` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_membership` */

LOCK TABLES `service_membership` WRITE;

UNLOCK TABLES;

/*Table structure for table `service_solusvm` */

DROP TABLE IF EXISTS `service_solusvm`;

CREATE TABLE `service_solusvm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cluster_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `vserverid` varchar(255) DEFAULT NULL,
  `virtid` varchar(255) DEFAULT NULL,
  `nodeid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `nodegroup` varchar(255) DEFAULT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `rootpassword` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `ips` varchar(255) DEFAULT NULL,
  `hvmt` varchar(255) DEFAULT NULL,
  `custommemory` varchar(255) DEFAULT NULL,
  `customdiskspace` varchar(255) DEFAULT NULL,
  `custombandwidth` varchar(255) DEFAULT NULL,
  `customcpu` varchar(255) DEFAULT NULL,
  `customextraip` varchar(255) DEFAULT NULL,
  `issuelicense` varchar(255) DEFAULT NULL,
  `mainipaddress` varchar(255) DEFAULT NULL,
  `extraipaddress` varchar(255) DEFAULT NULL,
  `consoleuser` varchar(255) DEFAULT NULL,
  `consolepassword` varchar(255) DEFAULT NULL,
  `config` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `service_solusvm` */

LOCK TABLES `service_solusvm` WRITE;

UNLOCK TABLES;

/*Table structure for table `session` */

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `modified_at` int(11) DEFAULT NULL,
  `content` text,
  UNIQUE KEY `unique_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `session` */

LOCK TABLES `session` WRITE;

insert  into `session`(`id`,`modified_at`,`content`) values ('q57mqsoj3algfcvccjvcsq4cp2',1446176970,'Y2xpZW50X2lkfHM6MToiMSI7YWRtaW58YTo0OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MjM6ImplZnJpc3VnaWFydG9AZ21haWwuY29tIjtzOjQ6Im5hbWUiO3M6NToiSmVmcmkiO3M6NDoicm9sZSI7czo1OiJhZG1pbiI7fQ==');

UNLOCK TABLES;

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param` varchar(255) DEFAULT NULL,
  `value` text,
  `public` tinyint(1) DEFAULT '0',
  `category` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `param` (`param`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `setting` */

LOCK TABLES `setting` WRITE;

insert  into `setting`(`id`,`param`,`value`,`public`,`category`,`hash`,`created_at`,`updated_at`) values (1,'last_patch','17',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,'company_name','Company Name',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(3,'company_email','company@email.com',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(4,'company_signature','BoxBilling.com - Client Management, Invoice and Support Software',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(5,'company_logo','https://sites.google.com/site/boxbilling/_/rsrc/1308483006796/home/logo_boxbilling.png',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(6,'company_address_1','Demo address line 1',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(7,'company_address_2','Demo address line 2',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(8,'company_address_3','Demo address line 3',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(9,'company_tel','+123 456 12345',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(10,'company_tos','Sit ridiculus nascetur porta purus tortor, augue natoque, pulvinar integer nisi mattis dignissim mus, elementum nascetur, augue etiam. Mus mus tortor? A mauris habitasse dictumst, scelerisque, dis nec pulvinar magnis velit, integer, nisi, aliquet, elit phasellus? Parturient odio purus tristique porttitor augue diam pulvinar magna ac lacus in. Augue tincidunt sociis ultrices parturient aliquet dapibus sit. Pulvinar mauris platea in amet penatibus augue ut non ridiculus, nunc lundium. Duis dapibus a mid proin pellentesque lundium vut mauris egestas dolor nec? Diam eu duis sociis. Dapibus porta! Proin, turpis nascetur et. Aenean tristique eu in elit dolor, montes sit nec, magna amet montes, hac diam ac, pellentesque duis sociis, est placerat? Montes ac, nunc aliquet ridiculus nisi? Dignissim. Et aliquet sed.\n\nAuctor mid, mauris placerat? Scelerisque amet a a facilisis porttitor aenean dolor, placerat dapibus, odio parturient scelerisque? In dis arcu nec mid ac in adipiscing ultricies, pulvinar purus dis. Nisi dis massa magnis, porta amet, scelerisque turpis etiam scelerisque porttitor ac dictumst, cras, enim? Placerat enim pulvinar turpis a cum! Aliquam? Urna ut facilisis diam diam lorem mattis ut, ac pid, sed pellentesque. Egestas nunc, lacus, tempor amet? Lacus, nunc dictumst, ac porttitor magna, nisi, montes scelerisque? Cum, rhoncus. Pid adipiscing porta dictumst porta amet dignissim purus, aliquet dolor non sagittis porta urna? Tortor egestas, ultricies elementum, placerat velit magnis lacus? Augue nunc? Ac et cras ut? Ac odio tortor lectus. Mattis adipiscing urna, scelerisque nec aenean adipiscing mid.\n',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(11,'company_privacy_policy','Ac dapibus. Rhoncus integer sit aliquam a! Natoque? Lacus porttitor rhoncus, aliquam porttitor in risus turpis adipiscing! Integer, mus mattis sed enim ac velit proin est et ut, amet eros! Hac augue et vel ac sit duis facilisis purus tincidunt, porttitor eu a penatibus rhoncus platea et mauris rhoncus magnis rhoncus, montes? Et porttitor, urna, dolor, dapibus elementum porttitor aliquam.\n\nCras risus? Turpis, mus tincidunt vel dolor lectus pulvinar aliquam nascetur parturient nunc proin aenean tortor, augue aenean ac penatibus vut arcu. Augue, aenean dapibus in nec. In tempor turpis dictumst cursus, nec eros, elit non, ut integer magna. Augue placerat magnis facilisis platea ridiculus tincidunt et ut porttitor! Cursus odio, aliquet purus tristique vel tempor urna, vut enim.\n\nPorta habitasse scelerisque elementum adipiscing elit pulvinar? Cursus! Turpis! Massa ac elementum a, facilisis eu, sed ac porta massa sociis nascetur rhoncus sed, scelerisque habitasse aliquam? Velit adipiscing turpis, risus ut duis non integer rhoncus, placerat eu adipiscing, hac? Integer cursus porttitor rhoncus turpis lundium nisi, velit? Arcu tincidunt turpis, nunc integer turpis! Ridiculus enim natoque in, eros odio.\n\nScelerisque tempor dolor magnis natoque cras nascetur lorem, augue habitasse ac ut mid rhoncus? Montes tristique arcu, nisi integer? Augue? Adipiscing tempor parturient elementum nunc? Amet mid aliquam penatibus. Aliquam proin, parturient vel parturient dictumst? A porttitor rhoncus, a sit egestas massa tincidunt! Nunc purus. Hac ac! Enim placerat augue cursus augue sociis cum cras, pulvinar placerat nec platea.\n\nPenatibus et duis, urna. Massa cum porttitor elit porta, natoque etiam et turpis placerat lacus etiam scelerisque nunc, egestas, urna non tincidunt cursus odio urna tempor dictumst dignissim habitasse. Mus non et, nisi purus, pulvinar natoque in vel nascetur. Porttitor phasellus sed aenean eu quis? Nec vel, dignissim magna placerat turpis, ridiculus cum est auctor, sagittis, sit scelerisque duis.\n',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(12,'company_note','Amet auctor, sed massa lacus phasellus turpis urna mauris dictumst, dapibus turpis? Sociis amet, mid aliquam, sagittis, risus, eros porta mid placerat eros in? Elementum porta ac pulvinar porttitor adipiscing, tristique porta pid dolor elementum? Eros, pulvinar amet auctor, urna enim amet magnis ultrices etiam? Dictumst ultrices velit eu tortor aliquet, rhoncus! Magnis porttitor. Vel parturient, ac, nascetur magnis tincidunt.\n\nQuis, pid. Lacus lorem scelerisque tortor phasellus, duis adipiscing nec mid mus purus placerat nunc porttitor placerat, risus odio pulvinar penatibus tincidunt, proin. Est tincidunt aliquam vel, ut scelerisque. Enim lorem magna tempor, auctor elit? Magnis lorem ut cursus, nunc nascetur! Est et odio nunc odio adipiscing amet nunc, ridiculus magnis egestas proin, montes nunc tristique tortor, ridiculus magna.\n',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(13,'invoice_series','BOX',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(14,'invoice_due_days','5',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(15,'invoice_auto_approval','1',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(16,'invoice_issue_days_before_expire','14',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(17,'theme','huraga',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(18,'issue_invoice_days_before_expire','7',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(19,'invoice_refund_logic','credit_note',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(20,'invoice_cn_series','CN-',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(21,'invoice_cn_starting_number','1',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(22,'nameserver_1',NULL,0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(23,'nameserver_2',NULL,0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(24,'nameserver_3',NULL,0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(25,'nameserver_4',NULL,0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(26,'funds_min_amount','10',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(27,'funds_max_amount','200',0,NULL,NULL,'2012-01-01 12:00:00','2012-01-01 12:00:00'),(28,'106161409db03abe36de624cb84fbd88','GIui55JlQveRJxNwQjnmqotVzvA+qAmQ1CE9PGZCFdJKxLuzcnd8JYYqwemJj5gvwqNUxhvIqyP/4wJmuhlFPS9706wx/xr17F6iB8tC0aopb4Ou6JPbKlh7Z5PfjFTZB7Ruc57MapD2c9IPnIunj4I/nKaLHajSk9jOWnqjkyY4DLApvMHk0IBLqTDqSMuIYQz41YT9s75LWLeZR/vrsI4UWeRY6cbzbNMV9opYb9kiKVVHC1Eh8/wys20joF2B',0,NULL,NULL,'2015-10-30 08:38:58','2015-10-30 08:38:58'),(29,'32217580f47639bf13ab615b0f1fb6c1','jC0KrMBAGxvBquYLhVXKmmn0iXcv6MsNDPpXWn+GCSLgMN2gIiZAGDKCtjCJXkF2zYWy7xFAHlKBn7eAVGCv1Q==',0,NULL,NULL,'2015-10-30 08:38:58','2015-10-30 08:38:58');

UNLOCK TABLES;

/*Table structure for table `subscription` */

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `pay_gateway_id` bigint(20) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` bigint(20) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `amount` double(18,2) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id_idx` (`client_id`),
  KEY `pay_gateway_id_idx` (`pay_gateway_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `subscription` */

LOCK TABLES `subscription` WRITE;

UNLOCK TABLES;

/*Table structure for table `support_helpdesk` */

DROP TABLE IF EXISTS `support_helpdesk`;

CREATE TABLE `support_helpdesk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `close_after` smallint(6) DEFAULT '24',
  `can_reopen` tinyint(1) DEFAULT '0',
  `signature` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `support_helpdesk` */

LOCK TABLES `support_helpdesk` WRITE;

insert  into `support_helpdesk`(`id`,`name`,`email`,`close_after`,`can_reopen`,`signature`,`created_at`,`updated_at`) values (1,'General','info@yourdomain.com',24,0,'It is always a pleasure to help.\nHave a Nice Day !','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `support_p_ticket` */

DROP TABLE IF EXISTS `support_p_ticket`;

CREATE TABLE `support_p_ticket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'open',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `support_p_ticket` */

LOCK TABLES `support_p_ticket` WRITE;

UNLOCK TABLES;

/*Table structure for table `support_p_ticket_message` */

DROP TABLE IF EXISTS `support_p_ticket_message`;

CREATE TABLE `support_p_ticket_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `support_p_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL COMMENT 'Filled when message author is admin',
  `content` text,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_p_ticket_id_idx` (`support_p_ticket_id`),
  KEY `admin_id_idx` (`admin_id`),
  FULLTEXT KEY `content_idx` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `support_p_ticket_message` */

LOCK TABLES `support_p_ticket_message` WRITE;

UNLOCK TABLES;

/*Table structure for table `support_pr` */

DROP TABLE IF EXISTS `support_pr`;

CREATE TABLE `support_pr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `support_pr_category_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_pr_category_id_idx` (`support_pr_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `support_pr` */

LOCK TABLES `support_pr` WRITE;

insert  into `support_pr`(`id`,`support_pr_category_id`,`title`,`content`,`created_at`,`updated_at`) values (1,1,'Hello #1','Hello,\n\n\n\nThank you for using our services.','2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,1,'Hello #2','Greetings,\n\n\n\nThank you.','2012-01-01 12:00:00','2012-01-01 12:00:00'),(3,2,'It was fixed','\nIt was fixed for your account. If you have any more questions or requests, please let us to know.','2012-01-01 12:00:00','2012-01-01 12:00:00'),(4,2,'It was done as requested','\nIt\'s done as you have requested. Please let us to know if you have any further requests or questions.','2012-01-01 12:00:00','2012-01-01 12:00:00'),(5,2,'Your website works fine','\nI have just checked your website and it works fine. Please check it from your end and let us to know if you still experience any problems.','2012-01-01 12:00:00','2012-01-01 12:00:00'),(6,3,'Do you get any errors?','\nDo you get any errors and maybe you can copy/paste full error messages?','2012-01-01 12:00:00','2012-01-01 12:00:00'),(7,3,'Domain is not pointing to our server','\nYour domain is not pointing to our server. Please set our nameservers for your domain and give 24 hours until changes will apply worldwide.','2012-01-01 12:00:00','2012-01-01 12:00:00'),(8,3,'What is your domain and username?','\nWhat is your domain name and username?','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `support_pr_category` */

DROP TABLE IF EXISTS `support_pr_category`;

CREATE TABLE `support_pr_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `support_pr_category` */

LOCK TABLES `support_pr_category` WRITE;

insert  into `support_pr_category`(`id`,`title`,`created_at`,`updated_at`) values (1,'Greetings','2012-01-01 12:00:00','2012-01-01 12:00:00'),(2,'General','2012-01-01 12:00:00','2012-01-01 12:00:00'),(3,'Accounting','2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `support_ticket` */

DROP TABLE IF EXISTS `support_ticket`;

CREATE TABLE `support_ticket` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `support_helpdesk_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT '100',
  `subject` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'open' COMMENT 'open, closed, on_hold',
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` bigint(20) DEFAULT NULL,
  `rel_task` varchar(100) DEFAULT NULL,
  `rel_new_value` text,
  `rel_status` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_helpdesk_id_idx` (`support_helpdesk_id`),
  KEY `client_id_idx` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `support_ticket` */

LOCK TABLES `support_ticket` WRITE;

UNLOCK TABLES;

/*Table structure for table `support_ticket_message` */

DROP TABLE IF EXISTS `support_ticket_message`;

CREATE TABLE `support_ticket_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `content` text,
  `attachment` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_ticket_id_idx` (`support_ticket_id`),
  KEY `client_id_idx` (`client_id`),
  KEY `admin_id_idx` (`admin_id`),
  FULLTEXT KEY `content_idx` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `support_ticket_message` */

LOCK TABLES `support_ticket_message` WRITE;

UNLOCK TABLES;

/*Table structure for table `support_ticket_note` */

DROP TABLE IF EXISTS `support_ticket_note`;

CREATE TABLE `support_ticket_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_ticket_id_idx` (`support_ticket_id`),
  KEY `admin_id_idx` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `support_ticket_note` */

LOCK TABLES `support_ticket_note` WRITE;

UNLOCK TABLES;

/*Table structure for table `tax` */

DROP TABLE IF EXISTS `tax`;

CREATE TABLE `tax` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `taxrate` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tax` */

LOCK TABLES `tax` WRITE;

UNLOCK TABLES;

/*Table structure for table `tld` */

DROP TABLE IF EXISTS `tld`;

CREATE TABLE `tld` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tld_registrar_id` bigint(20) DEFAULT NULL,
  `tld` varchar(15) DEFAULT NULL,
  `price_registration` decimal(18,2) DEFAULT '0.00',
  `price_renew` decimal(18,2) DEFAULT '0.00',
  `price_transfer` decimal(18,2) DEFAULT '0.00',
  `allow_register` tinyint(1) DEFAULT NULL,
  `allow_transfer` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `min_years` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tld` (`tld`),
  KEY `tld_registrar_id_idx` (`tld_registrar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tld` */

LOCK TABLES `tld` WRITE;

insert  into `tld`(`id`,`tld_registrar_id`,`tld`,`price_registration`,`price_renew`,`price_transfer`,`allow_register`,`allow_transfer`,`active`,`min_years`,`created_at`,`updated_at`) values (1,1,'.com',11.99,11.99,11.99,1,1,1,1,'2012-01-01 12:00:00','2012-01-01 12:00:00');

UNLOCK TABLES;

/*Table structure for table `tld_registrar` */

DROP TABLE IF EXISTS `tld_registrar`;

CREATE TABLE `tld_registrar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `registrar` varchar(255) DEFAULT NULL,
  `test_mode` tinyint(4) DEFAULT '0',
  `config` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tld_registrar` */

LOCK TABLES `tld_registrar` WRITE;

insert  into `tld_registrar`(`id`,`name`,`registrar`,`test_mode`,`config`) values (1,'Custom','Custom',0,NULL),(2,'Reseller Club','Resellerclub',0,NULL),(3,'Internet.bs','Internetbs',0,NULL);

UNLOCK TABLES;

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `txn_status` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL,
  `s_period` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'received',
  `ip` varchar(45) DEFAULT NULL,
  `error` text,
  `error_code` int(11) DEFAULT NULL,
  `validate_ipn` tinyint(1) DEFAULT '1',
  `ipn` text,
  `output` text,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id_idx` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `transaction` */

LOCK TABLES `transaction` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
