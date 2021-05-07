-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db_example
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
-- Table structure for table `demand`
--

DROP TABLE IF EXISTS `demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demand` (
  `id` char(9) NOT NULL,
  `msHiringManager` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand`
--

LOCK TABLES `demand` WRITE;
/*!40000 ALTER TABLE `demand` DISABLE KEYS */;
INSERT INTO `demand` VALUES ('BLR_02613','Albert Anderson'),('BLR_05901','Annette Sylvester'),('BLR_09774','Rena Booker'),('BLR_15322','Mary Paulus'),('BLR_23276','Gabriele Whittington'),('BLR_23991','Misty Mack'),('BLR_24691','Tamara Sipper'),('BLR_27943','Louise Daniel'),('BLR_32461','Gayla Mays'),('BLR_32644','Chris Osborn'),('BLR_43681','Thomas Kruger'),('BLR_52906','William Hicks'),('BLR_59163','Cathy Robinson'),('BLR_60101','Amy Caberto'),('BLR_65554','Tracy Hudgins'),('BLR_68662','Paul Shepherd'),('BLR_77069','Patricia Munoz'),('BLR_88751','Rosa Velasco'),('BLR_90429','Elizabeth Borke'),('BLR_93147','Earl Ladd'),('BLR_93857','Hazel Dolan'),('BLR_96365','Curtis Hanselman'),('MUM_00000','Sanket Shirke'),('MUM_00100','Sanket Shirke'),('MUM_01822','Lela Holbrook'),('MUM_02392','Nancy Jolivette'),('MUM_02566','Jessica Lisonbee'),('MUM_04775','Sylvia Wheeler'),('MUM_09855','Sherry Murphy'),('MUM_10367','Marta King'),('MUM_12188','Kathy Familia'),('MUM_12708','Juanita Stepler'),('MUM_12922','Estelle Satterwhite'),('MUM_16075','Nancy Neely'),('MUM_28697','Elfrieda Muller'),('MUM_38211','Dennis Emert'),('MUM_41409','Keith Nikolic'),('MUM_41929','William Figueroa'),('MUM_45531','Bobby Hardin'),('MUM_48959','Alice Brown'),('MUM_49188','Lorna Harris'),('MUM_56669','Erica Warner'),('MUM_58494','Stephanie Ellington'),('MUM_68219','Helen Lawrence'),('MUM_73107','Hiram Combs'),('MUM_77940','Jewel Slone'),('MUM_80856','Fredrick Netzer'),('MUM_84813','Deborah Buman'),('MUM_86323','Donna Mitchell'),('MUM_87004','Thomas Subert'),('MUM_90367','Marilyn Ramirez'),('MUM_95993','Florencio Galvan');
/*!40000 ALTER TABLE `demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `email` varchar(65) NOT NULL,
  `name` varchar(45) NOT NULL,
  `mob` char(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Allison.Stephens@accolitedigital.com','Allison Stephens','9151353251'),('Alva.Liles@accolitedigital.com','Alva Liles','9516673613'),('Andrea.Simmons@accolitedigital.com','Andrea Simmons','9855948060'),('Andrew.Castro@accolitedigital.com','Andrew Castro','9792854859'),('Angela.Fisher@accolitedigital.com','Angela Fisher','9138733130'),('Benita.Abbe@accolitedigital.com','Benita Abbe','9591130269'),('Benjamin.Schroot@accolitedigital.com','Benjamin Schroot','9704919501'),('Beverly.Ganser@accolitedigital.com','Beverly Ganser','9708300709'),('Billie.Lucas@accolitedigital.com','Billie Lucas','9439665635'),('Britany.Russo@accolitedigital.com','Britany Russo','9455016642'),('Carlos.Fiske@accolitedigital.com','Carlos Fiske','9308161711'),('Carolyn.Griffin@accolitedigital.com','Carolyn Griffin','9427507688'),('Catherine.Griess@accolitedigital.com','Catherine Griess','9417223798'),('Catherine.Reagan@accolitedigital.com','Catherine Reagan','9092510857'),('Cherie.Frances@accolitedigital.com','Cherie Frances','9938854935'),('Christopher.Dixon@accolitedigital.com','Christopher Dixon','9654344058'),('Craig.Rios@accolitedigital.com','Craig Rios','9080272660'),('Curtis.Bloomfield@accolitedigital.com','Curtis Bloomfield','9164892828'),('Dale.Taylor@accolitedigital.com','Dale Taylor','9370622474'),('Daniel.Daniels@accolitedigital.com','Daniel Daniels','9939789714'),('Danielle.Redmond@accolitedigital.com','Danielle Redmond','9201554633'),('David.Sheetz@accolitedigital.com','David Sheetz','9808430671'),('Denise.Balder@accolitedigital.com','Denise Balder','9599947963'),('Derrick.Gagnon@accolitedigital.com','Derrick Gagnon','9218111992'),('Diane.Coleman@accolitedigital.com','Diane Coleman','9445633328'),('Don.Blaylock@accolitedigital.com','Don Blaylock','9353951708'),('Doris.Ketterling@accolitedigital.com','Doris Ketterling','9976252657'),('Dorothy.Norton@accolitedigital.com','Dorothy Norton','9726310093'),('Douglas.Barrett@accolitedigital.com','Douglas Barrett','9291320069'),('Dustin.Deberry@accolitedigital.com','Dustin Deberry','9840472285'),('Earnest.Bonney@accolitedigital.com','Earnest Bonney','9674637296'),('Eddie.Jones@accolitedigital.com','Eddie Jones','9262332445'),('Edward.Mclaughlin@accolitedigital.com','Edward Mclaughlin','9774186317'),('Edward.Norris@accolitedigital.com','Edward Norris','9439750371'),('Ella.Anderson@accolitedigital.com','Ella Anderson','9999279550'),('Elva.Thompson@accolitedigital.com','Elva Thompson','9312487116'),('Eric.Honeycutt@accolitedigital.com','Eric Honeycutt','9062321582'),('Eric.Walk@accolitedigital.com','Eric Walk','9180612680'),('Erica.Gutierrez@accolitedigital.com','Erica Gutierrez','9316453946'),('Evelyn.Nicol@accolitedigital.com','Evelyn Nicol','9577395384'),('Frances.Thibeault@accolitedigital.com','Frances Thibeault','9260110938'),('Frank.Magee@accolitedigital.com','Frank Magee','9376966686'),('Franklin.Young@accolitedigital.com','Franklin Young','9457531417'),('Gaurav.Bhagwanani@accolitedigital.com','Gaurav Bhagwanani','9730620619'),('George.Mulqueen@accolitedigital.com','George Mulqueen','9340166476'),('Gladys.Burt@accolitedigital.com','Gladys Burt','9002701515'),('Gregory.Hagler@accolitedigital.com','Gregory Hagler','9144898582'),('Harvey.Wright@accolitedigital.com','Harvey Wright','9507673152'),('Howard.Debord@accolitedigital.com','Howard Debord','9350175021'),('Jack.Houser@accolitedigital.com','Jack Houser','9979652310'),('James.Greiner@accolitedigital.com','James Greiner','9057624070'),('Jean.Perez@accolitedigital.com','Jean Perez','9885491401'),('Jeff.Roberson@accolitedigital.com','Jeff Roberson','9444016870'),('Jesus.Bryan@accolitedigital.com','Jesus Bryan','9706703984'),('Joann.Owens@accolitedigital.com','Joann Owens','9016839672'),('John.Benck@accolitedigital.com','John Benck','9673182370'),('John.Burns@accolitedigital.com','John Burns','9756862399'),('John.Evans@accolitedigital.com','John Evans','9352096570'),('John.Gonzales@accolitedigital.com','John Gonzales','9038983178'),('John.Jackson@accolitedigital.com','John Jackson','9716871008'),('John.Jones@accolitedigital.com','John Jones','9635244327'),('John.Siler@accolitedigital.com','John Siler','9477600345'),('Jorge.Breaux@accolitedigital.com','Jorge Breaux','9476995513'),('Joseph.Norman@accolitedigital.com','Joseph Norman','9134604852'),('Josephine.Barette@accolitedigital.com','Josephine Barette','9332376210'),('Joyce.Mcleod@accolitedigital.com','Joyce Mcleod','9897411315'),('Juan.Paige@accolitedigital.com','Juan Paige','9169567246'),('Juan.Thompson@accolitedigital.com','Juan Thompson','9821837639'),('Karen.Shiels@accolitedigital.com','Karen Shiels','9821171251'),('Karla.Mcgloster@accolitedigital.com','Karla Mcgloster','9876117008'),('Kathryn.Littrell@accolitedigital.com','Kathryn Littrell','9994187169'),('Kathryn.Records@accolitedigital.com','Kathryn Records','9820122862'),('Kaustubh.Damania@accolitedigital.com','Kaustubh Damania','9284621757'),('Kelly.Baker@accolitedigital.com','Kelly Baker','9774593275'),('Kelly.Gadd@accolitedigital.com','Kelly Gadd','9820720558'),('Kyle.Charlton@accolitedigital.com','Kyle Charlton','9331103663'),('Kyle.Kendall@accolitedigital.com','Kyle Kendall','9754919819'),('Lance.Chang@accolitedigital.com','Lance Chang','9423859310'),('Larry.Wireman@accolitedigital.com','Larry Wireman','9977966498'),('Lauren.Gleason@accolitedigital.com','Lauren Gleason','9829515115'),('Lawrence.Gayle@accolitedigital.com','Lawrence Gayle','9558603659'),('Leonard.Rafferty@accolitedigital.com','Leonard Rafferty','9567048012'),('Lewis.Stanhope@accolitedigital.com','Lewis Stanhope','9565679203'),('Lisa.Phillips@accolitedigital.com','Lisa Phillips','9815971629'),('Lloyd.Guthrie@accolitedigital.com','Lloyd Guthrie','9417542192'),('Lloyd.Johnson@accolitedigital.com','Lloyd Johnson','9350025388'),('Loretta.Choi@accolitedigital.com','Loretta Choi','9918112575'),('Loretta.Mestas@accolitedigital.com','Loretta Mestas','9885850351'),('Lucille.Oneal@accolitedigital.com','Lucille Oneal','9602365394'),('Manuel.Robinson@accolitedigital.com','Manuel Robinson','9449454313'),('Margaret.Castelluccio@accolitedigital.com','Margaret Castelluccio','9389203726'),('Marguerite.Hodge@accolitedigital.com','Marguerite Hodge','9072962745'),('Marie.Bennett@accolitedigital.com','Marie Bennett','9479473131'),('Marsha.Nesbit@accolitedigital.com','Marsha Nesbit','9846356221'),('Martin.Bebout@accolitedigital.com','Martin Bebout','9409337834'),('Mary.Pippin@accolitedigital.com','Mary Pippin','9234576427'),('Matthew.Rivera@accolitedigital.com','Matthew Rivera','9341092319'),('Matthew.White@accolitedigital.com','Matthew White','9995087687'),('Maxwell.Yoder@accolitedigital.com','Maxwell Yoder','9386727204'),('Megan.Bullock@accolitedigital.com','Megan Bullock','9143610601'),('Melisa.Baker@accolitedigital.com','Melisa Baker','9765877098'),('Mercy.Kaupp@accolitedigital.com','Mercy Kaupp','9095010620'),('Meridith.Lawson@accolitedigital.com','Meridith Lawson','9150814756'),('Meta.Boyd@accolitedigital.com','Meta Boyd','9387617516'),('Michael.Campbell@accolitedigital.com','Michael Campbell','9428162097'),('Michael.Kellogg@accolitedigital.com','Michael Kellogg','9263590910'),('Micheal.Brawley@accolitedigital.com','Micheal Brawley','9814281440'),('Miguel.Siegel@accolitedigital.com','Miguel Siegel','9777259324'),('Mohammad.Mckenzie@accolitedigital.com','Mohammad Mckenzie','9443213370'),('Nadine.Wallace@accolitedigital.com','Nadine Wallace','9067369350'),('Nathalie.Evans@accolitedigital.com','Nathalie Evans','9042029717'),('Oliver.Campbell@accolitedigital.com','Oliver Campbell','9260809366'),('Opal.Sessoms@accolitedigital.com','Opal Sessoms','9203391949'),('Otilia.Pritchard@accolitedigital.com','Otilia Pritchard','9514590271'),('Randall.Wallace@accolitedigital.com','Randall Wallace','9008689111'),('Randy.Williams@accolitedigital.com','Randy Williams','9034215733'),('Ray.Calderon@accolitedigital.com','Ray Calderon','9442904408'),('Raymond.Henke@accolitedigital.com','Raymond Henke','9134773016'),('Raymond.Ortiz@accolitedigital.com','Raymond Ortiz','9210388931'),('Raymond.Silva@accolitedigital.com','Raymond Silva','9005257373'),('Rita.Scott@accolitedigital.com','Rita Scott','9175218776'),('Robert.Froedge@accolitedigital.com','Robert Froedge','9305553390'),('Robert.Perez@accolitedigital.com','Robert Perez','9368538704'),('Robert.Sosa@accolitedigital.com','Robert Sosa','9522776410'),('Rochelle.Riley@accolitedigital.com','Rochelle Riley','9157359787'),('Roderick.Fields@accolitedigital.com','Roderick Fields','9248017120'),('Roy.Moorman@accolitedigital.com','Roy Moorman','9631780022'),('Royce.Uelmen@accolitedigital.com','Royce Uelmen','9590448090'),('Rujul.Walvekar@accolitedigital.com','Rujul Walvekar',NULL),('Ruth.Wild@accolitedigital.com','Ruth Wild','9138057830'),('Sandra.Fischer@accolitedigital.com','Sandra Fischer','9404090001'),('Sanford.Pychardo@accolitedigital.com','Sanford Pychardo','9990619289'),('Shanell.Bachrach@accolitedigital.com','Shanell Bachrach','9649860604'),('Shannon.Sutton@accolitedigital.com','Shannon Sutton','9318804870'),('Sheila.Martin@accolitedigital.com','Sheila Martin','9990095584'),('Shemeka.Edgerly@accolitedigital.com','Shemeka Edgerly','9401550445'),('Shirley.Augustus@accolitedigital.com','Shirley Augustus','9372968756'),('Sondra.Born@accolitedigital.com','Sondra Born','9863948884'),('Stefani.Kindt@accolitedigital.com','Stefani Kindt','9683563373'),('Stella.Charles@accolitedigital.com','Stella Charles','9399526051'),('Susan.Anderson@accolitedigital.com','Susan Anderson','9977341421'),('Susan.Leitheiser@accolitedigital.com','Susan Leitheiser','9917532951'),('Sylvia.Willey@accolitedigital.com','Sylvia Willey','9523026293'),('Tammy.Milton@accolitedigital.com','Tammy Milton','9057883319'),('Tanya.Reeves@accolitedigital.com','Tanya Reeves','9569415770'),('Taylor.Stauffer@accolitedigital.com','Taylor Stauffer','9406520755'),('Teresa.Aliaga@accolitedigital.com','Teresa Aliaga','9204744811'),('Teresa.Dunn@accolitedigital.com','Teresa Dunn','9308920866'),('Thelma.Stevens@accolitedigital.com','Thelma Stevens','9549956252'),('Thomas.Coleman@accolitedigital.com','Thomas Coleman','9213482018'),('Thomas.Haines@accolitedigital.com','Thomas Haines','9213446023'),('Tommy.Vinz@accolitedigital.com','Tommy Vinz','9947381197'),('Victor.Christie@accolitedigital.com','Victor Christie','9541868866'),('Wilford.Gadbois@accolitedigital.com','Wilford Gadbois','9767003526'),('William.Morgan@accolitedigital.com','William Morgan','9605580775'),('Willie.Lesperance@accolitedigital.com','Willie Lesperance','9477999861');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_skills`
--

DROP TABLE IF EXISTS `employee_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_skills` (
  `email` varchar(65) NOT NULL,
  `skill` varchar(30) NOT NULL,
  PRIMARY KEY (`email`,`skill`),
  CONSTRAINT `FK_employee_skills` FOREIGN KEY (`email`) REFERENCES `employee` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_skills`
--

LOCK TABLES `employee_skills` WRITE;
/*!40000 ALTER TABLE `employee_skills` DISABLE KEYS */;
INSERT INTO `employee_skills` VALUES ('Gregory.Hagler@accolitedigital.com','java'),('Gregory.Hagler@accolitedigital.com','python'),('Gregory.Hagler@accolitedigital.com','spring'),('Kaustubh.Damania@accolitedigital.com','node.js'),('Kaustubh.Damania@accolitedigital.com','react');
/*!40000 ALTER TABLE `employee_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onboardee`
--

DROP TABLE IF EXISTS `onboardee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onboardee` (
  `email` varchar(65) NOT NULL,
  `demand_id` char(9) NOT NULL,
  `onboarding_start` date NOT NULL,
  `onboarding_end` date NOT NULL,
  `bg_check` tinyint NOT NULL DEFAULT '0',
  `training` tinyint NOT NULL DEFAULT '0',
  `project` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`),
  KEY `FK_demand_onboardee_idx` (`demand_id`),
  CONSTRAINT `FK_demand_onboardee` FOREIGN KEY (`demand_id`) REFERENCES `demand` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_employee_onboardee` FOREIGN KEY (`email`) REFERENCES `employee` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onboardee`
--

LOCK TABLES `onboardee` WRITE;
/*!40000 ALTER TABLE `onboardee` DISABLE KEYS */;
INSERT INTO `onboardee` VALUES ('Andrew.Castro@accolitedigital.com','BLR_52906','2018-11-01','2020-08-07',0,0,0),('Benjamin.Schroot@accolitedigital.com','MUM_41409','2018-02-07','2021-10-24',0,0,0),('Billie.Lucas@accolitedigital.com','MUM_48959','2018-12-16','2019-05-17',0,0,0),('Britany.Russo@accolitedigital.com','MUM_90367','2018-03-23','2018-09-05',0,0,0),('Carlos.Fiske@accolitedigital.com','MUM_41929','2019-10-09','2020-10-05',0,0,0),('Catherine.Griess@accolitedigital.com','MUM_00100','2020-10-20','2021-11-20',0,0,0),('Cherie.Frances@accolitedigital.com','BLR_32644','2018-04-04','2018-10-03',0,0,0),('Christopher.Dixon@accolitedigital.com','MUM_12188','2018-02-19','2018-03-18',0,0,0),('Dale.Taylor@accolitedigital.com','MUM_56669','2018-09-21','2020-10-23',0,0,0),('Danielle.Redmond@accolitedigital.com','BLR_09774','2019-02-05','2019-11-02',0,0,0),('Derrick.Gagnon@accolitedigital.com','BLR_68662','2019-11-01','2020-05-16',0,0,0),('Diane.Coleman@accolitedigital.com','BLR_65554','2018-11-23','2020-07-19',0,0,0),('Don.Blaylock@accolitedigital.com','BLR_27943','2019-02-27','2020-10-11',0,0,0),('Doris.Ketterling@accolitedigital.com','BLR_05901','2018-04-08','2020-08-28',0,0,0),('Dorothy.Norton@accolitedigital.com','MUM_01822','2018-02-16','2018-07-08',0,0,0),('Eddie.Jones@accolitedigital.com','MUM_00100','2019-11-04','2020-05-28',0,0,0),('Elva.Thompson@accolitedigital.com','MUM_95993','2020-01-03','2020-06-28',0,0,0),('Eric.Honeycutt@accolitedigital.com','MUM_49188','2019-01-02','2020-06-14',0,0,0),('Frank.Magee@accolitedigital.com','BLR_77069','2018-01-05','2018-11-20',0,0,0),('Gaurav.Bhagwanani@accolitedigital.com','BLR_93147','2021-05-10','2021-06-17',1,1,0),('Gladys.Burt@accolitedigital.com','BLR_93147','2019-12-04','2021-09-21',0,0,0),('Gregory.Hagler@accolitedigital.com','BLR_24691','2021-04-30','2021-06-15',0,1,0),('Harvey.Wright@accolitedigital.com','MUM_68219','2019-08-16','2021-12-21',0,0,0),('Jesus.Bryan@accolitedigital.com','BLR_88751','2018-03-26','2020-04-11',0,0,0),('John.Burns@accolitedigital.com','BLR_52906','2019-06-17','2019-07-08',0,0,0),('John.Evans@accolitedigital.com','MUM_04775','2018-05-28','2019-06-02',0,0,0),('John.Gonzales@accolitedigital.com','BLR_59163','2018-10-18','2019-05-19',0,0,0),('John.Jackson@accolitedigital.com','MUM_95993','2018-12-15','2021-12-22',0,0,0),('John.Jones@accolitedigital.com','MUM_01822','2019-06-06','2020-10-23',0,0,0),('Jorge.Breaux@accolitedigital.com','BLR_05901','2020-02-01','2020-12-21',0,0,0),('Juan.Paige@accolitedigital.com','MUM_86323','2019-05-10','2021-09-02',0,0,0),('Juan.Thompson@accolitedigital.com','BLR_15322','2018-05-14','2018-09-16',0,0,0),('Kyle.Charlton@accolitedigital.com','BLR_59163','2021-03-07','2021-05-25',0,0,0),('Lance.Chang@accolitedigital.com','MUM_01822','2020-07-21','2020-12-20',0,0,0),('Lawrence.Gayle@accolitedigital.com','MUM_28697','2018-04-13','2020-08-09',0,0,0),('Leonard.Rafferty@accolitedigital.com','BLR_15322','2019-12-04','2020-11-16',0,0,0),('Lewis.Stanhope@accolitedigital.com','MUM_41409','2018-11-24','2021-08-09',0,0,0),('Lloyd.Guthrie@accolitedigital.com','MUM_04775','2020-01-17','2021-12-10',0,0,0),('Manuel.Robinson@accolitedigital.com','MUM_45531','2019-05-03','2019-10-13',0,0,0),('Marie.Bennett@accolitedigital.com','MUM_73107','2018-02-24','2018-09-05',0,0,0),('Mary.Pippin@accolitedigital.com','MUM_12188','2018-10-26','2019-04-12',0,0,0),('Matthew.White@accolitedigital.com','MUM_09855','2018-04-22','2019-10-03',0,0,0),('Megan.Bullock@accolitedigital.com','BLR_52906','2018-08-14','2019-10-10',0,0,0),('Melisa.Baker@accolitedigital.com','BLR_68662','2019-06-22','2020-06-24',0,0,0),('Mercy.Kaupp@accolitedigital.com','BLR_93857','2018-08-01','2019-05-05',0,0,0),('Meridith.Lawson@accolitedigital.com','MUM_12922','2021-06-01','2021-06-20',0,0,0),('Michael.Campbell@accolitedigital.com','BLR_96365','2019-06-02','2020-06-24',0,0,0),('Michael.Kellogg@accolitedigital.com','MUM_09855','2019-11-15','2021-06-24',0,0,0),('Miguel.Siegel@accolitedigital.com','MUM_02392','2018-11-08','2020-07-16',0,0,0),('Mohammad.Mckenzie@accolitedigital.com','MUM_48959','2020-03-20','2021-12-10',0,0,0),('Nadine.Wallace@accolitedigital.com','BLR_93857','2018-04-17','2019-03-01',0,0,0),('Nathalie.Evans@accolitedigital.com','BLR_93857','2018-05-25','2021-06-15',0,0,0),('Oliver.Campbell@accolitedigital.com','BLR_43681','2018-04-06','2019-07-20',0,0,0),('Randy.Williams@accolitedigital.com','MUM_45531','2020-07-11','2021-04-21',0,0,0),('Ray.Calderon@accolitedigital.com','MUM_68219','2018-11-09','2020-02-21',0,0,0),('Raymond.Henke@accolitedigital.com','BLR_32644','2019-05-19','2020-11-26',0,0,0),('Raymond.Ortiz@accolitedigital.com','BLR_59163','2018-02-26','2021-11-10',0,0,0),('Rita.Scott@accolitedigital.com','MUM_48959','2020-04-02','2020-09-02',0,0,0),('Rochelle.Riley@accolitedigital.com','MUM_58494','2019-04-08','2020-09-26',0,0,0),('Roy.Moorman@accolitedigital.com','MUM_41929','2018-11-21','2020-06-12',0,0,0),('Sanford.Pychardo@accolitedigital.com','MUM_95993','2018-06-16','2021-02-12',0,0,0),('Sheila.Martin@accolitedigital.com','BLR_59163','2019-11-07','2021-04-11',0,0,0),('Shirley.Augustus@accolitedigital.com','BLR_23991','2019-09-25','2021-04-13',0,0,0),('Sondra.Born@accolitedigital.com','MUM_90367','2019-09-06','2020-02-21',0,0,0),('Stefani.Kindt@accolitedigital.com','MUM_12188','2018-01-12','2020-02-28',0,0,0),('Sylvia.Willey@accolitedigital.com','MUM_80856','2019-12-03','2020-12-12',0,0,0),('Tanya.Reeves@accolitedigital.com','MUM_87004','2018-07-10','2020-12-10',0,0,0),('Taylor.Stauffer@accolitedigital.com','MUM_95993','2018-01-28','2019-10-23',0,0,0),('Thelma.Stevens@accolitedigital.com','BLR_02613','2020-01-21','2020-11-11',0,0,0),('Thomas.Coleman@accolitedigital.com','MUM_04775','2019-02-09','2019-10-07',0,0,0),('Thomas.Haines@accolitedigital.com','BLR_52906','2018-01-10','2020-07-03',0,0,0),('Wilford.Gadbois@accolitedigital.com','BLR_90429','2019-12-11','2020-04-28',0,0,0),('William.Morgan@accolitedigital.com','BLR_23991','2019-01-23','2019-09-24',0,0,0);
/*!40000 ALTER TABLE `onboardee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `onboardee_BEFORE_INSERT` BEFORE INSERT ON `onboardee` FOR EACH ROW BEGIN
	IF (NEW.onboarding_start >= NEW.onboarding_end) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'onboarding_end cannot be earlier than(or same as) onboarding_start';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` char(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Gaurav.Bhagwanani@accolitedigital.com','Gaurav Bhagwanani','9730620619'),('Rujul.Walvekar@accolitedigital.com','Rujul Walvekar',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07 15:16:08
