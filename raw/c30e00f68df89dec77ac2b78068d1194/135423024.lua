local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WarningPanelGuardingState"
L2_1 = G
L2_1 = L2_1.BaseState
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MazeMonsterWarningMark_Alert"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.set_target_arrow
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_node_progress_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_node_warning_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_node_effect_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._pre_alert_value = 0
  A0_2._pre_is_value_up = true
  L3_2 = A1_2
  L2_2 = A1_2.play_from_begin
  L4_2 = "MazeMonsterWarningMark_Normal"
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.play_anim
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2._refresh_visible
  L2_2(L3_2)
end
L0_1.enter = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A1_2._progress_visible
  if not L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.set_node_progress_active
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2._warning_visible
  if L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.set_node_warning_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2._effect_visible
  if not L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.set_node_effect_active
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L6_2 = A1_2
  L5_2 = A1_2.is_active
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2._refresh_visible
    L5_2(L6_2)
    L6_2 = A1_2
    L5_2 = A1_2.reset_anim
    L7_2 = L1_1
    L5_2(L6_2, L7_2)
  end
  L5_2 = A4_2 - A2_2
  L6_2 = A3_2 - A2_2
  L5_2 = L5_2 / L6_2
  if 1 < L5_2 then
    L5_2 = 1
  elseif L5_2 < 0 then
    L5_2 = 0
  end
  L7_2 = A1_2
  L6_2 = A1_2.set_image_progress_fill_amount
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._pre_alert_value
  L6_2 = A4_2 > L6_2
  if 0.98 < L5_2 and L6_2 then
    L7_2 = A1_2.fsm
    L8_2 = L7_2
    L7_2 = L7_2.change_state
    L9_2 = A1_2.danger_state
    L7_2(L8_2, L9_2)
    return
  end
  if A4_2 < A2_2 then
    L7_2 = A1_2.fsm
    L8_2 = L7_2
    L7_2 = L7_2.change_state
    L9_2 = A1_2.safe_state
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = A0_2._pre_is_value_up
  if L7_2 ~= L6_2 then
    A0_2._pre_is_value_up = L6_2
    L8_2 = A0_2
    L7_2 = A0_2._play_hint_anim
    L9_2 = A1_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  A0_2._pre_alert_value = A4_2
end
L0_1.tick = L2_1
function L2_1(A0_2, A1_2, ...)
end
L0_1.exit = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L4_2 = A1_2
    L3_2 = A1_2.play_anim
    L5_2 = "MazeMonsterWarningMark_Alert"
    L3_2(L4_2, L5_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.play_anim
    L5_2 = "MazeMonsterWarningMark_Normal"
    L3_2(L4_2, L5_2)
  end
end
L0_1._play_hint_anim = L2_1
return L0_1
