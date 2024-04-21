local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideGymInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "AetherDivideTerminal_GymEnter1_FadeIn"
L2_1 = "AetherDivideTerminal_GymEnter1_Unlock"
L3_1 = "AetherDivideTerminal_GymEnter1_InProgress"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.star_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_star_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_play_fade_in_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_play_unlock_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_play_finished_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._gym_data_item = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetEnabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._gym_data_item = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetEnabled
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_reddot
  L4_2(L5_2)
  A0_2._play_finished_callback = A2_2
  A0_2._play_finished_callback_self = A3_2
  A0_2._need_play_finished = false
  A0_2._need_play_unlock = false
  L5_2 = A0_2
  L4_2 = A0_2._refresh_info
  L4_2(L5_2)
  L4_2 = A0_2._gym_data_item
  L5_2 = L4_2
  L4_2 = L4_2.ShouldPlayBadgeUnlockEffect
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_state
    L6_2 = true
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    A0_2._need_play_finished = true
  else
    L4_2 = A0_2._gym_data_item
    L5_2 = L4_2
    L4_2 = L4_2.IsNew
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._refresh_state
      L6_2 = false
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
      A0_2._need_play_unlock = true
    else
      L5_2 = A0_2
      L4_2 = A0_2._refresh
      L4_2(L5_2)
    end
  end
end
L0_1.setup_preview_for_anim = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_doing = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_doing
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_tracking
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_doing_state = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._play_anim_callback = A1_2
  A0_2._anim_end_callback = A2_2
  A0_2._anim_callback_self = A3_2
end
L0_1.register_anim_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetEnabled
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._play_anim_callback
  L3_2 = A0_2._anim_callback_self
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._play_anim_callback
  L3_2 = A0_2._anim_callback_self
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unfinished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._play_anim_callback
  L3_2 = A0_2._anim_callback_self
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._play_finished_callback
  L3_2 = A0_2._play_finished_callback_self
  L1_2(L2_2, L3_2)
end
L0_1.play_finished = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1.clear_selected_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherDivideGymNew"
  L4_2 = A0_2._gym_data_item
  L4_2 = L4_2.GymID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gym_data_item
  L2_2 = L1_2
  L1_2 = L1_2.IsUnlock
  L1_2 = L1_2(L2_2)
  A0_2._is_unlock = L1_2
  L1_2 = A0_2._gym_data_item
  L2_2 = L1_2
  L1_2 = L1_2.IsBadgeUnlock
  L1_2 = L1_2(L2_2)
  A0_2._is_finished = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_state
  L3_2 = A0_2._is_unlock
  L4_2 = A0_2._is_finished
  L5_2 = A0_2._gym_data_item
  L6_2 = L5_2
  L5_2 = L5_2.GetScheduleData
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_unlock_gym_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gym_data_item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_locked_gym_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._gym_data_item
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._refresh_info = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icon
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2 or L6_2
  if A1_2 then
    L6_2 = not A2_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_locked_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_star_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_finished
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unfinished
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unlock_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_locked_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2
  L4_2(L5_2, L6_2)
  if A1_2 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_star_list
    L4_2(L5_2)
  else
    if A3_2 ~= nil then
      L5_2 = A3_2
      L4_2 = A3_2.IsInSchedule
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_remain_timer
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.mono_remain_timer
        L5_2 = L4_2
        L4_2 = L4_2.SetTargetTimeByTimeStamp
        L6_2 = A3_2.BeginTimeStamp
        L7_2 = A0_2._on_time_expire
        L8_2 = A0_2
        L9_2 = 2
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_remain_timer
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
  if A2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIAnimationUtils
    L4_2 = L4_2.PlayToEnd
    L5_2 = A0_2._binder
    L5_2 = L5_2.anim_root
    L6_2 = L3_1
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L5_2 = not A1_2
  L4_2.IsInFakeDisableState = L5_2
end
L0_1._refresh_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gym_data_item
  L2_2 = L1_2
  L1_2 = L1_2.GetStarCount
  L1_2 = L1_2(L2_2)
  A0_2._finish_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.star_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 3
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_star_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonSubStarInfoPanel
    L8_2 = G
    L8_2 = L8_2.CommonSubStarInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._finish_count
  if L5_2 <= L6_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_26
    end
  end
  L5_2 = 0
  ::lbl_26::
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_star_item_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_preview_for_anim
  L3_2 = A0_2._gym_data_item
  L1_2(L2_2, L3_2)
end
L0_1._on_time_expire = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._anim_end_callback
  L3_2 = A0_2._anim_callback_self
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._need_play_finished
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.play_finished
    L1_2(L2_2)
  else
    L1_2 = A0_2._need_play_unlock
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.play_unlock
      L1_2(L2_2)
    end
  end
  A0_2._need_play_finished = false
  A0_2._need_play_unlock = false
end
L0_1._on_play_fade_in_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._anim_end_callback
  L3_2 = A0_2._anim_callback_self
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._gym_data_item
  L1_2(L2_2, L3_2)
end
L0_1._on_play_unlock_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._anim_end_callback
  L3_2 = A0_2._anim_callback_self
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gym_data_item
  L2_2 = L1_2
  L1_2 = L1_2.RecordBadgeUnlockEffectPlayed
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._gym_data_item
  L1_2(L2_2, L3_2)
end
L0_1._on_play_finished_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportUIButtonClick
    L2_2 = A0_2._owner
    L2_2 = L2_2.__name
    L3_2 = A0_2.__name
    L4_2 = "AetherGymBtn"
    L5_2 = A0_2._gym_data_item
    L5_2 = L5_2.GymID
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2._owner
    L5_2 = L5_2.guid
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = A0_2._gym_data_item
    L2_2 = L1_2
    L1_2 = L1_2.ClearNewStatus
    L1_2(L2_2)
    L1_2 = A0_2._is_doing
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_async_show
      L2_2 = "Ui.AetherDivide.AetherGym.AetherDivideGymEntryPage"
      L3_2 = A0_2._gym_data_item
      L1_2(L2_2, L3_2)
      return
    end
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.AetherDivideModule
    L3_2 = L1_2
    L2_2 = L1_2.GetCurAetherDivideMainMissionData
    L2_2 = L2_2(L3_2)
    L3_2 = L1_2.GymData
    L4_2 = L3_2
    L3_2 = L3_2.GetRelatedGymDataItemByMission
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._gym_data_item
    L5_2 = L4_2
    L4_2 = L4_2.IsBadgeUnlock
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._gym_data_item
    L5_2 = L3_2 == L5_2
    if L5_2 then
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = "Ui.AetherDivide.AetherGym.AetherDivideGymEntryPage"
      L8_2 = A0_2._gym_data_item
      L6_2(L7_2, L8_2)
      return
    end
    if not L4_2 then
      L6_2 = G
      L6_2 = L6_2.MissionUtils
      L6_2 = L6_2.common_jump_to_mission_by_main_mission
      L7_2 = L2_2
      L6_2(L7_2)
    else
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.ConfirmDialogUtil
      L6_2 = L6_2.ShowCustomOkCancelFuncConfirmDialog
      function L7_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = G
          L1_3 = L1_3.MissionUtils
          L1_3 = L1_3.common_jump_to_mission_by_main_mission
          L2_3 = L2_2
          L1_3(L2_3)
        else
          L1_3 = G
          L1_3 = L1_3.UIManager
          L1_3 = L1_3.load_and_async_show
          L2_3 = "Ui.AetherDivide.AetherGym.AetherDivideGymEntryPage"
          L3_3 = A0_2._gym_data_item
          L1_3(L2_3, L3_3)
        end
      end
      L6_2 = L6_2(L7_2)
      L6_2.TextIDContent = "UIText_AetherDivide_Activity_MissionUnfinished"
      L6_2.TextIDCancel = "UIText_AetherDivide_Gym_EnterGym"
      L6_2.TextIDOK = "UIText_AetherDivide_Common_ToMission"
    end
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UICenterToastMessageTextID
    L4_2 = A0_2
    L3_2 = A0_2._get_unlock_desc
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._on_btn_root = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gym_data_item
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.IsInSchedule
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = "UIText_AetherDivide_Activity_UnlockCondition_Time"
    return L2_2
  end
  L2_2 = "UIText_AetherDivide_Activity_UnlockCondition_Progress"
  return L2_2
end
L0_1._get_unlock_desc = L4_1
return L0_1
