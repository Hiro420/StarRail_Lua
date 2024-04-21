local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ComponentExtensions
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ItemComposeTopTabPanelBinder"
L3_1 = G
L3_1 = L3_1.TabItemBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = "Assets/AsbRes/UI/CommonKits/Tab/TopTab.prefab"
  return L0_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "UnSelected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_icon = L1_2
  L1_2 = L0_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.tab_select_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_red_dot = L1_2
end
L1_1._on_tab_btn_bind = L2_1
return L1_1
