local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleSelectBuffDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleSelectBuffDialog"
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
  L3_2 = L3_2.BattleSelectBuffDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._buffs = A1_2
  A0_2._select_index = 0
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._buffs
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
      L5_2 = A0_2._buffs
      L6_2 = L4_2 - 1
      L5_2 = L5_2[L6_2]
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MazeBuffExcelTable
      L6_2 = L6_2.GetData
      L7_2 = L5_2
      L8_2 = 1
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.panels_buff_text_title
      L7_2 = L7_2[L4_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L6_2.BuffName
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.panels_buff_text_desc
      L7_2 = L7_2[L4_2]
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L6_2.BuffDesc
      L10_2 = G
      L10_2 = L10_2.UITextUtils
      L10_2 = L10_2.GetSkillParams
      L11_2 = L6_2.ParamList
      L10_2, L11_2 = L10_2(L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
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
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L2_2 = L2_2.DoSelectBuffInBattle
  L3_2 = L1_2
  L4_2 = A0_2._buffs
  L5_2 = A0_2._select_index
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_confirm = L1_1
return L0_1
