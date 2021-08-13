--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
DB = {}
DB.Blacklist  = {}
DB.Users      = {}
DB.Banks      = {}
DB.Characters = {}
DB.Inventory  = {}
DB.Items      = {}
DB.Storage    = {}
DB.Settings   = {}
DB.Stores     = {}

--------------------------------------------------------------------------------
---- DB GET
--------------------------------------------------------------------------------
DB.Users.GetViaIP                  = 'select * from users where IP=@IP'
DB.Users.GetViaSteam               = 'select * from users where Steam=@Steam'
DB.Users.GetViaSteamAndCharID      = 'select * from users where Steam=@Steam and CharID=@CharID'

DB.Blacklist.GetAll                = 'select * from blacklist'
DB.Blacklist.GetViaSteam           = 'select * from blacklist where Steam=@Steam'
DB.Blacklist.GetViaLicense         = 'select * from blacklist where License=@License'
DB.Blacklist.GetViaIP              = 'select * from blacklist where IP=@IP'
DB.Blacklist.GetViaXBoxLive        = 'select * from blacklist where XBoxLive=@XBoxLive'
DB.Blacklist.GetViaMLive           = 'select * from blacklist where MLive=@MLive'

DB.Banks.Get                       = 'select * from banks where Steam=@Steam and CharID=@CharID'
DB.Characters.GetViaSteam          = 'select * from characters where Steam=@Steam'
DB.Characters.Get                  = 'select * from characters where Steam=@Steam and CharID=@CharID'
DB.Inventory.Get                   = 'select * from inventory where Steam=@Steam and CharID=@CharID'
DB.Inventory.GetItem               = 'select * from inventory where Item=@Item and Steam=@Steam and CharID=@CharID'
DB.Items.GetAll                    = 'select * from items'

DB.Storage.GetAll                  = 'select * from storage'
DB.Storage.GetViaSteamAndCharID    = 'select * from storage where Steam=@Steam and CharID=@CharID'
DB.Storage.GetViaBoxID             = 'select * from storage where BoxID=@BoxID'
DB.Storage.GetViaBoxIDAndItem      = 'select * from storage where BoxID=@BoxID and Item=@Item'
DB.Storage.GetViaSteamAndItem      = 'select * from storage where Steam=@Steam and Item=@Item'
DB.Storage.GetViaSteamCharAndItem  = 'select * from storage where Steam=@Steam and CharID=@CharID and Item=@Item'
DB.Storage.GetViaBoxIDSingle       = 'select * from storage where BoxID'

DB.Settings.GetViaSteam            = 'select * from settings where Steam=@Steam'

DB.Stores.GetAll                   = 'select * from stores'
DB.Stores.GetStore                 = 'select * from stores where Store=@Store'
--------------------------------------------------------------------------------
-- DB INSERT
--------------------------------------------------------------------------------
DB.Users.InsertTable               = 'insert into users (Steam, sName, IP, Language, License, XBoxLive, MLive) values (@Steam, @sName, @IP, @Language, @License, @XBoxLive, @MLive)'
DB.Banks.InsertTable               = 'insert into banks (Steam, sName, CharID, Money, BankMoney, Gold, BankGold) values (@Steam, @sName, @CharID, @Money, @BankMoney, @Gold, @BankGold)'
DB.Blacklist.InsertTable           = 'insert into blacklist (Steam, IP, Reason, Admin, Until, License, XBoxLive, MLive) values (@Steam, @IP, @Reason, @Admin, @Until, @License, @XBoxLive, @MLive)'
DB.Characters.InsertTable          = 'insert into characters (Steam, Groups, cName, CharID, Gender, Nationality, BirthDate, XP, Level, JobName, JobGrade, Coords) values (@Steam, @Groups, @cName, @CharID, @Gender, @Nationality, @BirthDate, @XP, @Level, @JobName, @JobGrade, @Coords)'
DB.Inventory.InsertTable           = 'insert into inventory (Steam, CharID, Type, Item, Amount, Meta) values (@Steam, @CharID, @Type, @Item, @Amount, @Meta)'
DB.Storage.InsertTable             = 'insert into storage (Steam, CharID, Type, BoxID, Item, Amount, Meta, Coords) values (@Steam, @CharID, @Type, @BoxID, @Item, @Amount, @Meta, @Coords)'
DB.Settings.InsertTable            = 'insert into settings (Steam, Music) values (@Steam, @Music)'

--------------------------------------------------------------------------------
-- DB SET
--------------------------------------------------------------------------------
DB.Characters.SetCharName          = 'update characters set cName = @cName where Steam = @Steam'
DB.Users.SetLanguage               = 'update users set Language = @Language where Steam = @Steam'
DB.Users.SetMusic                  = 'update settings set Music = @Music where Steam = @Steam'
DB.Blacklist.SetTime               = 'update blacklist set Until=@ntil where Steam=@steam'
DB.Banks.SetBankMoney              = 'update banks set BankMoney=@BankMoney where Steam=@Steam and CharID=@CharID'
DB.Banks.SetMoney                  = 'update banks set Money=@Money where Steam=@Steam and CharID=@CharID'
DB.Banks.SetBankGold               = 'update banks set BankGold=@BankGold where Steam=@Steam and CharID=@CharID'
DB.Banks.SetGold                   = 'update banks set Gold=@Gold where Steam=@Steam and CharID=@CharID'
DB.Characters.SetCoords            = 'update characters set Coords=@Coords where Steam=@Steam and CharID=@CharID'
DB.Inventory.SetItem               = 'update inventory set Amount=@Amount, Meta=@Meta where Item=@Item and Steam=@Steam and CharID=@CharID'
DB.Characters.SetSkin              = 'update characters set Skin=@Skin where Steam=@Steam and CharID=@CharID'
DB.Storage.SetItemViaBoxIDAndItem  = 'update storage set Amount=@Amount, Meta=@Meta where BoxID=@BoxID and Item=@Item'
DB.Storage.SetBoxID                = 'update storage set BoxID = replace(BoxID, @oBoxID, @nBoxID)'
DB.Stores.SetStock                 = 'update stores set Stock=@Stock where Store=@Store'
--------------------------------------------------------------------------------
-- DB DEL
--------------------------------------------------------------------------------
DB.Blacklist.DelDBViaIP            = 'delete from blacklist where IP=@ip'
DB.Blacklist.DelDBViaSteam         = 'delete from blacklist where Steam=@steam'
DB.Blacklist.DelViaSteamAndCharID  = 'delete from blacklist where Steam=@Steam and CharID=@CharID'
DB.Characters.DelViaSteamAndCharID = 'delete from characters where Steam=@Steam and CharID=@CharID'
DB.Inventory.DelItem               = 'delete from inventory where Item=@Item and Steam=@Steam and CharID=@CharID'
DB.Storage.DelItemViaBoxID         = 'delete from storage where BoxID=@BoxID and Item=@Item'
DB.Banks.DelViaSteamAndCharID      = 'delete from banks where Steam=@Steam and CharID=@CharID'
DB.Inventory.DelViaSteamAndCharID  = 'delete from Inventory where Steam=@Steam and CharID=@CharID'






































--------------------------------------------------------------------------------
