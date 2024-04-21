local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActionItem"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_finished = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_finished
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.is_finished = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._finished_callback_self = A1_2
  A0_2._finished_callback_func = A2_2
end
L0_1.set_action_finished_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._action_name = A1_2
end
L0_1.set_action_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._finished_callback_func
  L3_2 = A0_2._finished_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_action_finished_call_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_finished = true
  L2_2 = A0_2
  L1_2 = A0_2._on_action_finished_call_back
  L1_2(L2_2)
end
L0_1._set_finished = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  return L2_2
end
L0_1.is_dialog_action = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._action_name
  L2_2 = L2_2 ~= nil
  return L2_2
end
L0_1.is_action = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.do_action = L1_1
return L0_1
