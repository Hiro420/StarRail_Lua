local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStorySpecialZoomPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapZoom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_zoom = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "KeyMapZoom/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnStory"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnReward/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot_btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnStory/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.red_dot_btn_story = L1_2
end
L0_1._on_bind = L1_1
return L0_1
