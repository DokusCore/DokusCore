--------------------------------------------------------------------------------
---------------------------------- DokusCore -----------------------------------
--------------------------------------------------------------------------------
local Data = {
  { ID = 'Alert',       Dict = 'generic_textures', Icon = 'menu_icon_alert'             },
  { ID = 'ArrowLeft',   Dict = 'generic_textures', Icon = 'selection_arrow_left'        },
  { ID = 'ArrowRight',  Dict = 'generic_textures', Icon = 'selection_arrow_right'       },
  { ID = 'Horn',        Dict = 'HUD_TOASTS',       Icon = 'toast_mp_status_change'      },
  { ID = 'Horse',       Dict = 'HUD_TOASTS',       Icon = 'toast_horse_bond'            },
  { ID = 'StarFull',    Dict = 'generic_textures', Icon = 'star'                        },
  { ID = 'StarOut',     Dict = 'generic_textures', Icon = 'star_outline'                },
  { ID = 'StarRate',    Dict = 'generic_textures', Icon = 'rating_star'                 },
  { ID = 'Lock',        Dict = 'menu_textures',    Icon = 'stamp_locked_rank'           },
  { ID = 'Check',       Dict = 'generic_textures', Icon = 'tick'                        },
  { ID = 'NPC',         Dict = 'generic_textures', Icon = 'temp_pedshot'                },
  { ID = 'MedalBronze', Dict = 'generic_textures', Icon = 'medal_bronze'                },
  { ID = 'MedalSilver', Dict = 'generic_textures', Icon = 'medal_silver'                },
  { ID = 'MedalGold',   Dict = 'generic_textures', Icon = 'medal_gold'                  },
  { ID = 'Gold',        Dict = 'generic_textures', Icon = 'stamp_gold'                  },
  { ID = 'HonorBad',    Dict = 'honor_display',    Icon = 'honor_bad'                   },
  { ID = 'HonorGood',   Dict = 'honor_display',    Icon = 'honor_good'                  },
  { ID = 'Target',      Dict = 'menu_textures',    Icon = 'menu_icon_ability_combat'    },
  { ID = 'GunHolster',  Dict = 'menu_textures',    Icon = 'menu_icon_holster'           },
  { ID = 'Mail',        Dict = 'menu_textures',    Icon = 'menu_icon_invite_sent'       },
  { ID = 'InView',      Dict = 'menu_textures',    Icon = 'menu_icon_spectate'          },
  { ID = 'OutView',     Dict = 'menu_textures',    Icon = 'menu_icon_spectate_blocked'  },
  { ID = 'Kick',        Dict = 'menu_textures',    Icon = 'menu_icon_kick'              },
  { ID = 'Health',      Dict = 'menu_textures',    Icon = 'menu_icon_ability_recovery'  },
  { ID = 'Shield',      Dict = 'menu_textures',    Icon = 'menu_icon_ability_defense'   },
  { ID = 'Warning',     Dict = 'menu_textures',    Icon = 'menu_icon_info_warning'      },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:ShowTopNote', function(Msg, Loc)
  exports.DokusCore:ShowTopNote(tostring(Msg), tostring(Loc))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:ShowTip', function(Msg, Time)
  exports.DokusCore:ShowTip(tostring(Msg), tonumber(Time))
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:ShowtextRight', function(Msg, Time)
  exports.DokusCore:ShowSimpleRightText(tostring(Msg), tonumber(Time))
end)


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:NoteObjective', function(Title, Text, Type, Time)
  for k,v in pairs(Data) do
    if (Low(v.ID) == Low(Type)) then
      exports.DokusCore:ShowLeftNote(Title, Text, Data[k].Dict, Data[k].Icon, Time)
    end
  end
end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
RegisterNetEvent('DokusCore:Core:Notify')
AddEventHandler('DokusCore:Core:Notify', function(txt, pos, time) Notify(txt, pos, time) end)
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
