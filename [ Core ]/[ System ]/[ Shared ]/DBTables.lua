--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
DB               = {}
DB.Users         = {}
DB.Banks         = {}
DB.Items         = {}
DB.Settings      = {}
DB.Characters    = {}
DB.Blacklist     = {}
DB.Whitelist     = {}
DB.Stores        = {}
DB.Inventory     = {}
DB.Storages      = {}
DB.Metabolism    = {}
DB.Data          = {}
DB.Data.Skin     = {}
DB.Data.Clothing = {}

--------------------------------------------------------------------------------
---- DB GET
--------------------------------------------------------------------------------
DB.Users.GetOnlySteam         = 'select * from users where Steam=@Steam'
DB.Users.GetViaSteamName      = 'select * from users where sName=@sName'
DB.Settings.GetOnlySteam      = 'select * from settings where Steam=@Steam'
DB.Banks.GetAllBanks          = 'select * from banks where Steam=@Steam and CharID=@CharID'
DB.Banks.GetViaBankName       = 'select * from banks where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Characters.GetAll          = 'select * from characters'
DB.Characters.GetOnlySteam    = 'select * from characters where Steam=@Steam'
DB.Characters.Get             = 'select * from characters where Steam=@Steam and CharID=@CharID'
DB.Whitelist.GetAll           = 'select * from whitelist'
DB.Whitelist.GetViaSteam      = 'select * from whitelist where Steam=@Steam'
DB.Blacklist.GetAll           = 'select * from blacklist'
DB.Blacklist.GetViaSteam      = 'select * from blacklist where Steam=@Steam'
DB.Blacklist.GetViaIP         = 'select * from blacklist where IP=@IP'
DB.Blacklist.GetViaLicense    = 'select * from blacklist where License=@License'
DB.Blacklist.GetViaXBoxLive   = 'select * from blacklist where XBoxLive=@XBoxLive'
DB.Blacklist.GetViaMLive      = 'select * from blacklist where MLive=@MLive'
DB.Stores.GetAll              = 'select * from stores'
DB.Stores.GetViaType          = 'select * from stores where Type=@Type'
DB.Inventory.GetUser          = 'select * from inventory where Steam=@Steam and CharID=@CharID'
DB.Inventory.GetUserItem      = 'select * from inventory where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Storages.GetAllDropBox     = 'select * from storages where Type=@Type'
DB.Storages.GetUserDropBox    = 'select * from storages where Type=@Type and Steam=@Steam and CharID=@CharID'
DB.Storages.GetDropBoxViaID   = 'select * from storages where BoxID=@BoxID'
DB.Metabolism.Get             = 'select * from metabolism where Steam=@Steam and CharID=@CharID'
DB.Items.GetAll               = 'select * from items'

DB.Data.Skin.GetAllMale       = 'select * from _data_skin_male'
DB.Data.Skin.GetAllFemale     = 'select * from _data_skin_female'
DB.Data.Clothing.GetAllMale   = 'select * from _data_skin_male'
DB.Data.Clothing.GetAllFemale = 'select * from _data_skin_female'
--------------------------------------------------------------------------------
---- DB Insert
--------------------------------------------------------------------------------
DB.Users.Insert               = 'insert into users (Steam, sName, IP, License, XBoxLive, MLive) values (@Steam, @sName, @IP, @License, @XBoxLive, @MLive)'
DB.Settings.insert            = 'insert into settings (Steam, Music, Language) values (@Steam, @Music, @Language)'
DB.Banks.Insert               = 'insert into banks (Steam, CharID, Type, Bank, Money, Gold, Synced) values (@Steam, @CharID, @Type, @Bank, @Money, @Gold, @Synced)'
DB.Characters.Insert          = 'insert into characters (Steam, CharID, `Group`, cName, Gender, Nationality, BirthDate, Money, Gold, XP, Level, JobName, JobGrade, Coords, Skin, Clothing) values (@Steam, @CharID, @Group, @cName, @Gender, @Nationality, @BirthDate, @Money, @Gold, @XP, @Level, @JobName, @JobGrade, @Coords, @Skin, @Clothing)'
DB.Whitelist.Insert           = 'insert into whitelist (Steam, sName, Date, Allowed) values (@Steam, @sName, @Date, @Allowed)'
DB.Blacklist.Insert           = 'insert into blacklist (Steam, Reason, Admin, Until, IP, License, XBoxLive, MLive) values (@Steam, @Reason, @Admin, @Until, @IP, @License, @XBoxLive, @MLive)'
DB.Storages.InsertDropBox     = 'insert into storages (Steam, CharID, Type, BoxID, Coords, Meta) values (@Steam, @CharID, @Type, @BoxID, @Coords, @Meta)'
DB.Inventory.InsertItem       = 'insert into inventory (Steam, CharID, Type, Item, Amount, Meta) values (@Steam, @CharID, @Type, @Item, @Amount, @Meta)'
DB.Metabolism.Insert          = 'insert into metabolism (Steam, CharID, Health, Hunger, Thirst) values (@Steam, @CharID, @Health, @Hunger, @Thirst)'
--------------------------------------------------------------------------------
---- DB Set / Update
--------------------------------------------------------------------------------
DB.Blacklist.SetTime          = 'update blacklist set Until=@Until where Steam=@steam'
DB.Settings.SetMusic          = 'update settings set Music=@Music where Steam=@Steam'
DB.Settings.SetVolume         = 'update settings set Volume=@Volume where Steam=@Steam'
DB.Settings.SetLanguage       = 'update settings set Language=@Language where Steam=@Steam'
DB.Characters.SetCharName     = 'update characters set cName=@cName where Steam=@Steam'
DB.Characters.SetCoords       = 'update characters set Coords=@Coords where Steam=@Steam and CharID=@CharID'
DB.Characters.SetSkin         = 'update characters set Skin=@Skin where Steam=@Steam and CharID=@CharID'
DB.Characters.SetMoney        = 'update characters set Money=@Money where Steam=@Steam and CharID=@CharID'
DB.Characters.SetGold         = 'update characters set Gold=@Gold where Steam=@Steam and CharID=@CharID'
DB.Banks.SetMoney             = 'update banks set Money=@Money where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetGold              = 'update banks set Gold=@Gold where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetMoneySynced       = 'update banks set Money=@Money, Synced=@Synced where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetGoldSynced        = 'update banks set Gold=@Gold, Synced=@Synced where Steam=@Steam and CharID=@CharID and Bank=@Bank'
DB.Banks.SetBankMoney         = 'update banks set BankMoney=@BankMoney where Steam=@Steam and CharID=@CharID' -- DEPRECATED
DB.Banks.SetBankGold          = 'update banks set BankGold=@BankGold where Steam=@Steam and CharID=@CharID'   -- DEPRECATED
DB.Users.SetSName             = 'update users set sName=@sName where Steam=@Steam'
DB.Stores.SetStoreData        = 'update stores set Stores=@Stores where Item=@Item'
DB.Stores.SetStockData        = 'update stores set Stock=@Stock where Item=@Item'
DB.Storages.SetDropBoxItems   = 'update storages set Meta=@Meta where BoxID=@BoxID'
DB.Stores.SetItemData         = 'update stores set ItemData=@ItemData where Item=@Item'
DB.Stores.SetTaxData          = 'update stores set Taxation=@Taxation where Item=@Item'
DB.Stores.SetItemType         = 'update stores set Type=@Type where Item=@Item'
DB.Stores.SetItemName         = 'update stores set Name=@Name where Item=@Item'
DB.Stores.SetItemDesc         = 'update stores set Description=@Description where Item=@Item'
DB.Storages.SetReplaceBoxes   = 'update storages set BoxID=@NewBoxID where BoxID=@OldBoxID'
DB.Storages.SetItemMeta       = 'update storages set Meta=@Meta where BoxID=@BoxID'
DB.Inventory.SetUserItem      = 'update inventory set Amount=@Amount where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Metabolism.AllVitals       = 'update metabolism set Health=@Health, Hunger=@Hunger, Thirst=@Thirst where Steam=@Steam and CharID=@CharID'
--------------------------------------------------------------------------------
---- DB Delete
--------------------------------------------------------------------------------
DB.Blacklist.DelViaSteam      = 'delete from blacklist where Steam=@Steam'
DB.Blacklist.DelViaIP         = 'delete from blacklist where IP=@IP'
DB.Inventory.DelUserItem      = 'delete from inventory where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Inventory.DelAllItems      = 'delete from inventory where Steam=@Steam and CharID=@CharID'
DB.Storages.DelBoxViaID       = 'delete from storages where BoxID=@BoxID'
DB.Characters.DelCharacter    = 'delete from characters where Steam=@Steam and CharID=@CharID'
DB.Banks.DelViaSteam          = 'delete from banks where Steam=@Steam and CharID=@CharID'
DB.Metabolism.Delete          = 'delete from metabolism where Steam=@Steam and CharID=@CharID'
--------------------------------------------------------------------------------



























--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
