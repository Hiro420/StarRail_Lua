local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerRequestResultPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ActivePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_success = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FailedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "ActivePanel/MissionInfoPanel/RewardPanel/DrinkMakerMoneyBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_tip_icon_success = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "FailedPanel/MissionInfoPanel/RewardPanel/DrinkMakerMoneyBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_tip_icon_fail = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = A1_2
  L6_2 = "/MissionInfoPanel/MissionName"
  L5_2 = L5_2 .. L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_request_desc = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = A1_2
  L6_2 = "/MissionInfoPanel/RewardPanel/DrinkMakerMoneyBtn/Root/Icon"
  L5_2 = L5_2 .. L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.img_tip_icon = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = A1_2
  L6_2 = "/MissionInfoPanel/RewardPanel/DrinkMakerMoneyBtn/Root/StatesPanel/BgHint"
  L5_2 = L5_2 .. L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.img_tip_icon_bg = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = A1_2
  L6_2 = "/MissionInfoPanel/RewardPanel/NumText"
  L5_2 = L5_2 .. L6_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_tip_count = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = A1_2
  L5_2 = "/MissionInfoPanel/RewardPanel"
  L4_2 = L4_2 .. L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_normal = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = A1_2
  L5_2 = "/MissionInfoPanel/RewardMax"
  L4_2 = L4_2 .. L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_max = L2_2
end
L0_1.after_bind = L1_1
return L0_1
