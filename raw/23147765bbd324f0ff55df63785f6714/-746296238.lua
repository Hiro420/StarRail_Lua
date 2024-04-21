local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PuzzleMovieTargetInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/Widget/CommonChallengeTargetInfoRow_WhiteBg.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.state_animator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StarInfoPanel/ChallengeStar"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_star = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StarInfoPanel/ChallengeStatus"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StarInfoPanel/ChallengeStatus/Active"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StarInfoPanel/ChallengeStatus/UnActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_unactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
end
L0_1._on_bind = L1_1
return L0_1
