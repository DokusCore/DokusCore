--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
-- Open the Core Admin Menu
--------------------------------------------------------------------------------
local DokusCoreMenuOpen = false
CreateThread(function()
DokusMenu.CreateMenu('DokusAdminMenu', 'Dokus Options', 'Choose your option')
  while true do Wait(250)
    local Control = IsControlPressed(0, _Keys['PGDN'])
    if Control and not DokusCoreMenuOpen then DokusCoreMenuOpen = true
      DokusMenu.OpenMenu('DokusAdminMenu')
      while DokusCoreMenuOpen do Wait(0)
        if DokusMenu.IsMenuOpened('DokusAdminMenu') then
          local Admin = DokusMenu.Button('Admin Menu', '', '')
          local Weather = DokusMenu.Button('Weather Menu', '', '')
          local Exit = DokusMenu.Button('Exit', '', '')
          if Admin then DokusCoreMenuOpen = false AdminMenu() end
          if Weather then DokusCoreMenuOpen = false WeatherMenu() end
          if Exit then DokusCoreMenuOpen = false DokusMenu.CloseMenu() end
          DokusMenu.Display()
        end
      end
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function AdminMenu() DokusMenu.CloseMenu() end
--------------------------------------------------------------------------------
function WeatherMenu() DokusMenu.CloseMenu() TriggerEvent('weatherSync:openAdminUi') end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
