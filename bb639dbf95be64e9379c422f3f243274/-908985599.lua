local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideProfessionItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DailyMission/Widget/NewDailyMissionCategoryInfoRow.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/TitlePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/TitlePanel/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/IconPanel/RewardIconPanel/RewardIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/IconPanel/RewardIconPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/Tag/Mission/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/Contents/RewardInfoPanel/RewardList/RewardListInfinited/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/TextPanel/OpenRule"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_open_rule = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RewardInfoPanel/TextPanel/OpenRule/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_day = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTransfer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTrace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnMission"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_unknown = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quick = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTraceMini"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quick_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/UnOpen"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_not_today = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTransfer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTrace"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_track = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnMission"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unknown = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_quick = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_layout = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/RewardList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_layout = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_layout = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoInControlButton
  L5_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTransfer"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoInControlButton
  L6_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTrace"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.MonoInControlButton
  L7_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnMission"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._safe_get_cmpt
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.MonoInControlButton
  L8_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnGo"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._safe_get_cmpt
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.MonoInControlButton
  L9_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTraceMini"
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.controls_button = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoInControlTip
  L5_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTransfer/TextPanel/KeyMapInfo"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoInControlTip
  L6_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTrace/TextPanel/KeyMapInfo"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.MonoInControlTip
  L7_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnMission/TextPanel/KeyMapInfo"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._safe_get_cmpt
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.MonoInControlTip
  L8_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnGo/TextPanel/KeyMapInfo"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._safe_get_cmpt
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.MonoInControlTip
  L9_2 = "Root/Contents/RewardInfoPanel/BtnPanel/BtnTraceMini/KeyMapInfo"
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.controls_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.go_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/Tag/Mission2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cost_item_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/Tag/Line"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cost_item_2_splash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/Tag"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cost_layout = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/Tag/Mission2/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cost_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/Tag/Mission2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_cost_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/RewardList/KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_controller_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RewardInfoPanel/BtnPanel/InfoPanel/EventOpenTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_quick_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Frame/BottomLine2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_end_line = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Frame/BottomLine"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_end_line_last = L1_2
end
L0_1._on_bind = L1_1
return L0_1
