local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildGearDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DialogPanel/Root/MainPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DialogPanel/Root/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DialogPanel/Root/LockedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/DialogPanel/Root/EmptyPanel/Root/TxtEmpty"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/DialogPanel/Root/EmptyPanel/Root/IconWeapon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.imge_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/DialogPanel/Root/MainPanel/Root/Content/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_content = L1_2
end
L0_1._on_bind = L1_1
return L0_1
