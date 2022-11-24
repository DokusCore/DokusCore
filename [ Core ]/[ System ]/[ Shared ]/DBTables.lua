--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
DB               = {}
DB.Users         = {}
DB.Banks         = {}
DB.Boats         = {}
DB.Items         = {}
DB.Stables       = {}
DB.Settings      = {}
DB.Characters    = {}
DB.Blacklist     = {}
DB.Whitelist     = {}
DB.Stores        = {}
DB.Inventory     = {}
DB.Storages      = {}
DB.Metabolism    = {}
DB.Outfits       = {}
DB.Zones         = {}
DB.Data          = {}
DB.Data.Skin     = {}
DB.Data.Clothing = {}
DB.Weapons       = {}
DB.Animals       = {}
--------------------------------------------------------------------------------
---- DB GET
--------------------------------------------------------------------------------
DB.Users.GetOnlySteam             = 'select * from users where Steam=@Steam'
DB.Users.GetViaSteamName          = 'select * from users where sName=@sName'
DB.Settings.GetOnlySteam          = 'select * from settings where Steam=@Steam'
DB.Banks.GetAllBanks              = 'select * from banks where Steam=@Steam and CharID=@CharID'
DB.Banks.GetViaBankName           = 'select * from banks where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Characters.GetAll              = 'select * from characters'
DB.Characters.GetOnlySteam        = 'select * from characters where Steam=@Steam'
DB.Characters.Get                 = 'select * from characters where Steam=@Steam and CharID=@CharID'
DB.Whitelist.GetAll               = 'select * from whitelist'
DB.Whitelist.GetViaSteam          = 'select * from whitelist where Steam=@Steam'
DB.Blacklist.GetAll               = 'select * from blacklist'
DB.Blacklist.GetViaSteam          = 'select * from blacklist where Steam=@Steam'
DB.Blacklist.GetViaIP             = 'select * from blacklist where IP=@IP'
DB.Blacklist.GetViaLicense        = 'select * from blacklist where License=@License'
DB.Blacklist.GetViaXBoxLive       = 'select * from blacklist where XBoxLive=@XBoxLive'
DB.Blacklist.GetViaMLive          = 'select * from blacklist where MLive=@MLive'
DB.Stores.GetAll                  = 'select * from _stores'
DB.Stores.GetViaType              = 'select * from _stores where Type=@Type'
DB.Inventory.GetUser              = 'select * from inventory where Steam=@Steam and CharID=@CharID'
DB.Inventory.GetUserItem          = 'select * from inventory where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Storages.GetAll                = 'select * from storages where Type=@Type'
DB.Storages.GetAllDropBox         = 'select * from storages where Type=@Type'
DB.Storages.GetUserDropBox        = 'select * from storages where Type=@Type and Steam=@Steam and CharID=@CharID'
DB.Storages.GetDropBoxViaID       = 'select * from storages where BoxID=@BoxID'
DB.Metabolism.Get                 = 'select * from metabolism where Steam=@Steam and CharID=@CharID'
DB.Items.GetAll                   = 'select * from _items'
DB.Data.Skin.GetAllMale           = 'select * from _data_skin_male'
DB.Data.Skin.GetAllFemale         = 'select * from _data_skin_female'
DB.Data.Clothing.GetAllMale       = 'select * from _data_clothes_male'
DB.Data.Clothing.GetAllFemale     = 'select * from _data_clothes_female'
DB.Boats.GetAllUser               = 'select * from boats'
DB.Boats.GetAllUser               = 'select * from boats where Steam=@Steam'
DB.Boats.GetSingle                = 'select * from boats where Steam=@Steam and CharID=@CharID'
DB.Boats.GetAllViaBID             = 'select * from boats where BID=@BID'
DB.Boats.GetSingleByIDAndHanger   = 'select * from boats where Steam=@Steam and CharID=@CharID and BID=@BID and Hanger=@Hanger'
DB.Outfits.GetAll                 = 'select * from outfits'
DB.Outfits.GetAllUser             = 'select * from outfits where Steam=@Steam'
DB.Outfits.GetSingleUser          = 'select * from outfits where Steam=@Steam and CharID=@CharID'

DB.Stables.GetAll                 = 'select * from stables'
DB.Stables.GetAllUser             = 'select * from stables where SteamID=@SteamID'
DB.Stables.GetAllCharacter        = 'select * from stables where SteamID=@SteamID and CharID=@CharID'
DB.Stables.GetSingleUserViaName   = 'select * from stables where SteamID=@SteamID and CharID=@CharID and Name=@Name'
DB.Stables.GetSingleUserViaType   = 'select * from stables where SteamID=@SteamID and CharID=@CharID and Type=@Type'
DB.Stables.GetSingleUserViaStable = 'select * from stables where SteamID=@SteamID and CharID=@CharID and Stabled=@Stabled'

DB.Zones.GetAll                   = 'select * from _zones'
DB.Zones.GetViaType               = 'select * from _zones where Type=@Type'

DB.Weapons.GetAll                 = 'select * from weapons'
DB.Weapons.GetSingleUser          = 'select * from weapons where SteamID=@SteamID and CharID=@CharID'
DB.Weapons.GetSingleUserHex       = 'select * from weapons where SteamID=@SteamID and CharID=@CharID and Hex=@Hex'
DB.Weapons.GetSingleUserHash      = 'select * from weapons where SteamID=@SteamID and CharID=@CharID and Hash=@Hash'


DB.Animals.GetUSAll               = 'select * from animals where SteamID=@SteamID and CharID=@CharID'
DB.Animals.GetUSType              = 'select * from animals where SteamID=@SteamID and CharID=@CharID and Type=@Type'
DB.Animals.GetUSModel             = 'select * from animals where SteamID=@SteamID and CharID=@CharID and Model=@Model'
DB.Animals.GetUAType              = 'select * from animals where SteamID=@SteamID and Type=@Type'
DB.Animals.GetUAModel             = 'select * from animals where SteamID=@SteamID and Model=@Model'
DB.Animals.GetAUType              = 'select * from animals where Type=@Type'
DB.Animals.GetAUModel             = 'select * from animals where Model=@Model'



--------------------------------------------------------------------------------
---- DB Insert
--------------------------------------------------------------------------------
DB.Users.Insert                  = 'insert into users (Steam, sName, IP, License, XBoxLive, MLive) values (@Steam, @sName, @IP, @License, @XBoxLive, @MLive)'
DB.Settings.insert               = 'insert into settings (Steam, Music, Language) values (@Steam, @Music, @Language)'
DB.Banks.Insert                  = 'insert into banks (Steam, CharID, Type, Bank, Money, Gold, Synced) values (@Steam, @CharID, @Type, @Bank, @Money, @Gold, @Synced)'
DB.Characters.Insert             = 'insert into characters (Steam, CharID, `Group`, cName, Gender, Nationality, Age, Money, Gold, Coords, Skin, Clothing) values (@Steam, @CharID, @Group, @cName, @Gender, @Nationality, @Age, @Money, @Gold, @Coords, @Skin, @Clothing)'
DB.Whitelist.Insert              = 'insert into whitelist (Steam, sName, Date, Allowed) values (@Steam, @sName, @Date, @Allowed)'
DB.Blacklist.Insert              = 'insert into blacklist (Steam, Reason, Admin, Until, IP, License, XBoxLive, MLive) values (@Steam, @Reason, @Admin, @Until, @IP, @License, @XBoxLive, @MLive)'
DB.Storages.InsertDropBox        = 'insert into storages (Steam, CharID, Type, BoxID, Coords, Meta) values (@Steam, @CharID, @Type, @BoxID, @Coords, @Meta)'
DB.Storages.InsertJackPot        = 'insert into storages (Steam, CharID, Type, BoxID, Coords, Meta) values (@Steam, @CharID, @Type, @BoxID, @Coords, @Meta)'
DB.Inventory.InsertItem          = 'insert into inventory (Steam, CharID, Type, Item, Amount, Meta) values (@Steam, @CharID, @Type, @Item, @Amount, @Meta)'
DB.Metabolism.Insert             = 'insert into metabolism (Steam, CharID, Health, Hunger, Thirst) values (@Steam, @CharID, @Health, @Hunger, @Thirst)'
DB.Boats.Insert                  = 'insert into boats (Steam, CharID, BID, Name, Hanger, Storage, Coords) values (@Steam, @CharID, @BID, @Name, @Hanger, @Storage, @Coords)'
DB.Outfits.Insert                = 'insert into outfits (Steam, CharID, Name, Outfit) values (@Steam, @CharID, @Name, @Outfit)'
DB.Stables.Insert                = 'insert into stables (SteamID, CharID, Type, Stabled, Name, InUse, IsStored, Model, Coords, Components, Health, Stamina, Hunger, Thirst, Dirt, Price) values (@SteamID, @CharID, @Type, @Stabled, @Name, @InUse, @IsStored, @Model, @Coords, @Components, @Health, @Stamina, @Hunger, @Thirst, @Dirt, @Price)'
DB.Zones.Insert                  = 'insert into _zones (Name, Type, City, GD, Poly, Grid, MinZ, MaxZ, OnEnter, OnExit, Vectors) values (@Name, @Type, @City, @GD, @Poly, @Grid, @MinZ, @MaxZ, @OnEnter, @OnExit, @Vectors)'
DB.Weapons.Insert                = 'insert into weapons (SteamID, CharID, Name, Type, Hash, Hex, Ammo_Regular, Equiped) values (@SteamID, @CharID, @Name, @Type, @Hash, @Hex, @Ammo_Regular, @Equiped)'
DB.Animals.Insert                = 'insert into animals (SteamID, CharID, Type, Model, Skin, XP, Meta) values (@SteamID, @CharID, @Type, @Model, @Skin, @XP, @Meta)'

--------------------------------------------------------------------------------
---- DB Set / Update
--------------------------------------------------------------------------------
DB.Blacklist.SetTime             = 'update blacklist set Until=@Until where Steam=@steam'
DB.Settings.SetMusic             = 'update settings set Music=@Music where Steam=@Steam'
DB.Settings.SetVolume            = 'update settings set Volume=@Volume where Steam=@Steam'
DB.Settings.SetLanguage          = 'update settings set Language=@Language where Steam=@Steam'
DB.Characters.SetCharName        = 'update characters set cName=@cName where Steam=@Steam'
DB.Characters.SetCoords          = 'update characters set Coords=@Coords where Steam=@Steam and CharID=@CharID'
DB.Characters.SetSkin            = 'update characters set Skin=@Skin where Steam=@Steam and CharID=@CharID'
DB.Characters.SetMoney           = 'update characters set Money=@Money where Steam=@Steam and CharID=@CharID'
DB.Characters.SetGold            = 'update characters set Gold=@Gold where Steam=@Steam and CharID=@CharID'
DB.Banks.SetMoney                = 'update banks set Money=@Money where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetGold                 = 'update banks set Gold=@Gold where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetMoneySynced          = 'update banks set Money=@Money, Synced=@Synced where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetGoldSynced           = 'update banks set Gold=@Gold, Synced=@Synced where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetBankMoney            = 'update banks set BankMoney=@BankMoney where Steam=@Steam and CharID=@CharID' -- DEPRECATED
DB.Banks.SetBankGold             = 'update banks set BankGold=@BankGold where Steam=@Steam and CharID=@CharID'   -- DEPRECATED
DB.Users.SetSName                = 'update users set sName=@sName where Steam=@Steam'
DB.Stores.SetStoreData           = 'update _stores set Stores=@Stores where Item=@Item'
DB.Stores.SetStockData           = 'update _stores set Stock=@Stock where Item=@Item'
DB.Storages.SetDropBoxItems      = 'update storages set Meta=@Meta where BoxID=@BoxID'
DB.Stores.SetItemData            = 'update _stores set ItemData=@ItemData where Item=@Item'
DB.Stores.SetTaxData             = 'update _stores set Taxation=@Taxation where Item=@Item'
DB.Stores.SetItemType            = 'update _stores set Type=@Type where Item=@Item'
DB.Stores.SetItemName            = 'update _stores set Name=@Name where Item=@Item'
DB.Stores.SetItemDesc            = 'update _stores set Description=@Description where Item=@Item'
DB.Storages.SetReplaceBoxes      = 'update storages set BoxID=@NewBoxID where BoxID=@OldBoxID'
DB.Storages.SetItemMeta          = 'update storages set Meta=@Meta where BoxID=@BoxID'
DB.Inventory.SetUserItem         = 'update inventory set Amount=@Amount, Meta=@Meta where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Metabolism.AllVitals          = 'update metabolism set Health=@Health, Hunger=@Hunger, Thirst=@Thirst where Steam=@Steam and CharID=@CharID'

DB.Boats.SetCoordsSingleUser     = 'update boats set Coords=@Coords where Steam=@Steam and CharID=@CharID and BID=@BID'
DB.Boats.SetHangerSingleUser     = 'update boats set Hanger=@Hanger where Steam=@Steam and CharID=@CharID and BID=@BID'
DB.Boats.SetStorageSingleUser    = 'update boats set Storage=@Storage where Steam=@Steam and CharID=@CharID and BID=@BID'
DB.Boats.SetNameSingleUser       = 'update boats set Name=@Name where Steam=@Steam and CharID=@CharID and BID=@BID'

DB.Boats.SetAllCoordsUser        = 'update boats set Coords=@Coords where Steam=@Steam'
DB.Boats.SetAllHangerUser        = 'update boats set Hanger=@Hanger where Steam=@Steam'
DB.Boats.SetAllStorageUser       = 'update boats set Storage=@Storage where Steam=@Steam'
DB.Boats.SetAllNameUser          = 'update boats set Name=@Name where Steam=@Steam'

DB.Boats.SetCoordsViaBoatID      = 'update boats set Coords=@Coords where BID=@BID'
DB.Boats.SetHangerViaBoatID      = 'update boats set Hanger=@Hanger where BID=@BID'
DB.Boats.SetStorageViaBoatID     = 'update boats set Storage=@Storage where BID=@BID'
DB.Boats.SetNameViaBoatID        = 'update boats set Name=@Name where BID=@BID'

DB.Characters.SetClothing        = 'update characters set Clothing=@Clothing where Steam=@Steam and CharID=@CharID'

DB.Weapons.SetAmmoSUOnType       = 'update weapons set Ammo_Regular=@Ammo_Regular where SteamID=@SteamID and CharID=@CharID and Type=@Type'
DB.Weapons.SetAmmoSURegular      = 'update weapons set Ammo_Regular=@Ammo_Regular where SteamID=@SteamID and CharID=@CharID and Hash=@Hash'
DB.Weapons.SetEquiptViaHash      = 'update weapons set Equiped=@Equiped where SteamID=@SteamID and CharID=@CharID and Hash=@Hash'

DB.Animals.SetUSTypeModel        = 'update animals set Type=@Type where SteamID=@SteamID and CharID=@CharID and Model=@Model'
DB.Animals.SetUSModelModel       = 'update animals set Model=@Model where SteamID=@SteamID and CharID=@CharID and Model=@Model'
DB.Animals.SetUSSkinModel        = 'update animals set Skin=@Skin where SteamID=@SteamID and CharID=@CharID and Model=@Model'
DB.Animals.SetUSXPModel          = 'update animals set XP=@XP where SteamID=@SteamID and CharID=@CharID and Model=@Model'
DB.Animals.SetUSMetaModel        = 'update animals set Meta=@Meta where SteamID=@SteamID and CharID=@CharID and Model=@Model'

--------------------------------------------------------------------------------
---- DB Delete
--------------------------------------------------------------------------------
DB.Blacklist.DelViaSteam         = 'delete from blacklist where Steam=@Steam'
DB.Blacklist.DelViaIP            = 'delete from blacklist where IP=@IP'
DB.Inventory.DelUserItem         = 'delete from inventory where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Inventory.DelAllItems         = 'delete from inventory where Steam=@Steam and CharID=@CharID'
DB.Storages.DelBoxViaID          = 'delete from storages where BoxID=@BoxID'
DB.Characters.DelCharacter       = 'delete from characters where Steam=@Steam and CharID=@CharID'
DB.Banks.DelViaSteam             = 'delete from banks where Steam=@Steam and CharID=@CharID'
DB.Metabolism.Delete             = 'delete from metabolism where Steam=@Steam and CharID=@CharID'

DB.Boats.DelUserSingleViaBoatID  = 'delete from boats where BID=@BID'
DB.Boats.DelUserSingleViaName    = 'delete from boats where Name=@Name'
DB.Boats.DelUserAllViaSteamID    = 'delete from boats where Steam=@Steam'
DB.Boats.DelUserAllInHanger      = 'delete from boats where Steam=@Steam and Hanger=@Hanger'
DB.Boats.DelAllViaHanger         = 'delete from boats where Hanger=@Hanger'
DB.Boats.DelUserAllViaCharID     = 'delete from boats where Steam=@SteamID and CharID=@CharID'

DB.Outfits.DeleteAll             = 'delete from outfits'
DB.Outfits.DeleteAllUser         = 'delete from outfits where Steam=@Steam'
DB.Outfits.DeleteSingleUser      = 'delete from outfits where Steam=@Steam and CharID=@CharID'

DB.Stables.DeleteByUserAndName   = 'delete from stables where SteamID=@SteamID and CharID=@CharID and Name=@Name'
DB.Stables.DelUserAllViaCharID   = 'delete from stables where SteamID=@SteamID and CharID=@CharID'

DB.Animals.DeleteAll             = 'delete from animals'
DB.Animals.DeleteAllType         = 'delete from animals where Type=@Type'
DB.Animals.DeleteAllModel        = 'delete from animals where Model=@Model'
DB.Animals.DelUAType             = 'delete from animals where SteamID=@SteamID and Type=@Type'
DB.Animals.DelUAModel            = 'delete from animals where SteamID=@SteamID and Model=@Model'
DB.Animals.DelUSType             = 'delete from animals where SteamID=@SteamID and CharID=@CharID and Type=@Type'
DB.Animals.DelUSModel            = 'delete from animals where SteamID=@SteamID and CharID=@CharID and Model=@Model'
--------------------------------------------------------------------------------






















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
