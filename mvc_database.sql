-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: onepr4co_mvc
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance_entry`
--

DROP TABLE IF EXISTS `attendance_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_entry` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(45) DEFAULT NULL,
  `employee_name` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `absent_present` varchar(45) DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`attendance_id`),
  KEY `idx_employee_date` (`employee_id`,`date`),
  KEY `idx_site_code` (`site_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_entry`
--

LOCK TABLES `attendance_entry` WRITE;
/*!40000 ALTER TABLE `attendance_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_adjustment`
--

DROP TABLE IF EXISTS `bill_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_adjustment` (
  `bill_adjustment_id` int NOT NULL AUTO_INCREMENT,
  `entry_date` date DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(45) DEFAULT NULL,
  `beneficiary_name` varchar(255) DEFAULT NULL,
  `person_name` varchar(255) DEFAULT NULL,
  `paid_by` varchar(45) DEFAULT NULL,
  `rtgs_amount` decimal(12,2) DEFAULT NULL,
  `comission_rate` decimal(12,2) DEFAULT NULL,
  `net_amount` decimal(12,2) DEFAULT NULL,
  `amount_received_details` longtext,
  `bal_amount` decimal(12,2) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`bill_adjustment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_adjustment`
--

LOCK TABLES `bill_adjustment` WRITE;
/*!40000 ALTER TABLE `bill_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_details` (
  `bill_details_id` int NOT NULL AUTO_INCREMENT,
  `site_code` varchar(45) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `order_year` varchar(45) DEFAULT NULL,
  `department_name` varchar(455) DEFAULT NULL,
  `contractor_name` varchar(255) DEFAULT NULL,
  `sub_contractor_name` varchar(255) DEFAULT NULL,
  `work_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `workdone_by` longtext,
  `agreement_no` varchar(45) DEFAULT NULL,
  `bill_no` varchar(45) DEFAULT NULL,
  `work_order_amount` decimal(12,2) DEFAULT NULL,
  `total_bill_amount` decimal(12,2) DEFAULT NULL,
  `deduction_amount` decimal(12,2) DEFAULT NULL,
  `net_bill_amount` decimal(12,2) DEFAULT NULL,
  `security_deposit` varchar(45) DEFAULT NULL,
  `insurance` varchar(45) DEFAULT NULL,
  `gst` varchar(45) DEFAULT NULL,
  `surcharge` varchar(45) DEFAULT NULL,
  `cess` varchar(45) DEFAULT NULL,
  `tds` varchar(45) DEFAULT NULL,
  `royalty` varchar(45) DEFAULT NULL,
  `fine` varchar(45) DEFAULT NULL,
  `other` varchar(45) DEFAULT NULL,
  `bank_charges` varchar(45) DEFAULT NULL,
  `stamp_duty` varchar(45) DEFAULT NULL,
  `other_charges` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_details_id`),
  KEY `idx_bill_site` (`site_code`),
  KEY `idx_bill_date` (`entry_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_entry`
--

DROP TABLE IF EXISTS `credit_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_entry` (
  `credit_entry_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `party_id` varchar(45) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `credited_to` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `material` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`credit_entry_id`),
  KEY `idx_credit_party` (`party_name`),
  KEY `idx_credit_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_entry`
--

LOCK TABLES `credit_entry` WRITE;
/*!40000 ALTER TABLE `credit_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_expenses`
--

DROP TABLE IF EXISTS `daily_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_expenses` (
  `daily_expenses_id` int NOT NULL AUTO_INCREMENT,
  `entry_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `work_name` varchar(255) DEFAULT NULL,
  `description` varchar(455) DEFAULT NULL,
  `paid_to` varchar(45) DEFAULT NULL,
  `payment_through` varchar(45) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `voucher_book_no` varchar(45) DEFAULT NULL,
  `voucher_no` varchar(45) DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `expense_type` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `sub_payment_mode` varchar(255) DEFAULT NULL,
  `receipt_no` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`daily_expenses_id`),
  KEY `idx_expense_party` (`paid_to`),
  KEY `idx_expense_site` (`site_code`),
  KEY `idx_expense_date` (`expense_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_expenses`
--

LOCK TABLES `daily_expenses` WRITE;
/*!40000 ALTER TABLE `daily_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_master`
--

DROP TABLE IF EXISTS `department_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_master` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  `gst_no` varchar(45) DEFAULT NULL,
  `tan_no` varchar(45) DEFAULT NULL,
  `pan_no` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_master`
--

LOCK TABLES `department_master` WRITE;
/*!40000 ALTER TABLE `department_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_master`
--

DROP TABLE IF EXISTS `employee_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_master` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(455) DEFAULT NULL,
  `salary_type` varchar(45) DEFAULT NULL,
  `salary_amount` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_master`
--

LOCK TABLES `employee_master` WRITE;
/*!40000 ALTER TABLE `employee_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_hishob`
--

DROP TABLE IF EXISTS `final_hishob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_hishob` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_code` varchar(45) NOT NULL,
  `other_charges` decimal(12,2) DEFAULT '0.00',
  `net_profit_json` longtext,
  `partner_receivable_json` json DEFAULT NULL,
  `is_closed` tinyint(1) DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_site_code` (`site_code`),
  KEY `idx_final_hishob_date` (`updated_at`),
  KEY `idx_final_hishob_closed` (`is_closed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_hishob`
--

LOCK TABLES `final_hishob` WRITE;
/*!40000 ALTER TABLE `final_hishob` DISABLE KEYS */;
/*!40000 ALTER TABLE `final_hishob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_hishob_receivable`
--

DROP TABLE IF EXISTS `final_hishob_receivable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_hishob_receivable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_code` varchar(45) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  `expense_amount` decimal(12,2) DEFAULT '0.00',
  `net_profit_amount` decimal(12,2) DEFAULT '0.00',
  `total_receivable` decimal(12,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_receivable_site` (`site_code`),
  KEY `idx_receivable_partner` (`partner_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_hishob_receivable`
--

LOCK TABLES `final_hishob_receivable` WRITE;
/*!40000 ALTER TABLE `final_hishob_receivable` DISABLE KEYS */;
/*!40000 ALTER TABLE `final_hishob_receivable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machinery_master`
--

DROP TABLE IF EXISTS `machinery_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machinery_master` (
  `machinery_id` int NOT NULL AUTO_INCREMENT,
  `machinery_name` varchar(255) DEFAULT NULL,
  `machinery_type` varchar(455) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `rto_no` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `chassis_no` varchar(255) DEFAULT NULL,
  `insurance_company` varchar(255) DEFAULT NULL,
  `insurance_policy_no` varchar(255) DEFAULT NULL,
  `insurance_start_date` date DEFAULT NULL,
  `insurance_expiry_date` date DEFAULT NULL,
  `tax_valid_upto` date DEFAULT NULL,
  `pucc_valid_upto` date DEFAULT NULL,
  `permit_valid_upto` date DEFAULT NULL,
  `fitness_valid_upto` date DEFAULT NULL,
  `operator_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`machinery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machinery_master`
--

LOCK TABLES `machinery_master` WRITE;
/*!40000 ALTER TABLE `machinery_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `machinery_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_entry`
--

DROP TABLE IF EXISTS `material_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_entry` (
  `material_entry_id` int NOT NULL AUTO_INCREMENT,
  `entry_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `work_name` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `challan_no` varchar(45) DEFAULT NULL,
  `challan_date` date DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `material_details` longtext,
  `other_charges` varchar(45) DEFAULT '0',
  `amount` varchar(45) DEFAULT NULL,
  `remark` varchar(455) DEFAULT NULL,
  `machinery_type` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `start_reading` varchar(45) DEFAULT NULL,
  `end_reading` varchar(45) DEFAULT NULL,
  `machinery_rate` varchar(45) DEFAULT NULL,
  `total_reading` varchar(45) DEFAULT NULL,
  `machinery_total` varchar(45) DEFAULT NULL,
  `add_charges` varchar(45) DEFAULT '0',
  `deduct_charges` varchar(45) DEFAULT NULL,
  `deduct_amout` varchar(45) DEFAULT NULL,
  `description` varchar(455) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `no_of_trips` varchar(50) DEFAULT NULL,
  `partner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`material_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_entry`
--

LOCK TABLES `material_entry` WRITE;
/*!40000 ALTER TABLE `material_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_master`
--

DROP TABLE IF EXISTS `material_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_master` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `material_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_master`
--

LOCK TABLES `material_master` WRITE;
/*!40000 ALTER TABLE `material_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mv_rollertt_details`
--

DROP TABLE IF EXISTS `mv_rollertt_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mv_rollertt_details` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `entry_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `machinery_name` varchar(255) DEFAULT NULL,
  `machinery_no` varchar(255) DEFAULT NULL,
  `trip` decimal(12,2) DEFAULT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `other_charges` decimal(12,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `partner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mv_rollertt_details`
--

LOCK TABLES `mv_rollertt_details` WRITE;
/*!40000 ALTER TABLE `mv_rollertt_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mv_rollertt_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvjcb_detials`
--

DROP TABLE IF EXISTS `mvjcb_detials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvjcb_detials` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `entry_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `start_reading` time DEFAULT NULL,
  `end_reading` time DEFAULT NULL,
  `total_reading` decimal(12,2) DEFAULT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `other_charges` decimal(12,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `grand_total` decimal(12,2) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `partner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvjcb_detials`
--

LOCK TABLES `mvjcb_detials` WRITE;
/*!40000 ALTER TABLE `mvjcb_detials` DISABLE KEYS */;
/*!40000 ALTER TABLE `mvjcb_detials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvtipper_details`
--

DROP TABLE IF EXISTS `mvtipper_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvtipper_details` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `entry_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `crusher_owner` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `qty` decimal(12,4) DEFAULT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `description` varchar(455) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `partner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvtipper_details`
--

LOCK TABLES `mvtipper_details` WRITE;
/*!40000 ALTER TABLE `mvtipper_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mvtipper_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_master`
--

DROP TABLE IF EXISTS `partner_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_master` (
  `partner_id` int NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_master`
--

LOCK TABLES `partner_master` WRITE;
/*!40000 ALTER TABLE `partner_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_master`
--

DROP TABLE IF EXISTS `party_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party_master` (
  `party_id` int NOT NULL AUTO_INCREMENT,
  `party_name` varchar(255) DEFAULT NULL,
  `party_type` varchar(45) DEFAULT NULL,
  `party_address` varchar(455) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `gst_no` varchar(45) DEFAULT NULL,
  `pan_no` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_master`
--

LOCK TABLES `party_master` WRITE;
/*!40000 ALTER TABLE `party_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_entry`
--

DROP TABLE IF EXISTS `payment_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_entry` (
  `payment_entry_id` int NOT NULL AUTO_INCREMENT,
  `entry_date` date DEFAULT NULL,
  `paid_to` varchar(45) DEFAULT NULL,
  `description` varchar(455) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `gst_amount` decimal(12,2) DEFAULT NULL,
  `other_charges` decimal(12,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `beneficiary_name` varchar(255) DEFAULT NULL,
  `paid_by` varchar(45) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `reference` varchar(455) DEFAULT NULL,
  `remarks` varchar(455) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `sub_payment_mode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_entry_id`),
  KEY `idx_payment_site` (`site_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_entry`
--

LOCK TABLES `payment_entry` WRITE;
/*!40000 ALTER TABLE `payment_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_master`
--

DROP TABLE IF EXISTS `project_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_master` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(45) DEFAULT NULL,
  `assigned_employee_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_master`
--

LOCK TABLES `project_master` WRITE;
/*!40000 ALTER TABLE `project_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_entry`
--

DROP TABLE IF EXISTS `salary_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_entry` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `employee_name` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `pay_scale_type` varchar(45) DEFAULT NULL,
  `from_to_date` varchar(45) DEFAULT NULL,
  `month_year` varchar(45) DEFAULT NULL,
  `no_days_present` decimal(5,2) DEFAULT NULL,
  `no_days_absent` decimal(5,2) DEFAULT NULL,
  `total_salary` decimal(12,2) DEFAULT NULL,
  `advance_payment` decimal(12,2) DEFAULT NULL,
  `deduction` decimal(12,2) DEFAULT NULL,
  `reimbursement` decimal(12,2) DEFAULT NULL,
  `salary_paid` decimal(12,2) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `paid_by` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `sub_payment_mode` varchar(255) DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_entry`
--

LOCK TABLES `salary_entry` WRITE;
/*!40000 ALTER TABLE `salary_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `session_token` text NOT NULL,
  `login_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `logout_time` datetime DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_session_token` (`session_token`(255)),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tender`
--

DROP TABLE IF EXISTS `tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tender` (
  `tender_id` int NOT NULL AUTO_INCREMENT,
  `sr_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_year` varchar(45) DEFAULT NULL,
  `tender_id_user` varchar(45) DEFAULT NULL,
  `site_code` varchar(45) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `work_name` varchar(255) DEFAULT NULL,
  `tender_amount` decimal(12,2) DEFAULT NULL,
  `tender_fee` decimal(12,2) DEFAULT '0.00',
  `tender_fee_paid_by` varchar(255) DEFAULT NULL,
  `emd_amount` decimal(12,2) DEFAULT '0.00',
  `emd_amount_paid_by` varchar(255) DEFAULT NULL,
  `work_order_amount` decimal(12,2) DEFAULT NULL,
  `work_time_limit` date DEFAULT NULL,
  `days_months` varchar(45) DEFAULT NULL,
  `dlp_period` varchar(45) DEFAULT NULL,
  `contractor_details` longtext,
  `work_order_received` tinyint NOT NULL DEFAULT '0',
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`tender_id`),
  KEY `idx_tender_site` (`site_code`),
  KEY `idx_tender_year` (`entry_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tender`
--

LOCK TABLES `tender` WRITE;
/*!40000 ALTER TABLE `tender` DISABLE KEYS */;
/*!40000 ALTER TABLE `tender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_master`
--

DROP TABLE IF EXISTS `unit_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit_master` (
  `unit_id` int NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_master`
--

LOCK TABLES `unit_master` WRITE;
/*!40000 ALTER TABLE `unit_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `unit_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_master` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (1,'Admin','9999999999','$2a$10$DCV.oqmHku480cB.5v5u0OjQbhSKX1L39bjmlQW4c3Dl56YadQhm.','Admin',0);
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_order`
--

DROP TABLE IF EXISTS `work_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_order` (
  `work_order_id` int NOT NULL AUTO_INCREMENT,
  `site_code` varchar(45) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `sr_no` varchar(45) DEFAULT NULL,
  `tender_sr_no` varchar(45) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `order_year` varchar(45) DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `contractor_name` varchar(255) DEFAULT NULL,
  `sub_contractor_name` varchar(255) DEFAULT NULL,
  `work_name` varchar(255) DEFAULT NULL,
  `work_head` varchar(45) DEFAULT NULL,
  `workdone_by` longtext,
  `agreement_no` varchar(45) DEFAULT NULL,
  `work_order_no` varchar(45) DEFAULT NULL,
  `work_order_date` date DEFAULT NULL,
  `work_order_amount` decimal(12,2) DEFAULT NULL,
  `work_time_limit` date DEFAULT NULL,
  `dlp_period` varchar(45) DEFAULT NULL,
  `security_deposit_amount` decimal(12,2) DEFAULT NULL,
  `security_amount_refund_status` varchar(45) DEFAULT NULL,
  `security_deposit_paid_by` varchar(255) DEFAULT NULL,
  `additional_security_deposit_amount` decimal(12,2) DEFAULT NULL,
  `additional_security_amount_refund_status` varchar(45) DEFAULT NULL,
  `additional_security_deposit_paid_by` varchar(255) DEFAULT NULL,
  `security_deposit` longtext,
  `additionalsecurity_deposit` longtext,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`work_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_order`
--

LOCK TABLES `work_order` WRITE;
/*!40000 ALTER TABLE `work_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workhead_master`
--

DROP TABLE IF EXISTS `workhead_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workhead_master` (
  `workhead_id` int NOT NULL AUTO_INCREMENT,
  `workhead_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`workhead_id`),
  KEY `idx_workhead_name` (`workhead_name`),
  KEY `idx_is_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workhead_master`
--

LOCK TABLES `workhead_master` WRITE;
/*!40000 ALTER TABLE `workhead_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `workhead_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-12 16:02:19
