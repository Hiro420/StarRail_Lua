local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DestructibleMaterialTabItemBinder"
L2_1 = G
L2_1 = L2_1.InventoryTabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LeftPanel/MiddleButtonArea/DestroyPanel/BtnDestroy"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_destroy = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LeftPanel/MiddleButtonArea/DestroyPanel/BtnDestroy"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_destroy = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel/MiddleButtonArea/DestroyPanel/BtnDestroy/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.in_control_tip_destroy = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_visible_control_node
  L3_2 = "LeftPanel/MiddleButtonArea/DestroyPanel"
  L1_2(L2_2, L3_2)
end
L0_1._on_inventory_tab_item_custom_bind = L1_1
return L0_1
