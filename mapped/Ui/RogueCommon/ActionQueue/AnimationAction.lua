local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AnimationAction"
L2_1 = "Ui.RogueCommon.ActionQueue.ActionItem"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._animation = A1_2
  A0_2._clip_name = A2_2
  L6_2 = A0_2
  L5_2 = A0_2.init_call_back
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._action_call = A2_2
  A0_2._action_call_self = A1_2
end
L0_1.init_call_back = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._action_call_rogue_coin_refresh = A2_2
  A0_2._action_call_rogue_coin_refresh_self = A1_2
end
L0_1.init_call_back_rogue_coin_refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._end_call = A2_2
  A0_2._end_call_self = A1_2
end
L0_1.init_end_call_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L1_2 = A0_2._animation
  if L1_2 ~= nil then
    L1_2 = A0_2._clip_name
    if L1_2 ~= nil then
      goto lbl_24
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._do_end_call_back
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_finished
  L1_2(L2_2)
  do return end
  ::lbl_24::
  L1_2 = A0_2._animation
  L1_2 = L1_2.gameObject
  if L1_2 ~= nil then
    L1_2 = A0_2._animation
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeInHierarchy
    if L1_2 ~= false then
      goto lbl_38
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._do_end_call_back
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_finished
  L1_2(L2_2)
  do return end
  ::lbl_38::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._animation
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = A0_2._clip_name
  function L5_2()
    local L0_3, L1_3
    L0_3 = L1_2
    if L0_3 then
      L0_3 = L1_2
      L1_3 = L0_3
      L0_3 = L0_3.ClearEvent
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_end_call_back
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_finished
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._animation
  L4_2 = A0_2._clip_name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._animation
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = A0_2._clip_name
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.length
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_UIManager
    L5_2 = L4_2
    L4_2 = L4_2.BlockFixedTime
    L6_2 = L3_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.do_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._end_call
  L3_2 = A0_2._end_call_self
  L1_2(L2_2, L3_2)
end
L0_1._do_end_call_back = L1_1
return L0_1
