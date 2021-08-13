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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `sName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CharID` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) DEFAULT NULL,
  `BankMoney` int(11) DEFAULT NULL,
  `Gold` int(11) DEFAULT NULL,
  `BankGold` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.banks: ~0 rows (approximately)
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;

-- Dumping structure for table dokuscore.blacklist
CREATE TABLE IF NOT EXISTS `blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'NO STEAM SET',
  `IP` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Reason` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `Admin` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Until` int(11) DEFAULT -1,
  `License` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `XBoxLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `MLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.blacklist: ~0 rows (approximately)
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;

-- Dumping structure for table dokuscore.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Groups` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `cName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CharID` int(11) NOT NULL DEFAULT 0,
  `Gender` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Nationality` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `BirthDate` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `XP` int(11) DEFAULT 0,
  `Level` int(11) DEFAULT 0,
  `JobName` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `JobGrade` int(11) DEFAULT 0,
  `Coords` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Skin` varchar(5000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table dokuscore.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table dokuscore.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `CharID` int(11) NOT NULL,
  `Type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Item` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Amount` int(11) DEFAULT 0,
  `Meta` text COLLATE utf8mb4_bin DEFAULT '[]',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table dokuscore.items
CREATE TABLE IF NOT EXISTS `items` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT 'No Item Set',
  `Name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `bPrice` float DEFAULT NULL,
  `sPrice` float DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Used` int(11) DEFAULT NULL,
  `Limit` int(11) NOT NULL DEFAULT 1,
  `sLimit` int(11) NOT NULL DEFAULT 1,
  `Description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `Valentine` int(11) DEFAULT 1,
  `Saint` int(11) DEFAULT 1,
  `Blackwater` int(11) DEFAULT 1,
  `Tumbleweed` int(11) DEFAULT 1,
  `Rhodes` int(11) DEFAULT 1,
  `Armadillo` int(11) DEFAULT 1,
  `Strawberry` int(11) DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table dokuscore.items: ~14 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`ID`, `Item`, `Name`, `Type`, `bPrice`, `sPrice`, `Amount`, `Used`, `Limit`, `sLimit`, `Description`, `Valentine`, `Saint`, `Blackwater`, `Tumbleweed`, `Rhodes`, `Armadillo`, `Strawberry`) VALUES
	(1, 'carrot', 'Carrot', 'Consumable', 0.95, 0.35, 1, NULL, 10, 100, NULL, 1, 1, 1, 1, 1, 1, 1),
	(2, 'cigar', 'Cigar', 'Consumable', 1.2, 0.85, 1, NULL, 10, 100, NULL, 1, 1, 1, 0, 1, 1, 1),
	(3, 'cigarette', 'Cigarette', 'Consumable', 0.25, 0.05, 1, NULL, 10, 100, NULL, 1, 1, 1, 0, 1, 1, 1),
	(4, 'cigarette_box', 'Cigarette Box', 'Consumable', 3, 1.1, 1, 25, 10, 30, NULL, 1, 1, 1, 0, 1, 1, 1),
	(5, 'coffee', 'Coffee', 'Consumable', 0.75, 0.25, 1, NULL, 10, 100, 'Your daily dose of caffine', 1, 1, 1, 1, 1, 1, 1),
	(6, 'eggs', 'Eggs', 'Consumable', 0.15, 0.5, 1, NULL, 30, 100, NULL, 1, 1, 1, 1, 1, 1, 1),
	(7, 'goldbar', 'Golden Bar', 'Valuta', 500, 500, 1, NULL, 10, 10, 'A Golden bar', 0, 0, 0, 0, 0, 0, 0),
	(8, 'goldnuggets', 'Gold Nuggets', 'Mineral', 30, 30, 1, NULL, 30, 10, 'You can smelt this into a golden bar', 0, 0, 0, 0, 0, 0, 0),
	(9, 'goldpan', 'Gold Pan', 'Tool', 10, 4.75, 1, NULL, 1, 10, 'Used to filter gold flakes from water', 0, 0, 0, 0, 0, 0, 0),
	(10, 'horsebrush', 'Horse Brush', 'Tool', 4.5, 2, 1, NULL, 10, 10, NULL, 0, 0, 0, 0, 0, 0, 0),
	(11, 'lockpick', 'Lockpick', 'Tool', 10.75, 4.75, 5, NULL, 10, 10, NULL, 0, 0, 0, 0, 0, 0, 0),
	(12, 'meat', 'Meat', 'Consumable', 1.5, 0.75, 1, NULL, 10, 100, NULL, 1, 1, 1, 1, 1, 1, 1),
	(13, 'water', 'Water', 'Consumable', 0.15, 0.05, 1, NULL, 10, 100, 'Somthing to drink', 1, 1, 1, 1, 1, 1, 1),
	(15, 'eggbox', 'Egg Box', 'Consumable', 2, 1.5, 1, 12, 5, 50, NULL, 1, 1, 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table dokuscore.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL DEFAULT 'NO STEAM SET',
  `Music` int(11) DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table dokuscore.storage
CREATE TABLE IF NOT EXISTS `storage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) DEFAULT NULL,
  `CharID` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BoxID` int(11) NOT NULL DEFAULT 0,
  `Item` varchar(50) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Meta` varchar(5000) DEFAULT NULL,
  `Coords` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.storage: ~0 rows (approximately)
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;

-- Dumping structure for table dokuscore.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Store` varchar(50) DEFAULT NULL,
  `Hash` varchar(50) DEFAULT NULL,
  `Coords` varchar(5000) DEFAULT NULL,
  `NPC` varchar(5000) DEFAULT NULL,
  `Heading` float DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Stock` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.stores: ~7 rows (approximately)
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`ID`, `Store`, `Hash`, `Coords`, `NPC`, `Heading`, `Owner`, `Price`, `Stock`) VALUES
	(1, 'Valentine', 'U_M_M_StrGenStoreOwner_01', '{-322.0, 803.4, 117.8}', '{-324.3, 804.2, 116.8}', 236.01, NULL, 2000, '[{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"coffee","Stock":51},{"Limit":100,"Item":"carrot","Stock":48}]'),
	(2, 'Saint Denis', 'U_M_M_StrGenStoreOwner_01', '{2826.1, -1317.9, 45.7}', '{2824.9, -1319.8, 45.7}', 326.5, NULL, 5500, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(3, 'Blackwater', 'U_M_M_StrGenStoreOwner_01', '{-784.8, -1323.9, 43.8}', '{-786.0, -1322.3, 42.8}', 154.1, NULL, 1800, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(4, 'Tumbleweed', 'U_M_M_StrGenStoreOwner_01', '{-5487.6, -2938.9, -0.4}', '{-5485.7, -2937.9, -1.4}', 130.1, NULL, 850, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(5, 'Rhodes', 'U_M_M_StrGenStoreOwner_01', '{1328.2, -1293.5, 77.0}', '{1329.8, -1294.2, 76.0}', 77.01, NULL, 2200, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(6, 'Armadillo', 'U_M_M_StrGenStoreOwner_01', '{-3685.6, -2623.5, -13.5}', '{-3687.4, -2623.3, -14.5}', 267.5, NULL, 500, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(7, 'Strawberry', 'U_M_M_StrGenStoreOwner_01', '{-1791.3, -387.2, 160.3}', '{-1789.7, -388.1, 159.36}', 68.2, NULL, 1800, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

-- Dumping structure for table dokuscore.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `sName` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `IP` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Language` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `License` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `XBoxLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `MLive` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Music` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table dokuscore.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table dokuscore.weapon
CREATE TABLE IF NOT EXISTS `weapon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `weapon` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Model` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Asset` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ammotype` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `Limit` int(11) NOT NULL DEFAULT 1,
  `Weight` int(50) NOT NULL DEFAULT 1,
  `Img` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table dokuscore.weapon: ~0 rows (approximately)
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
/*!40000 ALTER TABLE `weapon` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
