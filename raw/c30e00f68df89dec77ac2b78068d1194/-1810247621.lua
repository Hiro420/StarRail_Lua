local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResurrectionRoleDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Bag/ResurrectionRoleDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopGridView
  L4_2 = "Contents/DescPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/LeftPanel/ItemTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/LeftPanel/ItemDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DialogBtnPanel/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DialogTitle/Left/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/EmptyStatusTip_Reserve"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/LeftPanel/ItemTitle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/LeftPanel/ItemDesc"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_desc = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.node_empty_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.node_item_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.node_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.btn_confirm
  L3_2 = not A1_2
  L2_2.interactable = L3_2
end
L0_1.setup_empty_status = L1_1
return L0_1
