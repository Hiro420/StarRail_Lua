local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BtnFilterSortSelectPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapZoom/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom_bg = L1_2
  L1_2 = {}
  A0_2.node_list = L1_2
  L1_2 = A0_2.node_list
  L2_2 = FilterSortSelectEnum
  L2_2 = L2_2.Filter
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/BtnFilter"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2.node_list
  L2_2 = FilterSortSelectEnum
  L2_2 = L2_2.MultiSort
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/BtnOrderPanel"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2.node_list
  L2_2 = FilterSortSelectEnum
  L2_2 = L2_2.CommonSort
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/BtnOrderPanelPC"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2.node_list
  L2_2 = FilterSortSelectEnum
  L2_2 = L2_2.QuickSelect
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/BtnQuickSelect"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2.node_list
  L2_2 = FilterSortSelectEnum
  L2_2 = L2_2.MultiOrderOptionSort
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/BtnOrderPanel"
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
end
L0_1._on_bind = L1_1
return L0_1
