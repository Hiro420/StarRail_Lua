local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailCommentMissionPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardItemList/Follower"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_fans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RewardItemList/Follower/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_bonus_fans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardItemList/Income"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_income = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RewardItemList/Income/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_bonus_income = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardItemList/NewSkill"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RewardItemList/NewSkill/NumberText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_bonus_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "BtnPost"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_take_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go_to_mission = L1_2
end
L0_1._on_bind = L1_1
return L0_1
