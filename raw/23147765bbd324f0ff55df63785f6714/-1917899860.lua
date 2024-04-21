local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Heliobus/HeliobusSNSMainPage.prefab"
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
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTip_ResBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_rule_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/LeftPanel/AccountInfo/UserInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_user_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/LeftPanel/AccountInfo/BtnFollower"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_fan = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/Contents/LeftPanel/AccountInfo/BtnPost"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_self_post = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/AccountInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_account_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/MissionPhaseInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_post_phase_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_post_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/TabList/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_spine_skeleton = L1_2
end
L0_1._on_bind = L1_1
return L0_1
