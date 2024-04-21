local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherCommonMissionInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/AetherDivide/Widget/AetherDivideEmblemRewardMissionInfoRow.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/Progress/ObtainedNum"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_cur_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/Progress/ClaimNum"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.text_total_progress = L1_2
  L1_2 = A0_2.text_cur_progress
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._safe_get_cmpt
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Text
    L4_2 = "MissionInfoPanel/StatePanel/ProgressPanel/ObtainedNum"
    L5_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.text_cur_progress = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._safe_get_cmpt
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.Text
    L4_2 = "MissionInfoPanel/StatePanel/ProgressPanel/ClaimNum"
    L5_2 = false
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.text_total_progress = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StarInfoPanel/ChallengeStar/Active"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StarInfoPanel/ChallengeStar/UnActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unactive = L1_2
end
L0_1._on_bind = L1_1
return L0_1
