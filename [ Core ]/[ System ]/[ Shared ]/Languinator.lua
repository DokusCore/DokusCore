--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
Error    = '^4[ DataSync ]^1[ Error ]: ^3'
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Lang = {}
local function Multi(Plugin, Item, Language)
	local Plug = (Lang[Language][Plugin] == nil)
	if (Plug) then return Error .. 'No plugin found with the name ^1' .. Plugin .. '^3 in the language file!^0' end
	local Message = (Lang[Language][Plugin][Item] == nil)
	if (Message) then return Error .. 'No object found in the language file with the name ^1' .. Item .. '!^0' end
	return Lang[Language][Plugin][Item]
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function _(Plugin, Item, Language)
	if (not (_Language.Multi)) then xL = _Language.Lang end
	return Multi(Plugin, Item, Language)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
