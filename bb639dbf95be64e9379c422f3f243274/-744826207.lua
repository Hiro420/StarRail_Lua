local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleSelectEvolveBuildGearDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleSelectEvolveBuildGearDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleSelectEvolveBuildGearDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._init_param = A1_2
  A0_2._select_index = 0
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleEvolveBuildReRoll
  L4_2 = L0_1._on_ntf_reroll
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._init_param
    L5_2 = L5_2.ForSelected
    L5_2 = L5_2.Length
    if L4_2 > L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.panels_buff_row
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._init_param
      L5_2 = L5_2.ForSelected
      L6_2 = L4_2 - 1
      L5_2 = L5_2[L6_2]
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.ActivityEvolveBuildGearExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2.GearConfig
      L6_2 = L6_2(L7_2)
      L8_2 = L6_2
      L7_2 = L6_2.GetMazeBuff
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.panels_buff_text_title
      L8_2 = L8_2[L4_2]
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = L7_2.BuffName
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.panels_buff_text_desc
      L8_2 = L8_2[L4_2]
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = L7_2.BuffDesc
      L11_2 = G
      L11_2 = L11_2.UITextUtils
      L11_2 = L11_2.GetSkillParams
      L12_2 = L7_2.ParamList
      L11_2, L12_2 = L11_2(L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = L5_2.ReadyForForgeConfig
      if L8_2 ~= nil then
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.GameCore
        L8_2 = L8_2.ActivityEvolveBuildGearExcelTable
        L8_2 = L8_2.GetData
        L9_2 = L5_2.ReadyForForgeConfig
        L8_2 = L8_2(L9_2)
        L10_2 = L8_2
        L9_2 = L8_2.GetMazeBuff
        L9_2 = L9_2(L10_2)
        L10_2 = A0_2._binder
        L10_2 = L10_2.panels_forge_text_tip
        L10_2 = L10_2[L4_2]
        L10_2 = L10_2.transform
        L10_2 = L10_2.parent
        L11_2 = L10_2
        L10_2 = L10_2.SafeSetActive
        L12_2 = true
        L10_2(L11_2, L12_2)
        L10_2 = A0_2._binder
        L10_2 = L10_2.panels_forge_text_tip
        L10_2 = L10_2[L4_2]
        L11_2 = L10_2
        L10_2 = L10_2.SafeSetTextID
        L12_2 = L9_2.BuffName
        L10_2(L11_2, L12_2)
      else
        L8_2 = A0_2._binder
        L8_2 = L8_2.panels_forge_text_tip
        L8_2 = L8_2[L4_2]
        L8_2 = L8_2.transform
        L8_2 = L8_2.parent
        L9_2 = L8_2
        L8_2 = L8_2.SafeSetActive
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L0_1._update_panel_for_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._update_panel_for_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_equip_txt
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_buff_button
  L3_2 = L3_2[1]
  L4_2 = A0_2._on_btn_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_buff_button
  L3_2 = L3_2[2]
  L4_2 = A0_2._on_btn_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_buff_button
  L3_2 = L3_2[3]
  L4_2 = A0_2._on_btn_3
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_buff_button_lost
  L3_2 = L3_2[1]
  L4_2 = A0_2._on_btn_lost_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_buff_button_lost
  L3_2 = L3_2[2]
  L4_2 = A0_2._on_btn_lost_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_buff_button_lost
  L3_2 = L3_2[3]
  L4_2 = A0_2._on_btn_lost_3
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reroll
  L4_2 = A0_2._on_btn_reroll
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = ""
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._init_param
    L6_2 = L6_2.ForEquippedTool
    L7_2 = L5_2 - 1
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.ActivityEvolveBuildGearExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2.GearConfig
      L7_2 = L7_2(L8_2)
      L8_2 = L1_2
      L9_2 = "\230\173\166\229\153\168"
      L10_2 = tostring
      L11_2 = L7_2.GearID
      L10_2 = L10_2(L11_2)
      L11_2 = " \231\173\137\231\186\167"
      L12_2 = tostring
      L13_2 = L6_2.GearConfig
      L13_2 = L13_2.Level
      L12_2 = L12_2(L13_2)
      L13_2 = "/"
      L14_2 = tostring
      L15_2 = L6_2.MaxLevel
      L14_2 = L14_2(L15_2)
      L15_2 = " | "
      L1_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_equip_tool
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L1_2 = ""
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._init_param
    L6_2 = L6_2.ForEquippedPlugin
    L7_2 = L5_2 - 1
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.ActivityEvolveBuildGearExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2.GearConfig
      L7_2 = L7_2(L8_2)
      L8_2 = L1_2
      L9_2 = "\233\165\176\229\147\129"
      L10_2 = tostring
      L11_2 = L7_2.GearID
      L10_2 = L10_2(L11_2)
      L11_2 = " \231\173\137\231\186\167"
      L12_2 = tostring
      L13_2 = L6_2.GearConfig
      L13_2 = L13_2.Level
      L12_2 = L12_2(L13_2)
      L13_2 = "/"
      L14_2 = tostring
      L15_2 = L6_2.MaxLevel
      L14_2 = L14_2(L15_2)
      L15_2 = " | "
      L1_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_equip_plugin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._update_equip_txt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_1 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_2 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn
  L3_2 = 3
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_3 = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._select_index = A1_2
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff_button
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetInteractable
    L8_2 = L5_2 ~= A1_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "zwy BTN "
  L4_2 = tostring
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1._on_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_lost
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_lost_1 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_lost
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_lost_2 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_lost
  L3_2 = 3
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_lost_3 = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  L2_2 = L2_2.GameWorldRef
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AbilityStatic
  L3_2 = L3_2.DoSelectLostGearInBattle
  L4_2 = L2_2
  L5_2 = A1_2 - 1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
end
L0_1._on_btn_lost = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoSelectGearInBattle
  L3_2 = L1_2
  L4_2 = A0_2._select_index
  L4_2 = L4_2 - 1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoEvolveBuildSkip
  L3_2 = L1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_skip = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.BattleInstanceRef
  L1_2 = L1_2.GameWorldRef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AbilityStatic
  L2_2 = L2_2.DoEvolveBuildReRoll
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_btn_reroll = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._init_param = A1_2
  A0_2._select_index = 0
  L3_2 = A0_2
  L2_2 = A0_2._update_panel_for_selected
  L2_2(L3_2)
end
L0_1._on_ntf_reroll = L1_1
return L0_1
