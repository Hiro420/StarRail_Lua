local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionLevelTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionLevelTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityTelevisionMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L3_2 = L2_2
    L2_2 = L2_2.GetActivityTelevisionLastSelectedID
    L2_2 = L2_2(L3_2)
    A0_2._init_level_id = L2_2
  else
    A0_2._init_level_id = A1_2
  end
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._current_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityTelevisionEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_level_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityTelevisionQuestRewardTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_cumulative_rewards
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityTelevisionSeenUnlockLevel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._current_data
  L3_2 = L2_2
  L2_2 = L2_2.IsRevealed
  L2_2 = L2_2(L3_2)
  if L2_2 and not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_unlock_fadein
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllTelevisionData
  L1_2 = L1_2(L2_2)
  A0_2.data = L1_2
  L1_2 = A0_2._init_level_id
  if L1_2 == 0 then
    L1_2 = A0_2.data
    L1_2 = L1_2[0]
    L1_2 = L1_2.ID
    A0_2._init_level_id = L1_2
  end
  L1_2 = 0
  L2_2 = A0_2.data
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.data
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.ID
    L6_2 = A0_2._init_level_id
    if L5_2 == L6_2 then
      L6_2 = A0_2
      L5_2 = A0_2._set_current_data
      L7_2 = A0_2.data
      L7_2 = L7_2[L4_2]
      L8_2 = L4_2 + 1
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1.init_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._common_setup_view
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_activity_end = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_left_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_clear_reddot
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._common_setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.data
  L3_2 = L3_2[A2_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityTelevisionLevelTabPanel
    L9_2 = G
    L9_2 = L9_2.ActivityTelevisionLevelTabPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_click_callback
  L8_2 = A0_2._on_level_button
  L9_2 = A0_2
  L10_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._current_data
  L6_2 = L6_2.ID
  L7_2 = L3_2.ID
  if L6_2 == L7_2 then
    L7_2 = A0_2
    L6_2 = A0_2.try_check_level_panel
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  return L4_2
end
L0_1._on_level_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.data
  L4_2 = A1_2 - 1
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2._current_data
  if L4_2 then
    L4_2 = A0_2._current_data
    L4_2 = L4_2.ID
    L5_2 = L3_2.ID
    if L4_2 == L5_2 then
      return
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_current_data
  L6_2 = L3_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.try_check_level_panel
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_detail_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.save_selected_index
  L6_2 = L3_2.ID
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.save_navigation_target
  L6_2 = A2_2._binder
  L6_2 = L6_2.btn_root
  L6_2 = L6_2.gameObject
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_clear_reddot
  L4_2(L5_2)
end
L0_1._on_level_button = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.SetActivityTelevisionLastSelectedID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.save_selected_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityTelevisionLevelSeenID
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.ActivityTelevisionLevelSeenID
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2._current_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ActivityForceRefreshRedDot
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityTelevisionSeenUnlockLevel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L2_2 = L1_2
    L1_2 = L1_2.GetActivityTelevisionSeenUnlockLevel
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2._current_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_clear_reddot = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._current_data = A1_2
  L3_2 = A1_2.Row
  A0_2._current_data_row = L3_2
  A0_2._current_index = A2_2
end
L0_1._set_current_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2.current_check_panel
    if L2_2 ~= A1_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2.current_check_panel
  if L2_2 ~= nil then
    L2_2 = A0_2.current_check_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A1_2
  L2_2 = A1_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2.current_check_panel = A1_2
end
L0_1.try_check_level_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.data
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.setup_left_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L3_2 = A0_2._current_data
    L4_2 = A0_2._current_index
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_detail_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_data
  L4_2 = A0_2._current_index
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_timer
  L1_2(L2_2)
end
L0_1.setup_right_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.is_in_schedule
  if not L1_2 then
    L1_2 = A0_2.data
    L1_2 = L1_2[0]
    L1_2 = L1_2.ScheduleData
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.mono_remain_timer_reward
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTime
      L3_2 = A0_2.data
      L3_2 = L3_2[0]
      L3_2 = L3_2.ScheduleData
      L3_2 = L3_2.EndTimeDate
      L4_2 = A0_2._expire_call_back
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._setup_remain_timer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityTelevision.Reward.ActivityTelevisionQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L2_1
return L0_1
