local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.Target.MuseumTargetRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.Target.MuseumTargetRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTargetPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumTargetRewardPanel
  L4_2 = G
  L4_2 = L4_2.MuseumTargetRewardPanelBinder
  L5_2 = "Content/RewardItem"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.reward_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Content/TaskList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mission_list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_info_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/TaskList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_layout = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Frame/Effect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "EmptyPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_empty = L1_2
end
L0_1._on_bind = L1_1
return L0_1
