--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Respawn System
--------------------------------------------------------------------------------
local Time = 0
local RespawnCD, SpawnMan, ShowInfo, ControlPress = false, false, false, false
RegisterNetEvent('DokusCore:C:Core:Respawn:Timer')
AddEventHandler('DokusCore:C:Core:Respawn:Timer', function(T, Int)
  Time = T
  NewTime = (Time * 1000)
  while (NewTime > 0) do Wait(Int)
    NewTime = (NewTime - Int)
    Time = math.floor((NewTime / 1000))
  end
end)

CreateThread(function()
 while true do Wait(3000)
    local Ped = PlayerId()
    local OnDeath = IsPlayerDead(Ped)
    if OnDeath then IsDead = true end
    while IsDead do Wait(0)
      if not SpawnMan then SpawnMan = true exports.spawnmanager:setAutoSpawn(false) end
      if _RespawnTime.Enabled and (_RespawnTime.Time > 0) then ShowCooldown = true end
      if _RespawnTime.Enabled and (_RespawnTime.Time <= 0) then ShowRespawn = true end
      if not RespawnCD then RespawnCD = true TriggerEvent('DokusCore:C:Core:Respawn:Timer', _RespawnTime.Time, 1000) end

      while ShowCooldown do Wait(0)
        if not ShowInfo then DrawInfo(Time..' '.._('Cooldown', User.Language), 0.5, 0.95, 0.6) end
        if _RespawnTime.Enabled and (Time <= 0) then
          ShowRespawn = true
          ShowCooldown = false
        end
      end

      while ShowRespawn do Wait(0)
        local Control = IsControlJustReleased(0, _Keys['E'])
        DrawInfo(_('PressE', User.Language).." ".._('ToRespawn', User.Language), 0.5, 0.95, 0.8)
        if (Time <= 0) and Control then
          Time = 0
          IsDead = false
          RespawnCD = false
          SpawnMan = false
          ShowInfo = false
          ControlPress = false
          ShowCooldown = false
          ShowRespawn = false
          exports.spawnmanager:setAutoSpawn(true)
          Wait(2000)
        end
      end

    end
  end
end)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterCommand('suicide', function()
  local pl = Citizen.InvokeNative(0x217E9DC48139933D)
        local ped = Citizen.InvokeNative(0x275F255ED201B937, pl)
        Citizen.InvokeNative(0x697157CED63F18D4, ped, 500000, false, true, true)
end)
