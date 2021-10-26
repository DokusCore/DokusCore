-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.20-MariaDB - mariadb.org binary distribution
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table dokuscore.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Steam` varchar(50) NOT NULL,
  `Music` int(11) NOT NULL DEFAULT 1,
  `Language` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

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

-- Dumping structure for table dokuscore.stores
CREATE TABLE IF NOT EXISTS `stores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Description` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `OnUse` int(11) DEFAULT NULL,
  `CanSell` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `CanBuy` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `BuyPrice` float DEFAULT NULL,
  `SellPrice` float DEFAULT NULL,
  `StockLimit` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
  `InventLimit` varchar(50) COLLATE utf8mb4_bin DEFAULT 'true',
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
INSERT INTO `stores` (`ID`, `Item`, `Name`, `Type`, `Description`, `OnUse`, `CanSell`, `CanBuy`, `BuyPrice`, `SellPrice`, `StockLimit`, `InventLimit`, `Valentine`, `SaintDenis`, `Blackwater`, `Tumbleweed`, `Rhodes`, `Armadillo`, `Strawberry`) VALUES
	(1, 'carrot', 'Carrot', 'Consumable', NULL, NULL, 'true', 'false', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(2, 'cigar', 'Cigar', 'Consumable', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(3, 'cigarette', 'Cigarette Single', 'Consumable', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(4, 'cigarette_box', 'Cigarette Box (25)', 'Item', NULL, 25, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(5, 'coffee', 'Coffee', 'Consumable', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(6, 'egg', 'Egg', 'Consumable', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(7, 'egg_box', 'Egg Box (10)', 'Item', NULL, 10, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(8, 'gold_nuggets', 'Gold Nuggest', 'Mineral', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(9, 'gold_pan', 'Gold Pan', 'Tool', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(10, 'gold_bar', 'Golden Bar', 'Valuta', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true'),
	(11, 'water', 'Water', 'Consumable', NULL, NULL, 'true', 'true', 0.05, 0.02, '20', '10', 'true', 'true', 'true', 'true', 'true', 'true', 'true');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dokuscore.whitelist: ~0 rows (approximately)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
