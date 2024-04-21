local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ImmediateAction"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ChallengeActionUtils"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.ScheduleUnlock = 1
L1_1.ScheduleRefresh = 2
L1_1.ResidentUnlock = 3
L1_1.AutoSettle = 4
L1_1.AutoUnlockTutorial = 5
L1_1.AutoUnlock = 6
L1_1.AutoUnlockAfter = 7
L1_1.ScheduleExpire = 8
L1_1.Normal = 9
L0_1.ActionSortWeightEnum = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.DialogAction
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = A2_2
  L7_2 = ...
  L4_2(L5_2, L6_2, L7_2)
  L3_2.challenge_sort_weight = A1_2
  return L3_2
end
L0_1.create_dialog_action = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.create_dialog_action
  L3_2 = "Ui.Common.RewardDialog"
  L4_2 = A1_2
  L5_2 = A0_2
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1.create_reward_dialog_action = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.AnimationAction
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.challenge_sort_weight = A2_2
  return L3_2
end
L0_1.create_anim_action = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ImmediateAction
  L2_2 = L2_2(L3_2)
  L2_2.challenge_sort_weight = A1_2
  L4_2 = L2_2
  L3_2 = L2_2.set_callback
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1.create_immediate_action = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.WaitSecondAction
  L6_2 = A0_2
  L7_2 = A2_2
  L8_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2.challenge_sort_weight = A3_2
  return L4_2
end
L0_1.create_wait_second_action = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.TutorialAction
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init_tutorial_id
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.init_task_unlock_id
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L3_2.challenge_sort_weight = A2_2
  return L3_2
end
L0_1.create_tutorial_action = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.IsInstanceOf
    L3_2 = A0_2
    L4_2 = G
    L4_2 = L4_2.ActionQueue
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if 0 < L2_2 then
      L2_2 = pairs
      L3_2 = A1_2
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = A0_2
        L7_2 = A0_2.add_action
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L0_1.append_actions = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.IsInstanceOf
    L2_2 = A0_2
    L3_2 = G
    L3_2 = L3_2.ActionQueue
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = table
  L1_2 = L1_2.stable_sort
  L2_2 = A0_2._action_queue
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.challenge_sort_weight
    if not L2_3 then
      L2_3 = L0_1.ActionSortWeightEnum
      L2_3 = L2_3.Normal
    end
    L3_3 = A1_3.challenge_sort_weight
    if not L3_3 then
      L3_3 = L0_1.ActionSortWeightEnum
      L3_3 = L3_3.Normal
    end
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L0_1.sort_action_queue = L1_1
return L0_1
