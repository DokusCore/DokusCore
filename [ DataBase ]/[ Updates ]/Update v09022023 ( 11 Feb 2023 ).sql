-- -----------------------------------------------------------------------------
-- ------------------------------- DokusCore -----------------------------------
-- -----------------------------------------------------------------------------
-- Update DB for prebuild version 09022023
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
-- This will update your database to the latest prebuild version 18022023
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
USE `dokuscore`;

INSERT INTO `_items` (`Item`, `Name`, `Type`, `Description`, `CTI`, `CA`, `InvLimit`, `CanPlace`, `Delete`, `UseMeta`, `UseEvent`, `UseAnim`, `Hunger`, `Thirst`, `Health`, `Stamina`, `GHI`, `GHO`, `GSI`, `GSO`, `Animation`, `Event`, `Meta`) VALUES
	('weapon_fishingrod', 'Fishing Rod', 'Tool', 'A stick with a rope and bait....', NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Type":"Client", "Event":"DokusCore:UsableItems:ItemNoUse"}', NULL),
	('fishingbait', 'Fishing Bait', 'Consumable', 'Biat to lure the fish', NULL, 0, 1, 0, 0, 1, 0, 0, 5, -5, -5, 5, 0, 0, 0, 0, NULL, '{"Type":"Client", "Event":"DokusCore:UsableItems:ItemNoUse"}', NULL),
	('fishsmall_uncooked', 'Small Fish Uncooked', 'Consumable', 'a small fish', NULL, 0, 1, 0, 0, 1, 0, 0, 5, -5, -5, 5, 0, 0, 0, 0, NULL, '{"Type":"Client", "Event":"DokusCore:UsableItems:ItemNoUse"}', NULL),
	('fishmedium_uncooked', 'Medium Fish Uncooked', 'Consumable', 'a medium fish', NULL, 0, 1, 0, 0, 1, 0, 0, 5, -5, -5, 5, 0, 0, 0, 0, NULL, '{"Type":"Client", "Event":"DokusCore:UsableItems:ItemNoUse"}', NULL),
	('fishlarge_uncooked', 'Large Fish Uncooked', 'Consumable', 'a large fish', NULL, 0, 1, 0, 0, 1, 0, 0, 5, -5, -5, 5, 0, 0, 0, 0, NULL, '{"Type":"Client", "Event":"DokusCore:UsableItems:ItemNoUse"}', NULL),
	('pickaxe', 'Pickaxe', 'Tool', 'For harvesting minerals', NULL, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('mineral_copper', 'Copper Mineral', 'Mineral', 'Copper mineral', NULL, 0, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('mineral_iron', 'Iron Mineral', 'Mineral', 'Iron mineral', NULL, 0, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('mineral_sulfur', 'Sulfur Mineral', 'Mineral', 'Sulfur mineral', NULL, 0, 50, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DROP TABLE `_stores`;
-- -----------------------------------------------------------------------------
-- -----------------------------------------------------------------------------
