local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WaitSecondAction"
L2_1 = "Ui.RogueCommon.ActionQueue.ActionItem"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._second = A1_2
  A0_2._action_call = A3_2
  A0_2._action_call_self = A2_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._action_call_rogue_coin_refresh = A2_2
  A0_2._action_call_rogue_coin_refresh_self = A1_2
end
L0_1.init_call_back_rogue_coin_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._action_call
  L3_2 = A0_2._action_call_self
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._action_call_rogue_coin_refresh
  L3_2 = A0_2._action_call_rogue_coin_refresh_self
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._second
  if L1_2 <= 0 then
    L2_2 = A0_2
    L1_2 = A0_2._set_finished
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_after_seconds_callback
    L2_2 = A0_2._set_finished
    L3_2 = A0_2
    L4_2 = A0_2._second
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.BlockFixedTime
    L3_2 = A0_2._second
    L4_2 = A0_2._second
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.do_action = L1_1
return L0_1
