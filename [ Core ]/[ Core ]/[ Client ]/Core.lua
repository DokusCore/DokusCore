--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
CreateThread(function()
  while not loaded do Wait(0)
    local Network = NetworkIsPlayerActive(PlayerId())
    if Network then
      local Ped = PlayerPedId()
      local sName = GetPlayerName()
      DisplayHud(true)
      if _EnablePVP then EnablePVP() end
      if _ShowMap then Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true) end
      if _ShowMiniMap then Citizen.InvokeNative(0x8BC7C1F929D07BF3 , GetHashKey('HUD_CTX_INFO_CARD')) end
      if not _ShowMiniMap then Citizen.InvokeNative(0x4CC5F2FC1332577F , GetHashKey('HUD_CTX_INFO_CARD')) end
      TriggerEvent('DokusCore:C:Core:System:LoadUser', sName)
      TriggerEvent('DokusCore:C:Core:Print', 'System', _('FPS1', _Language.Lang)..Ped.._('FPS2', _Language.Lang))
      TriggerServerEvent('DokusCore:S:Core:Print', 'System', _('FPS1', _Language.Lang)..Ped.._('FPS2', _Language.Lang))

      -- Hide the default game hud
      Citizen.InvokeNative(0x4CC5F2FC1332577F , GetHashKey('HUD_CTX_INFINITE_AMMO'))
      Citizen.InvokeNative(0x4CC5F2FC1332577F , GetHashKey('HUD_CTX_IN_GUARMA_AND_BROKE'))
      loaded = true
    end
  end
end)
