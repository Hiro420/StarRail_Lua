local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DialogAction"
L2_1 = "Ui.RogueCommon.ActionQueue.ActionItem"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._dialog_class = A1_2
  A0_2._is_async = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = ...
  L1_2[1] = L2_2
  A0_2.custom_data = L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_async = true
end
L0_1.set_sysc_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._action_call = A2_2
  A0_2._action_call_self = A1_2
end
L0_1.init_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._dialog_class
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1.is_dialog_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._action_call
  L3_2 = A0_2._action_call_self
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_async
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = A0_2._dialog_class
    L3_2 = unpack
    L4_2 = A0_2.custom_data
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._set_finished
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = A0_2._dialog_class
    L3_2 = unpack
    L4_2 = A0_2.custom_data
    L3_2, L4_2 = L3_2(L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = L1_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._set_finished
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1.do_action = L1_1
return L0_1
