local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapFunctionSwitchPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2.btn_list = L1_2
  L1_2 = {}
  A0_2.node_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TipsBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_train = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RogueBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rogue = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AbyssBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_challenge = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "TipsBtn/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_train = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RogueBtn/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_rogue = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AbyssBtn/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_challenge = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TipsBtn/Root/RewardHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AbyssBtn/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot_challenge = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlaceHolder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_place_holder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlaceHolder/SelectedTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_selected_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlaceHolder/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_bg = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_list
  L3_2 = A0_2.node_train
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_list
  L3_2 = A0_2.node_rogue
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.node_list
  L3_2 = A0_2.node_challenge
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list
  L3_2 = A0_2.btn_train
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list
  L3_2 = A0_2.btn_rogue
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2.btn_list
  L3_2 = A0_2.btn_challenge
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
