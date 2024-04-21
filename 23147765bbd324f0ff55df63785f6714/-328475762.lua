local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WarningPanelSafeState"
L2_1 = G
L2_1 = L2_1.BaseState
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.set_target_arrow
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_node_progress_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_node_warning_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.set_node_effect_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2._refresh_visible
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.play_from_begin
  L4_2 = "MazeMonsterWarningMark_Normal"
  L2_2(L3_2, L4_2)
end
L0_1.enter = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A1_2._progress_visible
  if L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.set_node_progress_active
    L7_2 = false
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
  if L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2.set_node_effect_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L6_2 = A1_2
  L5_2 = A1_2.is_active
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = A1_2
    L5_2 = A1_2._refresh_visible
    L5_2(L6_2)
  end
  if A3_2 <= A4_2 then
    L5_2 = A1_2.fsm
    L6_2 = L5_2
    L5_2 = L5_2.change_state
    L7_2 = A1_2.danger_state
    L5_2(L6_2, L7_2)
  elseif A2_2 <= A4_2 then
    L5_2 = A1_2.fsm
    L6_2 = L5_2
    L5_2 = L5_2.change_state
    L7_2 = A1_2.guarding_state
    L5_2(L6_2, L7_2)
  end
end
L0_1.tick = L1_1
function L1_1(A0_2, A1_2, ...)
end
L0_1.exit = L1_1
return L0_1
