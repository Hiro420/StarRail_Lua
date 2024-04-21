local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritAttributeRestrain.AetherSpiritAttributeRestrainDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAttributeRestrainDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritAttributeRestrainDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._attribute_row_table = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._attribute_row_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherSpiritTypeExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._attribute_row_table
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._attribute_row_table
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.SpiritType
    L2_3 = #L2_3
    L3_3 = A1_3.SpiritType
    L3_3 = #L3_3
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
end
L0_1._get_attribute = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = L1_1
  L3_2 = A0_2._attribute_row_table
  L3_2 = #L3_2
  if L2_2 > L3_2 then
    L2_2 = A0_2._attribute_row_table
    L1_2 = #L2_2
  else
    L1_2 = L1_1
  end
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L9_2 = "img_attribute_"
    L10_2 = L5_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L9_2 = A0_2._attribute_row_table
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.IconPath
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L7_2 = "txt_attribute_"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = A0_2._attribute_row_table
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.Name
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_attribute = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_click_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
return L0_1
