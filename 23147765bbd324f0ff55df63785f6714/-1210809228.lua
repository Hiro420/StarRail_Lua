local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BattleCollege.BattleCollegeDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattleCollege.BattleCollegeDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeMainPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "LeftPanel/LeftTabArea/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_level_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LeftPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleCollegeDetailPanel
  L4_2 = G
  L4_2 = L4_2.BattleCollegeDetailPanelBinder
  L5_2 = "RightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RightPanel/BtnPanel/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_challenge = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/ChallengeHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/BtnPanel/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_challenge = L1_2
end
L0_1._on_bind = L1_1
return L0_1
