local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTelevisionCustomPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = ""
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeTargetInfoRowPanel
  L4_2 = G
  L4_2 = L4_2.ChallengeTargetInfoRowPanelBinder
  L5_2 = "ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetList/TargetRow"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_target_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ScrollViewMask/ScrollView/Viewport/Content/ChallengeTargetList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeTargetPanel
  L4_2 = G
  L4_2 = L4_2.ChallengeTargetPanelBinder
  L5_2 = "ScrollViewMask/ScrollView/Viewport/Content/ChallengeMissionList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.point_target_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "ScrollViewMask/ScrollView/Viewport/Content/BossFeatureInfoList"
  L6_2 = "Ui.Battle.BossFeatureInfoPanel"
  L7_2 = "Ui.Battle.BossFeatureInfoPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.boss_feature_info_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "ScrollViewMask/ScrollView/Viewport/Content/MatchThreeBuffPanel/MatchThreeBuffList"
  L6_2 = "Ui.ActivityTelevision.ActivityTelevisionBuffSelectRow"
  L7_2 = "Ui.ActivityTelevision.ActivityTelevisionBuffSelectRowBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.buff_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "ScrollViewMask/ScrollView/Viewport/Content/MatchThreeBuffPanel/MatchThreeBuffInfo/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_buff_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ScrollViewMask/ScrollView/Viewport/Content/MatchThreeBuffPanel/MatchThreeBuffInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_tips = L1_2
end
L0_1._bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind
  L1_2(L2_2)
end
L0_1._on_pc_bind = L1_1
return L0_1
