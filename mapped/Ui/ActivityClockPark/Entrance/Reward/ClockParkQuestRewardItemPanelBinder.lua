local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkQuestRewardItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/ClockPark/Widget/ClockParkConeRewardInfoItem.prefab"
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
  L3_2 = L3_2.Slider
  L4_2 = "ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PointNode/RewardItemIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PointNode/StatusPanel/Default"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_default = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PointNode/StatusPanel/Received"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_received = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PointNode/StatusPanel/Available"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_available = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PointNode/TextPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_progress = L1_2
end
L0_1._on_bind = L1_1
return L0_1
