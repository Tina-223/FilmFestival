-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: team13
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academy_best_award`
--

DROP TABLE IF EXISTS `academy_best_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy_best_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `film_festival_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_id` (`film_id`),
  KEY `film_festival_id` (`film_festival_id`),
  KEY `index_academy_best_award` (`id`),
  CONSTRAINT `academy_best_award_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE,
  CONSTRAINT `academy_best_award_ibfk_2` FOREIGN KEY (`film_festival_id`) REFERENCES `film_festival` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy_best_award`
--

LOCK TABLES `academy_best_award` WRITE;
/*!40000 ALTER TABLE `academy_best_award` DISABLE KEYS */;
INSERT INTO `academy_best_award` VALUES (1,2010,82,1,1),(2,2011,83,2,1),(3,2012,84,3,1),(4,2013,85,4,1),(5,2014,86,5,1),(6,2015,87,6,1),(7,2016,88,7,1),(8,2017,89,8,1),(9,2018,90,9,1),(10,2019,91,10,1),(11,2020,92,11,1),(12,2021,93,12,1),(13,2022,94,13,1);
/*!40000 ALTER TABLE `academy_best_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berlin_best_award`
--

DROP TABLE IF EXISTS `berlin_best_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berlin_best_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `film_festival_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_id` (`film_id`),
  KEY `film_festival_id` (`film_festival_id`),
  KEY `index_berlin_best_award` (`id`),
  CONSTRAINT `berlin_best_award_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE,
  CONSTRAINT `berlin_best_award_ibfk_2` FOREIGN KEY (`film_festival_id`) REFERENCES `film_festival` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berlin_best_award`
--

LOCK TABLES `berlin_best_award` WRITE;
/*!40000 ALTER TABLE `berlin_best_award` DISABLE KEYS */;
INSERT INTO `berlin_best_award` VALUES (1,2000,50,35,3),(2,2001,51,36,3),(3,2002,52,37,3),(4,2002,52,38,3),(5,2003,53,39,3),(6,2004,54,40,3),(7,2005,55,41,3),(8,2006,56,42,3),(9,2007,57,43,3),(10,2008,58,44,3),(11,2009,59,45,3),(12,2010,60,46,3),(13,2011,61,47,3),(14,2012,62,48,3),(15,2013,63,49,3),(16,2014,64,50,3),(17,2015,65,51,3),(18,2016,66,52,3),(19,2017,67,53,3),(20,2018,68,54,3),(21,2019,69,55,3),(22,2020,70,56,3),(23,2021,71,57,3),(24,2022,72,58,3);
/*!40000 ALTER TABLE `berlin_best_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cannes_best_award`
--

DROP TABLE IF EXISTS `cannes_best_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cannes_best_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `film_festival_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_id` (`film_id`),
  KEY `film_festival_id` (`film_festival_id`),
  KEY `index_cannes_best_award` (`id`),
  CONSTRAINT `cannes_best_award_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cannes_best_award_ibfk_2` FOREIGN KEY (`film_festival_id`) REFERENCES `film_festival` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cannes_best_award`
--

LOCK TABLES `cannes_best_award` WRITE;
/*!40000 ALTER TABLE `cannes_best_award` DISABLE KEYS */;
INSERT INTO `cannes_best_award` VALUES (1,2000,53,14,2),(2,2001,54,15,2),(3,2002,55,16,2),(4,2003,56,17,2),(5,2004,57,18,2),(6,2005,58,19,2),(7,2006,59,20,2),(8,2007,60,21,2),(9,2008,61,22,2),(10,2009,62,23,2),(11,2010,63,24,2),(12,2011,64,25,2),(13,2012,65,26,2),(14,2013,66,27,2),(15,2014,67,28,2),(16,2015,68,29,2),(17,2016,69,30,2),(18,2017,70,31,2),(19,2018,71,32,2),(20,2019,72,11,2),(21,2021,74,33,2),(22,2022,75,34,2);
/*!40000 ALTER TABLE `cannes_best_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_director` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'캐스린 비글로우','미국'),(2,'톰 후퍼','영국'),(3,'미셸 하자나비시우스','프랑스'),(4,'벤 애플랙','미국'),(5,'스티브 맥퀸','영국'),(6,'알레한드로 곤잘레스 이냐리투','멕시코'),(7,'토마스 맥카시','미국'),(8,'베리 젠킨스','미국'),(9,'기예르모 델 토로','멕시코'),(10,'피터 패럴리','미국'),(11,'봉준호','대한민국'),(12,'클로이 자오','미국'),(13,'션 헤이더','미국'),(14,'라스 폰 트리에','덴마크'),(15,'난니 모레티','이탈리아'),(16,'로만 폴란스키','폴란드'),(17,'거스 밴 샌트','미국'),(18,'마이클 무어','미국'),(19,'다르덴 형제','벨기에'),(20,'켄 로치','영국'),(21,'크리스티안 문지우','루마니아'),(22,'로랑 캉테','프랑스'),(23,'미카엘 하네케','오스트리아'),(24,'아피찻퐁 위라세타꾼','태국'),(25,'테런스 맬릭','미국'),(26,'압델라티프 케시시','프랑스'),(27,'누리 빌게 제일란','터키'),(28,'자크 오디아르','프랑스'),(29,'루벤 외스틀룬드','스웨덴'),(30,'고레에다 히로카즈','일본'),(31,'쥘리아 뒤쿠르노','프랑스'),(32,'폴 토머스 앤더슨','미국'),(33,'파트리스 셰로','프랑스'),(34,'미야자키 히야오','일본'),(35,'폴 그린그래스','영국'),(36,'마이클 윈터보텀','영국'),(37,'파티 아킨','독일'),(38,'마크 돈퍼드메이','남아프리카 공화국'),(39,'야스밀라 주바니치','보스니아 헤르체고비나'),(40,'왕취안안','중국'),(41,'조제 파질랴','브라질'),(42,'클라우디아 로사','페루'),(43,'세미 카플라노글루','터키'),(44,'아스가르 파르하디','이란'),(45,'파올로 타비아니 형제','이탈리아'),(46,'칼린 페터 네쩌','루마니아'),(47,'댜오이난','중국'),(48,'자파르 파나히','이란'),(49,'잔프랑코 로시','이탈리아'),(50,'일디코 엔예디','헝가리'),(51,'애디너 핀틸리','루마니아'),(52,'나다브 라피드','이스라엘'),(53,'모하마드 라술로프','이란'),(54,'라드 주드','루마니아'),(55,'카를라 시몬','스페인'),(56,'미라 네어','인도'),(57,'피터 뮬란','영국'),(58,'안드레이 즈비아긴체프','러시아'),(59,'마이크 리','영국'),(60,'이안','중국'),(61,'자장커','중국'),(62,'대런 애러노프스키','미국'),(63,'사무엘 마오즈','이스라엘'),(64,'소피아 코폴라','미국'),(65,'알렉산드르 소쿠로프','러시아'),(66,'김기덕','대한민국'),(67,'로이 앤더슨','스웨덴'),(68,'로렌소 비가스','베네수엘라'),(69,'라브 디아즈','필리핀'),(70,'알폰소 쿠아론','멕시코'),(71,'토드 필립스','미국'),(72,'오드리 디완','프랑스'),(73,'로라 포이트러스','미국');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `director_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `director_id` (`director_id`),
  KEY `index_film` (`id`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'허트 로커',1),(2,'킹스 스피치',2),(3,'아티스트',3),(4,'아르고',4),(5,'노예 12년',5),(6,'버드맨',6),(7,'스포트라이트',7),(8,'문라이트',8),(9,'셰이프 오브 워터: 사랑의 모양',9),(10,'그린 북',10),(11,'기생충',11),(12,'노매드랜드',12),(13,'코다',13),(14,'어둠 속의 댄서',14),(15,'아들의 방',15),(16,'피아니스트',16),(17,'엘리펀트',17),(18,'화씨 9/11',18),(19,'더 차일드',19),(20,'보리밭을 흔드는 바람',20),(21,'4개월, 3주… 그리고 2일',21),(22,'클래스',22),(23,'하얀 리본',23),(24,'엉클 분미',24),(25,'트리 오브 라이프',25),(26,'아무르',23),(27,'가장 따뜻한 색, 블루',26),(28,'윈터 슬립',27),(29,'디판',28),(30,'나, 다니엘 블레이크',20),(31,'더 스퀘어',29),(32,'어느 가족',30),(33,'티탄',31),(34,'트라이앵글 오브 새드니스',29),(35,'매그놀리아',32),(36,'정사',33),(37,'센과 치히로의 행방불명',34),(38,'블러디 선데이',35),(39,'인 디스 월드',36),(40,'미치고 싶을 때',37),(41,'카르멘',38),(42,'그르바비차',39),(43,'투야의 결혼',40),(44,'엘리트 스쿼드',41),(45,'밀크 오브 소로우 - 슬픈 모유',42),(46,'허니',43),(47,'씨민과 나데르의 별거',44),(48,'시저는 죽어야 한다',45),(49,'아들의 자리',46),(50,'백일염화',47),(51,'택시',48),(52,'화염의 바다',49),(53,'우리는 같은 꿈을 꾼다',50),(54,'터치 미 낫',51),(55,'시너님즈',52),(56,'사탄은 없다',53),(57,'배드 럭 뱅잉',54),(58,'알카라스의 여름',55),(59,'서클',48),(60,'몬순 웨딩',56),(61,'막달레나 시스터즈',57),(62,'리턴',58),(63,'베라 드레이크',59),(64,'브로크백 마운틴',60),(65,'스틸 라이프',61),(66,'색, 계',60),(67,'더 레슬러',62),(68,'레바논',63),(69,'섬웨어',64),(70,'파우스트',65),(71,'피에타',66),(72,'성스러운 도로',49),(73,'비둘기, 가지에 앉아 존재를 성찰하다',67),(74,'프롬 어파',68),(75,'떠나간 여인',69),(76,'로마',70),(77,'조커',71),(78,'레벤느망',72),(79,'올 더 뷰티 앤드 더 블러드셰드',73);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_festival`
--

DROP TABLE IF EXISTS `film_festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_festival` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_film_festival` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_festival`
--

LOCK TABLES `film_festival` WRITE;
/*!40000 ALTER TABLE `film_festival` DISABLE KEYS */;
INSERT INTO `film_festival` VALUES (1,'아카데미 시상식','미국'),(2,'칸 영화제','프랑스'),(3,'베를린 영화제','독일'),(4,'베니스 영화제','이탈리아');
/*!40000 ALTER TABLE `film_festival` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_gender`
--

DROP TABLE IF EXISTS `film_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_gender` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` char(1) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_id` (`film_id`),
  KEY `index_film_gender` (`id`),
  CONSTRAINT `film_gender_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_gender`
--

LOCK TABLES `film_gender` WRITE;
/*!40000 ALTER TABLE `film_gender` DISABLE KEYS */;
INSERT INTO `film_gender` VALUES (1,'M',8,1),(2,'F',9,1),(3,'M',8,2),(4,'F',9,2),(5,'M',8,3),(6,'F',8,3),(7,'M',8,4),(8,'F',9,4),(9,'M',8,5),(10,'F',8,5),(11,'M',8,6),(12,'F',8,6),(13,'M',9,7),(14,'F',9,7),(15,'M',8,8),(16,'F',8,8),(17,'M',9,9),(18,'F',9,9),(19,'M',10,10),(20,'F',10,10),(21,'M',9,11),(22,'F',9,11),(23,'M',9,12),(24,'F',9,12),(25,'M',9,13),(26,'F',9,13),(27,'M',9,14),(28,'F',9,14),(29,'M',8,15),(30,'F',8,15),(31,'M',8,16),(32,'F',8,16),(33,'M',8,17),(34,'F',8,17),(35,'M',9,18),(36,'F',9,18),(37,'M',8,19),(38,'F',8,19),(39,'M',8,20),(40,'F',9,20),(41,'M',8,21),(42,'F',8,21),(43,'M',8,22),(44,'F',8,22),(45,'M',8,23),(46,'F',8,23),(47,'M',10,24),(48,'F',8,24),(49,'M',7,25),(50,'F',7,25),(51,'M',8,26),(52,'F',9,26),(53,'M',9,27),(54,'F',9,27),(55,'M',9,28),(56,'F',8,28),(57,'M',8,29),(58,'F',10,29),(59,'M',9,30),(60,'F',9,30),(61,'M',8,31),(62,'F',8,31),(63,'M',9,32),(64,'F',9,32),(65,'M',7,33),(66,'F',7,33),(67,'M',8,34),(68,'F',8,34),(69,'M',9,35),(70,'F',9,35),(71,'M',6,36),(72,'F',6,36),(73,'M',9,37),(74,'F',10,37),(75,'M',9,38),(76,'F',9,38),(77,'M',8,39),(78,'F',9,39),(79,'M',8,40),(80,'F',9,40),(81,'M',7,41),(82,'F',7,41),(83,'M',7,42),(84,'F',7,42),(85,'M',8,43),(86,'F',9,43),(87,'M',9,44),(88,'F',7,44),(89,'M',9,45),(90,'F',9,45),(91,'M',7,46),(92,'F',9,46),(93,'M',9,47),(94,'F',9,47),(95,'M',7,48),(96,'F',7,48),(97,'M',7,49),(98,'F',7,49),(99,'M',7,50),(100,'F',7,50),(101,'M',9,51),(102,'F',9,51),(103,'M',9,52),(104,'F',9,52),(105,'M',8,53),(106,'F',8,53),(107,'M',6,54),(108,'F',6,54),(109,'M',7,55),(110,'F',7,55),(111,'M',8,56),(112,'F',8,56),(113,'M',6,57),(114,'F',6,57),(115,'M',7,58),(116,'F',8,58),(117,'M',8,59),(118,'F',8,59),(119,'M',8,60),(120,'F',8,60),(121,'M',8,61),(122,'F',9,61),(123,'M',8,62),(124,'F',9,62),(125,'M',8,63),(126,'F',8,63),(127,'M',8,64),(128,'F',9,64),(129,'M',8,65),(130,'F',8,65),(131,'M',8,66),(132,'F',9,66),(133,'M',9,67),(134,'F',9,67),(135,'M',6,68),(136,'F',6,68),(137,'M',8,69),(138,'F',8,69),(139,'M',7,70),(140,'F',7,70),(141,'M',7,71),(142,'F',8,71),(143,'M',6,72),(144,'F',6,72),(145,'M',10,73),(146,'F',10,73),(147,'M',7,74),(148,'F',7,74),(149,'M',9,75),(150,'F',9,75),(151,'M',8,76),(152,'F',9,76),(153,'M',9,77),(154,'F',8,77),(155,'M',7,78),(156,'F',9,78),(157,'M',8,79),(158,'F',8,79);
/*!40000 ALTER TABLE `film_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_hit`
--

DROP TABLE IF EXISTS `film_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_hit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sales` bigint(20) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_id` (`film_id`),
  KEY `index_film_hit` (`id`),
  CONSTRAINT `film_hit_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_hit`
--

LOCK TABLES `film_hit` WRITE;
/*!40000 ALTER TABLE `film_hit` DISABLE KEYS */;
INSERT INTO `film_hit` VALUES (1,42079220,1),(2,414211549,2),(3,138000000,3),(4,232325503,4),(5,187733202,5),(6,103200000,6),(7,88346473,7),(8,5000000,8),(9,19500000,9),(10,23000000,10),(11,269169009,11),(12,39458207,12),(13,1608201,13),(14,45600000,14),(15,11767402,15),(16,120072577,16),(17,0,17),(18,222446882,18),(19,0,19),(20,22903165,20),(21,10174839,21),(22,0,22),(23,19319444,23),(24,0,24),(25,61700000,25),(26,29900000,26),(27,19465835,27),(28,4018705,28),(29,5562275,29),(30,15793051,30),(31,9493791,31),(32,67998954,32),(33,0,33),(34,0,34),(35,48451803,35),(36,0,36),(37,365481131,37),(38,1758689,38),(39,0,39),(40,11000000,40),(41,0,41),(42,0,42),(43,0,43),(44,14000000,44),(45,0,45),(46,0,46),(47,22926076,47),(48,0,48),(49,0,49),(50,0,50),(51,0,51),(52,0,52),(53,2000000,53),(54,0,54),(55,0,55),(56,0,56),(57,0,57),(58,2352140,58),(59,0,59),(60,0,60),(61,0,61),(62,8482993,62),(63,0,63),(64,178062759,64),(65,2504465,65),(66,67091915,66),(67,44734660,67),(68,0,68),(69,0,69),(70,0,70),(71,6616296,71),(72,0,72),(73,0,73),(74,0,74),(75,0,75),(76,238151,76),(77,1074445730,77),(78,1029414,78),(79,0,79);
/*!40000 ALTER TABLE `film_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_academy`
--

DROP TABLE IF EXISTS `review_academy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_academy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `academy_award_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academy_award_id` (`academy_award_id`),
  KEY `user_id` (`user_id`),
  KEY `index_review_academy` (`id`),
  CONSTRAINT `review_academy_ibfk_1` FOREIGN KEY (`academy_award_id`) REFERENCES `academy_best_award` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_academy_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_academy`
--

LOCK TABLES `review_academy` WRITE;
/*!40000 ALTER TABLE `review_academy` DISABLE KEYS */;
INSERT INTO `review_academy` VALUES (5,2,'F',1,2);
/*!40000 ALTER TABLE `review_academy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_berlin`
--

DROP TABLE IF EXISTS `review_berlin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_berlin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `berlin_award_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `berlin_award_id` (`berlin_award_id`),
  KEY `user_id` (`user_id`),
  KEY `index_review_berlin` (`id`),
  CONSTRAINT `review_berlin_ibfk_1` FOREIGN KEY (`berlin_award_id`) REFERENCES `berlin_best_award` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_berlin_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_berlin`
--

LOCK TABLES `review_berlin` WRITE;
/*!40000 ALTER TABLE `review_berlin` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_berlin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_cannes`
--

DROP TABLE IF EXISTS `review_cannes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_cannes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `cannes_award_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cannes_award_id` (`cannes_award_id`),
  KEY `user_id` (`user_id`),
  KEY `index_review_cannes` (`id`),
  CONSTRAINT `review_cannes_ibfk_1` FOREIGN KEY (`cannes_award_id`) REFERENCES `cannes_best_award` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_cannes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_cannes`
--

LOCK TABLES `review_cannes` WRITE;
/*!40000 ALTER TABLE `review_cannes` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_cannes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_venice`
--

DROP TABLE IF EXISTS `review_venice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_venice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `venice_award_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venice_award_id` (`venice_award_id`),
  KEY `user_id` (`user_id`),
  KEY `index_review_venice` (`id`),
  CONSTRAINT `review_venice_ibfk_1` FOREIGN KEY (`venice_award_id`) REFERENCES `venice_best_award` (`id`) ON DELETE CASCADE,
  CONSTRAINT `review_venice_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_venice`
--

LOCK TABLES `review_venice` WRITE;
/*!40000 ALTER TABLE `review_venice` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_venice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test','test'),(2,'team13','team13');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venice_best_award`
--

DROP TABLE IF EXISTS `venice_best_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venice_best_award` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `film_festival_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_id` (`film_id`),
  KEY `film_festival_id` (`film_festival_id`),
  KEY `index_venice_best_award` (`id`),
  CONSTRAINT `venice_best_award_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE,
  CONSTRAINT `venice_best_award_ibfk_2` FOREIGN KEY (`film_festival_id`) REFERENCES `film_festival` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venice_best_award`
--

LOCK TABLES `venice_best_award` WRITE;
/*!40000 ALTER TABLE `venice_best_award` DISABLE KEYS */;
INSERT INTO `venice_best_award` VALUES (1,2000,57,59,4),(2,2001,58,60,4),(3,2002,59,61,4),(4,2003,60,62,4),(5,2004,61,63,4),(6,2005,62,64,4),(7,2006,63,65,4),(8,2007,64,66,4),(9,2008,65,67,4),(10,2009,66,68,4),(11,2010,67,69,4),(12,2011,68,70,4),(13,2012,69,71,4),(14,2013,70,72,4),(15,2014,71,73,4),(16,2015,72,74,4),(17,2016,73,75,4),(18,2017,74,9,4),(19,2018,75,76,4),(20,2019,76,77,4),(21,2020,77,12,4),(22,2021,78,78,4),(23,2022,79,79,4);
/*!40000 ALTER TABLE `venice_best_award` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-17 23:59:02
