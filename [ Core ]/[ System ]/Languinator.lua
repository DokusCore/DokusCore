--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
Lang = {}
local function Multi(str, xL, ...)
	local Check1 = (Lang[xL] ~= nil)
	local Check2 = (Lang[xL][str] ~= nil)
	local R = string.format(Lang[xL][str], ...)
	local Err1 = '^0Translation [' .. xL .. '][' .. str .. '] does not exist'
	local Err2 = '^0Locale [' .. xL .. '] does not exist'
	if Check1 then if Check2 then	return R else	return Err1 end else return Err2 end
end

function _(str, xL, ...) -- Translate string first char uppercase
	if not _Language.Multi then xL = _Language.Lang end
	return tostring(Multi(str, xL, ...):gsub("^%l", string.upper))
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
