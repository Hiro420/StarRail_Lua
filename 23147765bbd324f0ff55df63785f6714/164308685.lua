local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RecommendGoodsTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PanelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TopListPanel/ScrollView/KeyMapInfo_Left"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TopListPanel/ScrollView/KeyMapInfo_Right"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TopListPanel/ScrollView/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_left_gamepad = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TopListPanel/ScrollView/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_right_gamepad = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TopListPanel/ScrollView/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/TextPanel/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.shop_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnSelected/TextPanel/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.shop_name_unselected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UnSelected/TabIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/TabIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.icon_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "Selected/TextPanel/ExtraContent/RemainTimeIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_time = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1