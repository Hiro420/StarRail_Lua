local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Guide/TutorialDialog.prefab"
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
  L3_2 = L3_2.Text
  L4_2 = "SwitchHint/Contents/DescPanel/ScrollViewMask/ScrollView/Viewport/Content/Text2"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hot_switch_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoPerformanceUITransfer
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ticker = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CopyNodeRoot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_copynode_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "GuideRoot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_guide_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MaskHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mask_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MaskRaycastTarget"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mask_ray_cast = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SwitchHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hot_switch_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1
