local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideRogueBannerPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
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
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TotalInfoPanel/ChallengeNum/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TotalInfoPanel/ChallengeNum/Time/NumNow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TotalInfoPanel/ChallengeNum/Time/NumTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "TotalInfoPanel/ItemRemainTimeIcon/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TotalInfoPanel/ItemRemainTimeIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "InfoPanel/Contents/DetailInfoPanel/InfoList/RewardList/RewardListInfinited/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loop_list_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Contents/DetailInfoPanel/InfoList/RewardList/RewardListInfinited/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_controller_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "InfoPanel/Contents/DetailBtnPanel/BtnPanel/BtnTransfer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "InfoPanel/Contents/DetailBtnPanel/BtnPanel/BtnTransfer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "InfoPanel/Contents/DetailBtnPanel/BtnPanel/BtnTransfer/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_tip_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "InfoPanel/Contents/DetailBtnPanel/BtnPanel/BtnTrace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "InfoPanel/Contents/DetailBtnPanel/BtnPanel/BtnTrace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "InfoPanel/Contents/DetailBtnPanel/BtnPanel/BtnTrace/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_tip_track = L1_2
end
L0_1._on_bind = L1_1
return L0_1