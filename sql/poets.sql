-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: poets
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
-- Table structure for table `poems`
--

DROP TABLE IF EXISTS `poems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `author` varchar(45) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `content` varchar(1000) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `publish` varchar(20) COLLATE latin2_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poems`
--

LOCK TABLES `poems` WRITE;
/*!40000 ALTER TABLE `poems` DISABLE KEYS */;
INSERT INTO `poems` VALUES (1,'Teszt 1','1','teszt content 1','1990'),(2,'teszt 2','1','teszt content 2','1980'),(3,'teszt 3 ','2','teszt content 3','1550'),(4,'A dunán','2','Folyam, kebled hányszor repeszti meg\nHajó futása s dúló fergeteg!\n\nS a seb mi hosszu és a seb mi mély!\nMinőt a szíven nem vág szenvedély.\n\nMégis, ha elmegy fergeteg s hajó:\nA seb begyógyul, s minden újra jó.\n\nS az emberszív ha egyszer megreped:\nNincs balzsam, mely hegessze a sebet.','1842'),(5,'\nK. J. KISASSZONY EMLÉKKÖNYVÉBE','2','Szived bölcsőben fekvő csecsemő;\nOtt fekszik és még mélyen alszik ő,\nDe majd fölébred és keservesen sír...\nAkkor, szép gyermekem,\nLegyen szelíden ringató dajkája\nA nyájas szerelem.','1846'),(6,'Nyár volt','3','Nyár volt,\nDe mindnyájan fáztunk,\nHát begyújtottunk a mesekályhákba,\nOtt melegedett belém,\nHogy valahol, ahová elérünk,\nVár ránk a lány, aki mi vagyunk,\nVár rátok a legény, aki meg ti vagytok,\nBiztosan és észrevétlenűl,\nMint hóborított földekben a tavasz\nÉs előjön és megigéz,\nHa napszivünk kisüt szép homlokunkon.','1924'),(7,'Május','3','A rengő lomb virágban ég\nés készül a gyümölcsre,\na nyilt uccára lép a nép,\nhogy végzetét betöltse.\nIramlanak a bogarak,\nfriss jelszavak repülnek.\nS az aranyba vont ég alatt,\n- mert beköszönt az ünnep -\na szabadság sétára megy.\nHős népe ágat lenget,\ns ő kézenfogva vezeti\nszép gyermekét, a rendet!','1935'),(8,'A FAJTÁM TAKARÓJA','4','Mi nagy szépségünknek\nSohase volt ismerője\nÉs merője,\nMert a magyar mindig dőre.\n\nVoltunk páriái\nNagy és pénzes oknak,\nGazdagoknak\nS befogó hatalmasoknak.\n\nMost már úgyis mindegy,\nAz Isten talán megóvja,\nLeszek jó, bús siratója,\nLeszek fajtám takarója.','1923'),(9,'HA MESSZEBBRŐL NÉZEM','4','Hogy csak már félig eljöhettem,\nGyuladoznak a lámpa-lángok:\nNem vagyok otthon s még nem messze\nÉs máris majdnem látva-látok.\n\nSzép sorssá és törvénnyé válik\nMinden, hogyha messziről nézik.\nA Halál is borzalmasan szép\nS minden, miben a Halál érzik.\n\nÓh, hazai Halál, ki bennem\nÚgy járkálsz, mint földemen, otthon,\nMár hall szivem és külön nótát\nNem kell, hogy léptedre dobogjon.\n\nNem kell (tán), hogy eztán is fájjon\nA fájdalommal védhetetlen\nS hogy remény nélkül viaskodjak\nA fajtám ellen, magam ellen.\n\nAz Élet a maga dűlőit\nHaláltól távol válogatja\nÉs a Halál jár közelünkben.\nBéke és nyugovás fogadja.','1914'),(10,'HA MESSZEBBRŐL NÉZEM','5','Úgy félek, hogy ezt a homályos, ódon,\nvén bánatot egy éjjel elveszítem,\nés véle együtt életem s a szívem,\na szívem is, és megvigasztalódom.\n\nS csodálkozom a fáradt, furcsa szókon,\nmelyek belőle ömlöttek szelíden,\nszájam haragra többé nem feszítem\nvérezve, átkozódva és vívódón.\n\nDe nézem a sírókat és a könnyük,\nés gyászolom elvesztett bánatom,\nezt a nehéz és babonás kösöntyűt.','1912'),(11,'Egy kézre vágyom','5','Jó olvasó, ki ülsz a lámpa mellett,\nakárcsak én itt, most rád gondolok,\ns akármi vagy, versekkel ünnepellek.\nLátom fejed, figyelmes homlokod.\n\nTestvértelen és bánatos a költő\naz életek, a szívek alkuján.\nÉs néha, ő, a magányos ődöngő\nkétségbeesve nyúl egy kéz után.\n\nMost a kezed kell - nincs kéz a világon\nmit így szorítanék, egy kézre vágyom,\naz éjen át nyújtsd, légy akárki bár.\n\nGondolj reám és messze útjainkra,\ns mondd, ki lehet, aki e verset írta,\nki az a testvér és neki mi fáj?','1916'),(12,'Tőle csak nagyon hosszúakat találtam','6','Ezért inkább kihagytam :(','2017');
/*!40000 ALTER TABLE `poems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `password` varchar(45) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `name` varchar(45) COLLATE latin2_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'asd@asd.com','7815696ecbf1c96e6894b779456d330e','Gipsz Jakab'),(2,'petofisandor@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','Petőfi Sándor'),(3,'jozsefattila@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','József Attila'),(4,'adyendre@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','Ady Endre'),(5,'kosztolanyidezso@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','Kosztolányi Dezső'),(6,'balassaibalint@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','Balassai Bálint');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-06 19:00:16
