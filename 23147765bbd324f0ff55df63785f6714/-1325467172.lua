local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_AvatarRewardGet"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limited_reward
  L4_2 = A0_2._on_btn_limit_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_select
  L4_2 = A0_2._on_btn_avatar_select_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gampad_reward
  L4_2 = A0_2._on_btn_gampad_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_limited_reward
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_limit_reward_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_avatar_select
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_avatar_reward_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._activity_data = A1_2
  A0_2._show_remain_time = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_data
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsResidentPanel
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._activity_data
    L1_2 = L1_2 ~= nil and L1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_limited_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_navitgation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._show_remain_time
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_time_reward
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.EndTimeStamp
    L4_2 = A0_2._on_timer_time_out
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_limited_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._show_remain_time
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_time_avatar
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.EndTimeStamp
    L4_2 = nil
    L5_2 = nil
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.is_avatar_reward_taken
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_avatar_select
  L2_2.IsInFakeDisableState = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_reward_taken
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_avatar_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_avatar_select
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limited_reward
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._spe_room_btn_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._spe_room_btn_table
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_navitgation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "DrinkMakerTimeLimitRewardEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_limited_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "DrinkMakerAvatarRewardEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_avatar_select
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_reward
  L1_2(L2_2)
end
L0_1._on_quest_updated = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_timer_time_out = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsResidentPanel
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_special_zoom_navigation_target
    L3_2 = A0_2._spe_room_btn_table
    L3_2 = L3_2[1]
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_gampad_reward = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.show_time_limit_reward_page
  L1_2()
end
L0_1._on_btn_limit_reward_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_avatar_select
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.DrinkMakerBarUtils
  L1_2 = L1_2.show_avatar_select_dialog
  L1_2()
end
L0_1._on_btn_avatar_select_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_special_zoom_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_limited_reward
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_limit_reward_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_special_zoom_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_select
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_avatar_reward_select = L2_1
return L0_1
