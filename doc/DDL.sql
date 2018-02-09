-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: pge-rpc
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `process_risk_source`
--

DROP TABLE IF EXISTS `process_risk_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_risk_source` (
  `process_id` int(11) NOT NULL,
  `source_id` int(11) NOT NULL,
  KEY `fk_process_risk_source_1_idx` (`process_id`),
  KEY `fk_process_risk_source_2_idx` (`source_id`),
  CONSTRAINT `fk_process_risk_source_1` FOREIGN KEY (`process_id`) REFERENCES `task_process` (`process_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_process_risk_source_2` FOREIGN KEY (`source_id`) REFERENCES `risk_source` (`source_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工序\n危险源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_risk_source`
--

LOCK TABLES `process_risk_source` WRITE;
/*!40000 ALTER TABLE `process_risk_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `process_risk_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_source`
--

DROP TABLE IF EXISTS `risk_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk_source` (
  `source_id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_source` varchar(45) NOT NULL COMMENT '危险源',
  `hazard_factor` varchar(45) DEFAULT NULL COMMENT '危害因素',
  `hazard_consequence` varchar(45) DEFAULT NULL COMMENT '危害后果',
  `possibility` varchar(45) DEFAULT NULL COMMENT '可能性',
  `accident_level` varchar(45) DEFAULT NULL COMMENT '事故等级',
  `risk_level` varchar(45) DEFAULT NULL COMMENT '风险等级',
  `work_standards` varchar(45) DEFAULT NULL COMMENT '作业标准',
  PRIMARY KEY (`source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='危险源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_source`
--

LOCK TABLES `risk_source` WRITE;
/*!40000 ALTER TABLE `risk_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rpc_ticket`
--

DROP TABLE IF EXISTS `rpc_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rpc_ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_name` varchar(45) NOT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `task_name` varchar(45) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='风险预控票\nrisk_pre_control_ticket';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpc_ticket`
--

LOCK TABLES `rpc_ticket` WRITE;
/*!40000 ALTER TABLE `rpc_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `rpc_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_process`
--

DROP TABLE IF EXISTS `task_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_process` (
  `process_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工序';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_process`
--

LOCK TABLES `task_process` WRITE;
/*!40000 ALTER TABLE `task_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_detail`
--

DROP TABLE IF EXISTS `ticket_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_detail` (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) DEFAULT NULL,
  `process_id` bigint(20) DEFAULT NULL,
  `task_process` varchar(45) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `risk_source` varchar(45) DEFAULT NULL,
  `hazard_factor` varchar(45) DEFAULT NULL,
  `hazard_consequence` varchar(45) DEFAULT NULL,
  `possibility` varchar(45) DEFAULT NULL,
  `accident_level` varchar(45) DEFAULT NULL,
  `risk_level` varchar(45) DEFAULT NULL,
  `work_standards` text,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_detail`
--

LOCK TABLES `ticket_detail` WRITE;
/*!40000 ALTER TABLE `ticket_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_task`
--

DROP TABLE IF EXISTS `work_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_task` varchar(45) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_task`
--

LOCK TABLES `work_task` WRITE;
/*!40000 ALTER TABLE `work_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_task_process`
--

DROP TABLE IF EXISTS `work_task_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_task_process` (
  `task_id` int(11) NOT NULL,
  `process_id` int(11) NOT NULL,
  KEY `fk_work_task_process_2_idx` (`process_id`),
  KEY `fk_work_task_process_1_idx` (`task_id`),
  CONSTRAINT `fk_work_task_process_1` FOREIGN KEY (`task_id`) REFERENCES `work_task` (`task_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_work_task_process_2` FOREIGN KEY (`process_id`) REFERENCES `task_process` (`process_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作任务\n工序';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_task_process`
--

LOCK TABLES `work_task_process` WRITE;
/*!40000 ALTER TABLE `work_task_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_task_process` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-09 11:08:25
