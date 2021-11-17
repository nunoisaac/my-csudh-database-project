-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: electronic_store
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerFirstName` varchar(30) DEFAULT NULL,
  `CustomerLastName` varchar(30) DEFAULT NULL,
  `CustomerAddress` varchar(100) DEFAULT NULL,
  `CustomerCity` varchar(20) DEFAULT NULL,
  `CustomerState` varchar(2) DEFAULT NULL,
  `CustomerPostalCode` varchar(9) DEFAULT NULL,
  `CustomerPhoneNumber` varchar(15) DEFAULT NULL,
  `CustomerEmail` varchar(100) DEFAULT NULL,
  `MembershipID` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `customer_FK` (`MembershipID`),
  CONSTRAINT `customer_FK` FOREIGN KEY (`MembershipID`) REFERENCES `membership` (`MembershipID`)
) ENGINE=InnoDB AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1000,'MARY','SMITH','23 Workhaven Lane','Sacramento','CA','95811','14033335568','MARY.SMITH@sakilacustomer.org',NULL),(1001,'PATRICIA','JOHNSON','1411 Lillydale Drive','Discovery Bay','CA','94505','6172235589','PATRICIA.JOHNSON@sakilacustomer.org',NULL),(1002,'LINDA','WILLIAMS','1913 Hanoi Way','Oceanside','CA','92058','28303384290','LINDA.WILLIAMS@sakilacustomer.org',NULL),(1003,'BARBARA','JONES','1121 Loja Avenue','Los Angeles','CA','90006','83863528664','BARBARA.JONES@sakilacustomer.org',100100),(1004,'ELIZABETH','JONES','692 Joliet Street','Reno','NV','89508','48477190408','ELIZABETH.BROWN@sakilacustomer.org',100100),(1005,'JENNIFER','DAVIS','1566 Inegl Manor','Sloan','NV','89054','70581400352','JENNIFER.DAVIS@sakilacustomer.org',NULL),(1006,'MARIA','MILLER','53 Idfu Parkway','Mesquite','NV','89034','1065564867','MARIA.MILLER@sakilacustomer.org',NULL),(1007,'SUSAN','WILSON','1795 Santiago de Compostela Way','Oceanside','CA','92049','8604526264','SUSAN.WILSON@sakilacustomer.org',NULL),(1008,'MARGARET','MOORE','900 Santiago de Compostela Parkway','Oceanside','CA','92049','716571220','MARGARET.MOORE@sakilacustomer.org',100101),(1009,'DOROTHY','TAYLOR','478 Joliet Way','Georgetown','TX','78633','6572822859','DOROTHY.TAYLOR@sakilacustomer.org',100102),(1010,'LISA','ANDERSON','613 Korolev Drive','Lake Worth','FL','33449','3806575226','LISA.ANDERSON@sakilacustomer.org',NULL),(1011,'NANCY','THOMAS','1531 Sal Drive','Los Angeles','CA','90006','11648856936','NANCY.THOMAS@sakilacustomer.org',NULL),(1012,'KAREN','JACKSON','1542 Tarlac Parkway','Boynton Beach','FL','33472','6352972773','KAREN.JACKSON@sakilacustomer.org',NULL),(1013,'BETTY','WHITE','808 Bhopal Manor','Los Angeles','CA','90015','465887807014','BETTY.WHITE@sakilacustomer.org',NULL),(1014,'HELEN','HARRIS','1926 El Alto Avenue','Los Angeles','CA','90013','991562402283','HELEN.HARRIS@sakilacustomer.org',100103),(1015,'SANDRA','HARRIS','1926 El Alto Avenue','Los Angeles','CA','90013','345679835036','SANDRA.MARTIN@sakilacustomer.org',100103),(1016,'DONNA','HARRIS','1926 El Alto Avenue','Los Angeles','CA','90013','132986892228','DONNA.THOMPSON@sakilacustomer.org',100103),(1017,'CAROL','HARRIS','1926 El Alto Avenue','Los Angeles','CA','90013','275595571388','CAROL.GARCIA@sakilacustomer.org',100103),(1018,'RUTH','MARTINEZ','152 Kitwe Parkway','Los Angeles','CA','90013','275595571388','RUTH.MARTINEZ@sakilacustomer.org',NULL),(1019,'SHARON','ROBINSON','682 Junan Way','Phoenix','AZ','85083','622255216127','SHARON.ROBINSON@sakilacustomer.org',100104),(1020,'MICHELLE','CLARK','804 Elista Drive','Los Angeles','CA','90006','379804592943','MICHELLE.CLARK@sakilacustomer.org',100105),(1021,'LAURA','RODRIGUEZ','1378 Alvorada Avenue','New York','NY','10065','272234298332','LAURA.RODRIGUEZ@sakilacustomer.org',NULL),(1022,'SARAH','LEWIS','793 Cam Ranh Avenue','North Port','FL','34290','824370924746','SARAH.LEWIS@sakilacustomer.org',NULL),(1023,'KIMBERLY','LEE','544 Malm Parkway','Long Beach','CA','90805','386759646229','KIMBERLY.LEE@sakilacustomer.org',100106),(1024,'DEBORAH','WALKER','1967 Sincelejo Place','Reno','NV','89508','577812616052','DEBORAH.WALKER@sakilacustomer.org',100106),(1025,'JESSICA','HALL','333 Goinia Way','Fort Worth','TX','76166','909029256431','JESSICA.HALL@sakilacustomer.org',NULL),(1026,'SHIRLEY','ALLEN','241 Mosul Lane','Los Angeles','CA','90012','765345144779','SHIRLEY.ALLEN@sakilacustomer.org',NULL),(1027,'CYNTHIA','YOUNG','211 Chiayi Drive','Duarte','CA','91008','665993880048','CYNTHIA.YOUNG@sakilacustomer.org',NULL),(1028,'ANGELA','HERNANDEZ','848 Tafuna Manor','Oceanside','CA','92058','614935229095','ANGELA.HERNANDEZ@sakilacustomer.org',100107),(1029,'MELISSA','KING','569 Baicheng Lane','Boynton Beach','FL','33473','490211944645','MELISSA.KING@sakilacustomer.org',100108),(1030,'BRENDA','WRIGHT','801 Hagonoy Drive','Los Angeles','CA','90006','237426099212','BRENDA.WRIGHT@sakilacustomer.org',100109),(1031,'AMY','LOPEZ','1050 Garden Grove Avenue','Discovery Bay','CA','94505','973047364353','AMY.LOPEZ@sakilacustomer.org',NULL),(1032,'ANNA','HILL','1854 Tieli Street','Broomfield','CO','80023','509492324775','ANNA.HILL@sakilacustomer.org',NULL),(1033,'REBECCA','SCOTT','758 Junan Lane','Los Angeles','CA','90006','935448624185','REBECCA.SCOTT@sakilacustomer.org',NULL),(1034,'VIRGINIA','GREEN','898 Belm Manor','Los Angeles','CA','90006','707169393853','VIRGINIA.GREEN@sakilacustomer.org',NULL),(1035,'KATHLEEN','ADAMS','261 Saint Louis Way','Los Angeles','CA','90015','321944036800','KATHLEEN.ADAMS@sakilacustomer.org',100110),(1036,'PAMELA','BAKER','765 Southampton Drive','Los Angeles','CA','90006','23712411567','PAMELA.BAKER@sakilacustomer.org',100111),(1037,'MARTHA','GONZALEZ','943 Johannesburg Avenue','Los Angeles','CA','90015','90921003005','MARTHA.GONZALEZ@sakilacustomer.org',100112),(1038,'DEBRA','NELSON','788 Atinsk Street','Los Angeles','CA','90006','146497509724','DEBRA.NELSON@sakilacustomer.org',NULL),(1039,'AMANDA','CARTER','1749 Daxian Place','Phoenix','AZ','85083','963369996279','AMANDA.CARTER@sakilacustomer.org',NULL),(1040,'STEPHANIE','MITCHELL','1587 Sullana Lane','Los Angeles','CA','90006','468060467018','STEPHANIE.MITCHELL@sakilacustomer.org',100113),(1041,'CAROLYN','PEREZ','1029 Dzerzinsk Manor','Los Angeles','CA','90006','33173584456','CAROLYN.PEREZ@sakilacustomer.org',100114),(1042,'CHRISTINE','ROBERTS','928 Jaffna Loop','Queen Creek','AZ','85240','581852137991','CHRISTINE.ROBERTS@sakilacustomer.org',NULL),(1043,'MARIE','TURNER','483 Ljubertsy Parkway','Los Angeles','CA','90013','581174211853','MARIE.TURNER@sakilacustomer.org',100115),(1044,'JANET','PHILLIPS','483 Ljubertsy Parkway','Los Angeles','CA','90013','923261616249','JANET.PHILLIPS@sakilacustomer.org',100115),(1045,'CATHERINE','CAMPBELL','1440 Compton Place','Los Angeles','CA','90006','931059836497','CATHERINE.CAMPBELL@sakilacustomer.org',100116),(1046,'FRANCES','PARKER','97 Shimoga Avenue','Los Angeles','CA','90015','177167004331','FRANCES.PARKER@sakilacustomer.org',100117),(1047,'ANN','EVANS','1820 Maring Parkway','North Port','FL','34290','99760893676','ANN.EVANS@sakilacustomer.org',100118),(1048,'JOYCE','EDWARDS','600 Bradford Street','New York','NY','10065','117592274996','JOYCE.EDWARDS@sakilacustomer.org',NULL),(1049,'DIANE','COLLINS','1405 Chisinau Place','Los Angeles','CA','90015','62781725285','DIANE.COLLINS@sakilacustomer.org',100119),(1050,'ALICE','STEWART','226 Halifax Street','Los Angeles','CA','90013','790651020929','ALICE.STEWART@sakilacustomer.org',100120),(1051,'JULIE','SANCHEZ','827 Yuncheng Drive','Los Angeles','CA','90006','504434452842','JULIE.SANCHEZ@sakilacustomer.org',100121),(1052,'HEATHER','MORRIS','500 Lincoln Parkway','Reno','NV','89508','550306965159','HEATHER.MORRIS@sakilacustomer.org',100122),(1053,'TERESA','ROGERS','514 Ife Way','Los Angeles','CA','90015','900235712074','TERESA.ROGERS@sakilacustomer.org',100123),(1054,'DORIS','REED','88 Nagaon Manor','Los Angeles','CA','90013','779461480495','DORIS.REED@sakilacustomer.org',100124),(1055,'ASHLEY','RICHARDSON','1266 Laredo Parkway','Los Angeles','CA','90006','1483365694','ASHLEY.RICHARDSON@sakilacustomer.org',100125),(1056,'JUDITH','COX','126 Acua Parkway','Los Angeles','CA','90015','480039662421','JUDITH.COX@sakilacustomer.org',NULL),(1057,'NICOLE','PETERSON','397 Sunnyvale Avenue','North Port','FL','34290','680851640676','NICOLE.PETERSON@sakilacustomer.org',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `EmployeeFirstName` varchar(25) NOT NULL,
  `EmployeeLastName` varchar(25) NOT NULL,
  `EmployeeAddress` varchar(30) DEFAULT NULL,
  `EmployeeCity` varchar(20) DEFAULT NULL,
  `EmployeeState` varchar(2) DEFAULT NULL,
  `EmployeePostalCode` varchar(9) DEFAULT NULL,
  `EmployeePhoneNumber` varchar(11) DEFAULT NULL,
  `EmployeeEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1000,'Jonathan ','Clarke','3295  Mutton Town Road','Portland','OR','97205','3606078079','JonathanClarke@gmail.com'),(1001,'Audra ','Myers','3406 Jett Lane','Bellflower','CA','90706','5617548468','AudraMyers@gmail.com'),(1002,'Larry ','Jackson','1484 Davisson Street','Greens Fork','IN','47345','5592381215','LarryJackson@gmail.com'),(1003,'Mary ','Edwards','4894 Oakmound Road','Wood Dale','IL','60191','8124167216','MaryEdwards@gmail.com'),(1004,'David ','William','4360  Francis Mine','New Orleans','LA','50867','4087823044','DavidWilliam@gmail.com'),(1005,'Michael ','Coburn','3944  Hill Street','Jackson','MS','88537','7017344095','MichaelCoburn@gmail.com'),(1006,'Josephine','Porter','2568  Oxford Court','Los Angeles','CA','14796','6065386584','JosephinePorter@gmail.com'),(1007,'Walter','Hemphill','1636  Bird Street','Columbus','OH','79648','8128971187','WalterHemphill@gmail.com'),(1008,'Sheila','Lawson','42  Short Street','Richmond','VA','57858','6604138775','SheilaLawson@gmail.com'),(1009,'Jessica','Teeter','1134  Meadow Lane','Seattle','WA','78339','5302952071','JessicaTeeter@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) NOT NULL,
  `InventoryQty` int DEFAULT (0),
  `Price` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  CONSTRAINT `Price` CHECK ((`Price` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Playstation 5',2,499.99),(2,'Nintendo Switch',12,299.99),(3,'iPhone 12 Pro Max',36,1099.99),(4,'X Box Series X',13,499.99),(5,'Samsung Galaxy S21',16,799.99),(6,'Samsung - 55\" Class 7',4,449.99),(7,'AirPods Pro',35,199.99),(8,'Beats by Dr Dre',26,169.99),(9,'Samsung - Galaxy Buds',20,179.99),(10,'Apple Watch Series 6 (GPS)',25,429.00),(11,'iMac 27\"-inch - Apple',11,1999.99),(12,'iPad Pro - 12.9\"-inch',27,1099.99),(13,'Drone - DJI',5,799.99),(14,'Samsung Galaxy Watch',16,199.99);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `MembershipID` int NOT NULL AUTO_INCREMENT,
  `MemberDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MembershipID`)
) ENGINE=InnoDB AUTO_INCREMENT=100126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (100100,'2021-04-29 01:32:48'),(100101,'2021-04-29 01:32:48'),(100102,'2021-04-29 01:32:48'),(100103,'2021-04-29 01:32:48'),(100104,'2021-04-29 01:32:48'),(100105,'2021-04-29 01:32:48'),(100106,'2021-04-29 01:32:48'),(100107,'2021-04-29 01:32:48'),(100108,'2021-04-29 01:32:48'),(100109,'2021-04-29 01:32:48'),(100110,'2021-04-29 01:32:48'),(100111,'2021-04-29 01:32:48'),(100112,'2021-04-29 01:32:48'),(100113,'2021-04-29 01:32:48'),(100114,'2021-04-29 01:32:48'),(100115,'2021-04-29 01:32:48'),(100116,'2021-04-29 01:32:48'),(100117,'2021-04-29 01:32:48'),(100118,'2021-04-29 01:32:48'),(100119,'2021-04-29 01:32:48'),(100120,'2021-04-29 01:32:48'),(100121,'2021-04-29 01:32:48'),(100122,'2021-04-29 01:32:48'),(100123,'2021-04-29 01:32:48'),(100124,'2021-04-29 01:32:48'),(100125,'2021-04-29 01:32:48');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderprocessing`
--

DROP TABLE IF EXISTS `orderprocessing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderprocessing` (
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Qty` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`,`ProductID`),
  KEY `orderProcessing_FK2` (`ProductID`),
  CONSTRAINT `orderProcessing_FK` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON UPDATE CASCADE,
  CONSTRAINT `orderProcessing_FK2` FOREIGN KEY (`ProductID`) REFERENCES `inventory` (`ProductID`) ON UPDATE CASCADE,
  CONSTRAINT `Qty` CHECK ((`Qty` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderprocessing`
--

LOCK TABLES `orderprocessing` WRITE;
/*!40000 ALTER TABLE `orderprocessing` DISABLE KEYS */;
INSERT INTO `orderprocessing` VALUES (100,2,1),(101,5,1),(101,9,1),(102,1,1),(103,7,2),(103,10,1),(104,3,1),(104,7,1),(104,10,1),(104,12,1),(105,13,3),(106,1,1),(107,6,1),(108,2,1),(108,8,3),(109,5,3),(110,11,1),(111,10,1),(111,12,1),(112,13,1),(113,7,1),(113,11,1),(114,1,2),(115,3,2),(115,7,1),(115,10,1),(116,6,1),(117,8,1),(118,2,1),(119,5,1),(119,8,2),(120,1,1),(120,8,1),(121,5,1),(122,2,1),(123,1,1),(123,6,1),(123,8,2),(124,5,2),(124,9,2),(124,14,2),(125,5,2),(125,13,4),(125,14,1),(126,9,3),(127,6,2),(128,3,2),(128,7,3),(128,10,2),(129,1,1),(129,6,1),(130,2,1),(131,6,1),(132,7,1),(133,7,1),(133,12,1),(134,2,1),(134,8,1),(135,9,3),(136,1,1),(136,8,1),(136,12,1),(137,4,1),(138,11,1),(138,12,2),(139,5,2),(139,14,3),(140,4,1),(141,2,2),(142,4,1),(143,5,1),(144,12,2),(145,1,1),(146,3,1),(146,4,1),(147,1,1),(148,12,3),(149,3,1),(149,10,1),(150,1,1),(151,1,1),(152,2,1),(153,6,1),(154,1,1);
/*!40000 ALTER TABLE `orderprocessing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `OnlineOrder` tinyint(1) DEFAULT NULL,
  `ShippingCost` decimal(6,2) DEFAULT NULL,
  `TrackingNumber` varchar(100) DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `order_FK` (`CustomerID`),
  KEY `order_FK2` (`EmployeeID`),
  CONSTRAINT `order_FK` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON UPDATE CASCADE,
  CONSTRAINT `order_FK2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON UPDATE CASCADE,
  CONSTRAINT `ShippingCost` CHECK ((`ShippingCost` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (100,'2021-04-29 01:32:48',1,52.81,'zt484847190513',1004,1000),(101,'2021-04-29 01:32:48',1,9.68,'zt936250862272',1000,1001),(102,'2021-04-29 01:32:48',0,NULL,NULL,1030,NULL),(103,'2021-04-29 01:32:48',0,NULL,NULL,1033,NULL),(104,'2021-04-29 01:32:48',1,175.97,'zt930335363327',1005,1002),(105,'2021-04-29 01:32:48',1,100.84,'zt391151928545',1006,1003),(106,'2021-04-29 01:32:48',1,74.10,'zt170462142565',1001,1004),(107,'2021-04-29 01:32:48',0,NULL,NULL,1040,NULL),(108,'2021-04-29 01:32:48',0,NULL,NULL,1041,NULL),(109,'2021-04-29 01:32:48',0,NULL,NULL,1045,NULL),(110,'2021-04-29 01:32:48',0,NULL,NULL,1026,NULL),(111,'2021-04-29 01:32:48',1,78.16,'zt804577784062',1009,1005),(112,'2021-04-29 01:32:48',1,28.57,'zt937136820125',1010,1006),(113,'2021-04-29 01:32:48',1,104.84,'zt224311098363',1012,1007),(114,'2021-04-29 01:32:48',1,52.89,'zt179428432934',1023,1008),(115,'2021-04-29 01:32:48',1,64.99,'zt805188658922',1019,1009),(116,'2021-04-29 01:32:48',1,199.99,'zt803038270455',1021,1001),(117,'2021-04-29 01:32:48',0,NULL,NULL,1034,NULL),(118,'2021-04-29 01:32:48',0,NULL,NULL,1036,NULL),(119,'2021-04-29 01:32:48',0,NULL,NULL,1038,NULL),(120,'2021-04-29 01:32:48',1,85.26,'zt478536248554',1022,1002),(121,'2021-04-29 01:32:48',1,103.70,'zt217521267192',1024,1003),(122,'2021-04-29 01:32:48',1,67.80,'zt166414883706',1025,1004),(123,'2021-04-29 01:32:48',0,NULL,NULL,1054,NULL),(124,'2021-04-29 01:32:48',1,102.10,'zt751762713513',1029,1005),(125,'2021-04-29 01:32:48',1,189.66,'zt467504605701',1002,1006),(126,'2021-04-29 01:32:48',0,NULL,NULL,1018,NULL),(127,'2021-04-29 01:32:48',0,NULL,NULL,1044,NULL),(128,'2021-04-29 01:32:48',0,NULL,NULL,1050,NULL),(129,'2021-04-29 01:32:48',1,166.18,'zt268858978002',1032,1007),(130,'2021-04-29 01:32:48',1,52.27,'zt618665363135',1039,1008),(131,'2021-04-29 01:32:48',1,199.10,'zt211862641543',1007,1009),(132,'2021-04-29 01:32:48',1,6.18,'zt088876443329',1042,1000),(133,'2021-04-29 01:32:48',0,NULL,NULL,1014,NULL),(134,'2021-04-29 01:32:48',0,NULL,NULL,1015,NULL),(135,'2021-04-29 01:32:48',0,NULL,NULL,1017,NULL),(136,'2021-04-29 01:32:48',1,138.58,'zt526562421031',1047,1001),(137,'2021-04-29 01:32:48',1,37.40,'zt421953511490',1008,1002),(138,'2021-04-29 01:32:48',1,191.54,'zt823697100563',1048,1003),(139,'2021-04-29 01:32:48',0,NULL,NULL,1013,NULL),(140,'2021-04-29 01:32:48',0,NULL,NULL,1035,NULL),(141,'2021-04-29 01:32:48',1,93.27,'zt896844603368',1052,1004),(142,'2021-04-29 01:32:48',1,23.76,'zt244859774379',1027,1005),(143,'2021-04-29 01:32:48',1,196.57,'zt034653146546',1057,1006),(144,'2021-04-29 01:32:48',0,NULL,NULL,1037,NULL),(145,'2021-04-29 01:32:48',0,NULL,NULL,1046,NULL),(146,'2021-04-29 01:32:48',1,161.86,'zt781984133539',1028,1007),(147,'2021-04-29 01:32:48',1,121.49,'zt701345639835',1031,1008),(148,'2021-04-29 01:32:48',1,59.20,'zt866992256601',1051,1009),(149,'2021-04-29 01:32:48',1,41.56,'zt942473507038',1055,1000),(150,'2021-04-29 01:32:48',0,NULL,NULL,1036,NULL),(151,'2021-04-29 01:32:48',0,NULL,NULL,1036,NULL),(152,'2021-04-29 01:32:48',1,69.28,'zt879436912098',1016,1002),(153,'2021-04-29 01:32:48',0,NULL,NULL,1056,NULL),(154,'2021-04-29 01:32:48',1,53.48,'zt703978550633',1043,1003);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08 19:05:17
