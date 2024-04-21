local L0_1, L1_1
L0_1 = require
L1_1 = "Base.DataStruct.Stack"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StackStateMachine"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._owner = A1_2
  A0_2._current_state = nil
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.Stack
  L2_2 = L2_2(L3_2)
  A0_2._state_stack = L2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._current_state = A1_2
  L2_2 = A0_2._state_stack
  L3_2 = L2_2
  L2_2 = L2_2.push
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.push_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state_stack
  L2_2 = L1_2
  L1_2 = L1_2.pop
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._state_stack
  L3_2 = L2_2
  L2_2 = L2_2.peek
  L2_2 = L2_2(L3_2)
  A0_2._current_state = L2_2
  return L1_2
end
L0_1.pop_state = L1_1
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
