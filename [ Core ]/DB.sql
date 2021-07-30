-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dokuscore
CREATE DATABASE IF NOT EXISTS `dokuscore` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dokuscore`;

-- Dumping structure for table dokuscore.banks
CREATE TABLE IF NOT EXISTS `banks` (
  `Steam` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `sName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CharID` int(11) DEFAULT 0,
  `Money` int(11) DEFAULT NULL,
  `BankMoney` int(11) DEFAULT NULL,
  `Gold` int(11) DEFAULT NULL,
  `BankGold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.banks: ~0 rows (approximately)
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;

-- Dumping structure for table dokuscore.blacklist
CREATE TABLE IF NOT EXISTS `blacklist` (
  `Steam` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `IP` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Reason` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `Admin` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Until` int(11) DEFAULT 0,
  `License` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `XBoxLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `MLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.blacklist: ~0 rows (approximately)
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;

-- Dumping structure for table dokuscore.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `Steam` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Groups` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `cName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CharID` int(11) DEFAULT 0,
  `Gender` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Nationality` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `BirthDate` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `XP` int(11) DEFAULT 0,
  `Level` int(11) DEFAULT 0,
  `JobName` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `JobGrade` int(11) DEFAULT 0,
  `Coords` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table dokuscore.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table dokuscore.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `Steam` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `CharID` int(11) NOT NULL,
  `Type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Item` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Amount` int(11) DEFAULT 0,
  `Meta` text COLLATE utf8mb4_bin DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table dokuscore.users
CREATE TABLE IF NOT EXISTS `users` (
  `Steam` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `sName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `IP` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Language` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `License` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `XBoxLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `MLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Music` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
