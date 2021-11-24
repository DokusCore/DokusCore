--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- These are all the errors the core can return if things are wrong
function ErrorMsg(e, a)
  Error    = '^1[ Error ]: ^3'
  System   = '^2[ System ]: ^7'
  Location = '^1[ Location ]: ^7'

  -- Core Errors
  if (e == 'Err_NoArgsSteam')           then print(Error..ErrMsg(1)..'^0') end
  if (e == 'Err_WrongCallbackFormat')   then print(Error..ErrMsg(2)..'^0') end
  if (e == 'Err_NoUserServerID')        then print(Error..ErrMsg(3)..'^0') end
  if (e == 'Err_NoReason')              then print(Error..ErrMsg(4)..'^0') end
  if (e == 'Err_NoProvIP')              then print(Error..ErrMsg(5)..'^0') end
  if (e == 'Err_NoCatType')             then print(Error..ErrMsg(6)..'^0') end
  if (e == 'Err_NoCharID')              then print(Error..ErrMsg(7)..'^0') end
  if (e == 'Err_NoDropBoxID')           then print(Error..ErrMsg(8)..'^0') end
  if (e == 'Err_NoDropBoxItemArray')    then print(Error..ErrMsg(9)..'^0') end
  if (e == 'Err_NoCoords')              then print(Error..ErrMsg(10)..'^0') end
  if (e == 'Err_NoItemName')            then print(Error..ErrMsg(11)..'^0') end
  if (e == 'Err_NoItemAmount')          then print(Error..ErrMsg(12)..'^0') end

  -- Database Errors Insert
  if (e == 'Err_DBNoTableSelected')     then print(Error..ErrMsg(100)..'^0') end
  if (e == 'Err_DBInsNoSteam')          then print(Error..ErrMsg(101)..'^0') end
  if (e == 'Err_DBInsNoSteamName')      then print(Error..ErrMsg(102)..'^0') end
  if (e == 'Err_DBInsNoIP')             then print(Error..ErrMsg(103)..'^0') end
  if (e == 'Err_DBInsNoLicense')        then print(Error..ErrMsg(104)..'^0') end
  if (e == 'Err_DBInsNoXBoxID')         then print(Error..ErrMsg(105)..'^0') end
  if (e == 'Err_DBInsNoMLiveID')        then print(Error..ErrMsg(106)..'^0') end
  if (e == 'Err_DBInsSettingsMusic')    then print(Error..ErrMsg(107)..'^0') end
  if (e == 'Err_DBInsSettingsLanguage') then print(Error..ErrMsg(108)..'^0') end
  if (e == 'Err_DBInsNoCharID')         then print(Error..ErrMsg(109)..'^0') end
  if (e == 'Err_DBInsBanksNoMoney')     then print(Error..ErrMsg(110)..'^0') end
  if (e == 'Err_DBInsBanksNoGold')      then print(Error..ErrMsg(111)..'^0') end
  if (e == 'Err_DBInsBanksNoBankMoney') then print(Error..ErrMsg(112)..'^0') end
  if (e == 'Err_DBInsBanksNoBankGold')  then print(Error..ErrMsg(113)..'^0') end
  if (e == 'Err_DBInsNoGroup')          then print(Error..ErrMsg(114)..'^0') end
  if (e == 'Err_DBInsNoCharName')       then print(Error..ErrMsg(115)..'^0') end
  if (e == 'Err_DBInsNoCharGender')     then print(Error..ErrMsg(116)..'^0') end
  if (e == 'Err_DBInsNoCharNat')        then print(Error..ErrMsg(117)..'^0') end
  if (e == 'Err_DBInsNoCharBDay')       then print(Error..ErrMsg(118)..'^0') end
  if (e == 'Err_DBInsNoCharXP')         then print(Error..ErrMsg(119)..'^0') end
  if (e == 'Err_DBInsNoCharLevel')      then print(Error..ErrMsg(120)..'^0') end
  if (e == 'Err_DBInsNoCharJobName')    then print(Error..ErrMsg(121)..'^0') end
  if (e == 'Err_DBInsNoCharJobGrade')   then print(Error..ErrMsg(122)..'^0') end
  if (e == 'Err_DBInsNoCharCoords')     then print(Error..ErrMsg(123)..'^0') end
  if (e == 'Err_DBInsNoCharSkin')       then print(Error..ErrMsg(124)..'^0') end
  if (e == 'Err_DBInsNoCharClothing')   then print(Error..ErrMsg(125)..'^0') end
  if (e == 'Err_NoAdminName')           then print(Error..ErrMsg(126)..'^0') end
  if (e == 'Err_NoBanReason')           then print(Error..ErrMsg(127)..'^0') end
  if (e == 'Err_DBInsNoBanTime')        then print(Error..ErrMsg(128)..'^0') end
  if (e == 'Err_DBInsNoItemName')       then print(Error..ErrMsg(129)..'^0') end
  if (e == 'Err_DBInsNoItemAmount')     then print(Error..ErrMsg(130)..'^0') end
  if (e == 'Err_DBInsNoBoxCoords')      then print(Error..ErrMsg(131)..'^0') end


  -- Database Errors Gets
  if (e == 'Err_DBGetNoSteam')          then print(Error..ErrMsg(200)..'^0') end
  if (e == 'Err_DBGetNoCharID')         then print(Error..ErrMsg(201)..'^0') end
  if (e == 'Err_DBGetNoFetchType')      then print(Error..ErrMsg(203)..'^0') end

  -- Database Errors Set
  if (e == 'Err_WrongDBSetType')        then print(Error..ErrMsg(300)..'^0') end
  if (e == 'Err_DBSetNoSteam')          then print(Error..ErrMsg(301)..'^0') end
  if (e == 'Err_DBSetCharID')           then print(Error..ErrMsg(302)..'^0') end
  if (e == 'Err_DBSetNoMusicValue')     then print(Error..ErrMsg(303)..'^0') end
  if (e == 'Err_DBSetMoneyAmount')      then print(Error..ErrMsg(304)..'^0') end

  -- Commands
  if (e == 'Err_CMDMusicNoValue')       then print(Error..ErrMsg(500)..'^0') end
  if (e == 'Err_CMDLanguageValue')      then print(Error..ErrMsg(501)..'^0') end
  if (e == 'Err_CMDLanguageNoSupport')  then print(Error..ErrMsg(502)..'^0') end
  if (e == 'Err_CMDCharNameFirstName')  then print(Error..ErrMsg(503)..'^0') end
  if (e == 'Err_CMDCharNameLastName')   then print(Error..ErrMsg(504)..'^0') end
  if (e == 'Err_CMDCharNameNoAccess')   then print(Error..ErrMsg(505)..'^0') end

  if (e) then print(System..ErrMsg(9999)..'^0') end
  if (e) then return print(System..ErrMsg(10000)..'^0') end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function ErrMsg (nr)
  if (nr == 1) then return 'There was no SteamID provided as required argument' end
  if (nr == 2) then return 'Wrong formatation of the trigger callback' end
  if (nr == 3) then return 'There is no player server ID provided' end
  if (nr == 4) then return 'There is no reason provided for this action' end
  if (nr == 5) then return 'There is no IP provided to execute this action' end
  if (nr == 6) then return 'Unable to preform the this action due to missing category type' end
  if (nr == 7) then return 'Unable to preform the this action due to missing CharID' end
  if (nr == 8) then return 'Unable to perform this action due to missing BoxID' end
  if (nr == 9) then return 'Unable to perform this action due to missing Box Item Array' end
  if (nr == 10) then return 'Unable to perform this action due to missing Coordinates' end
  if (nr == 11) then return 'Unable to perform this action due to missing Item Name' end
  if (nr == 12) then return 'Unable to perform this action due to missing Item Amount' end

  -- Database Inserts
  if (nr == 100) then return 'What database table would you like to use to insert this row to?' end
  if (nr == 101) then return 'Unable to insert the row due to missing SteamID' end
  if (nr == 102) then return 'Unable to insert the row due to missing Steam Name' end
  if (nr == 103) then return 'Unable to insert the row due to missing IP Address' end
  if (nr == 104) then return 'Unable to insert the row due to RedM License' end
  if (nr == 105) then return 'Unable to insert the row due to missing XBoxLiveID' end
  if (nr == 106) then return 'Unable to insert the row due to missing MLiveID' end
  if (nr == 107) then return 'Unable to insert the row due to missing music value' end
  if (nr == 108) then return 'Unable to insert the row due to missing language' end
  if (nr == 109) then return 'Unable to insert the row due to missing CharID' end
  if (nr == 110) then return 'Unable to insert the row due to missing Money Amount' end
  if (nr == 111) then return 'Unable to insert the row due to missing Gold Amount' end
  if (nr == 112) then return 'Unable to insert the row due to missing BankMoney Amount' end
  if (nr == 113) then return 'Unable to insert the row due to missing BankGold Amount' end
  if (nr == 114) then return 'Unable to insert the row due to missing user group (Permissions)' end
  if (nr == 115) then return 'Unable to insert the row due to missing character name (FULL NAME)' end
  if (nr == 116) then return 'Unable to insert the row due to missing character gender' end
  if (nr == 117) then return 'Unable to insert the row due to missing character nationality' end
  if (nr == 118) then return 'Unable to insert the row due to missing character birthdate' end
  if (nr == 119) then return 'Unable to insert the row due to missing character XP amount' end
  if (nr == 120) then return 'Unable to insert the row due to missing character Level amount' end
  if (nr == 121) then return 'Unable to insert the row due to missing character Job Name' end
  if (nr == 122) then return 'Unable to insert the row due to missing character Job Grade' end
  if (nr == 123) then return 'Unable to insert the row due to missing character Coords' end
  if (nr == 124) then return 'Unable to insert the row due to missing character Skin' end
  if (nr == 125) then return 'Unable to insert the row due to missing character Clothing' end
  if (nr == 126) then return 'Unable to insert the row due to missing Admin Name' end
  if (nr == 127) then return 'Unable to insert the row due to missing Blacklist/Ban Reason' end
  if (nr == 128) then return 'Unable to insert the row due to missing Ban Time' end
  if (nr == 129) then return 'Unable to insert the row due to missing Item Name' end
  if (nr == 130) then return 'Unable to insert the row due to missing Item Amount' end
  if (nr == 131) then return 'Unable to insert the row due to missing Box Coords' end

  -- Database Gets
  if (nr == 200) then return 'Unable to get the row due to missing SteamID' end
  if (nr == 201) then return 'Unable to get the row due to missing CharID' end
  if (nr == 203) then return 'Unable to get the row due to missing fetch type' end


  -- Database Set
  if (nr == 300) then return 'Unable to set the new data due to unknown update type' end
  if (nr == 301) then return 'Unable to set the new data due to missing SteamID' end
  if (nr == 302) then return 'Unable to set the new data due to missing Character ID' end
  if (nr == 303) then return 'Unable to set the new data due to missing Music Value' end
  if (nr == 304) then return 'Unable to set the new data due to missing Money Value' end

  if (nr == 500) then return 'No value is set. The value needs to be ^5true ^3or ^5false' end
  if (nr == 501) then return 'Please fill in the language you want to use!' end
  if (nr == 502) then return 'Language not supported: en | es | ru | pt | fr | de | it | nl | pl | gr | dk | bg' end
  if (nr == 503) then return 'Please enter your characters first name at args 1' end
  if (nr == 504) then return 'Please enter your characters last name at args 2' end
  if (nr == 505) then return 'Unable to set the characters name due to MultiCharacters module enabled. \n'..Error..'Please set your name via the MultiCharacters module.' end

  if (nr == 9999) then return 'Need help? Visit ^4https://DokusCore.com/' end
  if (nr == 10000) then return 'Or visit our Discord ^4https://Discord.io/DokusCore' end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------



































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
