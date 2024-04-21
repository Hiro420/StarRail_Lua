local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochurePasterTextIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/TravelBrochure/Widget/StickerTextItemIcon.prefab"
  return L1_2
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
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L1_2 = {}
  A0_2.imgs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/TextPanel/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TextPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unlock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/LockedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/PastedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_pasted = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TextPanel/MinusBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_multi = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TextPanel/MinusBtn/Selected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_multi_on = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TextPanel/MinusBtn/UnSelected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_multi_off = L1_2
end
L0_1._on_bind = L1_1
return L0_1
