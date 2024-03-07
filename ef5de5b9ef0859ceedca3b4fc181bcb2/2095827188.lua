local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StateMachine"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._owner = A1_2
  A0_2._current_state = nil
  A0_2._previous_state = nil
  A0_2._forbid_change_to_self = A2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._current_state = A1_2
end
L0_1.set_current_state = L1_1
function L1_1(A0_2, A1_2)
  A0_2._previous_state = A1_2
end
L0_1.set_previous_state = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._current_state
  return L1_2
end
L0_1.get_current_state = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._previous_state
  return L1_2
end
L0_1.get_previous_state = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = assert
  L3_2 = A1_2
  L4_2 = "<StateMachine:ChangeState> input param is null."
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._forbid_change_to_self
  if L2_2 then
    L2_2 = A0_2._current_state
    if A1_2 == L2_2 then
      return
    end
  end
  L2_2 = A0_2._current_state
  A0_2._previous_state = L2_2
  L2_2 = A0_2._current_state
  L3_2 = L2_2
  L2_2 = L2_2.exit
  L4_2 = A0_2._owner
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
  A0_2._current_state = A1_2
  L2_2 = A0_2._current_state
  L3_2 = L2_2
  L2_2 = L2_2.enter
  L4_2 = A0_2._owner
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.change_state = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_state
  if L1_2 then
    L1_2 = A0_2._current_state
    L2_2 = L1_2
    L1_2 = L1_2.tick
    L3_2 = A0_2._owner
    L4_2 = ...
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.tick = L1_1
return L0_1
