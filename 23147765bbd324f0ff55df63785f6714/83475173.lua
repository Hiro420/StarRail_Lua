local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.ActivityRewardUtils
L1_1 = G
L1_1 = L1_1.QuestUtils
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardMainPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_group_list
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_tab_group_list
    L2_2 = L1_2
    L1_2 = L1_2.register_click_callback
    L3_2 = A0_2._on_tab_group_item_click
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_tab_item_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_hint
  L2_2 = L1_2
  L1_2 = L1_2.register_timer_expire_callback
  L3_2 = A0_2._on_remain_timer_tab_hint_expire
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._activity_reward_id = A1_2
  A0_2._tab_group_red_dot_name = A2_2
  A0_2._tab_red_dot_name = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._prepare_data
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_remain_timer
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_tab_group_list
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_final_quest
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._init_ui_navigation
  L4_2(L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._expire_cbk = A1_2
  A0_2._expire_cbk_self = A2_2
end
L2_1.register_expire_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._expire_cbk
  L3_2 = A0_2._expire_cbk_self
  L1_2(L2_2, L3_2)
end
L2_1._on_remain_timer_page_title_expire = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_tab_id
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_tab_id
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_list
  L3_2 = A0_2._cur_tab_id
  L1_2(L2_2, L3_2)
end
L2_1._on_remain_timer_tab_hint_expire = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_tab_group_id
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_tab_group_id
    if L2_2 == A1_2 then
      return
    end
  end
  A0_2._cur_tab_group_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_tab_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_tab_group_item_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_tab_id
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_tab_id
    if L2_2 == A1_2 then
      return
    end
  end
  A0_2._cur_tab_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_quest_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tab_hint
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_tab_item_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1.get_reward_config_row
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._reward_config_row = L2_2
  L2_2 = L0_1.get_tab_group_rows_by_reward_config_row
  L3_2 = A0_2._reward_config_row
  L2_2 = L2_2(L3_2)
  A0_2._tab_group_rows = L2_2
  L2_2 = L0_1.get_tab_group_2_tab_rows_by_tab_group_rows
  L3_2 = A0_2._tab_group_rows
  L2_2 = L2_2(L3_2)
  A0_2._tab_group_2_tab_rows = L2_2
  L2_2 = L0_1.get_tab_2_quest_data_arr_by_tab_group_2_tab_rows
  L3_2 = A0_2._tab_group_2_tab_rows
  L2_2 = L2_2(L3_2)
  A0_2._tab_2_quest_data_arr = L2_2
  L2_2 = A0_2._reward_config_row
  L2_2 = L2_2.FinalRewardQuest
  if 0 < L2_2 then
    L2_2 = L1_1.get_quest_data
    L3_2 = A0_2._reward_config_row
    L3_2 = L3_2.FinalRewardQuest
    L2_2 = L2_2(L3_2)
    A0_2._final_quest_data = L2_2
  end
end
L2_1._prepare_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._reward_config_row
  L1_2 = L1_2.ActivityModule
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ScheduleModule
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_remain_timer_page_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_timer_page_title
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = L2_2.EndTimeStamp
    L6_2 = A0_2._on_remain_timer_page_title_expire
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_remain_timer_page_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    if 0 < L1_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_remain_timer_page_title_expire
      L3_2(L4_2)
    end
  end
end
L2_1._setup_remain_timer = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_group_list
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_group_rows
    L1_2 = #L1_2
    if not (L1_2 <= 1) then
      goto lbl_28
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_group_list
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_tab_group_list
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._tab_group_rows
  L1_2 = #L1_2
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_tab_list
    L3_2 = A0_2._tab_group_rows
    L3_2 = L3_2[1]
    L3_2 = L3_2.QuestTabGroupID
    L1_2(L2_2, L3_2)
  end
  do return end
  ::lbl_28::
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_group_list
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tab_group_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._tab_group_rows
  L4_2 = A0_2._tab_group_red_dot_name
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_tab_group_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tab_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._tab_group_2_tab_rows
  L4_2 = L4_2[A1_2]
  L5_2 = A0_2._tab_red_dot_name
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_navigation_target
  L2_2(L3_2)
end
L2_1._setup_tab_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_quest_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._tab_2_quest_data_arr
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
end
L2_1._setup_quest_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tab_hint
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityQuestRewardDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.ActivityModuleID
  if 0 < L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.ScheduleModule
    L4_2 = L3_2
    L3_2 = L3_2.GetScheduleDataByActivityModuleID
    L5_2 = L2_2.ActivityModuleID
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.IsNotStart
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.panel_tab_hint
        L5_2 = L4_2
        L4_2 = L4_2.safe_set_active
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.panel_tab_hint
        L5_2 = L4_2
        L4_2 = L4_2.setup_schedule_locked
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        return
      end
    end
  end
  L3_2 = L2_2.UnlockQuest
  if 0 < L3_2 then
    L3_2 = L1_1.get_quest_data
    L4_2 = L2_2.UnlockQuest
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = L1_1.is_quest_finished
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.panel_tab_hint
        L5_2 = L4_2
        L4_2 = L4_2.safe_set_active
        L6_2 = true
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.panel_tab_hint
        L5_2 = L4_2
        L4_2 = L4_2.setup_lock_quest_view
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        return
      end
    end
  end
end
L2_1._setup_tab_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._final_quest_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_final_quest
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_final_quest
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_final_quest
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._final_quest_data
  L1_2(L2_2, L3_2)
end
L2_1._setup_final_quest = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.to_prev_zoom
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._reset_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_tab_list
    L3_2 = L2_2
    L2_2 = L2_2.try_move_to_cur_selected_item
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_tab_list
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.panel_quest_list
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_short_cut_hint_panel_by_zone
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_short_cut_hint_panel_by_zone
  L4_2 = A0_2
  L3_2 = A0_2.get_cur_zoom
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_leave_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1._setup_short_cut_hint_panel_by_zone = L3_1
return L2_1
