local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainPostImagePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ImgLoad"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_img_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "BtnZoomIn"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.btn_zoom_img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ArrowPanel"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_change_img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "ArrowPanel/BtnPrev"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.btn_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "ArrowPanel/BtnNext"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.btn_next = L1_2
end
L0_1._on_bind = L1_1
return L0_1
