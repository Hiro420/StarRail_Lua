local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonRewardPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/AtlasPanel/RogueGodRewardInfo.prefab"
  return L0_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Root/GodLevelPanel/LevelMark/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.lv_tx = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Root/StatusPanel/Notget"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reward_not_get_root = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Root/StatusPanel/Completed"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.reward_taken_root = L1_2
  L1_2 = {}
  L2_2 = L1_1.SafeFind
  L3_2 = A0_2.root
  L4_2 = "Root/RewardList/ItemIcon1"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L2_2 = L1_1.SafeFind
  L3_2 = A0_2.root
  L4_2 = "Root/RewardList/ItemIcon2"
  L2_2 = L2_2(L3_2, L4_2)
  L1_2[2] = L2_2
  A0_2.rewards = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Root/RewardList/ItemIconSpecial/ItemIconSpecial"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.special_reward = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Root/RewardList/ItemIconSpecial"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.special_root = L1_2
  L1_2 = L1_1.SafeFind
  L2_2 = A0_2.root
  L3_2 = "Root/CommonListBg/Special"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.special_bg = L1_2
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.root
  L4_2 = "Root/StatusPanel/BtnGet"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.get_reward_btn = L1_2
end
L0_1._on_bind = L2_1
return L0_1
