local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ConsumeConfirmDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/ConsumeConfirmDialog.prefab"
  return L0_2
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
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Contents/DescPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/ItemDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Contents/WarningTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_item_count_fail_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnCancel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_cancle = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_ok = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
end
L0_1._on_bind = L1_1
return L0_1
