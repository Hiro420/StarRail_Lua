local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.Quest.ActivityMonopolyQuestIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.Quest.ActivityMonopolyQuestIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyHistoryReportTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "BtnHistory"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_history = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "InfoPanel/PersonalityPanel/Content/BtnPanel/BtnShare"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_share = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "InfoPanel/LockPanel"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.nodes_doing = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "PersonalityTabList"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "InfoPanel/PersonalityPanel"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.nodes_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomSlider
  L4_2 = "InfoPanel/LockPanel/Content/ProgressPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/LockPanel/Content/ProgressPanel/NumPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/LockPanel/Content/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "InfoPanel/LockPanel/Content/BtnPanel/BtnReceive"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoPerformanceUITransfer
  L4_2 = "InfoPanel/LockPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_tick = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "InfoPanel/LockPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "InfoPanel/LockPanel/Content/ProgressPanel/ProgressBar/Mask/Light"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_pressing = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "PersonalityTabList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "InfoPanel/PersonalityPanel/Content/TitlePanel/PicPanel/PersonalityPic"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/PersonalityPanel/Content/TitlePanel/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/PersonalityPanel/Content/ScrollView/Viewport/Content/StoryDescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/PersonalityPanel/Content/ScrollView/Viewport/Content/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "InfoPanel/LockPanel/Content/BtnPanel/BtnReceive"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/LockPanel/Content/BtnPanel/BtnReceive/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_reward_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyQuestIconPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyQuestIconPanelBinder
  L5_2 = "InfoPanel/PersonalityPanel/Content/BtnStarReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "InfoPanel/PersonalityPanel/Content/BtnStarReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "InfoPanel/PersonalityPanel/Content/BtnStarReward/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.in_control_tip_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "InfoPanel/LockPanel/Content/RewardTip/Root/NumPanel/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_reward_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/LockPanel/Content/RewardTip/Root/NumPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_reward_num = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Selected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tab_btn_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "UnSelected/TabText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_tab_btn_unselected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
