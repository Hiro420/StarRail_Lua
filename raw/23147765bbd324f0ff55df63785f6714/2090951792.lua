local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffLevelTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookBuffLevelTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[0] = "0"
L1_1[1] = "I"
L1_1[2] = "II"
L1_1[3] = "III"
L1_1[4] = "IV"
L1_1[5] = "V"
L1_1[6] = "VI"
L1_1[7] = "VII"
L1_1[8] = "VIII"
L1_1[9] = "IX"
L1_1[10] = "X"
function L2_1(A0_2, A1_2)
  A0_2._lv = A1_2
end
L0_1.setup_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lv_text
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._lv
  L3_2 = L1_1[L3_2]
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L2_1
return L0_1
