-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbankfinal
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Address Line 1` varchar(20) DEFAULT NULL,
  `Address Line 2` varchar(20) DEFAULT NULL,
  `Address ID` int(11) NOT NULL,
  PRIMARY KEY (`Address ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('313','Huntigton Avenue',31),('908','Jamaica Plain',32),('347','bolyston street',33),('818','tetlow',34),('342','framigham',35),('528','roxbury',36),('522','symphony',37),('134','prudential',38),('915','hammond street',39),('793','public alley',40),('166','private alley',41),('440','ochestra',42),('566','harmony',43),('122','jhonsson',44),('313','kilmarock',45),('129','pittusburg',46),('542','peterborough',47),('307','dalton',48),('382','huntington',49),('165','north lane',50),('439','arligelly',51),('445','starewse',52),('426','groove st',53),('304','droveeing st',54),('514','hartly st',55),('796','kassone st',56),('970','kronse st',57),('766','manuver st',58),('778','maxie road',59),('442','squllivan st',60),('28','Huntigton Avenue',471),('62','Jamaica Plain',472),('40','bolyston street',473),('34','tetlow',474),('62','framigham',475),('39','roxbury',476),('74','symphony',477),('40','prudential',478),('70','hammond street',479),('14','public alley',480),('28','private alley',481),('34','ochestra',482),('47','harmony',483),('46','jhonsson',484),('19','kilmarock',485),('12','pittusburg',486),('32','peterborough',487),('19','dalton',488),('75','huntington',489),('57','north lane',490),('23','arligelly',491),('65','starewse',492),('15','groove st',493),('49','droveeing st',494),('33','hartly st',495),('51','kassone st',496),('77','kronse st',497),('53','manuver st',498),('14','maxie road',499),('69','squllivan st',500),('88','Huntigton Avenue',501),('89','Jamaica Plain',502),('79','bolyston street',503),('87','tetlow',504),('76','framigham',505),('48','roxbury',506),('92','symphony',507),('56','prudential',508),('86','hammond street',509),('13','public alley',510);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admistration`
--

DROP TABLE IF EXISTS `admistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admistration` (
  `Hospital Employee ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Address ID` int(11) DEFAULT NULL,
  `Hospital ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Hospital Employee ID`),
  KEY `IX_Relationship27` (`Address ID`),
  KEY `IX_Relationship29` (`Hospital ID`),
  CONSTRAINT `Relationship27` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`),
  CONSTRAINT `Relationship29` FOREIGN KEY (`Hospital ID`) REFERENCES `hospital` (`Hospital ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admistration`
--

LOCK TABLES `admistration` WRITE;
/*!40000 ALTER TABLE `admistration` DISABLE KEYS */;
INSERT INTO `admistration` VALUES (591,'Yu Ahn',31,441),(592,'Yi-Feng Alvarez',32,442),(593,'Yan Austin',33,443),(594,'William Barrett',34,444),(595,'Viacheslav Benchimol',35,445),(596,'Tiffanie Bosson',36,446),(597,'Thanadtha Brown',37,447),(598,'Tadamitsu Carrow',38,448),(599,'Sompop Chang',39,449),(600,'Shannon Cheesebro',40,450),(601,'Scott Cheng',41,451),(602,'Sangjo Chou',42,452),(603,'Sachie Clark',43,453),(604,'Robert Crunelle',44,454),(605,'Rikin Davis',45,455),(606,'Preston Doorey',46,456),(607,'Peter Espinosa',47,457),(608,'Pallavi Fox',48,458),(609,'Nicole Gao',49,459),(610,'Nawaz Georges',50,460),(611,'Montero Greene',51,461),(612,'Michael Guill',52,462),(613,'Matthew Hanan',53,463),(614,'Masayoshi Ho',54,464),(615,'Maria Hong',55,465),(616,'Yu Ahn',56,466),(617,'Yi-Feng Alvarez',57,467),(618,'Yan Austin',58,468),(619,'William Barrett',59,469),(620,'Viacheslav Benchimol',60,470);
/*!40000 ALTER TABLE `admistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing information`
--

DROP TABLE IF EXISTS `billing information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing information` (
  `Bill ID` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Tax` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `Order ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Bill ID`),
  KEY `IX_Relationship21` (`Order ID`),
  CONSTRAINT `Relationship21` FOREIGN KEY (`Order ID`) REFERENCES `orders` (`Order ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing information`
--

LOCK TABLES `billing information` WRITE;
/*!40000 ALTER TABLE `billing information` DISABLE KEYS */;
INSERT INTO `billing information` VALUES (751,1383,30,1413,713),(752,1255,33,1288,704),(753,1316,50,1366,747),(754,1239,37,1276,736),(755,1236,32,1268,713),(756,1186,39,1225,744),(757,975,28,1003,712),(758,1431,36,1467,738),(759,1474,41,1515,728),(760,917,50,967,748),(761,1281,43,1324,710),(762,945,41,986,731),(763,1371,41,1412,707),(764,1317,49,1366,728),(765,1009,45,1054,713),(766,1099,43,1142,702),(767,1134,25,1159,734),(768,1089,43,1132,729),(769,1188,43,1231,719),(770,1151,42,1193,732),(771,950,45,995,720),(772,996,31,1027,733),(773,1184,39,1223,708),(774,1460,26,1486,720),(775,1089,40,1129,744),(776,1094,22,1116,743),(777,1427,42,1469,738),(778,1083,27,1110,720),(779,1252,21,1273,717),(780,1282,23,1305,746),(781,1059,29,1088,705),(782,1432,40,1472,723),(783,1328,34,1362,732),(784,1009,36,1045,749),(785,1383,39,1422,726),(786,911,40,951,724),(787,1500,36,1536,747),(788,1487,41,1528,748),(789,1038,44,1082,738),(790,1019,33,1052,718),(791,1124,27,1151,709),(792,1379,33,1412,716),(793,1372,39,1411,750),(794,1055,24,1079,709),(795,1019,32,1051,728),(796,1437,20,1457,743),(797,1050,23,1073,716),(798,1391,26,1417,732),(799,1320,25,1345,713),(800,1078,33,1111,730);
/*!40000 ALTER TABLE `billing information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood bank`
--

DROP TABLE IF EXISTS `blood bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood bank` (
  `Blood Bank ID` int(11) NOT NULL,
  `Blood Bank Name` char(20) NOT NULL,
  `Timings ID` varchar(20) DEFAULT NULL,
  `Employee ID` int(11) DEFAULT NULL,
  `Address ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Blood Bank ID`),
  KEY `IX_Relationship1` (`Timings ID`),
  KEY `IX_Relationship9` (`Employee ID`),
  KEY `IX_Relationship12` (`Address ID`),
  CONSTRAINT `Relationship1` FOREIGN KEY (`Timings ID`) REFERENCES `timings` (`Timings ID`),
  CONSTRAINT `Relationship12` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`),
  CONSTRAINT `Relationship9` FOREIGN KEY (`Employee ID`) REFERENCES `lab assistant` (`Employee ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood bank`
--

LOCK TABLES `blood bank` WRITE;
/*!40000 ALTER TABLE `blood bank` DISABLE KEYS */;
INSERT INTO `blood bank` VALUES (91,'Blood Alliance','1',61,31),(92,'Community Blood','2',62,32),(93,'OneBlood','3',63,33),(94,'Floridas BC','4',64,34),(95,'LifeSouth BC','5',65,35),(96,'Northwest Florida BC','6',66,36),(97,'United States BC','7',67,37),(98,'Southeastern BC','8',68,38),(99,'Suncoast Blood Bank','9',69,39),(100,'Renovation BC','10',70,40),(101,'Blood Assurance','11',71,41),(102,'LifeSouth BC','12',72,42),(103,'Shepeard BC','13',73,43),(104,'Southeastern BB','14',74,44),(105,'Central Illinois BC','15',75,45),(106,'BC of Illinois','16',76,46),(107,'Heartland BC','17',77,47),(108,'LifeSource','18',78,48),(109,' Valley Regional BC','19',79,49),(110,'Rock River Valley','20',80,50),(111,'Community BC','21',81,51),(112,'Heartland BC','22',82,52),(113,'Indiana BC','23',83,53),(114,'South Bend Medical','24',84,54),(115,'Community BC','25',85,55),(116,'BC Ozarks','26',86,56),(117,'Mississippi BC','27',87,57),(118,'unyts','28',88,58),(119,'Hemacare','29',89,59),(120,'NY Blood Center','30',90,60);
/*!40000 ALTER TABLE `blood bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood bank contact`
--

DROP TABLE IF EXISTS `blood bank contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood bank contact` (
  `Blood Bank ID` int(11) NOT NULL,
  `Contact ID` int(11) NOT NULL,
  PRIMARY KEY (`Blood Bank ID`,`Contact ID`),
  KEY `Relationship3` (`Contact ID`),
  CONSTRAINT `Relationship2` FOREIGN KEY (`Blood Bank ID`) REFERENCES `blood bank` (`Blood Bank ID`),
  CONSTRAINT `Relationship3` FOREIGN KEY (`Contact ID`) REFERENCES `contact details` (`Contact ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood bank contact`
--

LOCK TABLES `blood bank contact` WRITE;
/*!40000 ALTER TABLE `blood bank contact` DISABLE KEYS */;
INSERT INTO `blood bank contact` VALUES (91,281),(92,282),(93,283),(94,284),(95,285),(96,286),(97,287),(98,288),(99,289),(100,290),(101,291),(102,292),(103,293),(104,294),(105,295),(106,296),(107,297),(108,298),(109,299),(110,300),(111,301),(112,302),(113,303),(114,304),(115,305),(116,306),(117,307),(118,308),(119,309),(120,310);
/*!40000 ALTER TABLE `blood bank contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood inventory`
--

DROP TABLE IF EXISTS `blood inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood inventory` (
  `Blood Group` varchar(20) NOT NULL,
  `Blood ID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Date of Donation` varchar(20) NOT NULL,
  `Blood Bank ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Blood ID`),
  KEY `IX_Relationship6` (`Blood Bank ID`),
  CONSTRAINT `Relationship6` FOREIGN KEY (`Blood Bank ID`) REFERENCES `blood bank` (`Blood Bank ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood inventory`
--

LOCK TABLES `blood inventory` WRITE;
/*!40000 ALTER TABLE `blood inventory` DISABLE KEYS */;
INSERT INTO `blood inventory` VALUES ('A-',121,390,'2017-05-05',91),('A+',122,500,'2017-05-25',119),('B-',123,500,'2017-04-21',120),('B+',124,5100,'2017-05-18',100),('A-',125,413,'2017-05-11',93),('AB-',126,317,'2017-06-05',111),('AB+',127,272,'2017-05-10',119),('O-',128,635,'2017-04-30',95),('O+',129,558,'2017-05-17',116),('A+',130,472,'2017-05-01',94),('A-',131,617,'5/14/2017',108),('B-',132,383,'5/9/2017',96),('O+',133,320,'4/24/2017',109),('A-',134,732,'4/30/2017',110),('A+',135,267,'5/14/2017',109),('B-',136,240,'4/19/2017',103),('B+',137,373,'5/31/2017',92),('A-',138,398,'5/9/2017',98),('AB-',139,652,'5/26/2017',94),('AB+',140,642,'5/3/2017',119),('O-',141,554,'5/21/2017',112),('O+',142,259,'5/18/2017',104),('A+',143,570,'5/2/2017',96),('A-',144,546,'5/13/2017',98),('B-',145,648,'5/1/2017',98),('O+',146,687,'5/18/2017',110),('A-',147,516,'4/21/2017',99),('A+',148,465,'5/10/2017',115),('B-',149,572,'4/21/2017',118),('B+',150,340,'4/22/2017',99),('A-',151,652,'5/8/2017',92),('AB-',152,420,'5/29/2017',104),('AB+',153,485,'5/5/2017',108),('O-',154,596,'4/26/2017',115),('O+',155,573,'5/19/2017',118),('A+',156,539,'5/2/2017',101),('A-',157,573,'5/7/2017',114),('B-',158,657,'5/6/2017',118),('O+',159,537,'4/28/2017',109),('A-',160,415,'5/2/2017',110),('A+',161,343,'4/29/2017',103),('B-',162,347,'5/17/2017',107),('B+',163,711,'4/29/2017',104),('A-',164,292,'5/10/2017',109),('AB-',165,347,'5/5/2017',119),('AB+',166,314,'4/24/2017',104),('O-',167,491,'5/28/2017',94),('O+',168,678,'5/1/2017',116),('A+',169,360,'5/24/2017',91),('A-',170,448,'4/28/2017',119),('B-',171,583,'4/29/2017',91),('O+',172,518,'4/23/2017',120),('A-',173,353,'4/20/2017',119),('A+',174,408,'4/19/2017',108),('B-',175,398,'5/16/2017',106),('B+',176,265,'4/22/2017',99),('A-',177,682,'4/30/2017',113),('AB-',178,261,'4/21/2017',114),('AB+',179,522,'4/30/2017',117),('O-',180,277,'5/4/2017',95),('O+',181,704,'4/27/2017',92),('A+',182,629,'5/3/2017',109),('A-',183,610,'5/3/2017',116),('B-',184,269,'5/10/2017',110),('O+',185,634,'5/20/2017',95),('A-',186,550,'5/22/2017',91),('A+',187,257,'5/30/2017',108),('B-',188,567,'5/25/2017',92),('B+',189,620,'5/27/2017',102),('A-',190,729,'5/10/2017',113),('AB-',191,258,'5/9/2017',94),('AB+',192,341,'5/10/2017',107),('O-',193,338,'5/9/2017',93),('O+',194,285,'5/16/2017',101),('A+',195,393,'4/25/2017',114),('A-',196,602,'4/20/2017',113),('B-',197,507,'5/11/2017',117),('O+',198,586,'5/20/2017',113),('A-',199,666,'4/24/2017',102),('A+',200,356,'4/22/2017',94);
/*!40000 ALTER TABLE `blood inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger UpdatedPrice_trigger
after update on `blood inventory`
for each row
begin
declare updated_price int;
set updated_price= new.price;

insert into UpdatedPrice(`Blood ID`, `Blood Group`, Price, updated_price)
values(old.`Blood ID`,old.`Blood Group`,old.Price, updated_price);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `blood shipment`
--

DROP TABLE IF EXISTS `blood shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blood shipment` (
  `Shipment ID` int(11) NOT NULL,
  `Address ID` int(11) DEFAULT NULL,
  `Bill ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Shipment ID`),
  KEY `IX_Relationship18` (`Address ID`),
  KEY `IX_Relationship22` (`Bill ID`),
  CONSTRAINT `Relationship18` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`),
  CONSTRAINT `Relationship22` FOREIGN KEY (`Bill ID`) REFERENCES `billing information` (`Bill ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood shipment`
--

LOCK TABLES `blood shipment` WRITE;
/*!40000 ALTER TABLE `blood shipment` DISABLE KEYS */;
INSERT INTO `blood shipment` VALUES (801,490,751),(802,505,752),(803,489,753),(804,480,754),(805,508,755),(806,498,756),(807,507,757),(808,502,758),(809,473,759),(810,504,760),(811,487,761),(812,504,762),(813,486,763),(814,488,764),(815,493,765),(816,491,766),(817,489,767),(818,479,768),(819,489,769),(820,494,770),(821,504,771),(822,510,772),(823,471,773),(824,486,774),(825,485,775),(826,501,776),(827,478,777),(828,510,778),(829,507,779),(830,485,780),(831,501,781),(832,475,782),(833,473,783),(834,494,784),(835,493,785),(836,472,786),(837,500,787),(838,481,788),(839,471,789),(840,490,790),(841,494,791),(842,510,792),(843,492,793),(844,497,794),(845,510,795),(846,478,796),(847,487,797),(848,487,798),(849,501,799),(850,500,800);
/*!40000 ALTER TABLE `blood shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact details`
--

DROP TABLE IF EXISTS `contact details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact details` (
  `Email ID` varchar(20) DEFAULT NULL,
  `Phone Number` int(11) DEFAULT NULL,
  `Contact ID` int(11) NOT NULL,
  PRIMARY KEY (`Contact ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact details`
--

LOCK TABLES `contact details` WRITE;
/*!40000 ALTER TABLE `contact details` DISABLE KEYS */;
INSERT INTO `contact details` VALUES ('life@company.com',1462106522,281),('life@company.com',1462106522,282),('life@company.com',1462106522,283),('life@company.com',1462106522,284),('life@company.com',1462106522,285),('life@company.com',1462106522,286),('life@company.com',1462106522,287),('life@company.com',1462106522,288),('life@company.com',1462106522,289),('life@company.com',1462106522,290),('life@company.com',1462106522,291),('life@company.com',1462106522,292),('life@company.com',1462106522,293),('life@company.com',1462106522,294),('life@company.com',1462106522,295),('life@company.com',1462106522,296),('life@company.com',1462106522,297),('life@company.com',1462106522,298),('life@company.com',1462106522,299),('life@company.com',1462106522,300),('life@company.com',1231161204,301),('life@company.com',1754052484,302),('life@company.com',1809201926,303),('life@company.com',1935154825,304),('life@company.com',2115975449,305),('life@company.com',1500490471,306),('life@company.com',1682505257,307),('life@company.com',1161751228,308),('life@company.com',1411239218,309),('life@company.com',1285254713,310),('donor@company.com',1462106522,551),('donor@company.com',1462106522,552),('donor@company.com',1462106522,553),('donor@company.com',1462106522,554),('donor@company.com',1462106522,555),('donor@company.com',1462106522,556),('donor@company.com',1462106522,557),('donor@company.com',1462106522,558),('donor@company.com',1462106522,559),('donor@company.com',1462106522,560),('donor@company.com',1462106522,561),('donor@company.com',1462106522,562),('donor@company.com',1462106522,563),('donor@company.com',1462106522,564),('donor@company.com',1462106522,565),('donor@company.com',1462106522,566),('donor@company.com',1462106522,567),('donor@company.com',1462106522,568),('donor@company.com',1462106522,569),('donor@company.com',1462106522,570),('paitent@company.com',1956311063,621),('paitent@company.com',1282957635,622),('paitent@company.com',1624300033,623),('paitent@company.com',1260062113,624),('paitent@company.com',1973908084,625),('paitent@company.com',1261495223,626),('paitent@company.com',1380340653,627),('paitent@company.com',1932951206,628),('paitent@company.com',1501724550,629),('paitent@company.com',1134319288,630),('paitent@company.com',1280447934,631),('paitent@company.com',1259328816,632),('paitent@company.com',1117877851,633),('paitent@company.com',1567435206,634),('paitent@company.com',1705692639,635),('paitent@company.com',1388741406,636),('paitent@company.com',1141916902,637),('paitent@company.com',1179106347,638),('paitent@company.com',1824614689,639),('paitent@company.com',1263776481,640),('paitent@company.com',1664252644,641),('paitent@company.com',1787951709,642),('paitent@company.com',1338376704,643),('paitent@company.com',1896476635,644),('paitent@company.com',1245115207,645),('paitent@company.com',1213887874,646),('paitent@company.com',1915580508,647),('paitent@company.com',1475211628,648),('paitent@company.com',1472622599,649),('paitent@company.com',1761139756,650),('paitent@company.com',1952608719,651),('paitent@company.com',1326823059,652),('paitent@company.com',1293097781,653),('paitent@company.com',1922274302,654),('paitent@company.com',1177611408,655),('paitent@company.com',1709980276,656),('paitent@company.com',1144613568,657),('paitent@company.com',1387474097,658),('paitent@company.com',1633086623,659),('paitent@company.com',1813512351,660);
/*!40000 ALTER TABLE `contact details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation type`
--

DROP TABLE IF EXISTS `donation type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation type` (
  `Blood ID` int(11) NOT NULL,
  `Donor ID` int(11) NOT NULL,
  PRIMARY KEY (`Blood ID`,`Donor ID`),
  KEY `Relationship8` (`Donor ID`),
  CONSTRAINT `Relationship7` FOREIGN KEY (`Blood ID`) REFERENCES `blood inventory` (`Blood ID`),
  CONSTRAINT `Relationship8` FOREIGN KEY (`Donor ID`) REFERENCES `donor` (`Donor ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation type`
--

LOCK TABLES `donation type` WRITE;
/*!40000 ALTER TABLE `donation type` DISABLE KEYS */;
INSERT INTO `donation type` VALUES (123,571),(142,572),(197,573),(198,574),(132,575),(182,576),(200,577),(188,578),(166,579),(131,580),(160,581),(124,582),(173,583),(187,584),(195,585),(166,586),(196,587),(121,588),(172,589),(154,590);
/*!40000 ALTER TABLE `donation type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donor` (
  `Donor ID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Address ID` int(11) DEFAULT NULL,
  `Person ID` int(11) DEFAULT NULL,
  `Contact ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Donor ID`),
  KEY `IX_Relationship14` (`Address ID`),
  KEY `IX_Relationship24` (`Person ID`),
  KEY `IX_Relationship25` (`Contact ID`),
  CONSTRAINT `Relationship14` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`),
  CONSTRAINT `Relationship24` FOREIGN KEY (`Person ID`) REFERENCES `personal details` (`Person ID`),
  CONSTRAINT `Relationship25` FOREIGN KEY (`Contact ID`) REFERENCES `contact details` (`Contact ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (571,'Willem Baxter',471,341,551),(572,'Valle Berkman',472,342,552),(573,'Thomas Brandt',473,343,553),(574,'Taylor Buckley',474,344,554),(575,'Sung Casasayas',475,345,555),(576,'Spencer Chang',476,346,556),(577,'Scott Chen',477,347,557),(578,'Satiya Cheung',478,348,558),(579,'Samantha Chu',479,349,559),(580,'Ryan Cloke',480,350,560),(581,'Robert Cruse',481,351,561),(582,'Richard Dean',482,352,562),(583,'Phill Doyle',483,353,563),(584,'Peter Ferrero',484,354,564),(585,'Owen Franzoni',485,355,565),(586,'Nishant Gao',486,356,566),(587,'Nathan Gibb',487,357,567),(588,'Mohtadi Greer',488,358,568),(589,'Michael Guinn',489,359,569),(590,'Willem Baxter',490,360,570);
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `Hospital ID` int(11) NOT NULL,
  `Hospital Name` char(20) DEFAULT NULL,
  `Address ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Hospital ID`),
  KEY `IX_Relationship13` (`Address ID`),
  CONSTRAINT `Relationship13` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (441,'Bay Pines',471),(442,'Marquette Hospital',472),(443,'Carle Hospital',473),(444,'Kaiser Hospital',474),(445,'Warren Hospital',475),(446,'St. Lukes Hospital',476),(447,'Maine Medical',477),(448,'Athens Medical',478),(449,'Children\'s Medica',479),(450,'Brigham Hospital',480),(451,'Stanford Mdical',481),(452,'Fayetteville Medical',482),(453,'Penn Hospital',483),(454,'Bay Pines',484),(455,'Marquette Hospital',485),(456,'Carle Hospital',486),(457,'Kaiser Hospital',487),(458,'Warren Hospital',488),(459,'St. Lukes Hospital',489),(460,'Maine Medical',490),(461,'Athens Medical',491),(462,'Children\'s Medica',492),(463,'Brigham Hospital',493),(464,'Stanford Mdical',494),(465,'Fayetteville Medical',495),(466,'Penn Hospital',496),(467,'Bay Pines',497),(468,'Marquette Hospital',498),(469,'Carle Hospital',499),(470,'Kaiser Hospital',500),(471,'Warren Hospital',501),(472,'St. Lukes Hospital',502),(473,'Maine Medical',503),(474,'Athens Medical',504),(475,'Children\'s Medica',505),(476,'Brigham Hospital',506),(477,'Stanford Mdical',507),(478,'Fayetteville Medical',508),(479,'Penn Hospital',509),(480,'Boston Medical',510),(901,'Warren Hospital',501),(902,'St. Lukes Hospital',502),(903,'Maine Medical',503),(904,'Athens Medical',504),(905,'Children\'s Medica',505),(906,'Brigham Hospital',506),(907,'Stanford Mdical',507),(908,'Fayetteville Medical',508),(909,'Penn Hospital',509),(910,'Boston Medical',510);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital contact`
--

DROP TABLE IF EXISTS `hospital contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital contact` (
  `Contact ID` int(11) NOT NULL,
  `Hospital ID` int(11) NOT NULL,
  PRIMARY KEY (`Contact ID`,`Hospital ID`),
  KEY `Relationship5` (`Hospital ID`),
  CONSTRAINT `Relationship4` FOREIGN KEY (`Contact ID`) REFERENCES `contact details` (`Contact ID`),
  CONSTRAINT `Relationship5` FOREIGN KEY (`Hospital ID`) REFERENCES `hospital` (`Hospital ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital contact`
--

LOCK TABLES `hospital contact` WRITE;
/*!40000 ALTER TABLE `hospital contact` DISABLE KEYS */;
INSERT INTO `hospital contact` VALUES (281,441),(282,442),(283,443),(284,444),(285,445),(286,446),(287,447),(288,448),(289,449),(290,450),(291,451),(292,452),(293,453),(294,454),(295,455),(296,456),(297,457),(298,458),(299,459),(300,460),(301,461),(302,462),(303,463),(304,464),(305,465),(306,466),(307,467),(308,468),(309,469),(310,470),(301,901),(302,902),(303,903),(304,904),(305,905),(306,906),(307,907),(308,908),(309,909),(310,910);
/*!40000 ALTER TABLE `hospital contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab assistant`
--

DROP TABLE IF EXISTS `lab assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab assistant` (
  `Employee ID` int(11) NOT NULL,
  `Assistant Name` varchar(20) DEFAULT NULL,
  `Address ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Employee ID`),
  KEY `IX_Relationship11` (`Address ID`),
  CONSTRAINT `Relationship11` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab assistant`
--

LOCK TABLES `lab assistant` WRITE;
/*!40000 ALTER TABLE `lab assistant` DISABLE KEYS */;
INSERT INTO `lab assistant` VALUES (61,'Willem Baxter',31),(62,'Valle Berkman',32),(63,'Thomas Brandt',33),(64,'Taylor Buckley',34),(65,'Sung Casasayas',35),(66,'Spencer Chang',36),(67,'Scott Chen',37),(68,'Satiya Cheung',38),(69,'Samantha Chu',39),(70,'Ryan Cloke',40),(71,'Robert Cruse',41),(72,'Richard Dean',42),(73,'Phill Doyle',43),(74,'Peter Ferrero',44),(75,'Owen Franzoni',45),(76,'Nishant Gao',46),(77,'Nathan Gibb',47),(78,'Mohtadi Greer',48),(79,'Michael Guinn',49),(80,'Matthew Hawkins',50),(81,'Martinez Hofman',51),(82,'Wei Beatty',52),(83,'Trent Blakely',53),(84,'Theodore Brodsky',54),(85,'Tara Cantrock',55),(86,'Stuti Cha',56),(87,'Simond Chat',57),(88,'Sean Chen',58),(89,'Sara Chomitz',59),(90,'Salas Chung',60);
/*!40000 ALTER TABLE `lab assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Order ID` int(11) NOT NULL,
  `Blood Group` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Blood Bank Name` varchar(20) NOT NULL,
  `Address ID` int(11) DEFAULT NULL,
  `Hospital ID` int(11) DEFAULT NULL,
  `Hospital Employee ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Order ID`),
  KEY `IX_Relationship16` (`Address ID`),
  KEY `IX_Relationship28` (`Hospital ID`),
  KEY `IX_Relationship30` (`Hospital Employee ID`),
  CONSTRAINT `Relationship16` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`),
  CONSTRAINT `Relationship28` FOREIGN KEY (`Hospital ID`) REFERENCES `hospital` (`Hospital ID`),
  CONSTRAINT `Relationship30` FOREIGN KEY (`Hospital Employee ID`) REFERENCES `admistration` (`Hospital Employee ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (701,'A-',9,'OneBlood',32,455,609),(702,'A+',16,'Blood Alliance',34,463,620),(703,'B-',11,'Community Blood',43,464,601),(704,'B+',16,'OneBlood',54,447,594),(705,'A-',8,'Floridas BC',60,464,600),(706,'AB-',5,'LifeSouth BC',54,463,597),(707,'AB+',8,'Northwest Florida BC',54,454,618),(708,'O-',18,'United States BC',54,445,611),(709,'O+',19,'Southeastern BC',35,460,613),(710,'A+',9,'Suncoast Blood Bank',47,468,607),(711,'A-',6,'Renovation BC',43,464,607),(712,'B-',20,'Blood Assurance',40,451,603),(713,'O+',12,'LifeSouth BC',38,442,604),(714,'A-',20,'Shepeard BC',46,469,603),(715,'A+',15,'Southeastern BB',45,459,615),(716,'B-',14,'Central Illinois BC',42,466,594),(717,'B+',5,'BC of Illinois',35,459,601),(718,'A-',8,'Heartland BC',34,451,611),(719,'AB-',12,'LifeSource ',33,463,597),(720,'AB+',13,' Valley Regional BC',56,452,605),(721,'O-',17,'Rock River Valley ',42,453,616),(722,'O+',10,'Community BC',31,445,609),(723,'A+',14,'Heartland BC',46,469,611),(724,'A-',7,'Indiana BC',52,446,592),(725,'B-',15,'South Bend Medical',44,453,591),(726,'O+',13,'Community BC',49,448,604),(727,'A-',19,'BC Ozarks ',45,457,594),(728,'A+',13,'Mississippi BC',35,465,607),(729,'B-',10,'unyts',55,449,601),(730,'B+',10,'Hemacare',32,454,619),(731,'A-',11,'NY Blood Center',38,441,615),(732,'AB-',10,'Blood Alliance',41,467,618),(733,'AB+',7,'Community Blood',37,457,610),(734,'O-',7,'OneBlood',48,463,604),(735,'O+',17,'Floridas BC',54,461,613),(736,'A+',13,'LifeSouth BC',51,449,595),(737,'A-',18,'Northwest Florida BC',43,445,596),(738,'B-',14,'United States BC',56,466,600),(739,'O+',9,'Southeastern BC',49,447,612),(740,'A-',6,'Suncoast Blood Bank',52,441,612),(741,'A+',11,'Renovation BC',45,441,599),(742,'B-',7,'Blood Assurance',42,449,603),(743,'B+',10,'LifeSouth BC',46,450,619),(744,'A-',11,'Shepeard BC',52,467,617),(745,'AB-',17,'Southeastern BB',59,443,607),(746,'AB+',17,'Central Illinois BC',53,453,609),(747,'O-',13,'BC of Illinois',56,454,591),(748,'O+',6,'Heartland BC',60,463,613),(749,'A+',5,'LifeSource ',33,469,614),(750,'A-',17,'LifeSource ',45,466,592);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!50001 DROP VIEW IF EXISTS `orderstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `orderstatus` AS SELECT 
 1 AS `Expected Date`,
 1 AS `Expected Time`,
 1 AS `Status`,
 1 AS `Shipment ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `paitents`
--

DROP TABLE IF EXISTS `paitents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paitents` (
  `Paitent ID` int(11) NOT NULL,
  `First Name` varchar(20) DEFAULT NULL,
  `Last Name` varchar(20) DEFAULT NULL,
  `Address ID` int(11) DEFAULT NULL,
  `Person ID` int(11) DEFAULT NULL,
  `Contact ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Paitent ID`),
  KEY `IX_Relationship15` (`Address ID`),
  KEY `IX_Relationship23` (`Person ID`),
  KEY `IX_Relationship26` (`Contact ID`),
  CONSTRAINT `Relationship15` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`),
  CONSTRAINT `Relationship23` FOREIGN KEY (`Person ID`) REFERENCES `personal details` (`Person ID`),
  CONSTRAINT `Relationship26` FOREIGN KEY (`Contact ID`) REFERENCES `contact details` (`Contact ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paitents`
--

LOCK TABLES `paitents` WRITE;
/*!40000 ALTER TABLE `paitents` DISABLE KEYS */;
INSERT INTO `paitents` VALUES (661,'bbb','Patricia',471,361,621),(662,'Robert','Jennifer',472,362,622),(663,'sam','Elizabeth',473,363,623),(664,'William','Linda',474,364,624),(665,'David','Barbara',475,365,625),(666,'Richard','Susan',476,366,626),(667,'Joseph','Jessica',477,367,627),(668,'Thomas','Margaret',478,368,628),(669,'Charles','Sarah',479,369,629),(670,'Christopher','Karen',480,370,630),(671,'Daniel','Nancy',481,371,631),(672,'Matthew','Betty',482,372,632),(673,'Anthony','Dorothy',483,373,633),(674,'Donald','Lisa',484,374,634),(675,'Mark','Sandra',485,375,635),(676,'Paul','Ashley',486,376,636),(677,'Steven','Kimberly',487,377,637),(678,'George','Donna',488,378,638),(679,'Kenneth','Carol',489,379,639),(680,'Andrew','Michelle',490,380,640),(681,'Joshua','Emily',31,381,641),(682,'Edward','Helen',32,382,642),(683,'Brian','Amanda',33,383,643),(684,'Kevin','Melissa',34,384,644),(685,'Ronald','Deborah',35,385,645),(686,'Timothy','Stephanie',36,386,646),(687,'Jason','Laura',37,387,647),(688,'Jeffrey','Rebecca',38,388,648),(689,'Ryan','Sharon',39,389,649),(690,'Gary','Cynthia',40,390,650),(691,'Jacob','Kathleen',41,391,651),(692,'Nicholas','Shirley',42,392,652),(693,'Eric','Amy',43,393,653),(694,'Stephen','Anna',44,394,654),(695,'Jonathan','Angela',45,395,655),(696,'Larry','Ruth',46,396,656),(697,'Scott','Brenda',47,397,657),(698,'Frank','Pamela',48,398,658),(699,'Justin','Virginia',49,399,659),(700,'Brandon','Katherine',50,400,660);
/*!40000 ALTER TABLE `paitents` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger UpdatePaitentDetail_trigger
after update on paitents
for each row
begin
declare new_date datetime;
set new_date=now();

insert into UpdatePaitentDetail(`Paitent ID`,`First Name`,update_time)
values(old.`Paitent ID`,old.`First Name`, new_date);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personal details`
--

DROP TABLE IF EXISTS `personal details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal details` (
  `Age` int(11) NOT NULL,
  `Person ID` int(11) NOT NULL,
  `Date of Birth` date NOT NULL,
  `Gender` char(20) NOT NULL,
  `Blood Group` char(20) NOT NULL,
  PRIMARY KEY (`Person ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal details`
--

LOCK TABLES `personal details` WRITE;
/*!40000 ALTER TABLE `personal details` DISABLE KEYS */;
INSERT INTO `personal details` VALUES (46,341,'1980-02-21','Male','A-'),(18,342,'1959-03-19','Female','A+'),(18,343,'1946-12-25','Female','B-'),(30,344,'1996-04-17','Female','B+'),(31,345,'1980-07-21','Male','A-'),(24,346,'1983-06-10','Male','AB-'),(64,347,'1985-03-06','Female','AB+'),(32,348,'1989-06-06','Female','O-'),(45,349,'1997-03-30','Female','O+'),(30,350,'1949-03-24','Male','A+'),(42,351,'1964-03-11','Male','A-'),(59,352,'1948-08-18','Female','B-'),(45,353,'1998-03-10','Male','O+'),(63,354,'1960-05-10','Female','A-'),(35,355,'1990-08-31','Male','A+'),(39,356,'1953-07-04','Male','B-'),(45,357,'1975-06-29','Male','B+'),(42,358,'1954-10-22','Male','A-'),(63,359,'1966-07-24','Female','AB-'),(58,360,'1993-05-25','Male','AB+'),(53,361,'1959-01-29','Male','O-'),(38,362,'1992-10-24','Female','O+'),(63,363,'1976-04-19','Female','A+'),(64,364,'1951-01-31','Female','A-'),(58,365,'1994-12-12','Male','B-'),(28,366,'1953-07-12','Male','O+'),(58,367,'1994-10-18','Female','A-'),(60,368,'1975-11-02','Female','A+'),(30,369,'1956-08-16','Female','B-'),(49,370,'1974-01-01','Male','B+'),(56,371,'1955-12-15','Male','A-'),(49,372,'1987-12-26','Female','AB-'),(23,373,'1942-09-07','Male','AB+'),(57,374,'1990-03-08','Female','O-'),(37,375,'1950-08-30','Male','O+'),(29,376,'1989-01-09','Male','A+'),(24,377,'1977-06-27','Male','A-'),(21,378,'1966-03-20','Male','B-'),(31,379,'1967-08-01','Female','O+'),(57,380,'1941-10-31','Male','A-'),(45,381,'1955-09-20','Male','A+'),(64,382,'1965-02-15','Female','B-'),(55,383,'1968-10-02','Female','B+'),(26,384,'1998-06-03','Female','A-'),(43,385,'1989-02-20','Male','AB-'),(63,386,'1942-09-16','Male','AB+'),(57,387,'1962-01-30','Female','O-'),(18,388,'1940-09-13','Female','O+'),(44,389,'1973-12-30','Female','A+'),(27,390,'1954-04-05','Male','A-'),(66,391,'1980-03-13','Male','B-'),(26,392,'1959-01-21','Female','O+'),(61,393,'1992-05-14','Male','A-'),(65,394,'1982-06-05','Female','A+'),(59,395,'1970-07-18','Male','B-'),(55,396,'1982-11-09','Male','B+'),(44,397,'1980-11-26','Male','A-'),(42,398,'1981-03-16','Male','AB-'),(33,399,'1979-01-03','Female','AB+'),(27,400,'1977-02-26','Male','O-'),(20,401,'1996-04-18','Male','O+'),(43,402,'1952-07-14','Female','A+'),(25,403,'1972-08-06','Female','A-'),(39,404,'1989-07-11','Female','B-'),(45,405,'1941-12-15','Male','O+'),(60,406,'1967-11-29','Male','A-'),(33,407,'1978-10-04','Female','A+'),(66,408,'1988-12-11','Female','B-'),(33,409,'1985-07-23','Female','B+'),(19,410,'1971-01-27','Male','A-'),(23,411,'1969-01-19','Male','AB-'),(35,412,'1995-05-10','Female','AB+'),(67,413,'1966-10-27','Male','O-'),(44,414,'1941-09-12','Female','O+'),(36,415,'1965-07-12','Male','A+'),(42,416,'1957-11-22','Male','A-'),(40,417,'1968-09-14','Male','B-'),(18,418,'1946-06-01','Male','O+'),(46,419,'1985-12-01','Female','A-'),(18,420,'1980-10-13','Male','A+'),(59,421,'1969-10-27','Male','O+'),(51,422,'1983-11-28','Female','A+'),(20,423,'1942-07-02','Female','A-'),(43,424,'1990-08-24','Female','B-'),(28,425,'1980-09-08','Male','O+'),(33,426,'1987-07-22','Male','A-'),(19,427,'1955-12-23','Female','A+'),(66,428,'1961-02-17','Female','B-'),(65,429,'1976-05-21','Female','B+'),(70,430,'1961-11-06','Male','A-'),(21,431,'1979-12-26','Male','AB-'),(23,432,'1980-10-30','Female','AB+'),(54,433,'1969-07-25','Male','O-'),(25,434,'1979-01-27','Female','O+'),(60,435,'1946-06-15','Male','A+'),(49,436,'1980-11-04','Male','A-'),(51,437,'1985-05-06','Male','B-'),(67,438,'1995-11-23','Male','O+'),(58,439,'1985-02-02','Female','A-'),(50,440,'1996-01-30','Male','A+');
/*!40000 ALTER TABLE `personal details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `Expected Date` date DEFAULT NULL,
  `Expected Time` time DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Shipment ID` int(11) NOT NULL,
  PRIMARY KEY (`Shipment ID`),
  CONSTRAINT `Relationship20` FOREIGN KEY (`Shipment ID`) REFERENCES `blood shipment` (`Shipment ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('2017-04-20','23:00:00','Delivered',801),('2017-06-09','21:00:00','TBD',802),('2017-05-03','20:00:00','TBD',803),('2017-05-20','22:00:00','TBD',804),('2017-05-26','22:30:00','TBD',805),('2017-05-18','24:00:00','TBD',806),('2017-04-22','23:30:00','Delivered',807),('2017-06-11','21:30:00','TBD',808),('2017-04-23','21:30:00','Delivered',809),('2017-05-10','23:00:00','TBD',810),('2017-06-08','21:00:00','TBD',811),('2017-06-03','20:00:00','TBD',812),('2017-05-21','21:00:00','TBD',813),('2017-05-02','23:00:00','TBD',814),('2017-05-27','22:00:00','TBD',815),('2017-05-01','21:00:00','TBD',816),('2017-06-19','22:00:00','TBD',817),('2017-04-29','21:30:00','Delivered',818),('2017-05-30','21:00:00','TBD',819),('2017-05-11','21:00:00','TBD',820),('2017-05-12','22:00:00','TBD',821),('2017-04-22','21:00:00','Delivered',822),('2017-05-02','23:00:00','Delivered',823),('2017-06-09','08:00:00','TBD',824),('2017-04-25','06:30:00','Delivered',825),('2017-05-02','07:00:00','TBD',826),('2017-06-05','07:45:00','TBD',827),('2017-06-07','08:00:00','TBD',828),('2017-04-24','09:00:00','Delivered',829),('2017-06-14','10:00:00','TBD',830),('2017-06-02','09:30:00','Delivered',831),('2017-06-11','09:15:00','TBD',832),('2017-06-11','11:00:00','Delivered',833),('2017-05-03','08:30:00','TBD',834),('2017-05-23','08:15:00','TBD',835),('2017-06-20','08:30:00','TBD',836),('2017-05-05','09:30:00','TBD',837),('2017-05-15','11:30:00','TBD',838),('2017-06-11','08:00:00','TBD',839),('2017-06-13','09:00:00','TBD',840),('2017-04-24','10:00:00','Delivered',841),('2017-05-04','11:00:00','TBD',842),('2017-05-31','10:30:00','TBD',843),('2017-06-03','09:15:00','TBD',844),('2017-06-14','09:00:00','TBD',845),('2017-04-24','08:00:00','Delivered',846),('2017-06-14','07:00:00','TBD',847),('2017-05-17','08:00:00','TBD',848),('2017-06-09','06:30:00','TBD',849),('2017-04-27','07:00:00','Delivered',850);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timings`
--

DROP TABLE IF EXISTS `timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timings` (
  `Timings ID` varchar(20) NOT NULL,
  `Open Timings` time DEFAULT NULL,
  `Close Timings` time DEFAULT NULL,
  PRIMARY KEY (`Timings ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timings`
--

LOCK TABLES `timings` WRITE;
/*!40000 ALTER TABLE `timings` DISABLE KEYS */;
INSERT INTO `timings` VALUES ('1','08:00:00','23:00:00'),('10','11:00:00','23:00:00'),('11','08:30:00','21:00:00'),('12','08:15:00','20:00:00'),('13','08:30:00','21:00:00'),('14','09:30:00','23:00:00'),('15','11:30:00','22:00:00'),('16','08:00:00','21:00:00'),('17','09:00:00','22:00:00'),('18','10:00:00','21:30:00'),('19','11:00:00','21:00:00'),('2','06:30:00','21:00:00'),('20','10:30:00','21:00:00'),('21','09:15:00','22:00:00'),('22','09:00:00','21:00:00'),('23','08:00:00','23:00:00'),('24','07:00:00','23:30:00'),('25','08:00:00','21:00:00'),('26','09:00:00','23:30:00'),('27','10:00:00','21:00:00'),('28','11:00:00','21:30:00'),('29','08:00:00','22:00:00'),('3','07:00:00','20:00:00'),('30','08:30:00','22:30:00'),('4','07:45:00','22:00:00'),('5','08:00:00','22:30:00'),('6','09:00:00','24:00:00'),('7','10:00:00','23:30:00'),('8','09:30:00','21:30:00'),('9','09:15:00','21:30:00');
/*!40000 ALTER TABLE `timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `topfiveorders`
--

DROP TABLE IF EXISTS `topfiveorders`;
/*!50001 DROP VIEW IF EXISTS `topfiveorders`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `topfiveorders` AS SELECT 
 1 AS `bill ID`,
 1 AS `Blood Bank name`,
 1 AS `blood group`,
 1 AS `Quantity`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `total_bill`
--

DROP TABLE IF EXISTS `total_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total_bill` (
  `price` int(11) DEFAULT NULL,
  `Tax` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_bill`
--

LOCK TABLES `total_bill` WRITE;
/*!40000 ALTER TABLE `total_bill` DISABLE KEYS */;
INSERT INTO `total_bill` VALUES (1370,14.98),(1370,14.98),(1370,14.98),(1370,14.98),(1370,14.98),(141,1937.50),(97,-100.00),(1370,14.98);
/*!40000 ALTER TABLE `total_bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER TotalBill_tigger
 BEFORE INSERT ON Total_Bill
 
 FOR EACH ROW 

 SET @sum = new.price + new.tax */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tracking service`
--

DROP TABLE IF EXISTS `tracking service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking service` (
  `Tracking ID` int(11) NOT NULL,
  `Driver Name` char(20) DEFAULT NULL,
  `Vehicle Number` varchar(20) DEFAULT NULL,
  `Phone Number` varchar(20) DEFAULT NULL,
  `Shipment ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tracking ID`),
  KEY `IX_Relationship19` (`Shipment ID`),
  CONSTRAINT `Relationship19` FOREIGN KEY (`Shipment ID`) REFERENCES `blood shipment` (`Shipment ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking service`
--

LOCK TABLES `tracking service` WRITE;
/*!40000 ALTER TABLE `tracking service` DISABLE KEYS */;
INSERT INTO `tracking service` VALUES (851,'Sung Casasayas','AQUMTA','1295604139',801),(852,'Spencer Chang','AFYZHF','1951783265',802),(853,'Scott Chen','IFOLKX','2092745720',803),(854,'Satiya Cheung','KNIVLX','1516125303',804),(855,'Samantha Chu','MGCFZS','1645160648',805),(856,'Ryan Cloke','HCHULT','1442337524',806),(857,'Robert Cruse','MAQFMH','2066910417',807),(858,'Richard Dean','CMVJNA','1191625990',808),(859,'Phill Doyle','JNSAJT','1280744765',809),(860,'Peter Ferrero','HEVHQN','1923660937',810),(861,'Owen Franzoni','EULEQD','1572876225',811),(862,'Nishant Gao','IVTDNA','1173469244',812),(863,'Nathan Gibb','DUYIFE','1480373081',813),(864,'Mohtadi Greer','PYATKI','1796545811',814),(865,'Michael Guinn','JNBLNM','1698063717',815),(866,'Matthew Hawkins','PPWEJS','1162830493',816),(867,'Martinez Hofman','TFYNZV','1295523960',817),(868,'Sung Casasayas','NJHPUW','1996536992',818),(869,'Spencer Chang','QUQXDE','1673034438',819),(870,'Scott Chen','HJTDRW','1426011067',820),(871,'Satiya Cheung','PIRXDD','1278818004',821),(872,'Samantha Chu','QULRMA','1443879686',822),(873,'Ryan Cloke','GRXMPP','1568446514',823),(874,'Robert Cruse','SMZZBW','1314930919',824),(875,'Richard Dean','IYFPBU','1235089881',825),(876,'Phill Doyle','LXQXTE','1695917867',826),(877,'Peter Ferrero','XGHCOF','1198199308',827),(878,'Owen Franzoni','XTPAZL','1554334768',828),(879,'Nishant Gao','GUTBGG','1196264160',829),(880,'Nathan Gibb','KIJLYQ','1941108727',830),(881,'Mohtadi Greer','CXCIZM','1125136682',831),(882,'Michael Guinn','VXQCQD','1990438682',832),(883,'Matthew Hawkins','XDEGWG','1979672258',833),(884,'Martinez Hofman','WQWHBK','1732242586',834),(885,'Sung Casasayas','AURSCD','1836626528',835),(886,'Spencer Chang','GHCMVI','1374510818',836),(887,'Scott Chen','ASFVEN','1445421660',837),(888,'Satiya Cheung','MKWIHC','1303800615',838),(889,'Samantha Chu','AHDVHL','2003911186',839),(890,'Ryan Cloke','WAEQCB','1547326012',840),(891,'Robert Cruse','QOGMTI','1357999451',841),(892,'Richard Dean','TDCJRE','2050263204',842),(893,'Phill Doyle','RASGNV','2095859082',843),(894,'Peter Ferrero','FVPMHH','1343955441',844),(895,'Owen Franzoni','HZTKNB','1810616220',845),(896,'Nishant Gao','TUCXKM','2055167096',846),(897,'Nathan Gibb','GWSREQ','1397996391',847),(898,'Mohtadi Greer','JHMNNT','1121590335',848),(899,'Michael Guinn','EBDPCE','1373394502',849),(900,'Matthew Hawkins','EVNZXF','1436239821',850);
/*!40000 ALTER TABLE `tracking service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatedprice`
--

DROP TABLE IF EXISTS `updatedprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatedprice` (
  `Blood ID` int(11) DEFAULT NULL,
  `Blood Group` varchar(20) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `updated_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatedprice`
--

LOCK TABLES `updatedprice` WRITE;
/*!40000 ALTER TABLE `updatedprice` DISABLE KEYS */;
INSERT INTO `updatedprice` VALUES (122,'A+',500,500),(123,'B-',532,500),(124,'B+',719,5100),(121,'A-',390,390),(122,'A+',500,500),(123,'B-',500,500),(124,'B+',5100,5100),(125,'A-',413,413),(126,'AB-',317,317),(127,'AB+',272,272),(122,'A+',500,500),(123,'B-',500,500),(124,'B+',5100,5100),(125,'A-',413,413),(126,'AB-',317,317),(127,'AB+',272,272),(128,'O-',635,635),(128,'O-',635,635),(129,'O+',558,558),(130,'A+',472,472);
/*!40000 ALTER TABLE `updatedprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatepaitentdetail`
--

DROP TABLE IF EXISTS `updatepaitentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatepaitentdetail` (
  `Paitent ID` int(11) DEFAULT NULL,
  `First Name` varchar(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatepaitentdetail`
--

LOCK TABLES `updatepaitentdetail` WRITE;
/*!40000 ALTER TABLE `updatepaitentdetail` DISABLE KEYS */;
INSERT INTO `updatepaitentdetail` VALUES (663,'Michael','2017-04-19 19:45:20');
/*!40000 ALTER TABLE `updatepaitentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip code`
--

DROP TABLE IF EXISTS `zip code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip code` (
  `CIty` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Zipcode ID` int(11) NOT NULL,
  `Address ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Zipcode ID`),
  KEY `IX_Relationship10` (`Address ID`),
  CONSTRAINT `Relationship10` FOREIGN KEY (`Address ID`) REFERENCES `address` (`Address ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip code`
--

LOCK TABLES `zip code` WRITE;
/*!40000 ALTER TABLE `zip code` DISABLE KEYS */;
INSERT INTO `zip code` VALUES ('Juneau','Alaska',311,31),('Phoenix','Arizona',312,32),('Little Rock','Arkansas',313,33),('Sacramento','California',314,34),('Denver','Colorado',315,35),('Hartford','Connecticut',316,36),('Dover','Delaware',317,37),('Tallahassee','Florida',318,38),('Atlanta','Georgia',319,39),('Honolulu','Hawaii',320,40),('Boise','Idaho',321,41),('Springfield','Illinois',322,42),('Indianapolis','Indiana',323,43),('Des Moines','Iowa',324,44),('Topeka','Kansas',325,45),('Frankfort','Kentucky',326,46),('Baton Rouge','Louisiana',327,47),('Augusta','Maine',328,48),('Annapolis','Maryland',329,49),('Boston','Massachusetts',330,50),('Lansing','Michigan',331,51),('Saint Paul','Minnesota',332,52),('Jackson','Mississippi',333,53),('Jefferson City','Missouri',334,54),('Helena','Montana',335,55),('Lincoln','Nebraska',336,56),('Carson City','Nevada',337,57),('Concord','New Hampshire',338,58),('Trenton','New Jersey',339,59),('Santa Fe','New Mexico',340,60),('Juneau','Alaska',511,471),('Phoenix','Arizona',512,472),('Little Rock','Arkansas',513,473),('Sacramento','California',514,474),('Denver','Colorado',515,475),('Hartford','Connecticut',516,476),('Dover','Delaware',517,477),('Tallahassee','Florida',518,478),('Atlanta','Georgia',519,479),('Honolulu','Hawaii',520,480),('Boise','Idaho',521,481),('Springfield','Illinois',522,482),('Indianapolis','Indiana',523,483),('Des Moines','Iowa',524,484),('Topeka','Kansas',525,485),('Frankfort','Kentucky',526,486),('Baton Rouge','Louisiana',527,487),('Augusta','Maine',528,488),('Annapolis','Maryland',529,489),('Boston','Massachusetts',530,490),('Lansing','Michigan',531,491),('Saint Paul','Minnesota',532,492),('Jackson','Mississippi',533,493),('Jefferson City','Missouri',534,494),('Helena','Montana',535,495),('Lincoln','Nebraska',536,496),('Carson City','Nevada',537,497),('Concord','New Hampshire',538,498),('Trenton','New Jersey',539,499),('Santa Fe','New Mexico',540,500),('Lansing','Michigan',541,501),('Saint Paul','Minnesota',542,502),('Jackson','Mississippi',543,503),('Jefferson City','Missouri',544,504),('Helena','Montana',545,505),('Lincoln','Nebraska',546,506),('Carson City','Nevada',547,507),('Concord','New Hampshire',548,508),('Trenton','New Jersey',549,509),('Santa Fe','New Mexico',550,510),('Juneau','Alaska',10001,31),('Phoenix','Arizona',10002,32),('Little Rock','Arkansas',10003,33),('Sacramento','California',10004,34),('Denver','Colorado',10005,35),('Hartford','Connecticut',10006,36),('Dover','Delaware',10007,37),('Tallahassee','Florida',10008,38),('Atlanta','Georgia',10009,39),('Honolulu','Hawaii',10010,40),('Boise','Idaho',10011,41),('Springfield','Illinois',10012,42),('Indianapolis','Indiana',10013,43),('Des Moines','Iowa',10014,44),('Topeka','Kansas',10015,45),('Frankfort','Kentucky',10016,46),('Baton Rouge','Louisiana',10017,47),('Augusta','Maine',10018,48),('Annapolis','Maryland',10019,49),('Boston','Massachusetts',10020,50),('Lansing','Michigan',10021,51),('Saint Paul','Minnesota',10022,52),('Jackson','Mississippi',10023,53),('Jefferson City','Missouri',10024,54),('Helena','Montana',10025,55),('Lincoln','Nebraska',10026,56),('Carson City','Nevada',10027,57),('Concord','New Hampshire',10028,58),('Trenton','New Jersey',10029,59),('Santa Fe','New Mexico',10030,60),('Juneau','Alaska',10031,471),('Phoenix','Arizona',10032,472),('Little Rock','Arkansas',10033,473),('Sacramento','California',10034,474),('Denver','Colorado',10035,475),('Hartford','Connecticut',10036,476),('Dover','Delaware',10037,477),('Tallahassee','Florida',10038,478),('Atlanta','Georgia',10039,479),('Honolulu','Hawaii',10040,480),('Boise','Idaho',10041,481),('Springfield','Illinois',10042,482),('Indianapolis','Indiana',10043,483),('Des Moines','Iowa',10044,484),('Topeka','Kansas',10045,485),('Frankfort','Kentucky',10046,486),('Baton Rouge','Louisiana',10047,487),('Augusta','Maine',10048,488),('Annapolis','Maryland',10049,489),('Boston','Massachusetts',10050,490),('Lansing','Michigan',10051,491),('Saint Paul','Minnesota',10052,492),('Jackson','Mississippi',10053,493),('Jefferson City','Missouri',10054,494),('Helena','Montana',10055,495),('Lincoln','Nebraska',10056,496),('Carson City','Nevada',10057,497),('Concord','New Hampshire',10058,498),('Trenton','New Jersey',10059,499),('Santa Fe','New Mexico',10060,500),('Lansing','Michigan',10061,501),('Saint Paul','Minnesota',10062,502),('Jackson','Mississippi',10063,503),('Jefferson City','Missouri',10064,504),('Helena','Montana',10065,505),('Lincoln','Nebraska',10066,506),('Carson City','Nevada',10067,507),('Concord','New Hampshire',10068,508),('Trenton','New Jersey',10069,509),('Santa Fe','New Mexico',10070,510);
/*!40000 ALTER TABLE `zip code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bloodbankfinal'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetCommonAge_Donor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCommonAge_Donor`()
BEGIN
SELECT Donor.`Donor ID`,Donor.`name` as `Donor Name`, `personal details`.`Age`, `personal details`.`Gender`
from
    Donor
        inner join 
    `personal details`
        on  Donor.`Person ID`=`personal details`.`Person ID`
        
	Where `personal details`.`Age` between 22 and 35
      
 Group by  `personal details`.`Age`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMostDemanded_BloodGroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMostDemanded_BloodGroup`()
BEGIN
SELECT admistration.`name` as `Ordered person name`,orders.`order ID`, orders.`Blood Group`, MAX( orders.`Quantity`), orders.`blood bank name`
from
    orders
        inner join 
    admistration
        on  orders.`hospital employee ID`=admistration.`hospital employee ID`
      
 Group by  orders.`Blood Group`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MaxOpenHours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxOpenHours`()
BEGIN
SELECT  `Blood Bank`.`Blood Bank Name`,Timediff(Timings.`close timings`,Timings.`Open timings`) As `Maximum open Hours`,
 `address`.`address line 1`,`address`.`address line 2`,`Zip Code`.`city`, `Zip Code`.`State`,`Zip Code`.`Zipcode ID`
from
    `blood bank`
        inner join 
        timings
        on  `blood bank`.`Timings ID`=timings.`Timings ID`
        inner join
        address
        on `blood bank`.`Address ID`= address.`Address ID`
        inner join
        `Zip Code`
        on address.`Address ID`=`Zip Code`.`Address ID`
        
   where Timediff(Timings.`close timings`,Timings.`Open timings`)> '12:00:00' 
      
 Group by  `Blood Bank`.`Blood Bank Name`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `orderstatus`
--

/*!50001 DROP VIEW IF EXISTS `orderstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderstatus` AS (select `status`.`Expected Date` AS `Expected Date`,`status`.`Expected Time` AS `Expected Time`,`status`.`Status` AS `Status`,`status`.`Shipment ID` AS `Shipment ID` from `status` where ((`status`.`Status` = 'Delivered') and (cast(`status`.`Expected Date` as date) < '2017-04-25'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `topfiveorders`
--

/*!50001 DROP VIEW IF EXISTS `topfiveorders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `topfiveorders` AS (select distinct `billing information`.`Bill ID` AS `bill ID`,`orders`.`Blood Bank Name` AS `Blood Bank name`,`orders`.`Blood Group` AS `blood group`,`orders`.`Quantity` AS `Quantity`,`billing information`.`Total` AS `total` from (`orders` join `billing information` on((`orders`.`Order ID` = `billing information`.`Order ID`))) where (`billing information`.`Total` > 1400) limit 4) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21  2:11:44
