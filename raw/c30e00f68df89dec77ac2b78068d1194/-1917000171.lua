local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSelectStrategyBase"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_dirty = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._change_callback = A1_2
  A0_2._change_callback_self = A2_2
end
L0_1.register_selection_change_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._change_callback
  L3_2 = A0_2._change_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._notify_selection_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._do_select
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_dirty
  if L2_2 then
    A0_2._is_dirty = false
    L3_2 = A0_2
    L2_2 = A0_2._notify_selection_changed
    L2_2(L3_2)
  end
end
L0_1.do_select = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_dirty = true
end
L0_1._mark_selection_changed = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._do_select = L1_1
return L0_1
