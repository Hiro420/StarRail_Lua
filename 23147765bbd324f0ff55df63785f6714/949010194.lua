local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidEntranceTargetItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Common/Widget/CommonChallengeTargetInfoRow.prefab"
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
  A0_2.animator_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionInfoPanel/RewardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reward_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MissionInfoPanel/RewardGet"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.get_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "MissionInfoPanel/RewardPanel/Root/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "MissionInfoPanel/RewardGet/Root/ItemIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_icon_get = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MissionInfoPanel/RewardPanel/Root/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_num = L1_2
end
L0_1._on_bind = L1_1
return L0_1
