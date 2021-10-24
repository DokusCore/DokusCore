--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------

if (_DokusMenu.Theme.Red) then
  DokusMenu = { }
  DokusMenu.debug = false
  local menus = { }
  local keys = { up = 0x6319DB71, down = 0x05CA7C52, left = 0xA65EBAB4, right = 0xDEB34313, select = 0xC7B5340A, back = 0x156F7119 }

  local optionCount = 0

  local currentKey = nil
  local currentMenu = nil

  local titleHeight = 0.09
  local titleYOffset = 0.010
  local titleScale = 1.0

  local descWidth = 0.15
  local descHeight = 0.030

  local menuWidth = 0.170

  local buttonHeight = 0.038
  local buttonFont = 6
  local buttonScale = 0.365

  local buttonTextXOffset = 0.003
  local buttonTextYOffset = 0.005


  local function debugPrint(text)
    if DokusMenu.debug then
      Citizen.Trace('[DokusMenu] '..tostring(text))
    end
  end


  local function setMenuProperty(id, property, value)
    if id and menus[id] then
      menus[id][property] = value
      debugPrint(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }')
    end
  end


  local function isMenuVisible(id)
    if id and menus[id] then
      return menus[id].visible
    else
      return false
    end
  end


  local function setMenuVisible(id, visible, holdCurrent)
    if id and menus[id] then
      setMenuProperty(id, 'visible', visible)

      if not holdCurrent and menus[id] then
        setMenuProperty(id, 'currentOption', 1)
      end

      if visible then
        if id ~= currentMenu and isMenuVisible(currentMenu) then
          setMenuVisible(currentMenu, false)
        end

        currentMenu = id
      end
    end
  end

  local function mysplit(inputstr, sep)
    if sep == nil then
      sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
    end
    return t
  end

  local function drawMultilineFormat(str)
    return str, #mysplit( str, "\n" )
  end


  local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)

    local str = CreateVarString(10, "LITERAL_STRING", text)

    if color then
      SetTextColor(color.r, color.g, color.b, color.a)
    else
      SetTextColor(255, 255, 255, 255)
    end

    SetTextFontForCurrentCommand(font)
    SetTextScale(scale, scale)

    if shadow then
      SetTextDropshadow(1, 0, 0, 0, 255)
    end

    if center then
      SetTextCentre(center)
    elseif alignRight then

    end

    DisplayText(str, x, y)

  end


  local function drawTitle()
    if menus[currentMenu] then
      local x = menus[currentMenu].x + menus[currentMenu].width / 2
      local y = menus[currentMenu].y + titleHeight / 2

      if HasStreamedTextureDictLoaded("menu_textures") then
        DrawSprite("menu_textures", "translate_bg_1a", x, y, menus[currentMenu].width + .03, titleHeight, 0.0, 150, 2, 2, 255, 0)
      end

      drawText(menus[currentMenu].title, x, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, { r = 255, g = 255, b = 255, a = 255 }, titleScale, true, true, false)
    end
  end


  local function drawSubTitle()
    if menus[currentMenu] then
      local x = menus[currentMenu].x + menus[currentMenu].width / 2
      local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

      local subTitleColor = { r = 255, g = 255, b = 255, a = 255 }

      if HasStreamedTextureDictLoaded("generic_textures") then
        SetScriptGfxDrawOrder(1)
        DrawSprite("generic_textures", "selection_box_bg_1d", x, y - 0.002, menus[currentMenu].width + 0.01, buttonHeight, 0.0, 0, 0, 0, 255, 0)
      end

      drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)

      drawText(tostring(menus[currentMenu].currentOption)..' / '..tostring(optionCount), menus[currentMenu].x + buttonTextXOffset + menuWidth - 0.015, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
    end
  end


  local function drawButton(text, subText)
    local x = menus[currentMenu].x + menus[currentMenu].width / 2
    local multiplier = nil

    if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
      multiplier = optionCount
    elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
      multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
    end

    if multiplier then
      local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
      local backgroundColor = nil
      local textColor = nil
      local subTextColor = nil
      local shadow = false

      if menus[currentMenu].currentOption == optionCount then
        backgroundColor = menus[currentMenu].menuFocusBackgroundColor
        textColor = menus[currentMenu].menuFocusTextColor
        subTextColor = menus[currentMenu].menuFocusTextColor
      else
        backgroundColor = menus[currentMenu].menuBackgroundColor
        textColor = menus[currentMenu].menuTextColor
        subTextColor = menus[currentMenu].menuSubTextColor
        shadow = true

      end

      if menus[currentMenu].currentOption == optionCount then
        if HasStreamedTextureDictLoaded("generic_textures") then
          SetScriptGfxDrawOrder(1)
          DrawSprite("generic_textures", "selection_box_bg_1d", x, y - 0.002, menus[currentMenu].width + 0.01, buttonHeight, 0.0, 255, 255, 255, 255, 0)
        end
      else
        if HasStreamedTextureDictLoaded("generic_textures") then
          SetScriptGfxDrawOrder(1)
          DrawSprite("generic_textures", "selection_box_bg_1d", x, y - 0.002, menus[currentMenu].width + 0.01, buttonHeight, 0.0, 0, 0, 0, 255, 0)
        end
      end

      drawText(text, menus[currentMenu].x + buttonTextXOffset - 0.002, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)

      if subText then
        drawText(subText, menus[currentMenu].x + buttonTextXOffset + menuWidth - 0.01, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
      end
    end
  end

  local function drawDescription(text)

    local x = menus[currentMenu].x + menus[currentMenu].width / 2
    local multiplier = nil

    if menus[currentMenu].totalOptions >= menus[currentMenu].maxOptionCount then
      multiplier = menus[currentMenu].maxOptionCount + 1
    elseif menus[currentMenu].totalOptions <= menus[currentMenu].maxOptionCount then
      multiplier = menus[currentMenu].totalOptions + 1
    end

    local backgroundColor = menus[currentMenu].menuBackgroundColor
    local textColor = menus[currentMenu].menuTextColor

    if text == nil or text == "" then
      return
    end

    if optionCount > menus[currentMenu].maxOptionCount then
      y = menus[currentMenu].y + titleHeight + buttonHeight * multiplier + 0.040
    else
      y = menus[currentMenu].y + titleHeight + buttonHeight * multiplier + 0.002
    end

    local string, lines = drawMultilineFormat(text)
    drawText(text, menus[currentMenu].x + buttonTextXOffset, y + buttonTextYOffset, buttonFont, textColor, buttonScale, false, false, false, true)

    descWidth = buttonHeight * lines - buttonHeight / 3 * ( lines - 1 )

    if HasStreamedTextureDictLoaded("menu_textures") then
      SetScriptGfxDrawOrder(0)
      DrawSprite("menu_textures", "translate_bg_1a", x, y + descWidth / 2, menus[currentMenu].width + 0.02, descWidth, 0.0, 0, 0, 0, 255, 0)
    end

  end

  local function drawArrows()

    local x = menus[currentMenu].x + menus[currentMenu].width / 2
    local menuHeight = buttonHeight * ( menus[currentMenu].maxOptionCount + 1 )
    local y = menus[currentMenu].y + titleHeight + menuHeight + buttonHeight / 2
    local color = { r = 0, g = 0, b = 0, a = 195 }

    if HasStreamedTextureDictLoaded("generic_textures") then
      local colour = menus[currentMenu].subTitleBackgroundColor

      if HasStreamedTextureDictLoaded("menu_textures") then
        SetScriptGfxDrawOrder(0)
        DrawSprite("menu_textures", "translate_bg_1a", x, y, menus[currentMenu].width + 0.02, buttonHeight, 0.0, 0, 0, 0, 255, 0)
      end

      DrawSprite("CommonMenu", "shop_arrows_upanddown", x, y, 0.0200, 0.04, 0.0, 255, 255, 255, 255, 0)

    end

  end


  function DokusMenu.CreateMenu(id, title, subTitle)
    -- Default settings
    menus[id] = { }
    menus[id].title = title or ''
    menus[id].subTitle = subTitle or ''
    menus[id].desTitle = ''
    menus[id].subMenuLeft = ''

    menus[id].header = header or ''

    menus[id].visible = false
    menus[id].descText = ''
    menus[id].descStat = nil

    menus[id].menuWidth = 0.20

    menus[id].previousMenu = nil

    menus[id].aboutToBeClosed = false
    menus[id].aboutToBeSubClosed = false

    if (string.lower(_DokusMenu.Position) == 'right')then
      menus[id].x = 0.75
      menus[id].y = 0.10
    elseif (string.lower(_DokusMenu.Position) == 'left') then
      menus[id].x = 0.03
      menus[id].y = 0.10
    elseif (string.lower(_DokusMenu.Position) == 'center') then
      menus[id].x = 0.395
      menus[id].y = 0.30
    end

    menus[id].width = 0.21

    menus[id].currentOption = 1
    menus[id].maxOptionCount = 10

    menus[id].totalOptions = 0
    menus[id].toogleHeritage = false

    menus[id].footer = buttonHeight * ( menus[id].maxOptionCount + 1 )

    menus[id].titleFont = 6
    menus[id].titleColor = { r = 255, g = 255, b = 255, a = 255 }
    menus[id].titleBackgroundColor = { r = 186, g = 2, b = 2, a = 255 }
    menus[id].titleBackgroundSprite = nil

    menus[id].SliderColor = { r = 57, g = 116, b = 200, a = 255 }
    menus[id].SliderBackgroundColor = { r = 4, g = 32, b = 57, a = 255 }

    menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
    menus[id].menuSubTextColor = { r = 189, g = 189, b = 189, a = 255 }
    menus[id].menuFocusTextColor = { r = 0, g = 0, b = 0, a = 255 }
    menus[id].menuFocusBackgroundColor = { r = 245, g = 245, b = 245, a = 255 }
    menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 160 }

    menus[id].subTitleBackgroundColor = { r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255 }

    menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --https://pastebin.com/0neZdsZ5
  end


  function DokusMenu.CreateSubMenu(id, parent, subTitle)
    if menus[parent] then
      DokusMenu.CreateMenu(id, menus[parent].title)

      if subTitle then
        setMenuProperty(id, 'subTitle', string.upper(subTitle))
      else
        setMenuProperty(id, 'subTitle', string.upper(menus[parent].subTitle))
      end

      setMenuProperty(id, 'previousMenu', parent)

      setMenuProperty(id, 'x', menus[parent].x)
      setMenuProperty(id, 'y', menus[parent].y)
      setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)
      setMenuProperty(id, 'titleFont', menus[parent].titleFont)
      setMenuProperty(id, 'titleColor', menus[parent].titleColor)
      setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)
      setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)
      setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)
      setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)
      setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)
      setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)
      setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)
      setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor)
    else
      debugPrint('Failed to create '..tostring(id)..' submenu: '..tostring(parent)..' parent menu doesn\'t exist')
    end
  end


  function DokusMenu.CurrentMenu()
    return currentMenu
  end


  function DokusMenu.OpenMenu(id)
    if id and menus[id] then
      PlaySoundFrontend("SELECT", "HUD_SHOP_SOUNDSET", 1)
      setMenuVisible(id, true)
      debugPrint(tostring(id)..' menu opened')
    else
      debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
    end
  end


  function DokusMenu.IsMenuOpened(id)
    return isMenuVisible(id)
  end


  function DokusMenu.IsAnyMenuOpened()
    for id, _ in pairs(menus) do
      if isMenuVisible(id) then return true end
    end

    return false
  end


  function DokusMenu.IsMenuAboutToBeClosed()
    if menus[currentMenu] then
      return menus[currentMenu].aboutToBeClosed
    else
      return false
    end
  end


  function DokusMenu.CloseMenu()
    if menus[currentMenu] then
      if menus[currentMenu].aboutToBeClosed then
        menus[currentMenu].aboutToBeClosed = false
        setMenuVisible(currentMenu, false)
        debugPrint(tostring(currentMenu)..' menu closed')
        PlaySoundFrontend("QUIT", "HUD_SHOP_SOUNDSET", 1)
        optionCount = 0
        currentMenu = nil
        currentKey = nil
      else
        menus[currentMenu].aboutToBeClosed = true
        debugPrint(tostring(currentMenu)..' menu about to be closed')
      end
    end
  end


  function DokusMenu.Button(text, subText, descText)

    if menus[currentMenu] then

      descText = descText or ''

      optionCount = optionCount + 1

      local isCurrent = menus[currentMenu].currentOption == optionCount

      drawButton(text, subText)

      menus[currentMenu].totalOptions = optionCount

      if isCurrent then
        if descText then
          menus[currentMenu].descText = descText
        end
        if currentKey == keys.select then
          PlaySoundFrontend("SELECT", "HUD_SHOP_SOUNDSET", 1)
          return true
        elseif currentKey == keys.left or currentKey == keys.right then
          PlaySoundFrontend("SELECT", "HUD_SHOP_SOUNDSET", 1)
        end
      end

      return false
    else
      debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

      return false
    end
  end


  function DokusMenu.MenuButton(text, id)
    if menus[id] then
      if DokusMenu.Button(text) then
        setMenuVisible(currentMenu, false)
        setMenuVisible(id, true, true)

        return true
      end
    else
      debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist')
    end

    return false
  end


  function DokusMenu.CheckBox(text, checked, callback)
    if DokusMenu.Button(text, checked and 'On' or 'Off') then
      checked = not checked
      debugPrint(tostring(text)..' checkbox changed to '..tostring(checked))
      if callback then callback(checked) end

      return true
    end

    return false
  end


  function DokusMenu.ComboBox(text, items, currentIndex, selectedIndex, callback)
    local itemsCount = #items
    local selectedItem = items[currentIndex]
    local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

    if itemsCount > 1 and isCurrent then
      selectedItem = '← '..tostring(selectedItem)..' →'
    end

    if DokusMenu.Button(text, selectedItem) then
      selectedIndex = currentIndex
      callback(currentIndex, selectedIndex)
      return true
    elseif isCurrent then
      if currentKey == keys.left then
        if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
      elseif currentKey == keys.right then
        if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
      end
    else
      currentIndex = selectedIndex
    end

    callback(currentIndex, selectedIndex)
    return false
  end


  function DokusMenu.Display()
    if isMenuVisible(currentMenu) then
      if menus[currentMenu].aboutToBeClosed then
        DokusMenu.CloseMenu()
      else
        ClearAllHelpMessages()

        drawTitle()
        drawSubTitle()

        currentKey = nil

        if menus[currentMenu].descText then
          drawDescription(menus[currentMenu].descText)
        end

        if isPressedKey(keys.down) then
          PlaySoundFrontend( "NAV_DOWN", "Ledger_Sounds", true )
          if menus[currentMenu].currentOption < optionCount then
            menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
          else
            menus[currentMenu].currentOption = 1
          end
        elseif isPressedKey(keys.up) then
          PlaySoundFrontend( "NAV_UP", "Ledger_Sounds", true )
          if menus[currentMenu].currentOption > 1 then
            menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
          else
            menus[currentMenu].currentOption = optionCount
          end
        elseif isPressedKey(keys.left) then
          currentKey = keys.left
        elseif isPressedKey(keys.right) then
          currentKey = keys.right
        elseif isPressedKey(keys.select) then
          currentKey = keys.select
          -- elseif isPressedKey(keys.back) then
          -- 	if menus[menus[currentMenu].previousMenu] then
          -- 		PlaySoundFrontend( "BACK", "HUD_SHOP_SOUNDSET", true )
          -- 		setMenuVisible(menus[currentMenu].previousMenu, true)
          -- 	else
          -- 		DokusMenu.CloseMenu()
          -- 	-- end
        end

        optionCount = 0
      end
    end
  end

  local k_delay = 180 -- 1er Delay
  local k_delay2 = 160 -- puis 2 3 et 4ème delay
  local k_delay3 = 130 -- et si touche restée appuyée.

  function isPressedKey(key)
    if key ~= lastKey and IsDisabledControlPressed(1, key) then -- Pas la même touche -> RESET
      lastKey = key
      timer = GetGameTimer()
      count = 0
      pass = false
      return true

    elseif key == lastKey and IsDisabledControlPressed(1, key) then -- Meme Touche
      if pass then -- Accélération du défilement
        count = 0
        if GetGameTimer() - timer > k_delay3 and GetGameTimer() - timer < k_delay then
          timer = GetGameTimer()
          return true
        elseif GetGameTimer() - timer > k_delay then
          pass = false
          timer = GetGameTimer()
          return true
        end
        return false
      elseif GetGameTimer() - timer > k_delay + 100 then
        count = 0
        timer = GetGameTimer()
        return true
      elseif GetGameTimer() - timer > k_delay then
        count = 1
        timer = GetGameTimer()
        return true
      elseif GetGameTimer() - timer > k_delay2 and (count > 0 and count < 5) then
        count = count + 1
        timer = GetGameTimer()
        return true
      elseif count > 4 then
        pass = true
        return false
      end
      return false
    end
    return false
  end

  function DokusMenu.SetMenuWidth(id, width)
    setMenuProperty(id, 'width', width)
  end


  function DokusMenu.SetMenuX(id, x)
    setMenuProperty(id, 'x', x)
  end


  function DokusMenu.SetMenuY(id, y)
    setMenuProperty(id, 'y', y)
  end


  function DokusMenu.SetMenuMaxOptionCountOnScreen(id, count)
    setMenuProperty(id, 'maxOptionCount', count)
  end


  function DokusMenu.SetTitle(id, title)
    setMenuProperty(id, 'title', title)
  end


  function DokusMenu.SetTitleColor(id, r, g, b, a)
    setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a })
  end


  function DokusMenu.SetTitleBackgroundColor(id, r, g, b, a)
    setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a })
  end


  function DokusMenu.SetTitleBackgroundSprite(id, textureDict, textureName)
    RequestStreamedTextureDict(textureDict)
    setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName })
  end


  function DokusMenu.SetSubTitle(id, text)
    setMenuProperty(id, 'subTitle', string.upper(text))
  end


  function DokusMenu.SetMenuBackgroundColor(id, r, g, b, a)
    setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a })
  end


  function DokusMenu.SetMenuTextColor(id, r, g, b, a)
    setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a })
  end

  function DokusMenu.SetMenuSubTextColor(id, r, g, b, a)
    setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a })
  end

  function DokusMenu.SetMenuFocusColor(id, r, g, b, a)
    setMenuProperty(id, 'menuFocusBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a })
  end


  function DokusMenu.SetMenuButtonPressedSound(id, name, set)
    setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set })
  end
end

if (_DokusMenu.Theme.Dark) then
  DokusMenu = { }
  DokusMenu.debug = false
  local menus = { }
  local keys = { up = 0x6319DB71, down = 0x05CA7C52, left = 0xA65EBAB4, right = 0xDEB34313, select = 0xC7B5340A, back = 0x156F7119 }
  local optionCount = 0
  local currentKey = nil
  local currentMenu = nil
  local titleHeight = 0.09
  local titleYOffset = 0.010
  local titleScale = 1.0
  local descWidth = 0.10
  local descHeight = 0.030
  local menuWidth = 0.100
  local buttonHeight = 0.038
  local buttonFont = 6
  local buttonScale = 0.365
  local buttonTextXOffset = 0.003
  local buttonTextYOffset = 0.005

  local function debugPrint(text)
    if DokusMenu.debug then
      Citizen.Trace('[DokusMenu] '..tostring(text))
    end
  end

  local function setMenuProperty(id, property, value)
    if id and menus[id] then
      menus[id][property] = value
      debugPrint(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }')
    end
  end

  local function isMenuVisible(id)
    if id and menus[id] then
      return menus[id].visible
    else
      return false
    end
  end

  local function setMenuVisible(id, visible, holdCurrent)
    if id and menus[id] then
      setMenuProperty(id, 'visible', visible)

      if not holdCurrent and menus[id] then
        setMenuProperty(id, 'currentOption', 1)
      end

      if visible then
        if id ~= currentMenu and isMenuVisible(currentMenu) then
          setMenuVisible(currentMenu, false)
        end

        currentMenu = id
      end
    end
  end

  local function mysplit(inputstr, sep)
    if sep == nil then
      sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
    end
    return t
  end

  local function drawMultilineFormat(str)
    return str, #mysplit( str, "\n" )
  end


  local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)

    local str = CreateVarString(10, "LITERAL_STRING", text)

    if color then
      SetTextColor(color.r, color.g, color.b, color.a)
    else
      SetTextColor(255, 255, 255, 255)
    end

    SetTextFontForCurrentCommand(font)
    SetTextScale(scale, scale)

    if shadow then
      SetTextDropshadow(1, 0, 0, 0, 255)
    end

    if center then
      SetTextCentre(center)
    elseif alignRight then

    end

    DisplayText(str, x, y)

  end


  local function drawTitle()
    if menus[currentMenu] then
      local x = menus[currentMenu].x + menus[currentMenu].width / 2
      local y = menus[currentMenu].y + titleHeight / 2

      if HasStreamedTextureDictLoaded("menu_textures") and HasStreamedTextureDictLoaded("generic_textures") then
        SetScriptGfxDrawOrder(0)
        DrawSprite("menu_textures", "translate_bg_1a", x, y + 0.20, 0.28, 0.55, 180.8, 000, 2, 2, 255, 1)
        DrawSprite("generic_textures", "menu_header_1a", x, y, menus[currentMenu].width + 0.03, titleHeight, 0.0, 255, 255, 255, 255, 0)
      end
      DrawSprite("generic_textures", "list_item_h_line_narrow", x, y + 0.0799, menus[currentMenu].width + 0.01, 0.003, 0.0, 255, 255, 255, 255, 0)

      drawText(menus[currentMenu].title, x, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, { r = 255, g = 255, b = 255, a = 255 }, titleScale, true, true, false)
    end
  end


  local function drawSubTitle()
    if menus[currentMenu] then
      local x = menus[currentMenu].x + menus[currentMenu].width / 2
      local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

      local subTitleColor = { r = 255, g = 255, b = 255, a = 255 }

      if HasStreamedTextureDictLoaded("generic_textures") then
        SetScriptGfxDrawOrder(5)
        --DrawSprite("generic_textures", "selection_box_bg_1d", x, y - 0.002, menus[currentMenu].width + 0.01 , buttonHeight, 0.0, 0, 0, 0, 255, 0)
      end

      drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset + 0.06, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)
      --DrawSprite("menu_textures", "divider_line", x, y - 0.002, menus[currentMenu].width+ 0.001, 0.02, 0.0, 255, 255, 255, 255, 0)
      --drawText(tostring(menus[currentMenu].currentOption)..' / '..tostring(optionCount), menus[currentMenu].x + buttonTextXOffset + menuWidth - 0.015, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
    end
  end


  local function drawButton(text, subText)
    local x = menus[currentMenu].x + menus[currentMenu].width / 2
    local multiplier = nil

    if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
      multiplier = optionCount
    elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
      multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
    end

    if multiplier then
      local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
      local backgroundColor = nil
      local textColor = nil
      local subTextColor = nil
      local shadow = false

      if menus[currentMenu].currentOption == optionCount then
        backgroundColor = menus[currentMenu].menuFocusBackgroundColor
        textColor = menus[currentMenu].menuFocusTextColor
        subTextColor = menus[currentMenu].menuFocusTextColor
      else
        backgroundColor = menus[currentMenu].menuBackgroundColor
        textColor = menus[currentMenu].menuTextColor
        subTextColor = menus[currentMenu].menuSubTextColor
        shadow = true

      end


      if menus[currentMenu].currentOption == optionCount then
        if HasStreamedTextureDictLoaded("generic_textures") then
          SetScriptGfxDrawOrder(2)
          DrawSprite("generic_textures", "selection_box_bg_1d", x, y - 0.002, menus[currentMenu].width + 0.01, buttonHeight, 0.0, 255, 255, 255, 255, 0)
        end
      else
        if HasStreamedTextureDictLoaded("generic_textures") then
          SetScriptGfxDrawOrder(1)
          DrawSprite("generic_textures", "selection_box_bg_1d", x, y - 0.002, menus[currentMenu].width + 0.01, buttonHeight, 0.0, 0, 0, 0, 255, 0)
        end
      end

      drawText(text, menus[currentMenu].x + buttonTextXOffset - 0.002, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)

      if subText then
        drawText(subText, menus[currentMenu].x + buttonTextXOffset + menuWidth - 0.01, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
      end
    end
  end

  local function drawDescription(text)

    local x = menus[currentMenu].x + menus[currentMenu].width / 2
    local multiplier = nil

    if menus[currentMenu].totalOptions >= menus[currentMenu].maxOptionCount then
      multiplier = menus[currentMenu].maxOptionCount + 1
    elseif menus[currentMenu].totalOptions <= menus[currentMenu].maxOptionCount then
      multiplier = menus[currentMenu].totalOptions + 1
    end

    local backgroundColor = menus[currentMenu].menuBackgroundColor
    local textColor = menus[currentMenu].menuTextColor

    if text == nil or text == "" then
      return
    end

    if optionCount > menus[currentMenu].maxOptionCount then
      y = menus[currentMenu].y + titleHeight + buttonHeight * multiplier + 0.040
    else
      y = menus[currentMenu].y + titleHeight + buttonHeight * multiplier + 0.002
    end

    local string, lines = drawMultilineFormat(text)
    drawText(text, menus[currentMenu].x + buttonTextXOffset, y + buttonTextYOffset, buttonFont, textColor, buttonScale, false, false, false, true)

    descWidth = buttonHeight * lines - buttonHeight / 3 * ( lines - 1 )

    if HasStreamedTextureDictLoaded("generic_textures") then
      SetScriptGfxDrawOrder(0)
      DrawSprite("generic_textures", "list_item_h_line_narrow", x, y + descWidth / 2 - 0.02, menus[currentMenu].width + 0.01, 0.003, 0.0, 255, 255, 255, 255, 0)
    end

  end

  local function drawArrows()

    local x = menus[currentMenu].x + menus[currentMenu].width / 2
    local menuHeight = buttonHeight * ( menus[currentMenu].maxOptionCount + 1 )
    local y = menus[currentMenu].y + titleHeight + menuHeight + buttonHeight / 2
    local color = { r = 0, g = 0, b = 0, a = 195 }

    if HasStreamedTextureDictLoaded("generic_textures") then
      local colour = menus[currentMenu].subTitleBackgroundColor

      if HasStreamedTextureDictLoaded("menu_textures") then
        SetScriptGfxDrawOrder(0)
        DrawSprite("menu_textures", "translate_bg_1a", x, y, menus[currentMenu].width + 0.02, buttonHeight, 0.0, 0, 0, 0, 255, 0)
      end

      DrawSprite("CommonMenu", "shop_arrows_upanddown", x, y, 0.0200, 0.04, 0.0, 255, 255, 255, 255, 0)

    end

  end


  function DokusMenu.CreateMenu(id, title)
    -- Default settings
    menus[id] = { }
    menus[id].title = title or ''
    menus[id].subTitle = ''
    menus[id].desTitle = ''
    menus[id].subMenuLeft = ''

    menus[id].header = header or ''

    menus[id].visible = false
    menus[id].descText = ''
    menus[id].descStat = nil

    menus[id].menuWidth = 0.20

    menus[id].previousMenu = nil

    menus[id].aboutToBeClosed = false
    menus[id].aboutToBeSubClosed = false



    if (string.lower(_DokusMenu.Position) == 'right') then
      menus[id].x = 0.75
      menus[id].y = 0.10
    elseif (string.lower(_DokusMenu.Position) == 'left') then
      menus[id].x = 0.05
      menus[id].y = 0.10
    elseif (string.lower(_DokusMenu.Position) == 'center') then
      menus[id].x = 0.40
      menus[id].y = 0.25
    end

    menus[id].width = 0.21

    menus[id].currentOption = 1
    menus[id].maxOptionCount = 10

    menus[id].totalOptions = 0
    menus[id].toogleHeritage = false

    menus[id].footer = buttonHeight * ( menus[id].maxOptionCount + 1 )

    menus[id].titleFont = 6
    menus[id].titleColor = { r = 255, g = 255, b = 255, a = 255 }
    menus[id].titleBackgroundColor = { r = 186, g = 2, b = 2, a = 255 }
    menus[id].titleBackgroundSprite = nil

    menus[id].SliderColor = { r = 57, g = 116, b = 200, a = 255 }
    menus[id].SliderBackgroundColor = { r = 4, g = 32, b = 57, a = 255 }

    menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
    menus[id].menuSubTextColor = { r = 189, g = 189, b = 189, a = 255 }
    menus[id].menuFocusTextColor = { r = 0, g = 0, b = 0, a = 255 }
    menus[id].menuFocusBackgroundColor = { r = 245, g = 245, b = 245, a = 255 }
    menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 160 }

    menus[id].subTitleBackgroundColor = { r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255 }

    menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --https://pastebin.com/0neZdsZ5
  end


  function DokusMenu.CreateSubMenu(id, parent, subTitle)
    if menus[parent] then
      DokusMenu.CreateMenu(id, menus[parent].title)

      if subTitle then
        setMenuProperty(id, 'subTitle', subTitle)
      else
        setMenuProperty(id, 'subTitle', menus[parent].subTitle)
      end

      setMenuProperty(id, 'previousMenu', parent)

      setMenuProperty(id, 'x', menus[parent].x)
      setMenuProperty(id, 'y', menus[parent].y)
      setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)
      setMenuProperty(id, 'titleFont', menus[parent].titleFont)
      setMenuProperty(id, 'titleColor', menus[parent].titleColor)
      setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)
      setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)
      setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)
      setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)
      setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)
      setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)
      setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)
      setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor)
    else
      debugPrint('Failed to create '..tostring(id)..' submenu: '..tostring(parent)..' parent menu doesn\'t exist')
    end
  end


  function DokusMenu.CurrentMenu()
    return currentMenu
  end


  function DokusMenu.OpenMenu(id)
    if id and menus[id] then
      PlaySoundFrontend("SELECT", "HUD_SHOP_SOUNDSET", 1)
      setMenuVisible(id, true)
      debugPrint(tostring(id)..' menu opened')
      --DisplayRadar(false)
    else
      debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
    end
  end


  function DokusMenu.IsMenuOpened(id)
    return isMenuVisible(id)
  end


  function DokusMenu.IsAnyMenuOpened()
    for id, _ in pairs(menus) do
      if isMenuVisible(id) then return true end
    end

    return false
  end


  function DokusMenu.IsMenuAboutToBeClosed()
    if menus[currentMenu] then
      return menus[currentMenu].aboutToBeClosed
    else
      return false
    end
  end


  function DokusMenu.CloseMenu()
    if menus[currentMenu] then
      if menus[currentMenu].aboutToBeClosed then
        menus[currentMenu].aboutToBeClosed = false
        setMenuVisible(currentMenu, false)
        debugPrint(tostring(currentMenu)..' menu closed')
        PlaySoundFrontend("QUIT", "HUD_SHOP_SOUNDSET", 1)
        optionCount = 0
        currentMenu = nil
        currentKey = nil
      else
        menus[currentMenu].aboutToBeClosed = true
        debugPrint(tostring(currentMenu)..' menu about to be closed')
      end
      --DisplayRadar(true)
    end
  end


  function DokusMenu.Button(text, subText, descText)

    if menus[currentMenu] then

      descText = descText or ''

      optionCount = optionCount + 1

      local isCurrent = menus[currentMenu].currentOption == optionCount

      drawButton(text, subText)

      menus[currentMenu].totalOptions = optionCount

      if isCurrent then
        if descText then
          menus[currentMenu].descText = descText
        end
        if currentKey == keys.select then
          PlaySoundFrontend("SELECT", "HUD_SHOP_SOUNDSET", 1)
          return true
        elseif currentKey == keys.left or currentKey == keys.right then
          PlaySoundFrontend("SELECT", "HUD_SHOP_SOUNDSET", 1)
        end
      end

      return false
    else
      debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

      return false
    end
  end


  function DokusMenu.MenuButton(text, id)
    if menus[id] then
      if DokusMenu.Button(text) then
        setMenuVisible(currentMenu, false)
        setMenuVisible(id, true, true)

        return true
      end
    else
      debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist')
    end

    return false
  end


  function DokusMenu.CheckBox(text, checked, callback)
    if DokusMenu.Button(text, checked and 'On' or 'Off') then
      checked = not checked
      debugPrint(tostring(text)..' checkbox changed to '..tostring(checked))
      if callback then callback(checked) end

      return true
    end

    return false
  end


  function DokusMenu.ComboBox(text, items, currentIndex, selectedIndex, callback)
    local itemsCount = #items
    local selectedItem = items[currentIndex]
    local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

    if itemsCount > 1 and isCurrent then
      selectedItem = '← '..tostring(selectedItem)..' →'
    end

    if DokusMenu.Button(text, selectedItem) then
      selectedIndex = currentIndex
      callback(currentIndex, selectedIndex)
      return true
    elseif isCurrent then
      if currentKey == keys.left then
        if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
      elseif currentKey == keys.right then
        if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
      end
    else
      currentIndex = selectedIndex
    end

    callback(currentIndex, selectedIndex)
    return false
  end


  function DokusMenu.Display()
    if isMenuVisible(currentMenu) then
      if menus[currentMenu].aboutToBeClosed then
        DokusMenu.CloseMenu()
      else
        ClearAllHelpMessages()

        drawTitle()
        drawSubTitle()

        currentKey = nil

        if optionCount > menus[currentMenu].maxOptionCount then
          drawArrows()
        end

        if menus[currentMenu].descText then
          drawDescription(menus[currentMenu].descText)
        end

        if isPressedKey(keys.down) then
          PlaySoundFrontend( "NAV_DOWN", "Ledger_Sounds", true )
          if menus[currentMenu].currentOption < optionCount then
            menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
          else
            menus[currentMenu].currentOption = 1
          end
        elseif isPressedKey(keys.up) then
          PlaySoundFrontend( "NAV_UP", "Ledger_Sounds", true )
          if menus[currentMenu].currentOption > 1 then
            menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
          else
            menus[currentMenu].currentOption = optionCount
          end
        elseif isPressedKey(keys.left) then
          currentKey = keys.left
        elseif isPressedKey(keys.right) then
          currentKey = keys.right
        elseif isPressedKey(keys.select) then
          currentKey = keys.select
        -- elseif isPressedKey(keys.back) then
        --   if menus[menus[currentMenu].previousMenu] then
        --     PlaySoundFrontend( "BACK", "HUD_SHOP_SOUNDSET", true )
        --     setMenuVisible(menus[currentMenu].previousMenu, true)
        --   else
        --     DokusMenu.CloseMenu()
        --   end
        end

        optionCount = 0
      end
    end
  end

  local k_delay = 180 -- 1er Delay
  local k_delay2 = 160 -- puis 2 3 et 4ème delay
  local k_delay3 = 130 -- et si touche restée appuyée.

  function isPressedKey(key)
    if key ~= lastKey and IsDisabledControlPressed(1, key) then -- Pas la même touche -> RESET
      lastKey = key
      timer = GetGameTimer()
      count = 0
      pass = false
      return true

    elseif key == lastKey and IsDisabledControlPressed(1, key) then -- Meme Touche
      if pass then -- Accélération du défilement
        count = 0
        if GetGameTimer() - timer > k_delay3 and GetGameTimer() - timer < k_delay then
          timer = GetGameTimer()
          return true
        elseif GetGameTimer() - timer > k_delay then
          pass = false
          timer = GetGameTimer()
          return true
        end
        return false
      elseif GetGameTimer() - timer > k_delay + 100 then
        count = 0
        timer = GetGameTimer()
        return true
      elseif GetGameTimer() - timer > k_delay then
        count = 1
        timer = GetGameTimer()
        return true
      elseif GetGameTimer() - timer > k_delay2 and (count > 0 and count < 5) then
        count = count + 1
        timer = GetGameTimer()
        return true
      elseif count > 4 then
        pass = true
        return false
      end
      return false
    end
    return false
  end

  function DokusMenu.SetMenuWidth(id, width)
    setMenuProperty(id, 'width', width)
  end


  function DokusMenu.SetMenuX(id, x)
    setMenuProperty(id, 'x', x)
  end


  function DokusMenu.SetMenuY(id, y)
    setMenuProperty(id, 'y', y)
  end


  function DokusMenu.SetMenuMaxOptionCountOnScreen(id, count)
    setMenuProperty(id, 'maxOptionCount', count)
  end


  function DokusMenu.SetTitle(id, title)
    setMenuProperty(id, 'title', title)
  end


  function DokusMenu.SetTitleColor(id, r, g, b, a)
    setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a })
  end


  function DokusMenu.SetTitleBackgroundColor(id, r, g, b, a)
    setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a })
  end


  function DokusMenu.SetTitleBackgroundSprite(id, textureDict, textureName)
    RequestStreamedTextureDict(textureDict)
    setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName })
  end


  function DokusMenu.SetSubTitle(id, text)
    setMenuProperty(id, 'subTitle', string.upper(text))
  end


  function DokusMenu.SetMenuBackgroundColor(id, r, g, b, a)
    setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a })
  end


  function DokusMenu.SetMenuTextColor(id, r, g, b, a)
    setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a })
  end

  function DokusMenu.SetMenuSubTextColor(id, r, g, b, a)
    setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a })
  end

  function DokusMenu.SetMenuFocusColor(id, r, g, b, a)
    setMenuProperty(id, 'menuFocusBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a })
  end


  function DokusMenu.SetMenuButtonPressedSound(id, name, set)
    setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set })
  end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
