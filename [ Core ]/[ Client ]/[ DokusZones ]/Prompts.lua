------------------------------------------------------------------------------
--------------------------------- DevDokus -----------------------------------
------------------------------------------------------------------------------
--------------------- I feel a disturbance in the force ----------------------
------------------------------------------------------------------------------
Prompt_Start  = nil
Prompt_Add    = nil
Prompt_Undo   = nil
Prompt_Finish = nil
Prompt_Cancel = nil
Prompt_Exit   = nil
Group         = GetRandomIntInRange(0, 0xffffff)

function ActPrompts()
  CreateThread(function()
    local str = 'Start'
    Prompt_Start = PromptRegisterBegin()
    PromptSetControlAction(Prompt_Start, _Keys['SPACEBAR'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Prompt_Start, str)
    PromptSetEnabled(Prompt_Start, true)
    PromptSetVisible(Prompt_Start, true)
    PromptSetHoldMode(Prompt_Start, true)
    PromptSetGroup(Prompt_Start, Group)
    PromptRegisterEnd(Prompt_Start)

    local str = 'Add'
    Prompt_Add = PromptRegisterBegin()
    PromptSetControlAction(Prompt_Add, _Keys['E'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Prompt_Add, str)
    PromptSetEnabled(Prompt_Add, true)
    PromptSetVisible(Prompt_Add, true)
    PromptSetHoldMode(Prompt_Add, true)
    PromptSetGroup(Prompt_Add, Group)
    PromptRegisterEnd(Prompt_Add)

    local str = 'Undo'
    Prompt_Undo = PromptRegisterBegin()
    PromptSetControlAction(Prompt_Undo, _Keys['U'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Prompt_Undo, str)
    PromptSetEnabled(Prompt_Undo, true)
    PromptSetVisible(Prompt_Undo, true)
    PromptSetHoldMode(Prompt_Undo, true)
    PromptSetGroup(Prompt_Undo, Group)
    PromptRegisterEnd(Prompt_Undo)

    local str = 'Finish'
    Prompt_Finish = PromptRegisterBegin()
    PromptSetControlAction(Prompt_Finish, _Keys['F'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Prompt_Finish, str)
    PromptSetEnabled(Prompt_Finish, true)
    PromptSetVisible(Prompt_Finish, true)
    PromptSetHoldMode(Prompt_Finish, true)
    PromptSetGroup(Prompt_Finish, Group)
    PromptRegisterEnd(Prompt_Finish)

    local str = 'Cancel'
    Prompt_Cancel = PromptRegisterBegin()
    PromptSetControlAction(Prompt_Cancel, _Keys['C'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Prompt_Cancel, str)
    PromptSetEnabled(Prompt_Cancel, true)
    PromptSetVisible(Prompt_Cancel, true)
    PromptSetHoldMode(Prompt_Cancel, true)
    PromptSetGroup(Prompt_Cancel, Group)
    PromptRegisterEnd(Prompt_Cancel)

    local str = 'Exit'
    Prompt_Exit = PromptRegisterBegin()
    PromptSetControlAction(Prompt_Exit, _Keys['X'])
    str = CreateVarString(10, 'LITERAL_STRING', str)
    PromptSetText(Prompt_Exit, str)
    PromptSetEnabled(Prompt_Exit, true)
    PromptSetVisible(Prompt_Exit, true)
    PromptSetHoldMode(Prompt_Exit, true)
    PromptSetGroup(Prompt_Exit, Group)
    PromptRegisterEnd(Prompt_Exit)
  end)
end
------------------------------------------------------------------------------
------------------------------------------------------------------------------

------------------------------------------------------------------------------
------------------------------------------------------------------------------

------------------------------------------------------------------------------
------------------------------------------------------------------------------

------------------------------------------------------------------------------
------------------------------------------------------------------------------

------------------------------------------------------------------------------
------------------------------------------------------------------------------





------------------------------------------------------------------------------
------------------------------------------------------------------------------
