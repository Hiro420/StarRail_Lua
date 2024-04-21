local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAlleyPackControlPanelBinder"
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
  L4_2 = "CargoPointer/BtnRoot/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_delete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "CargoPointer/BtnRoot/BtnRotate"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_rotate = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "CargoPointer/BtnRoot/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "CargoPointer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_transform_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "CargoPointer/BtnRoot/BtnCancel/ClickArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_btn_delete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransform
  L4_2 = "CargoPointer/BtnRoot/BtnRotate/ClickArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rect_btn_rotate = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CargoPointer/BtnRoot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.jump_text_load_meta = L1_2
end
L0_1._on_bind = L1_1
return L0_1
