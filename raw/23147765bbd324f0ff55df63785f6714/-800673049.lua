local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.TabButton.CommonTabButton1A"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.TabButton.CommonTabButton1ABinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryGroupTabItem"
L2_1 = G
L2_1 = L2_1.CommonTabButton1A
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.is_time_limited
  L2_2 = A0_2.time_limited_active
  if L2_2 == L1_2 then
    return
  end
  A0_2.time_limited_active = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_time_limited
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_time_limited
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "TabChallengeStory_NoTimeRemain"
  L2_2(L3_2, L4_2)
end
L0_1.set_time_limited = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsComplete
  if L3_2 then
    L3_2 = A0_2._challenge_group_data
    L4_2 = L3_2
    L3_2 = L3_2.HasStarRewardNotTaken
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
end
L0_1.set_complete = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._challenge_group_data = A1_2
  A0_2.is_time_limited = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.set_lock
  L6_2 = A1_2
  L5_2 = A1_2.IsFirstChallengeUnlock
  L5_2 = L5_2(L6_2)
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_complete
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_time_limited
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_icon
  L5_2 = A1_2.Row
  L5_2 = L5_2.TabPicPath
  L6_2 = A1_2.Row
  L6_2 = L6_2.TabPicSelectPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.bind_red_dot
  L5_2 = "ChallengeMazeAll"
  L6_2 = A1_2.ID
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._add_notify_handler
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.TakeChallengeCumulativeReward
  L6_2 = L0_1._on_quest_get_reward
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_color
  L3_2(L4_2)
end
L0_1.setup_group_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.StoryThemeConfigRow
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2.ThemeMainColor
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L1_2.ThemeSubColor2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_main_color_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.UIColorUtils
    L9_2 = L9_2.GetColorWithOriginAlpha
    L10_2 = L2_2
    L11_2 = L8_2.color
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.color = L9_2
  end
  L4_2 = pairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_sub_color2_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.UIColorUtils
    L9_2 = L9_2.GetColorWithOriginAlpha
    L10_2 = L3_2
    L11_2 = L8_2.color
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.color = L9_2
  end
end
L0_1._setup_color = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_group_data
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_complete
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_time_limited
    L1_2(L2_2)
  end
end
L0_1._on_quest_get_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limited
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_time_limited
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "TabChallengeStory_TimeRemain"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.EndTimeDate
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer_PC
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.EndTimeDate
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.play_time_limited_anim = L1_1
return L0_1
