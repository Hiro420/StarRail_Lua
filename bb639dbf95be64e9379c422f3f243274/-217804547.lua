local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.DialogAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.RewardDialogAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.AnimationAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.WaitSecondAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.EmptyAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.TutorialAction"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActionQueue"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._action_queue = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._action_queue = nil
end
L0_1.dispose = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._action_queue = L1_2
  A0_2._is_doing = false
  A0_2._is_pause = false
  A0_2._is_next_action_paused = false
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._finished_callback_self = A1_2
  A0_2._finished_callback_func = A2_2
end
L0_1.set_queue_finished_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._enqueue
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_action = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._action_queue
  if L3_2 == nil or A1_2 == nil then
    return
  end
  if A2_2 ~= nil and 1 <= A2_2 then
    L3_2 = A0_2._action_queue
    L3_2 = #L3_2
    if A2_2 <= L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._action_queue
      L5_2 = A2_2
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2._enqueue
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.insert_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_doing = true
  L2_2 = A0_2
  L1_2 = A0_2._do_next_action
  L1_2(L2_2)
end
L0_1.start_do_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_pause
  if L1_2 then
    A0_2._is_next_action_paused = true
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._dequeue
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._on_all_finished_call_back
    L2_2(L3_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.set_action_finished_callback
    L4_2 = A0_2
    L5_2 = A0_2._do_next_action
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = L1_2
    L2_2 = L1_2.do_action
    L2_2(L3_2)
  end
end
L0_1._do_next_action = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._action_queue
  L4_2 = A0_2._action_queue
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._enqueue = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = table
  L1_2 = L1_2.remove
  L2_2 = A0_2._action_queue
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1._dequeue = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_doing = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._finished_callback_func
  L3_2 = A0_2._finished_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_all_finished_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._action_queue
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.is_action
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_action_by_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._action_queue
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.is_action
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        return L5_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_action_pos = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = nil
  L3_2 = ipairs
  L4_2 = A0_2._action_queue
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.is_action
      L10_2 = A1_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L2_2 = L6_2
      end
    end
  end
  return L2_2
end
L0_1.get_action_last_pos = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.get_action_pos
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end
L0_1.has_action_in_queue = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._action_queue
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._action_queue
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.is_dialog_action
      L9_2 = A1_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.has_dialog_action_in_queue = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._action_queue
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1.has_left_action = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_doing
  L1_2 = L1_2 == true
  return L1_2
end
L0_1.is_doing = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_pause = true
  A0_2._is_doing = false
end
L0_1.pause_queue = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_pause = false
  L2_2 = A0_2
  L1_2 = A0_2.has_left_action
  L1_2 = L1_2(L2_2)
  A0_2._is_doing = L1_2
  L1_2 = A0_2._is_next_action_paused
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._do_next_action
    L1_2(L2_2)
    A0_2._is_next_action_paused = false
  end
end
L0_1.recover_queue = L1_1
return L0_1
