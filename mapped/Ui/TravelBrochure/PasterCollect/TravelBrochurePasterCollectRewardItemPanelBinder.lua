local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochurePasterCollectRewardItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/TravelBrochure/Widget/TBStickerProgressRewardItem.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/RewardItemPanel/RewardItem"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RewardItemPanel/RewardItem/Root/LockedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RewardItemPanel/RewardItem/Root/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_doing = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RewardItemPanel/RewardItem/Root/FinishedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RewardItemPanel/RewardItem/Root/GotPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_taken = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "Root/ProgressPanel/Slider/FillArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NumPanel/Num"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RewardItemPanel/RewardItem/Root/Selected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_control_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RewardItemPanel/RewardItem/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
