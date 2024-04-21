local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MovieRacingIntegralPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 8
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "IntegralPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "IntegralPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AddIntegralPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_add_integral_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AddIntegralPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_add = L1_2
  L1_2 = {}
  A0_2.node_integral_digital_item_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "IntegralPanel/Info/Scoreboard"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score_board = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "IntegralPanel/Info/ScoreValue"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score_value = L1_2
  L1_2 = L1_1
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "IntegralPanel/Info/ScoreValue/%s"
    L9_2 = L4_2 - 1
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = A0_2.node_integral_digital_item_list
    L6_2[L4_2] = L5_2
  end
  L1_2 = A0_2.node_score_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.node_score_board
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L2_1
return L0_1
