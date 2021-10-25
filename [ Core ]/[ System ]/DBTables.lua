--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
DB            = {}
DB.Users      = {}
DB.Banks      = {}
DB.Settings   = {}
DB.Characters = {}
DB.Blacklist  = {}
DB.Whitelist  = {}
DB.Stores     = {}

--------------------------------------------------------------------------------
---- DB GET
--------------------------------------------------------------------------------
DB.Users.GetViaSteam        = 'select * from users where Steam=@Steam'
DB.Settings.GetViaSteam     = 'select * from settings where Steam=@Steam'
DB.Banks.Get                = 'select * from banks where Steam=@Steam and CharID=@CharID'

DB.Characters.GetAll        = 'select * from characters'
DB.Characters.Get           = 'select * from characters where Steam=@Steam and CharID=@CharID'

DB.Whitelist.GetAll         = 'select * from whitelist'
DB.Whitelist.GetViaSteam    = 'select * from whitelist where Steam=@Steam'

DB.Blacklist.GetAll         = 'select * from blacklist'
DB.Blacklist.GetViaSteam    = 'select * from blacklist where Steam=@Steam'
DB.Blacklist.GetViaIP       = 'select * from blacklist where IP=@IP'
DB.Blacklist.GetViaLicense  = 'select * from blacklist where License=@License'
DB.Blacklist.GetViaXBoxLive = 'select * from blacklist where XBoxLive=@XBoxLive'
DB.Blacklist.GetViaMLive    = 'select * from blacklist where MLive=@MLive'

DB.Stores.GetAll             = 'select * from stores'
DB.Stores.GetViaType         = 'select * from stores where Type=@Type'

--------------------------------------------------------------------------------
---- DB Insert
--------------------------------------------------------------------------------
DB.Users.Insert             = 'insert into users (Steam, sName, IP, License, XBoxLive, MLive) values (@Steam, @sName, @IP, @License, @XBoxLive, @MLive)'
DB.Settings.insert          = 'insert into settings (Steam, Music, Language) values (@Steam, @Music, @Language)'
DB.Banks.Insert             = 'insert into banks (Steam, CharID, Money, Gold, BankMoney, BankGold) values (@Steam, @CharID, @Money, @Gold, @BankMoney, @BankGold)'
DB.Characters.Insert        = 'insert into characters (Steam, CharID, `Group`, cName, Gender, Nationality, BirthDate, XP, Level, JobName, JobGrade, Coords, Skin, Clothing) values (@Steam, @CharID, @Group, @cName, @Gender, @Nationality, @BirthDate, @XP, @Level, @JobName, @JobGrade, @Coords, @Skin, @Clothing)'
DB.Whitelist.Insert         = 'insert into whitelist (Steam, sName, Date, Allowed) values (@Steam, @sName, @Date, @Allowed)'
DB.Blacklist.Insert         = 'insert into blacklist (Steam, Reason, Admin, Until, IP, License, XBoxLive, MLive) values (@Steam, @Reason, @Admin, @Until, @IP, @License, @XBoxLive, @MLive)'

--------------------------------------------------------------------------------
---- DB Set / Update
--------------------------------------------------------------------------------
DB.Blacklist.SetTime        = 'update blacklist set Until=@Until where Steam=@steam'
DB.Settings.SetMusic        = 'update settings set Music=@Music where Steam=@Steam'
DB.Settings.SetLanguage     = 'update settings set Language=@Language where Steam=@Steam'
DB.Characters.SetCharName   = 'update characters set cName=@cName where Steam=@Steam'
DB.Banks.SetMoney           = 'update banks set Money=@Money where Steam=@Steam and CharID=@CharID'
DB.Banks.SetGold            = 'update banks set Gold=@Gold where Steam=@Steam and CharID=@CharID'
DB.Banks.SetBankMoney       = 'update banks set BankMoney=@BankMoney where Steam=@Steam and CharID=@CharID'
DB.Banks.SetBankGold        = 'update banks set BankGold=@BankGold where Steam=@Steam and CharID=@CharID'
DB.Users.SetSName           = 'update users set sName=@sName where Steam=@Steam'
--------------------------------------------------------------------------------
---- DB Delete
--------------------------------------------------------------------------------
DB.Blacklist.DelViaSteam    = 'delete from blacklist where Steam=@Steam'
DB.Blacklist.DelViaIP       = 'delete from blacklist where IP=@IP'





















--------------------------------------------------------------------------------
