local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousValuePanelSegmentDisplayData"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2.min_nous_value = 0
  A0_2.max_nous_value = 0
  A0_2.is_unlock_condition = false
  A0_2.is_finished = false
  A0_2.is_locked = false
  A0_2.is_recommended = false
  A0_2.ui_left_pos = 0
  A0_2.ui_right_pos = 0
  A0_2.panel = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.min_nous_value
  L2_2 = A1_2 >= L2_2
  return L2_2
end
L0_1.is_in_segment = L1_1
return L0_1
