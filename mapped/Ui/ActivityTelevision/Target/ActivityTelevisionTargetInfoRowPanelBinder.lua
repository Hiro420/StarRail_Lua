local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionTargetInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Common/Widget/CommonChallengeTargetInfoRow.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
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
  L3_2 = "MissionInfoPanel/Progress"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_progress = L1_2
  L1_2 = A0_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/Progress/ObtainedNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cur_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/Progress/ClaimNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_total_progress = L1_2
end
L0_1._on_bind = L1_1
return L0_1
