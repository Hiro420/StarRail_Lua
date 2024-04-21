local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Actions.ChallengeActionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeGroupBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2.data = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A1_2.Row
  L5_2 = L5_2.WorldID
  L2_2(L3_2, L4_2, L5_2)
  A0_2.data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon_normal
  L5_2 = A1_2.Row
  L5_2 = L5_2.TabPicPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon_select
  L5_2 = A1_2.Row
  L5_2 = L5_2.TabPicSelectPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_reddot
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_status
  L1_2(L2_2)
end
L0_1.refresh_btn_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.data
  L1_2 = L1_2.IsComplete
  if L1_2 then
    L1_2 = A0_2.data
    L2_2 = L1_2
    L1_2 = L1_2.HasStarRewardNotTaken
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  A0_2._is_finish = L1_2
  L1_2 = A0_2.data
  L1_2 = L1_2.IsScheduleChallenge
  if L1_2 then
    L1_2 = A0_2.index
    L1_2 = 1 < L1_2
  end
  A0_2._is_time_limit = L1_2
  L1_2 = A0_2.data
  L1_2 = L1_2.IsScheduleChallenge
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._check_schedule_data_valid
    L3_2 = A0_2.data
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = not L1_2
    A0_2.is_lock = L1_2
  else
    L1_2 = A0_2.data
    L2_2 = L1_2
    L1_2 = L1_2.IsAvailable
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
    A0_2.is_lock = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_lock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish
  if L3_2 then
    L3_2 = A0_2.is_lock
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_remain_time_hint
  L1_2(L2_2)
end
L0_1._setup_btn_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.ChallengeUtils
  L2_2 = L2_2.is_schedule_challenge_group_valid
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._check_schedule_data_valid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChallengeMazeAll"
  L4_2 = A0_2.data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.show_fake_lock = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_lock
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_finish
  if L3_2 then
    L3_2 = A0_2.is_lock
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_time_limit
  if L3_2 then
    L3_2 = A0_2.is_lock
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
end
L0_1.show_unlock_anime = L2_1
function L2_1(A0_2, A1_2)
  A0_2.index = A1_2
end
L0_1.setup_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ChallengeActionUtils
  L1_2 = L1_2.create_anim_action
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_lock
  L3_2 = "BtnAbyssSwitchUnlock"
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.ActionSortWeightEnum
  L4_2 = L4_2.ResidentUnlock
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.create_btn_unlock_anim_action = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_splash
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_splash
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2 or L4_2
    if not A1_2 then
      L4_2 = false
    end
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_splash = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2.data
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.EndTimeDate
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_time_limit
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "TabChallengeStory_TimeRemain"
  L1_2(L2_2, L3_2)
end
L0_1.show_remain_time_hint_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_time_limit
  if L1_2 then
    L1_2 = A0_2.is_lock
    L1_2 = not L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_time_limit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_time_limit
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "TabChallengeStory_NoTimeRemain"
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh_remain_time_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_time_limit = L2_1
return L0_1
