local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Heliobus/HeliobusSNSCenterDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/Contents/RightPanel/Dashboard"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_fan_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg/TopBanner/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg/TopBanner/Silver"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_silver_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg/TopBanner/Gold"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_gold_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Bg/TopBanner/Normal/Pic"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_normal_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Bg/TopBanner/Silver/Pic"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_silver_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Bg/TopBanner/Gold/Pic"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_gold_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_spine_skeleton = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AccountInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_account_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/Dashboard"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fan_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/PostList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_self_post_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/TabList/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab = L1_2
end
L0_1._on_bind = L1_1
return L0_1
