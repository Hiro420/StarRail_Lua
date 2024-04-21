local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WarningPanelAttackingState"
L2_1 = G
L2_1 = L2_1.BaseState
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MazeMonsterWarningMark_AttackHint"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2._refresh_visible
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.play_anim
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.fsm
  L3_2 = L2_2
  L2_2 = L2_2.get_previous_state
  L2_2 = L2_2(L3_2)
  if L2_2 ~= A0_2 then
    A0_2._previous_state = L2_2
  end
end
L0_1.enter = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
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
  L6_2 = A1_2
  L5_2 = A1_2.get_anim_normalized_time
  L7_2 = L1_1
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 < 0 or 1.0 <= L5_2 then
    L7_2 = A1_2
    L6_2 = A1_2.reset_anim
    L8_2 = L1_1
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._previous_state
    if L6_2 ~= nil then
      L6_2 = A1_2.fsm
      L7_2 = L6_2
      L6_2 = L6_2.change_state
      L8_2 = A0_2._previous_state
      L6_2(L7_2, L8_2)
    else
      L6_2 = A1_2.fsm
      L7_2 = L6_2
      L6_2 = L6_2.change_state
      L8_2 = A1_2.danger_state
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.tick = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.play_anim
  L4_2 = "MazeMonsterWarningMark_Normal"
  L2_2(L3_2, L4_2)
end
L0_1.exit = L2_1
return L0_1
