-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
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
  `Steam` varchar(50) NOT NULL,
  `CharID` int(11) NOT NULL DEFAULT 1,
  `Money` float NOT NULL,
  `Gold` float NOT NULL,
  `BankMoney` float NOT NULL,
  `BankGold` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.banks: ~0 rows (approximately)
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;

-- Dumping structure for table dokuscore.blacklist
CREATE TABLE IF NOT EXISTS `blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL,
  `Reason` varchar(50) NOT NULL,
  `Admin` varchar(50) NOT NULL,
  `Until` int(11) NOT NULL DEFAULT -1,
  `IP` varchar(50) NOT NULL,
  `License` varchar(50) NOT NULL,
  `XBoxLive` varchar(50) NOT NULL,
  `MLive` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.blacklist: ~0 rows (approximately)
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;

-- Dumping structure for table dokuscore.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL,
  `CharID` int(11) NOT NULL DEFAULT 1,
  `Group` varchar(50) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `BirthDate` varchar(50) NOT NULL,
  `XP` int(11) NOT NULL DEFAULT 0,
  `Level` int(11) NOT NULL DEFAULT 0,
  `JobName` varchar(50) NOT NULL DEFAULT 'unemployed',
  `JobGrade` int(11) NOT NULL DEFAULT 0,
  `Coords` varchar(5000) NOT NULL,
  `Skin` varchar(5000) NOT NULL,
  `Clothing` varchar(5000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table dokuscore.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) DEFAULT NULL,
  `CharID` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Item` varchar(50) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Meta` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.inventory: ~3 rows (approximately)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` (`ID`, `Steam`, `CharID`, `Type`, `Item`, `Amount`, `Meta`) VALUES
	(1, 'steam:1100001042b8cd7', 1, 'Consumable', 'carrot', 2, NULL),
	(2, 'steam:1100001042b8cd7', 1, 'Consumable', 'coffee', 1, NULL),
	(3, 'steam:1100001042b8cd7', 1, 'Mineral', 'goldbar', 10, NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table dokuscore.items
CREATE TABLE IF NOT EXISTS `items` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `CanUse` varchar(50) DEFAULT NULL,
  `OnUse` int(11) DEFAULT NULL,
  `ConvertToItem` varchar(50) DEFAULT NULL,
  `ConvertAmount` int(11) DEFAULT NULL,
  `InvLimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.items: ~15 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`ID`, `Item`, `Name`, `Type`, `CanUse`, `OnUse`, `ConvertToItem`, `ConvertAmount`, `InvLimit`) VALUES
	(1, 'carrot', 'Carrot', 'Consumable', 'true', 1, NULL, 0, 10),
	(2, 'cigar', 'Cigar', 'Consumable', 'true', 1, NULL, 0, 50),
	(3, 'cigarette', 'Cigarette', 'Consumable', 'true', 1, NULL, 0, 100),
	(4, 'cigarette_box', 'Cigarette Box', 'Consumable', 'true', 1, 'cigarette', 25, 5),
	(5, 'coffee', 'Coffee', 'Consumable', 'true', 1, NULL, 0, 5),
	(6, 'eggs', 'Eggs', 'Consumable', 'true', 1, NULL, 0, 50),
	(7, 'egg_box', 'Egg Box', 'Consumable', 'true', 1, 'eggs', 10, 3),
	(8, 'goldbar', 'Goldbar', 'Valuta', 'true', 1, 'gold_coin', 35, 3),
	(9, 'gold_nugget', 'Gold Nugget', 'Mineral', 'true', 1, NULL, 0, 120),
	(10, 'gold_coin', 'Gold Coin', 'Valuta', 'true', 1, NULL, 0, 200),
	(11, 'silver_nugget', 'Silver Nugget', 'Mineral', 'true', 1, 'silver_coin', 50, 200),
	(12, 'silver_coin', 'Silver Coin', 'Valuta', 'true', 1, NULL, 0, 200),
	(13, 'goldpan', 'Gold Pan', 'Tool', 'true', 1, NULL, 0, 2),
	(14, 'horsebrush', 'Horse Brush', 'Tool', 'true', 1, NULL, 0, 1),
	(15, 'lockpick', 'Lock Pick', 'Tool', 'true', 1, NULL, 0, 5),
	(16, 'meat_cooked', 'Cooked Meat', 'Consumable', 'true', 1, NULL, 0, 10),
	(17, 'meat_uncooked', 'Uncooked Meat', 'Consumable', 'true', 1, 'meat_cooked', 1, 10),
	(18, 'water_clean', 'Clean Water', 'Consumable', 'true', 1, NULL, 0, 10),
	(19, 'water_dirty', 'Dirty Water', 'Consumable', 'true', 1, 'water_clean', 1, 10);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table dokuscore.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL,
  `Music` int(11) NOT NULL DEFAULT 1,
  `Language` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table dokuscore.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Store` varchar(50) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Stock` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.stocks: ~7 rows (approximately)
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` (`ID`, `Store`, `Owner`, `Price`, `Stock`) VALUES
	(1, 'Valentine', NULL, 2000, '[{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"coffee","Stock":51},{"Limit":100,"Item":"carrot","Stock":48}]'),
	(2, 'Saint Denis', NULL, 5500, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(3, 'Blackwater', NULL, 1800, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(4, 'Tumbleweed', NULL, 850, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(5, 'Rhodes', NULL, 2200, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(6, 'Armadillo', NULL, 500, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]'),
	(7, 'Strawberry', NULL, 1800, '[{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25},{"Limit":100,"Item":"carrot","Stock":50},{"Limit":100,"Item":"cigar","Stock":50},{"Limit":100,"Item":"cigarette","Stock":50},{"Limit":30,"Item":"cigarette_box","Stock":15},{"Limit":100,"Item":"coffee","Stock":50},{"Limit":100,"Item":"eggs","Stock":50},{"Limit":10,"Item":"goldbar","Stock":5},{"Limit":10,"Item":"goldnuggets","Stock":5},{"Limit":10,"Item":"goldpan","Stock":5},{"Limit":10,"Item":"horsebrush","Stock":5},{"Limit":10,"Item":"lockpick","Stock":5},{"Limit":100,"Item":"meat","Stock":50},{"Limit":100,"Item":"water","Stock":50},{"Limit":50,"Item":"eggbox","Stock":25}]');
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;

-- Dumping structure for table dokuscore.storages
CREATE TABLE IF NOT EXISTS `storages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) DEFAULT NULL,
  `CharID` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BoxID` int(11) NOT NULL DEFAULT 0,
  `Meta` varchar(5000) DEFAULT NULL,
  `Coords` varchar(150) DEFAULT NULL,
  `Expiration` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.storages: ~0 rows (approximately)
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;

-- Dumping structure for table dokuscore.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Description` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CanSell` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CanBuy` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `BuyPrice` float DEFAULT NULL,
  `SellPrice` float DEFAULT NULL,
  `StockLimit` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `Valentine` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `SaintDenis` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `Blackwater` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `Tumbleweed` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `Rhodes` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `Armadillo` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `Strawberry` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table dokuscore.stores: ~11 rows (approximately)
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`ID`, `Item`, `Name`, `Type`, `Description`, `CanSell`, `CanBuy`, `BuyPrice`, `SellPrice`, `StockLimit`, `Valentine`, `SaintDenis`, `Blackwater`, `Tumbleweed`, `Rhodes`, `Armadillo`, `Strawberry`) VALUES
	(1, 'carrot', 'Carrot', 'Consumable', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(2, 'cigar', 'Cigar', 'Consumable', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(3, 'cigarette', 'Cigarette Single', 'Consumable', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(4, 'cigarette_box', 'Cigarette Box (25)', 'Item', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(5, 'coffee', 'Coffee', 'Consumable', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(6, 'egg', 'Egg', 'Consumable', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(7, 'egg_box', 'Egg Box (10)', 'Item', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(8, 'gold_nuggets', 'Gold Nuggest', 'Mineral', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(9, 'gold_pan', 'Gold Pan', 'Tool', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(10, 'gold_bar', 'Golden Bar', 'Valuta', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(11, 'water', 'Water', 'Consumable', NULL, 'true', 'true', 0.05, 0.02, '20', 'true', 'true', 'true', 'true', 'true', 'true', 'true');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

-- Dumping structure for table dokuscore.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL,
  `License` varchar(50) NOT NULL,
  `XBoxLive` varchar(50) NOT NULL,
  `MLive` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table dokuscore.whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Allowed` varchar(50) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.whitelist: ~3 rows (approximately)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
INSERT INTO `whitelist` (`ID`, `Steam`, `sName`, `Date`, `Allowed`, `Reason`) VALUES
	(1, 'steam:1100001042b8cd7', 'Your Grandmother', '2021-10-7 20:42:46', 'true', NULL),
	(2, 'steam:11000010b589d92', 'Salty of the GODZZZZ', '2021-11-5 17:27:16', 'true', NULL);
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
