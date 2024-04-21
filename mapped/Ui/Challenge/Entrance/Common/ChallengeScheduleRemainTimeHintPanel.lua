local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Challenge.Actions.ChallengeActionUtils"
L0_1(L1_1)
L0_1 = "TimeHintPanel"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeScheduleRemainTimeHintPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._challenge_group_data = nil
  A0_2._expire_callback = nil
  A0_2._expire_callback_self = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._challenge_group_data = A1_2
  A0_2._expire_callback = A2_2
  A0_2._expire_callback_self = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_group_name
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_remain_timer
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.PlayFromBegin
  L5_2 = A0_2._binder
  L5_2 = L5_2.animation
  L6_2 = L0_1
  L4_2(L5_2, L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_immediate_action
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A1_2
    A0_2._challenge_group_data = L0_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_group_name
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_remain_timer
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_active
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L0_1
    L0_3(L1_3, L2_3)
  end
  L7_2 = G
  L7_2 = L7_2.ChallengeActionUtils
  L7_2 = L7_2.ActionSortWeightEnum
  L7_2 = L7_2.ScheduleExpire
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  return L2_2
end
L1_1.create_hint_actions = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1.stop_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_group_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.GroupName
  L1_2(L2_2, L3_2)
end
L1_1._setup_group_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._on_expire
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._setup_remain_timer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._expire_callback
  L3_2 = A0_2._expire_callback_self
  L1_2(L2_2, L3_2)
end
L1_1._on_expire = L2_1
return L1_1
