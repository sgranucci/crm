-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: site
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accion_estado`
--

DROP TABLE IF EXISTS `accion_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accion_estado` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accion_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accion_estado`
--

LOCK TABLES `accion_estado` WRITE;
/*!40000 ALTER TABLE `accion_estado` DISABLE KEYS */;
INSERT INTO `accion_estado` VALUES (2,10,2,'2018-10-18 15:39:30',NULL),(3,4,2,'2018-10-18 15:39:46',NULL),(4,11,2,'2018-10-18 15:40:09',NULL),(5,7,5,'2018-10-18 15:40:17',NULL),(6,3,2,'2018-10-18 15:40:27',NULL),(7,1,3,'2018-10-18 15:40:39',NULL);
/*!40000 ALTER TABLE `accion_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canals`
--

DROP TABLE IF EXISTS `canals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canals`
--

LOCK TABLES `canals` WRITE;
/*!40000 ALTER TABLE `canals` DISABLE KEYS */;
INSERT INTO `canals` VALUES (1,'Formulario Sailing','2018-10-10 00:51:01','2018-10-10 00:51:27'),(2,'Telefono','2018-10-10 00:51:11',NULL),(3,'Google Adwords','2018-10-11 11:28:26',NULL),(4,'Facebook','2018-10-11 11:28:33',NULL),(5,'Referido','2018-10-11 11:28:39',NULL),(6,'Linkedin','2018-10-11 11:28:44',NULL),(7,'Newsletter','2018-10-11 11:28:49',NULL),(8,'Twitter','2018-10-11 11:28:56',NULL),(9,'Sitio Institucional','2018-10-11 11:29:02',NULL),(10,'Email Marketing','2018-10-18 14:11:49',NULL),(11,'Referido NQN','2018-10-18 14:12:05',NULL);
/*!40000 ALTER TABLE `canals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apicustom`
--

DROP TABLE IF EXISTS `cms_apicustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apicustom`
--

LOCK TABLES `cms_apicustom` WRITE;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_apikey`
--

DROP TABLE IF EXISTS `cms_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_apikey`
--

LOCK TABLES `cms_apikey` WRITE;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_dashboard`
--

DROP TABLE IF EXISTS `cms_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2018-10-09 23:34:22',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` VALUES (1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','admin@crudbooster.com se desconectó','',1,'2018-10-09 23:35:52',NULL),(2,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de admin@crudbooster.com desde la Dirección IP ::1','',1,'2018-10-09 23:38:19',NULL),(3,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/users/add-save','Añadir nueva información Pablo Ragno en Gestión de usuarios','',1,'2018-10-09 23:39:14',NULL),(4,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','admin@crudbooster.com se desconectó','',1,'2018-10-09 23:45:18',NULL),(5,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP ::1','',2,'2018-10-09 23:46:32',NULL),(6,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','pabloragno@gmail.com se desconectó','',2,'2018-10-09 23:47:22',NULL),(7,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP ::1','',2,'2018-10-09 23:47:38',NULL),(8,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','pabloragno@gmail.com se desconectó','',2,'2018-10-09 23:47:45',NULL),(9,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP ::1','',2,'2018-10-09 23:47:53',NULL),(10,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/canals/add-save','Añadir nueva información Lead en Canales','',2,'2018-10-10 00:51:01',NULL),(11,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/canals/add-save','Añadir nueva información Telefono en Canales','',2,'2018-10-10 00:51:11',NULL),(12,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/canals/edit-save/1','Actualizar información Formulario Sailing en Canales','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Lead</td><td>Formulario Sailing</td></tr></tbody></table>',2,'2018-10-10 00:51:27',NULL),(13,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/lead_statuses/add-save','Añadir nueva información Lead en Estado del contacto','',2,'2018-10-10 00:51:52',NULL),(14,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/lead_statuses/add-save','Añadir nueva información Contacto en Estado del contacto','',2,'2018-10-10 00:51:58',NULL),(15,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/lead_statuses/add-save','Añadir nueva información Contacto en Estado del contacto','',2,'2018-10-10 00:52:28',NULL),(16,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/add-save','Añadir nueva información Config Sistema en Gestión de Menús','',2,'2018-10-10 01:02:28',NULL),(17,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/6','Actualizar información Acciones Leads en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Acción</td><td>Acciones Leads</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',2,'2018-10-10 01:03:08',NULL),(18,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/lead_statuses/edit-save/3','Actualizar información Prospect en Estado del contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Contacto</td><td>Prospect</td></tr></tbody></table>',2,'2018-10-10 01:03:41',NULL),(19,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/proxima_accions/add-save','Añadir nueva información Primer llamado en Acción','',2,'2018-10-10 01:03:58',NULL),(20,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/proxima_accions/add-save','Añadir nueva información Volver a llamar en Acción','',2,'2018-10-10 01:04:04',NULL),(21,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/proxima_accions/add-save','Añadir nueva información Reenviar Mail en Acción','',2,'2018-10-10 01:04:40',NULL),(22,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/products/add-save','Añadir nueva información Sailing Classic Pesos en Productos','',2,'2018-10-10 01:07:04',NULL),(23,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/products/add-save','Añadir nueva información Sailing Classic Dolares en Productos','',2,'2018-10-10 01:07:14',NULL),(24,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/products/add-save','Añadir nueva información Sailing Bonu Pesos en Productos','',2,'2018-10-10 01:07:26',NULL),(25,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/products/add-save','Añadir nueva información Sailing Bonus Dolares en Productos','',2,'2018-10-10 01:07:36',NULL),(26,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/products/edit-save/3','Actualizar información Sailing Bonus Pesos en Productos','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Sailing Bonu Pesos</td><td>Sailing Bonus Pesos</td></tr></tbody></table>',2,'2018-10-10 01:07:46',NULL),(27,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','pabloragno@gmail.com se desconectó','',2,'2018-10-10 01:12:58',NULL),(28,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP ::1','',2,'2018-10-10 01:13:00',NULL),(29,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/7','Actualizar información Config Sistema en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',2,'2018-10-10 01:14:42',NULL),(30,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/2','Actualizar información Estado del contacto en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>',2,'2018-10-10 01:14:51',NULL),(31,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/6','Actualizar información Acciones Leads en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',2,'2018-10-10 01:14:58',NULL),(32,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/1','Actualizar información Canales en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',2,'2018-10-10 01:15:05',NULL),(33,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/5','Actualizar información Ticktes en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',2,'2018-10-10 01:15:13',NULL),(34,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/4','Actualizar información Productos en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',2,'2018-10-10 01:15:20',NULL),(35,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/menu_management/edit-save/3','Actualizar información Leads en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>',2,'2018-10-10 01:15:28',NULL),(36,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/users/add-save','Añadir nueva información Eduardo Canellada en Gestión de usuarios','',2,'2018-10-10 01:18:49',NULL),(37,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','pabloragno@gmail.com se desconectó','',2,'2018-10-10 01:18:59',NULL),(38,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP ::1','',3,'2018-10-10 01:19:16',NULL),(39,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-10 01:28:47',NULL),(40,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP ::1','',2,'2018-10-10 01:28:49',NULL),(41,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/leads/add-save','Añadir nueva información Jorge en Leads','',2,'2018-10-10 01:31:49',NULL),(42,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',2,'2018-10-10 01:44:55',NULL),(43,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',2,'2018-10-10 01:46:31',NULL),(44,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/leads/add-save','Añadir nueva información Pablo en Leads','',2,'2018-10-10 02:21:05',NULL),(45,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',2,'2018-10-10 02:22:19',NULL),(46,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/delete/3','Eliminar información 3 en Ticktes','',2,'2018-10-10 02:28:03',NULL),(47,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',2,'2018-10-10 02:29:16',NULL),(48,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/delete/4','Eliminar información 4 en Ticktes','',2,'2018-10-10 02:34:03',NULL),(49,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',2,'2018-10-10 02:43:07',NULL),(50,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/logout','pabloragno@gmail.com se desconectó','',2,'2018-10-10 02:44:34',NULL),(51,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','http://localhost/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP ::1','',2,'2018-10-10 02:47:32',NULL),(52,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP 200.127.235.253','',2,'2018-10-10 00:12:35',NULL),(53,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/8','Actualizar información Contacto en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',2,'2018-10-10 00:14:49',NULL),(54,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Eduardo Super Admin en Gestión de usuarios','',2,'2018-10-10 00:15:58',NULL),(55,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/3','Actualizar información Eduardo Canellada en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$otHGObCiKJft0bgBQIjjgO5CI0sXFGBINXZYwar/hZ2D6iyj879Am</td><td>$2y$10$QKK0JQ3sZD5N0oyvmgwXl.6y7Myd/C/r1NtMRFYgHcAVn2O51uqCC</td></tr><tr><td>id_cms_privileges</td><td>2</td><td>1</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',2,'2018-10-10 00:25:52',NULL),(56,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/delete/4','Eliminar información Eduardo Super Admin en Gestión de usuarios','',2,'2018-10-10 00:26:00',NULL),(57,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Martin Amar en Gestión de usuarios','',2,'2018-10-10 00:27:05',NULL),(58,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información María Laura Nazarian en Gestión de usuarios','',2,'2018-10-10 00:27:40',NULL),(59,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Jorge Adolfo Livingston en Gestión de usuarios','',2,'2018-10-10 00:28:16',NULL),(60,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Juan Pablo Bernial en Gestión de usuarios','',2,'2018-10-10 00:28:55',NULL),(61,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Laura Guimpel en Gestión de usuarios','',2,'2018-10-10 00:29:26',NULL),(62,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Tomas Cairns en Gestión de usuarios','',2,'2018-10-10 00:30:04',NULL),(63,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Juan Luis Bailleres en Gestión de usuarios','',2,'2018-10-10 00:30:36',NULL),(64,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','pabloragno@gmail.com se desconectó','',2,'2018-10-10 00:30:48',NULL),(65,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 200.127.235.253','',3,'2018-10-10 00:30:51',NULL),(66,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/3','Actualizar información Leads en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>',3,'2018-10-10 00:31:06',NULL),(67,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/8','Actualizar información Contacto en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',3,'2018-10-10 00:31:13',NULL),(68,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/7','Actualizar información Config Sistema en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>',3,'2018-10-10 00:31:20',NULL),(69,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/4','Actualizar información Productos en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',3,'2018-10-10 00:31:38',NULL),(70,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-10 00:32:06',NULL),(71,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 200.127.235.253','',5,'2018-10-10 00:32:24',NULL),(72,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-10 00:37:35',NULL),(73,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de tcairns@sailinginversiones.com desde la Dirección IP 200.127.235.253','',10,'2018-10-10 00:38:14',NULL),(74,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','tcairns@sailinginversiones.com se desconectó','',10,'2018-10-10 00:38:30',NULL),(75,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mlnazarian@sailinginversiones.com desde la Dirección IP 200.127.235.253','',6,'2018-10-10 00:38:54',NULL),(76,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mlnazarian@sailinginversiones.com se desconectó','',6,'2018-10-10 00:39:05',NULL),(77,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 200.127.235.253','',3,'2018-10-10 00:39:09',NULL),(78,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Marcelo Beretta en Gestión de usuarios','',3,'2018-10-10 00:45:36',NULL),(79,'179.38.104.67','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 179.38.104.67','',3,'2018-10-10 08:18:11',NULL),(80,'179.38.104.67','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/contacto/add-save','Añadir nueva información Prueba1 en Contacto','',3,'2018-10-10 08:20:35',NULL),(81,'179.38.104.67','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-10 08:23:27',NULL),(82,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-10 14:00:12',NULL),(83,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-10 14:02:27',NULL),(84,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/leads/add-save','Añadir nueva información Prueba en Leads','',3,'2018-10-10 16:31:42',NULL),(85,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-10 16:32:09',NULL),(86,'181.9.122.144','Mozilla/5.0 (Linux; Android 8.0.0; MHA-L29 Build/HUAWEIMHA-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/forgot','Alguien con la dirección IP 181.9.122.144 solicitó su contraseña por email a mfberetta@gmail.com','',NULL,'2018-10-10 18:26:09',NULL),(87,'181.9.122.144','Mozilla/5.0 (Linux; Android 8.0.0; MHA-L29 Build/HUAWEIMHA-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mfberetta@gmail.com desde la Dirección IP 181.9.122.144','',12,'2018-10-10 18:28:17',NULL),(88,'181.9.122.144','Mozilla/5.0 (Linux; Android 8.0.0; MHA-L29 Build/HUAWEIMHA-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/12','Actualizar información Marcelo Beretta en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$irgXDoMh7vgfzwVpyH92o.P7C69GGAseVZN1XwHoSvDNtS/gunEy2</td><td>$2y$10$1BxEZQoLRwQyxgDHs1lCi.7v4R1w.Ti8fi517ORFZKpT3jqHc0Oyu</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',12,'2018-10-10 18:35:03',NULL),(89,'181.9.122.144','Mozilla/5.0 (Linux; Android 8.0.0; MHA-L29 Build/HUAWEIMHA-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mfberetta@gmail.com se desconectó','',12,'2018-10-10 18:35:32',NULL),(90,'181.9.122.144','Mozilla/5.0 (Linux; Android 8.0.0; MHA-L29 Build/HUAWEIMHA-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mfberetta@gmail.com desde la Dirección IP 181.9.122.144','',12,'2018-10-10 18:35:42',NULL),(91,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-11 11:22:29',NULL),(92,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Google Adwords en Canales','',5,'2018-10-11 11:28:26',NULL),(93,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Facebook en Canales','',5,'2018-10-11 11:28:33',NULL),(94,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Referido en Canales','',5,'2018-10-11 11:28:39',NULL),(95,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Linkedin en Canales','',5,'2018-10-11 11:28:44',NULL),(96,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Newsletter en Canales','',5,'2018-10-11 11:28:49',NULL),(97,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Twitter en Canales','',5,'2018-10-11 11:28:56',NULL),(98,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Sitio Institucional en Canales','',5,'2018-10-11 11:29:02',NULL),(99,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Acciones en Productos','',5,'2018-10-11 11:30:39',NULL),(100,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Bonos en Productos','',5,'2018-10-11 11:30:51',NULL),(101,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Lebacs en Productos','',5,'2018-10-11 11:31:00',NULL),(102,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Fondos Comunes de Inversión en Productos','',5,'2018-10-11 11:31:07',NULL),(103,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Dólar Mep en Productos','',5,'2018-10-11 11:31:16',NULL),(104,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Carteras Advisor en Productos','',5,'2018-10-11 11:31:22',NULL),(105,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/3','Actualizar información Enviar Mail Informativo en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Reenviar Mail</td><td>Enviar Mail Informativo</td></tr></tbody></table>',5,'2018-10-11 11:32:40',NULL),(106,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Validar Tel de contacto vía Mail en Acción','',5,'2018-10-11 11:33:28',NULL),(107,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/leads/add-save','Añadir nueva información PASCHETTA MAXIMILIANO en Leads','',5,'2018-10-11 11:39:45',NULL),(108,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/leads/edit-save/5','Actualizar información PASCHETTA MAXIMILIANO en Leads','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>telefono</td><td>1156447206</td><td>56447206</td></tr><tr><td>tel_full</td><td>0111156447206</td><td></td></tr><tr><td>user_id</td><td>5</td><td></td></tr></tbody></table>',5,'2018-10-11 11:43:19',NULL),(109,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/edit-save/11','Actualizar información  en Ticktes','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>detalle</td><td>zsdfsdfsdf</td><td>GUARDAR</td></tr></tbody></table>',5,'2018-10-11 11:47:19',NULL),(110,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-11 11:50:04',NULL),(111,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-11 11:54:07',NULL),(112,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-11 11:56:18',NULL),(113,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mlnazarian@sailinginversiones.com desde la Dirección IP 190.189.228.58','',6,'2018-10-11 13:05:44',NULL),(114,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',6,'2018-10-11 13:08:52',NULL),(115,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mlnazarian@sailinginversiones.com se desconectó','',6,'2018-10-11 13:12:54',NULL),(116,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-11 13:13:19',NULL),(117,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-11 13:13:30',NULL),(118,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.189.228.58','',3,'2018-10-11 13:13:49',NULL),(119,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/6','Actualizar información María Laura Nazarian en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4OrVQq5yq2f2p43vlHK4wul./LPN8kDts236GxjdcF4SAWuJX8l9.</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>1</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',3,'2018-10-11 13:14:47',NULL),(120,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/5','Actualizar información Martin Amar en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$v.5m9TP.CkKi0DPfiY1wUO/PV7s3TRvFInCOmMAUOTAci1uetFBJq</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>1</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',3,'2018-10-11 13:15:13',NULL),(121,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/5','Actualizar información PASCHETTA MAXIMILIANO en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>0111156447206</td><td></td></tr><tr><td>status_id</td><td>2</td><td>1</td></tr><tr><td>user_id</td><td>5</td><td></td></tr></tbody></table>',3,'2018-10-11 13:18:39',NULL),(122,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-11 13:20:26',NULL),(123,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/5','Actualizar información PASCHETTA MAXIMILIANO en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>0111156447206</td><td></td></tr><tr><td>user_id</td><td>5</td><td></td></tr><tr><td>proxima_accion</td><td>1</td><td>2</td></tr></tbody></table>',3,'2018-10-11 13:22:12',NULL),(124,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-11 13:22:56',NULL),(125,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>status_id</td><td>2</td><td>1</td></tr></tbody></table>',3,'2018-10-11 13:32:52',NULL),(126,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-11 13:49:23',NULL),(127,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/edit-save/14','Actualizar información  en Ticktes','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>detalle</td><td>ckvckc,,</td><td>ckvckc,,gkjfdlkgjflkgjdflgkñjdfñglkjdflgñkjdgodigkor9igopdfkgf  fkglkfgkñgkdñlgkdñgkdf}}}fg\r\nkfljgfkjgfklgjklfjggjfjfkdlf\r\n\r\nkfgjfklgjdlkfgjdfkg\r\n\r\n\r\nkfgjdfklgjdlkgjdlkf</td></tr></tbody></table>',3,'2018-10-11 13:52:16',NULL),(128,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/edit-save/14','Actualizar información  en Ticktes','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>detalle</td><td>ckvckc,,gkjfdlkgjflkgjdflgkñjdfñglkjdflgñkjdgodigkor9igopdfkgf  fkglkfgkñgkdñlgkdñgkdf}}}fg\r\nkfljgfkjgfklgjklfjggjfjfkdlf\r\n\r\nkfgjfklgjdlkfgjdfkg\r\n\r\n\r\nkfgjdfklgjdlkgjdlkf</td><td>ckvckc,,g</td></tr></tbody></table>',3,'2018-10-11 13:57:16',NULL),(129,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-11 14:06:49',NULL),(130,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-11 14:38:49',NULL),(131,'190.189.228.58','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.189.228.58','',3,'2018-10-11 16:02:39',NULL),(132,'190.189.228.58','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-11 16:06:19',NULL),(133,'190.189.228.58','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-11 16:10:49',NULL),(134,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-11 17:44:22',NULL),(135,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/5','Actualizar información PASCHETTA MAXIMILIANO en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>0111156447206</td><td></td></tr><tr><td>user_id</td><td>5</td><td></td></tr></tbody></table>',5,'2018-10-11 17:45:49',NULL),(136,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-11 17:47:18',NULL),(137,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-11 17:59:29',NULL),(138,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mlnazarian@sailinginversiones.com desde la Dirección IP 190.189.228.58','',6,'2018-10-12 11:24:40',NULL),(139,'186.12.20.117','Mozilla/5.0 (Linux; Android 6.0; LG-H810 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.12.20.117','',3,'2018-10-12 14:17:43',NULL),(140,'186.12.20.117','Mozilla/5.0 (Linux; Android 6.0; LG-H810 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.12.20.117','',3,'2018-10-12 14:18:04',NULL),(141,'186.12.20.117','Mozilla/5.0 (Linux; Android 6.0; LG-H810 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/6','Actualizar información María Laura Nazarian en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4OrVQq5yq2f2p43vlHK4wul./LPN8kDts236GxjdcF4SAWuJX8l9.</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',3,'2018-10-12 14:20:24',NULL),(142,'186.12.20.117','Mozilla/5.0 (Linux; Android 6.0; LG-H810 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/5','Actualizar información Martin Amar en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$v.5m9TP.CkKi0DPfiY1wUO/PV7s3TRvFInCOmMAUOTAci1uetFBJq</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',3,'2018-10-12 14:20:38',NULL),(143,'186.141.136.119','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.141.136.119','',3,'2018-10-12 15:17:27',NULL),(144,'186.141.136.119','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>status_id</td><td>2</td><td>1</td></tr></tbody></table>',3,'2018-10-12 15:18:20',NULL),(145,'201.216.252.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 201.216.252.77','',3,'2018-10-12 16:09:17',NULL),(146,'201.216.252.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/statistic_builder/add-save','Añadir nueva información Leads en Generador de Estadísticas','',3,'2018-10-12 16:18:03',NULL),(147,'201.216.252.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/add-save','Añadir nueva información leads en Gestión de Menús','',3,'2018-10-12 16:22:55',NULL),(148,'201.216.252.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/9','Actualizar información leads en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>',3,'2018-10-12 16:23:17',NULL),(149,'201.216.252.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/delete/9','Eliminar información leads en Gestión de Menús','',3,'2018-10-12 16:23:42',NULL),(150,'201.216.252.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/statistic_builder/edit-save/1','Actualizar información Leads en Generador de Estadísticas','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>leads</td><td></td></tr></tbody></table>',3,'2018-10-12 16:23:57',NULL),(151,'186.153.42.148','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mfberetta@gmail.com desde la Dirección IP 186.153.42.148','',12,'2018-10-12 22:59:30',NULL),(152,'186.153.42.148','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mfberetta@gmail.com se desconectó','',12,'2018-10-12 22:59:49',NULL),(153,'186.153.42.148','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mfberetta@gmail.com desde la Dirección IP 186.153.42.148','',12,'2018-10-12 22:59:58',NULL),(154,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-15 11:47:16',NULL),(155,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-15 11:47:56',NULL),(156,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-15 13:23:13',NULL),(157,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-15 13:24:40',NULL),(158,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-15 13:59:35',NULL),(159,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.111.255.98','',5,'2018-10-15 14:08:20',NULL),(160,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-15 14:09:18',NULL),(161,'179.38.98.67','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 179.38.98.67','',3,'2018-10-15 22:21:24',NULL),(162,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-16 11:25:52',NULL),(163,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Noelia Toscano en Gestión de usuarios','',3,'2018-10-16 12:29:44',NULL),(164,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Benjamin Hechem en Gestión de usuarios','',3,'2018-10-16 12:32:15',NULL),(165,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/add-save','Añadir nueva información Ramiro Tessey en Gestión de usuarios','',3,'2018-10-16 12:32:49',NULL),(166,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/delete-image','Eliminar la imagen de Ramiro Tessey en Gestión de usuarios','',3,'2018-10-16 12:33:03',NULL),(167,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/15','Actualizar información Ramiro Tessey en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/3/2018-10/ramiro.jpg</td></tr><tr><td>password</td><td>$2y$10$zpkmNJkD23fpFUJpPZWsReWu2Y0fsR6.YaFwxIBwLWtMZxuWTDmZO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',3,'2018-10-16 12:33:15',NULL),(168,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-16 12:33:26',NULL),(169,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de rtessey@demosconsulting.com.ar desde la Dirección IP 190.111.255.98','',15,'2018-10-16 12:33:45',NULL),(170,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','rtessey@demosconsulting.com.ar se desconectó','',15,'2018-10-16 12:34:13',NULL),(171,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de rtessey@demosconsulting.com.ar desde la Dirección IP 190.111.255.98','',15,'2018-10-16 12:34:45',NULL),(172,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets','Intentar ver :name en Ticktes','',15,'2018-10-16 12:38:01',NULL),(173,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','rtessey@demosconsulting.com.ar se desconectó','',15,'2018-10-16 12:38:17',NULL),(174,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-16 12:38:55',NULL),(175,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>status_id</td><td>2</td><td>1</td></tr></tbody></table>',3,'2018-10-16 12:39:13',NULL),(176,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-16 12:39:25',NULL),(177,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de rtessey@demosconsulting.com.ar desde la Dirección IP 190.111.255.98','',15,'2018-10-16 12:39:47',NULL),(178,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets','Intentar ver :name en Ticktes','',15,'2018-10-16 12:42:25',NULL),(179,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets','Intentar ver :name en Ticktes','',15,'2018-10-16 12:42:40',NULL),(180,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets','Intentar ver :name en Ticktes','',15,'2018-10-16 12:43:14',NULL),(181,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','rtessey@demosconsulting.com.ar se desconectó','',15,'2018-10-16 12:43:45',NULL),(182,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-16 12:44:02',NULL),(183,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-16 12:46:28',NULL),(184,'186.143.134.73','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.143.134.73','',3,'2018-10-16 18:36:26',NULL),(185,'190.2.11.205','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mfberetta@gmail.com desde la Dirección IP 190.2.11.205','',12,'2018-10-16 19:54:27',NULL),(186,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 200.127.235.253','',3,'2018-10-16 21:35:30',NULL),(187,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP 200.127.235.253','',2,'2018-10-16 21:56:57',NULL),(188,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/statistic_builder/add-save','Añadir nueva información Leads en Generador de Estadísticas','',2,'2018-10-16 22:35:56',NULL),(189,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/statistic_builder/delete/1','Eliminar información Leads en Generador de Estadísticas','',2,'2018-10-16 22:36:08',NULL),(190,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/menu_management/add-save','Añadir nueva información Estadisticas en Gestión de Menús','',2,'2018-10-16 22:42:24',NULL),(191,'179.38.98.67','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 179.38.98.67','',3,'2018-10-16 23:00:20',NULL),(192,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/11','Actualizar información Relación Acción Estado en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminAccionEstadoControllerGetIndex</td><td>accion_estado</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-bar-chart-o</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',2,'2018-10-16 23:05:07',NULL),(193,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',2,'2018-10-16 23:05:38',NULL),(194,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/lead_statuses/add-save','Añadir nueva información FInalizado en Estado del contacto','',2,'2018-10-16 23:09:45',NULL),(195,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/lead_statuses/add-save','Añadir nueva información Historico en Estado del contacto','',2,'2018-10-16 23:09:52',NULL),(196,'200.127.235.253','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/12','Actualizar información Prospect en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>',2,'2018-10-16 23:18:39',NULL),(197,'190.16.187.230','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.16.187.230','',3,'2018-10-17 09:20:04',NULL),(198,'186.141.199.206','Mozilla/5.0 (iPhone; CPU iPhone OS 12_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.141.199.206','',3,'2018-10-17 09:21:46',NULL),(199,'190.16.187.230','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-17 10:26:20',NULL),(200,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-17 12:05:59',NULL),(201,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-17 12:11:26',NULL),(202,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de rtessey@demosconsulting.com.ar desde la Dirección IP 190.111.255.98','',15,'2018-10-17 12:33:37',NULL),(203,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/prospect','Intentar ver :name en Prospectos','',15,'2018-10-17 12:33:47',NULL),(204,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/prospect','Intentar ver :name en Prospectos','',15,'2018-10-17 12:34:04',NULL),(205,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/prospect','Intentar ver :name en Prospectos','',15,'2018-10-17 12:34:42',NULL),(206,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets','Intentar ver :name en Ticktes','',15,'2018-10-17 12:37:20',NULL),(207,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets','Intentar ver :name en Ticktes','',15,'2018-10-17 12:37:28',NULL),(208,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','rtessey@demosconsulting.com.ar se desconectó','',15,'2018-10-17 12:37:37',NULL),(209,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-17 12:37:58',NULL),(210,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/2','Actualizar información Volver a llamar Teléfono Ocupado en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Volver a llamar</td><td>Volver a llamar Teléfono Ocupado</td></tr></tbody></table>',3,'2018-10-17 12:52:47',NULL),(211,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Volver a llamar no Atiende en Acción','',3,'2018-10-17 12:53:22',NULL),(212,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Volver a llamar en otro momento AGENDAR en Acción','',3,'2018-10-17 12:54:01',NULL),(213,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/5','Actualizar información Volver a llamar no atiende el teléfono en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Volver a llamar no Atiende</td><td>Volver a llamar no atiende el teléfono</td></tr></tbody></table>',3,'2018-10-17 12:55:27',NULL),(214,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Finalizado Sin Interés en Acción','',3,'2018-10-17 12:56:18',NULL),(215,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/1','Actualizar información Llamada Saliente en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Primer llamado</td><td>Llamada Saliente</td></tr></tbody></table>',3,'2018-10-17 12:56:37',NULL),(216,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Llamada entrante 0810 en Acción','',3,'2018-10-17 12:56:55',NULL),(217,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/8','Actualizar información Llamada entrante 0810 se brinda información volver a llamar  AGENDAR en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Llamada entrante 0810</td><td>Llamada entrante 0810 se brinda información volver a llamar  AGENDAR</td></tr></tbody></table>',3,'2018-10-17 12:58:04',NULL),(218,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información ENVIO DE MAIL LINK  FORMULARIO en Acción','',3,'2018-10-17 12:59:15',NULL),(219,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/9','Actualizar información Envio de Mail Registración Formulario en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>ENVIO DE MAIL LINK  FORMULARIO</td><td>Envio de Mail Registración Formulario</td></tr></tbody></table>',3,'2018-10-17 13:04:23',NULL),(220,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/1','Actualizar información Llamada Saliente se Brinda Información volver a llamar Agendar en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Llamada Saliente</td><td>Llamada Saliente se Brinda Información volver a llamar Agendar</td></tr></tbody></table>',3,'2018-10-17 13:05:17',NULL),(221,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/1','Actualizar información Llamada Saliente se Brinda Información volver a llamar AGENDAR en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Llamada Saliente se Brinda Información volver a llamar Agendar</td><td>Llamada Saliente se Brinda Información volver a llamar AGENDAR</td></tr></tbody></table>',3,'2018-10-17 13:05:32',NULL),(222,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/9','Actualizar información Envió de Mail Registración Formulario en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Envio de Mail Registración Formulario</td><td>Envió de Mail Registración Formulario</td></tr></tbody></table>',3,'2018-10-17 13:09:59',NULL),(223,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-17 13:30:39',NULL),(224,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Contactar en Acción','',5,'2018-10-17 13:36:30',NULL),(225,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 13:40:39',NULL),(226,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/prospect','Intentar ver :name en Prospectos','',5,'2018-10-17 13:42:36',NULL),(227,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 13:46:20',NULL),(228,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 13:46:57',NULL),(229,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 13:47:59',NULL),(230,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 14:02:54',NULL),(231,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 14:05:30',NULL),(232,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/edit-save/26','Actualizar información  en Ticktes','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>5</td><td></td></tr><tr><td>proxima_accion</td><td>3</td><td>9</td></tr></tbody></table>',5,'2018-10-17 14:06:02',NULL),(233,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-17 14:06:46',NULL),(234,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>proxima_accion</td><td>9</td><td>7</td></tr><tr><td>detalle</td><td></td><td></td></tr></tbody></table>',5,'2018-10-17 14:08:23',NULL),(235,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>proxima_accion</td><td>7</td><td>10</td></tr><tr><td>detalle</td><td></td><td></td></tr></tbody></table>',5,'2018-10-17 14:08:48',NULL),(236,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/edit-save/27','Actualizar información  en Ticktes','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>user_id</td><td>5</td><td></td></tr><tr><td>proxima_accion</td><td>9</td><td>2</td></tr></tbody></table>',5,'2018-10-17 14:09:29',NULL),(237,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>proxima_accion</td><td>10</td><td>6</td></tr><tr><td>detalle</td><td></td><td></td></tr></tbody></table>',5,'2018-10-17 14:12:58',NULL),(238,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-17 15:08:57',NULL),(239,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-17 15:08:59',NULL),(240,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.189.228.58','',3,'2018-10-17 15:21:10',NULL),(241,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/13','Actualizar información Historicos en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',3,'2018-10-17 15:21:51',NULL),(242,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/historicos','Intentar ver :name en Historicos','',5,'2018-10-17 15:22:07',NULL),(243,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/historicos','Intentar ver :name en Historicos','',5,'2018-10-17 15:25:22',NULL),(244,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/historicos','Intentar ver :name en Historicos','',5,'2018-10-17 15:25:30',NULL),(245,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/historicos','Intentar ver :name en Historicos','',5,'2018-10-17 15:33:32',NULL),(246,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado','Intentar ver :name en Relación Acción Estado','',5,'2018-10-17 15:35:33',NULL),(247,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-17 15:35:44',NULL),(248,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-17 15:36:01',NULL),(249,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/6','Actualizar información Acciones en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Acciones Leads</td><td>Acciones</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>',3,'2018-10-17 15:38:02',NULL),(250,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/add-save','Añadir nueva información Martin en Contacto','',5,'2018-10-17 16:05:26',NULL),(251,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/edit-save/4','Actualizar información Prueba en Contacto','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>tel_full</td><td>011111111111</td><td></td></tr><tr><td>proxima_accion</td><td>6</td><td>10</td></tr><tr><td>detalle</td><td></td><td>verlo</td></tr></tbody></table>',5,'2018-10-17 16:30:13',NULL),(252,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/lead_statuses/delete/4','Eliminar información FInalizado en Estado del contacto','',5,'2018-10-17 16:54:33',NULL),(253,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/delete/1','Eliminar información 1 en Relación Acción Estado','',5,'2018-10-17 16:54:47',NULL),(254,'170.51.96.214','Mozilla/5.0 (Linux; Android 6.0; LG-H810 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Mobile Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 170.51.96.214','',3,'2018-10-17 17:28:01',NULL),(255,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','mjamar@sailinginversiones.com se desconectó','',5,'2018-10-17 18:06:27',NULL),(256,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de mjamar@sailinginversiones.com desde la Dirección IP 190.189.228.58','',5,'2018-10-18 10:23:16',NULL),(257,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-18 10:34:16',NULL),(258,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-18 10:37:18',NULL),(259,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/contacto/add-save','Añadir nueva información juan pablo en Contacto','',5,'2018-10-18 10:39:25',NULL),(260,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-18 10:40:15',NULL),(261,'190.111.255.98','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 190.111.255.98','',3,'2018-10-18 11:17:25',NULL),(262,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.18.199.181','',3,'2018-10-18 11:27:25',NULL),(263,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-18 11:36:08',NULL),(264,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',3,'2018-10-18 11:37:25',NULL),(265,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/tickets/add-save','Añadir nueva información  en Ticktes','',5,'2018-10-18 13:36:33',NULL),(266,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Email Marketing en Canales','',5,'2018-10-18 14:11:49',NULL),(267,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/canals/add-save','Añadir nueva información Referido NQN en Canales','',5,'2018-10-18 14:12:05',NULL),(268,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Opciones en Productos','',5,'2018-10-18 14:14:31',NULL),(269,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Cauciones en Productos','',5,'2018-10-18 14:14:40',NULL),(270,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/products/add-save','Añadir nueva información Cedears en Productos','',5,'2018-10-18 14:14:46',NULL),(271,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/10','Actualizar información Contactar Facilitador en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Contactar</td><td>Contactar Facilitador</td></tr></tbody></table>',5,'2018-10-18 15:35:29',NULL),(272,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/delete/8','Eliminar información Llamada entrante 0810 se brinda información volver a llamar  AGENDAR en Acción','',5,'2018-10-18 15:35:51',NULL),(273,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/7','Actualizar información Finalizado en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Finalizado Sin Interés</td><td>Finalizado</td></tr></tbody></table>',5,'2018-10-18 15:36:07',NULL),(274,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/delete/6','Eliminar información Volver a llamar en otro momento AGENDAR en Acción','',5,'2018-10-18 15:36:19',NULL),(275,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/delete/5','Eliminar información Volver a llamar no atiende el teléfono en Acción','',5,'2018-10-18 15:36:24',NULL),(276,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/3','Actualizar información Contactar Asesor en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Enviar Mail Informativo</td><td>Contactar Asesor</td></tr></tbody></table>',5,'2018-10-18 15:37:04',NULL),(277,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/delete/2','Eliminar información Volver a llamar Teléfono Ocupado en Acción','',5,'2018-10-18 15:37:12',NULL),(278,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/edit-save/1','Actualizar información Envió mail con requisitos de apertura de Cuenta en Acción','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Llamada Saliente se Brinda Información volver a llamar AGENDAR</td><td>Envió mail con requisitos de apertura de Cuenta</td></tr></tbody></table>',5,'2018-10-18 15:37:45',NULL),(279,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/delete/9','Eliminar información Envió de Mail Registración Formulario en Acción','',5,'2018-10-18 15:38:07',NULL),(280,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/proxima_accions/add-save','Añadir nueva información Envió mail con Link para Formulario en Acción','',5,'2018-10-18 15:38:57',NULL),(281,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',5,'2018-10-18 15:39:30',NULL),(282,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',5,'2018-10-18 15:39:46',NULL),(283,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',5,'2018-10-18 15:40:09',NULL),(284,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',5,'2018-10-18 15:40:17',NULL),(285,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',5,'2018-10-18 15:40:27',NULL),(286,'190.189.228.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/accion_estado/add-save','Añadir nueva información  en Relación Acción Estado','',5,'2018-10-18 15:40:39',NULL),(287,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de eduardocanellada@gmail.com desde la Dirección IP 186.18.199.181','',3,'2018-10-18 21:52:21',NULL),(288,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/users/edit-save/2','Actualizar información Pablo Ragno en Gestión de usuarios','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$pO29Zux/JrppajbLhExvKOb6NGI37a.aqw3IuaaxOyT6x5F.h1bwm</td><td>$2y$10$jCNu.9cwU7Oj.9pcx/PRr.g/3tW1kn1kjlfREPxcQYJGHPbmdVBU.</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>',3,'2018-10-18 21:52:55',NULL),(289,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/menu_management/edit-save/11','Actualizar información Acción actualiza a Estado en Gestión de Menús','<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Relación Acción Estado</td><td>Acción actualiza a Estado</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>',3,'2018-10-18 21:54:48',NULL),(290,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/logout','eduardocanellada@gmail.com se desconectó','',3,'2018-10-18 22:12:59',NULL),(291,'186.18.199.181','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36','https://demos-crm.ddns.net/site/public/admin/login','Ingreso de pabloragno@gmail.com desde la Dirección IP 186.18.199.181','',2,'2018-10-18 22:13:01',NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (1,'Canales','Route','AdminCanalsControllerGetIndex','normal','fa fa-play-circle-o',7,1,0,1,3,'2018-10-09 23:49:10','2018-10-10 01:15:05'),(2,'Estado del contacto','Route','AdminLeadStatuses1ControllerGetIndex','normal','fa fa-tag',7,1,0,1,1,'2018-10-09 23:50:42','2018-10-10 01:14:51'),(3,'Leads','Route','AdminLeads1ControllerGetIndex','normal','fa fa-user',0,1,0,1,2,'2018-10-09 23:52:54','2018-10-10 00:31:06'),(4,'Productos','Route','AdminProductsControllerGetIndex','normal','fa fa-product-hunt',7,1,0,1,4,'2018-10-10 00:35:52','2018-10-10 00:31:38'),(5,'Ticktes','Route','AdminTicketsControllerGetIndex','normal','fa fa-ticket',0,0,0,1,1,'2018-10-10 00:43:44','2018-10-10 01:15:13'),(6,'Acciones','Route','AdminProximaAccionsControllerGetIndex','normal','fa fa-tasks',7,1,0,1,2,'2018-10-10 00:58:49','2018-10-17 15:38:02'),(7,'Config Sistema','URL','#','aqua','fa fa-gears',0,1,0,1,6,'2018-10-10 01:02:28','2018-10-10 00:31:20'),(8,'Contacto','Route','AdminContactoControllerGetIndex','normal','fa fa-heart',0,1,0,1,3,'2018-10-10 02:11:29','2018-10-10 00:31:13'),(10,'Estadisticas','Statistic','statistic_builder/show/leads','normal','fa fa-bar-chart-o',0,1,1,1,1,'2018-10-16 22:42:24',NULL),(11,'Acción actualiza a Estado','Module','accion_estado','normal','fa fa-bar-chart-o',7,1,0,1,5,'2018-10-16 23:01:58','2018-10-18 21:54:48'),(12,'Prospect','Route','AdminLeads20ControllerGetIndex','normal','fa fa-star',0,1,0,1,4,'2018-10-16 23:11:04','2018-10-16 23:18:39'),(13,'Historicos','Route','AdminHistoricosControllerGetIndex','normal','fa fa-close',0,1,0,1,5,'2018-10-16 23:20:23','2018-10-17 15:21:51');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus_privileges`
--

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` VALUES (11,2,2),(12,2,1),(15,1,2),(16,1,1),(17,5,2),(18,5,1),(26,3,2),(27,3,3),(28,3,1),(29,8,2),(30,8,3),(31,8,1),(32,7,2),(33,7,3),(34,7,1),(35,4,2),(36,4,3),(37,4,1),(41,9,2),(42,9,3),(43,9,1),(44,10,3),(45,10,1),(50,12,2),(51,12,3),(52,12,1),(54,13,2),(55,13,3),(56,13,1),(57,6,2),(58,6,1),(59,11,2),(60,11,1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,'Notificaciones','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2018-10-09 23:34:21',NULL,NULL),(2,'Privilegios','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2018-10-09 23:34:21',NULL,NULL),(3,'Privilegios & Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2018-10-09 23:34:21',NULL,NULL),(4,'Gestión de usuarios','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2018-10-09 23:34:21',NULL,NULL),(5,'Ajustes','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2018-10-09 23:34:21',NULL,NULL),(6,'Generador de Módulos','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2018-10-09 23:34:21',NULL,NULL),(7,'Gestión de Menús','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2018-10-09 23:34:21',NULL,NULL),(8,'Plantillas de Correo','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2018-10-09 23:34:21',NULL,NULL),(9,'Generador de Estadísticas','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2018-10-09 23:34:21',NULL,NULL),(10,'Generador de API','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2018-10-09 23:34:21',NULL,NULL),(11,'Log de Accesos (Usuarios)','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2018-10-09 23:34:21',NULL,NULL),(12,'Canales','fa fa-play-circle-o','canals','canals','AdminCanalsController',0,0,'2018-10-09 23:49:09',NULL,NULL),(13,'Estado del contacto','fa fa-tag','lead_statuses','lead_statuses','AdminLeadStatuses1Controller',0,0,'2018-10-09 23:50:41',NULL,NULL),(14,'Leads','fa fa-user','leads','leads','AdminLeads1Controller',0,0,'2018-10-09 23:52:54',NULL,NULL),(15,'Productos','fa fa-product-hunt','products','products','AdminProductsController',0,0,'2018-10-10 00:35:52',NULL,NULL),(16,'Ticktes','fa fa-ticket','tickets','tickets','AdminTicketsController',0,0,'2018-10-10 00:43:44',NULL,NULL),(17,'Acción','fa fa-tasks','proxima_accions','proxima_accions','AdminProximaAccionsController',0,0,'2018-10-10 00:58:48',NULL,NULL),(18,'Contacto','fa fa-heart','contacto','leads','AdminContactoController',0,0,'2018-10-10 02:11:29',NULL,NULL),(19,'Relación Acción Estado','fa fa-glass','accion_estado','accion_estado','AdminAccionEstadoController',0,0,'2018-10-16 23:01:58',NULL,NULL),(20,'Prospectos','fa fa-star','prospect','leads','AdminLeads20Controller',0,0,'2018-10-16 23:11:04',NULL,NULL),(21,'Historicos','fa fa-close','historicos','leads','AdminHistoricosController',0,0,'2018-10-16 23:20:23',NULL,NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_notifications`
--

DROP TABLE IF EXISTS `cms_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_notifications`
--

LOCK TABLES `cms_notifications` WRITE;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'skin-red','2018-10-09 23:34:21',NULL),(2,'Administrador',0,'skin-blue-light',NULL,NULL),(3,'Facilitador',0,'skin-purple-light',NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (1,1,0,0,0,0,1,1,'2018-10-09 23:34:21',NULL),(2,1,1,1,1,1,1,2,'2018-10-09 23:34:21',NULL),(3,0,1,1,1,1,1,3,'2018-10-09 23:34:21',NULL),(4,1,1,1,1,1,1,4,'2018-10-09 23:34:21',NULL),(5,1,1,1,1,1,1,5,'2018-10-09 23:34:21',NULL),(6,1,1,1,1,1,1,6,'2018-10-09 23:34:21',NULL),(7,1,1,1,1,1,1,7,'2018-10-09 23:34:21',NULL),(8,1,1,1,1,1,1,8,'2018-10-09 23:34:21',NULL),(9,1,1,1,1,1,1,9,'2018-10-09 23:34:21',NULL),(10,1,1,1,1,1,1,10,'2018-10-09 23:34:21',NULL),(11,1,0,1,0,1,1,11,'2018-10-09 23:34:21',NULL),(12,1,1,1,1,1,1,12,NULL,NULL),(13,1,1,1,1,1,1,13,NULL,NULL),(14,1,1,1,1,1,1,14,NULL,NULL),(15,1,1,1,1,1,1,15,NULL,NULL),(16,1,1,1,1,1,1,16,NULL,NULL),(17,1,1,1,1,1,1,17,NULL,NULL),(25,1,1,1,1,1,1,18,NULL,NULL),(37,1,1,1,1,1,1,19,NULL,NULL),(38,1,1,1,1,1,1,20,NULL,NULL),(39,1,1,1,1,1,1,21,NULL,NULL),(40,1,1,1,1,1,3,18,NULL,NULL),(41,1,1,1,1,1,3,14,NULL,NULL),(42,1,1,1,1,1,3,15,NULL,NULL),(43,1,1,1,0,0,3,16,NULL,NULL),(44,1,1,1,1,1,2,17,NULL,NULL),(45,1,1,1,1,1,2,12,NULL,NULL),(46,1,1,1,1,1,2,18,NULL,NULL),(47,1,1,1,1,1,2,13,NULL,NULL),(48,1,1,1,1,1,2,4,NULL,NULL),(49,1,1,1,1,1,2,21,NULL,NULL),(50,1,1,1,1,1,2,14,NULL,NULL),(51,1,1,1,1,1,2,15,NULL,NULL),(52,1,1,1,1,1,2,20,NULL,NULL),(53,1,1,1,1,1,2,19,NULL,NULL),(54,1,1,1,1,1,2,16,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2018-10-09 23:34:21',NULL,'Estilo de página de registro','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2018-10-09 23:34:21',NULL,'Estilo de página de registro','Login Font Color'),(3,'login_background_image','uploads/2018-10/56ab22c5a698d6f9ab6819ca61e6dc13.png','upload_image',NULL,NULL,'2018-10-09 23:34:21',NULL,'Estilo de página de registro','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Correo','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Correo','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Correo','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2018-10-09 23:34:21',NULL,'Ajustes de Correo','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Correo','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Correo','SMTP Password'),(10,'appname','CRM Sailing','text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','Application Name'),(11,'default_paper_size','A4','text',NULL,'Paper size, ex : A4, Legal, etc','2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','Default Paper Print Size'),(12,'logo','uploads/2018-10/c33d521e487880d1cbd9aa956b4ec960.png','upload_image',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','Logo'),(13,'favicon','uploads/2018-10/cb0085e26cc24c60503532f46dc8c36b.png','upload_image',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','API Debug Mode'),(15,'google_api_key',NULL,'text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','Google API Key'),(16,'google_fcm_key',NULL,'text',NULL,NULL,'2018-10-09 23:34:21',NULL,'Ajustes de Aplicaciones','Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
INSERT INTO `cms_statistic_components` VALUES (1,1,'6964145ae90855cc9bd086fb42995d78','smallbox','area1',0,NULL,'{\"name\":\"leads\",\"icon\":\"users\",\"color\":\"bg-green\",\"link\":\"leads\",\"sql\":\"select * from leads where status_id = 1\"}','2018-10-12 16:20:11',NULL),(2,2,'7c0aa7245ae2499f65eb92ab0a3babbe','smallbox','area1',0,NULL,'{\"name\":\"LEADS\",\"icon\":\"ion-user\",\"color\":\"bg-red\",\"link\":\"admin\\/leads\",\"sql\":\"select count(*) as LEADS from leads where status_id = 1\"}','2018-10-16 22:36:23',NULL),(3,2,'77ca6b901d6161bf518caf160e098613','smallbox','area2',0,NULL,'{\"name\":\"CONTACTOS\",\"icon\":\"ion-contact\",\"color\":\"bg-yellow\",\"link\":\"admin\\/contacto\",\"sql\":\"select count(*) as LEADS from leads where status_id = 2\"}','2018-10-16 22:36:26',NULL),(4,2,'9a4351d8157e834f5737b1230a711845','smallbox','area3',0,NULL,'{\"name\":\"PROSPECTS\",\"icon\":\"ion-pros\",\"color\":\"bg-green\",\"link\":\"admin\\/prospect\",\"sql\":\"select count(*) as LEADS from leads where status_id = 3\"}','2018-10-16 22:36:27',NULL),(5,2,'b619ceb86bf82c42d4cc273f5edb213c','smallbox','area4',0,NULL,'{\"name\":\"HISTORICO\",\"icon\":\"ion-historico\",\"color\":\"bg-aqua\",\"link\":\"admin\\/historicos\",\"sql\":\"select count(*) as LEADS from leads where status_id = 5\"}','2018-10-16 22:36:29',NULL);
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
INSERT INTO `cms_statistics` VALUES (2,'Leads','leads','2018-10-16 22:35:56',NULL);
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'Super Admin',NULL,'admin@crudbooster.com','$2y$10$ro47KoBNIxDTN17OQUqX..g11yQUFvRIxBl1Fmvfyv4Tr/kkdazta',1,'2018-10-09 23:34:21',NULL,'Active'),(2,'Pablo Ragno','uploads/1/2018-10/foto4x4.jpg','pabloragno@gmail.com','$2y$10$jCNu.9cwU7Oj.9pcx/PRr.g/3tW1kn1kjlfREPxcQYJGHPbmdVBU.',1,'2018-10-09 23:39:14','2018-10-18 21:52:55',NULL),(3,'Eduardo Canellada','uploads/2/2018-10/avatar.png','eduardocanellada@gmail.com','$2y$10$QKK0JQ3sZD5N0oyvmgwXl.6y7Myd/C/r1NtMRFYgHcAVn2O51uqCC',1,'2018-10-10 01:18:49','2018-10-10 00:25:52',NULL),(5,'Martin Amar','uploads/2/2018-10/avatar.png','mjamar@sailinginversiones.com','$2y$10$v.5m9TP.CkKi0DPfiY1wUO/PV7s3TRvFInCOmMAUOTAci1uetFBJq',2,'2018-10-10 00:27:05','2018-10-12 14:20:38',NULL),(6,'María Laura Nazarian','uploads/2/2018-10/avatar.png','mlnazarian@sailinginversiones.com','$2y$10$4OrVQq5yq2f2p43vlHK4wul./LPN8kDts236GxjdcF4SAWuJX8l9.',2,'2018-10-10 00:27:40','2018-10-12 14:20:24',NULL),(7,'Jorge Adolfo Livingston','uploads/2/2018-10/avatar.png','jlivingston@sailinginversiones.com','$2y$10$n0Sa2uTUP8M2Z8cOJ0/KqegCxbsmkXQH7YfXQWufcDTo2QdMtlUAy',3,'2018-10-10 00:28:16',NULL,NULL),(8,'Juan Pablo Bernial','uploads/2/2018-10/avatar.png','jpbernial@sailinginversiones.com','$2y$10$lZUK9gApxtDbP3gdhIP0ZO/tqrUfNE9GhlAJvdy3jeqi8IIsL8XpW',3,'2018-10-10 00:28:55',NULL,NULL),(9,'Laura Guimpel','uploads/2/2018-10/avatar.png','guimpel@sailinginversiones.com','$2y$10$DjCW81yl.iGdVCcuQS8X8uryxnhCItL58zZXaNn57Z8zoXvt5tf2C',3,'2018-10-10 00:29:26',NULL,NULL),(10,'Tomas Cairns','uploads/2/2018-10/avatar.png','tcairns@sailinginversiones.com','$2y$10$sUWsEt0LRGmatC4OWm4ANemtZAQUBJbE5j7GnOGH3RkP.zG1S8qs6',3,'2018-10-10 00:30:04',NULL,NULL),(11,'Juan Luis Bailleres','uploads/2/2018-10/avatar.png','lbailleres@sailinginversiones.com','$2y$10$FEUyS46zGAjJJIcGuMtGheGSIjnVB9R54HZYsOeEODkRoPQIBYasK',3,'2018-10-10 00:30:36',NULL,NULL),(12,'Marcelo Beretta','uploads/3/2018-10/avatar.png','mfberetta@gmail.com','$2y$10$1BxEZQoLRwQyxgDHs1lCi.7v4R1w.Ti8fi517ORFZKpT3jqHc0Oyu',1,'2018-10-10 00:45:36','2018-10-10 18:35:03',NULL),(13,'Noelia Toscano','uploads/3/2018-10/noelia.jpg','ntoscano@demosconsulting.com.ar','$2y$10$aXrvF62yujXbLyzIhoLqgOxj7tOZv0y39hJMqvSnJRiIG1LXAL2xC',3,'2018-10-16 12:29:44',NULL,NULL),(14,'Benjamin Hechem','uploads/3/2018-10/benja.jpg','bhechem@demosconsulting.com.ar','$2y$10$arfjOhqH0jY9XpxyYfd9gelOauktoTRXnnbFvOyKUd.7K4bh8qv26',3,'2018-10-16 12:32:15',NULL,NULL),(15,'Ramiro Tessey','uploads/3/2018-10/ramiro.jpg','rtessey@demosconsulting.com.ar','$2y$10$zpkmNJkD23fpFUJpPZWsReWu2Y0fsR6.YaFwxIBwLWtMZxuWTDmZO',3,'2018-10-16 12:32:49','2018-10-16 12:33:15',NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_statuses`
--

DROP TABLE IF EXISTS `lead_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_statuses`
--

LOCK TABLES `lead_statuses` WRITE;
/*!40000 ALTER TABLE `lead_statuses` DISABLE KEYS */;
INSERT INTO `lead_statuses` VALUES (1,'Lead','2018-10-10 00:51:52',NULL),(2,'Contacto','2018-10-10 00:51:58',NULL),(3,'Prospect','2018-10-10 00:52:28','2018-10-10 01:03:41'),(5,'Historico','2018-10-16 23:09:52',NULL);
/*!40000 ALTER TABLE `lead_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefijo` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_full` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proxima_accion` int(11) NOT NULL,
  `detalle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leads_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (1,'Jorge','jorge@gmail.com','5411','55091685','541155091685',2,4,2,2,'2018-10-10 01:31:49',NULL,1,''),(2,'Pablo','pabloragno@fmai.com','','','',1,4,5,2,'2018-10-10 02:21:05',NULL,2,'otro detalle'),(3,'Prueba1','prueba1@gmail.com','11','444444','11444444',2,4,3,3,'2018-10-10 08:20:35',NULL,3,'DEtalle nuevo'),(4,'Prueba','edu1975ml@gmail.com','011','111111111','011111111111',1,3,5,3,'2018-10-10 16:31:42','2018-10-17 16:30:13',7,'verlo'),(5,'PASCHETTA MAXIMILIANO','maximilianopaschetta1@gmail.com','011','56447206','0111156447206',3,7,5,5,'2018-10-11 11:39:45','2018-10-11 17:45:49',7,''),(6,'Martin','jma@gmail.com','011','66676665','01166676665',4,5,3,5,'2018-10-17 16:05:26',NULL,9,'verlo ya'),(7,'juan pablo','mjds@gmail.com','11','1554444444','111554444444',4,5,1,5,'2018-10-18 10:39:25',NULL,10,'VA A LEAD');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_151211_add_details_cms_logs',1),(5,'2016_08_07_152014_add_table_cms_privileges',1),(6,'2016_08_07_152214_add_table_cms_privileges_roles',1),(7,'2016_08_07_152320_add_table_cms_settings',1),(8,'2016_08_07_152421_add_table_cms_users',1),(9,'2016_08_07_154624_add_table_cms_menus_privileges',1),(10,'2016_08_07_154624_add_table_cms_moduls',1),(11,'2016_08_17_225409_add_status_cms_users',1),(12,'2016_08_20_125418_add_table_cms_notifications',1),(13,'2016_09_04_033706_add_table_cms_email_queues',1),(14,'2016_09_16_035347_add_group_setting',1),(15,'2016_09_16_045425_add_label_setting',1),(16,'2016_09_17_104728_create_nullable_cms_apicustom',1),(17,'2016_10_01_141740_add_method_type_apicustom',1),(18,'2016_10_01_141846_add_parameters_apicustom',1),(19,'2016_10_01_141934_add_responses_apicustom',1),(20,'2016_10_01_144826_add_table_apikey',1),(21,'2016_11_14_141657_create_cms_menus',1),(22,'2016_11_15_132350_create_cms_email_templates',1),(23,'2016_11_15_190410_create_cms_statistics',1),(24,'2016_11_17_102740_create_cms_statistic_components',1),(25,'2017_06_06_164501_add_deleted_at_cms_moduls',1),(26,'2018_10_03_165247_create_leads_table',1),(27,'2018_10_05_084231_create_lead_statuses_table',1),(28,'2018_10_08_011017_create_canals_table',1),(29,'2018_10_08_025904_create_tickets_table',1),(30,'2018_10_09_213318_create_products_table',2),(31,'2018_10_09_215324_alter-table-leads',3),(32,'2018_10_09_215448_create_proxima_accions_table',3),(33,'2018_10_09_224016_alter-table-tickets',4),(34,'2018_10_16_214527_alter_table_lead',5),(35,'2018_10_16_224622_create_table_accion_estado',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Sailing Classic Pesos','2018-10-10 01:07:04',NULL),(2,'Sailing Classic Dolares','2018-10-10 01:07:14',NULL),(3,'Sailing Bonus Pesos','2018-10-10 01:07:26','2018-10-10 01:07:46'),(4,'Sailing Bonus Dolares','2018-10-10 01:07:36',NULL),(5,'Acciones','2018-10-11 11:30:39',NULL),(6,'Bonos','2018-10-11 11:30:51',NULL),(7,'Lebacs','2018-10-11 11:31:00',NULL),(8,'Fondos Comunes de Inversión','2018-10-11 11:31:07',NULL),(9,'Dólar Mep','2018-10-11 11:31:16',NULL),(10,'Carteras Advisor','2018-10-11 11:31:22',NULL),(11,'Opciones','2018-10-18 14:14:31',NULL),(12,'Cauciones','2018-10-18 14:14:40',NULL),(13,'Cedears','2018-10-18 14:14:46',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxima_accions`
--

DROP TABLE IF EXISTS `proxima_accions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxima_accions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxima_accions`
--

LOCK TABLES `proxima_accions` WRITE;
/*!40000 ALTER TABLE `proxima_accions` DISABLE KEYS */;
INSERT INTO `proxima_accions` VALUES (1,'Envió mail con requisitos de apertura de Cuenta','2018-10-10 01:03:58','2018-10-18 15:37:45'),(3,'Contactar Asesor','2018-10-10 01:04:40','2018-10-18 15:37:04'),(4,'Validar Tel de contacto vía Mail','2018-10-11 11:33:28',NULL),(7,'Finalizado','2018-10-17 12:56:18','2018-10-18 15:36:07'),(10,'Contactar Facilitador','2018-10-17 13:36:30','2018-10-18 15:35:29'),(11,'Envió mail con Link para Formulario','2018-10-18 15:38:57',NULL);
/*!40000 ALTER TABLE `proxima_accions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `canal_id` int(11) NOT NULL,
  `detalle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proxima_accion` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,2,1,2,1,'Se contacto a la persona y dijo que lo llamemos mas tarde','2018-10-10 01:44:55',NULL,3),(2,2,1,2,1,'wqeqwe','2018-10-10 01:46:31',NULL,1),(8,2,2,2,1,'ppppp','2018-10-10 02:43:07',NULL,1),(9,2,3,3,2,'Ksjsjsjsbsbsbsbsbs','2018-10-10 08:23:27',NULL,3),(10,2,3,3,2,'Hola esto es una prueba','2018-10-10 14:02:26',NULL,2),(11,2,4,3,2,'GUARDAR','2018-10-10 16:32:09','2018-10-11 11:47:19',3),(12,2,5,6,1,'nxmvncmvcm','2018-10-11 13:08:52',NULL,2),(13,2,5,3,1,'vcmvncmc','2018-10-11 13:20:26',NULL,2),(14,2,5,3,3,'ckvckc,,g','2018-10-11 13:22:56','2018-10-11 13:57:16',4),(15,1,4,3,4,'ddsdgg','2018-10-11 13:49:23',NULL,2),(16,2,4,3,4,'no atiende','2018-10-11 14:06:49',NULL,2),(17,2,4,3,1,'jhskjhskdhd','2018-10-11 16:06:19',NULL,4),(18,2,5,5,3,'me pregunto por la lebac','2018-10-11 17:47:18',NULL,3),(19,2,4,3,1,'gghghgh','2018-10-15 13:24:40',NULL,2),(20,2,4,3,1,'shsdhjshskdhsdhskdhksjdhfskjdhskdjhsdjdjkds\r\ndjssjdhjdshdjs','2018-10-16 12:46:28',NULL,2),(21,5,5,5,3,'No esta interesado en nuestros productos. Lo envío a Histórico.','2018-10-17 13:40:39',NULL,7),(22,2,4,5,3,'PRUEBA MARTIN','2018-10-17 13:46:20',NULL,6),(23,1,4,5,4,'va a lead?','2018-10-17 13:46:57',NULL,10),(24,2,4,5,4,'va a contacto?','2018-10-17 13:47:59',NULL,10),(25,2,4,5,4,'actualiza próxima acción? llamada saliente...','2018-10-17 14:02:54',NULL,1),(26,2,4,5,4,'envio de email institucional y requisitos de apertura','2018-10-17 14:05:30','2018-10-17 14:06:02',9),(27,2,4,5,4,'verlo','2018-10-17 14:06:46','2018-10-17 14:09:29',2),(28,5,4,5,4,'no me atendio. cierro caso.','2018-10-18 10:34:16',NULL,7),(29,3,6,5,4,'va a prospect','2018-10-18 10:37:18',NULL,9),(30,2,7,5,4,'dsfdsfdfsfds\r\nfddsfds','2018-10-18 10:40:15',NULL,3),(31,3,3,3,4,'DEtalle nuevo','2018-10-18 11:36:08',NULL,3),(32,5,2,3,4,'otro detalle','2018-10-18 11:37:25',NULL,2),(33,1,7,5,4,'VA A LEAD','2018-10-18 13:36:33',NULL,10);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-19  1:29:57
