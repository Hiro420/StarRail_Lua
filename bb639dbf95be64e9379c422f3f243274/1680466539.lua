local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RewardDialogAction"
L2_1 = "Ui.RogueCommon.ActionQueue.ActionItem"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._arg = A1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._action_call = A2_2
  A0_2._action_call_self = A1_2
end
L0_1.init_call_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._action_call
  L3_2 = A0_2._action_call_self
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.show_reward_dialog
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._arg
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._set_finished
    L2_2(L3_2)
  else
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
  end
end
L0_1.do_action = L1_1
return L0_1
