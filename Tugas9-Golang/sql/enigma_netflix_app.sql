-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: enigma_netflix_app
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `duration` varchar(1000) DEFAULT NULL,
  `image` longtext,
  `synopsis` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (3,'Harry Potter','130 min','https://upload.wikimedia.org/wikipedia/en/d/d7/Harry_Potter_character_poster.jpg','Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry\'s struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).'),(4,'Deadpool','125 min','https://upload.wikimedia.org/wikipedia/id/thumb/4/46/Deadpool_poster.jpg/220px-Deadpool_poster.jpg','Deadpool is a 2016 American superhero film based on the Marvel Comics character of the same name. Distributed by 20th Century Fox, it is the eighth film in the X-Men film series. Directed by Tim Miller from a screenplay by Rhett Reese and Paul Wernick, it stars Ryan Reynolds in the title role alongside Morena Baccarin, Ed Skrein, T. J. Miller, Gina Carano, and Brianna Hildebrand. In the film, Wade Wilson hunts the man who gave him mutant abilities and a scarred physical appearance, becoming the antihero Deadpool.'),(5,'Aquaman','132 min','https://www.greenscene.co.id/wp-content/uploads/2019/02/aquaman.jpg','Aquaman is a 2018 American superhero film based on the DC Comics character of the same name. Distributed by Warner Bros. Pictures, it is the sixth film in the DC Extended Universe (DCEU). The film was directed by James Wan, from a screenplay by David Leslie Johnson-McGoldrick and Will Beall and stars Jason Momoa as Aquaman, with Amber Heard, Willem Dafoe, Patrick Wilson, Dolph Lundgren, Yahya Abdul-Mateen II, Ludi Lin, Temuera Morrison, and Nicole Kidman in supporting roles. In the film, Aquaman sets out to lead the underwater kingdom of Atlantis, replacing his half-brother, King Orm, who seeks to unite the seven underwater kingdoms against the surface world.');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 23:11:56
