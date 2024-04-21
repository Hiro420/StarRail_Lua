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
L1_1 = "MazeChallengeInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeMissionStatusHint/Contents/MazeName/New/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name_new = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeMissionStatusHint/Contents/MazeName/Complete/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name_complete = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeMissionStatusHint/Contents/ChallengeCountHintPanel/Content/New/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeTargetPanel
  L4_2 = G
  L4_2 = L4_2.ChallengeTargetPanelBinder
  L5_2 = "MazeMissionStatusHint/Contents/ChallengeMissionList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.challenge_target_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BuffStateInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeMissionStatusHint/Contents/ChallengeCountHintPanel/Content/New/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_turn_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MazeMissionStatusHint/Contents/ChallengeCountHintPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_turn_cost_animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeTargetInfoRowPanel
  L4_2 = G
  L4_2 = L4_2.ChallengeTargetInfoRowPanelBinder
  L5_2 = "MazeMissionStatusHint/Contents/ChallengeMissionList/ClearTarget"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.clear_target_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
