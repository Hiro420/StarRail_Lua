local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Reward.ActivityFeverTimeQuestPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Reward.FeverTimeQuestRewardTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Reward.FeverTimeRewardInfoRow"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeQuestPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ActivityFeverTimeModule
L4_1 = 5001001
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueCommonExcelTable
L5_1 = L5_1.GetData
L6_1 = "Activity_Fever_Time_Biggest_Reward"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = "UIText_ChallengeActivity_HitCount"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeQuestPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._quest_group_row_list = L1_2
  L1_2 = {}
  A0_2._sorted_quest_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_rows
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._final_quest_data = L1_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_zoom_gamepad_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
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
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
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
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_first_quest_target
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.Action3
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_reward_panel
      L2_2 = L2_2.gameObject
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  return L1_2
end
L0_1._is_can_to_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_zoom_gamepad_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_special_zoom_gamepad_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_tab_panel
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
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
L0_1._get_first_quest_target = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_get_tip
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_get_btn
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_reward_tip
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_reward_btn
  L2_2.ActionEnabled = A1_2
end
L0_1._setup_special_zoom_gamepad_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeQuestExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._quest_group_row_list
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._quest_group_row_list
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_fever_time_id_by_quest_group_id
    L4_3 = A0_3.QuestGroupID
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_fever_time_id_by_quest_group_id
    L5_3 = A1_3.QuestGroupID
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L2_2(L3_2, L4_2)
end
L0_1._init_tab_rows = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_detail
  L4_2 = A0_2._on_btn_reward_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_icon
  L4_2 = A0_2._on_btn_reward_icon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_new_day_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_tab_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleDataByActivityModuleID
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.remain_timer
      L3_2 = L2_2
      L2_2 = L2_2.SetTargetTime
      L4_2 = L1_2.EndTimeDate
      L5_2 = A0_2._expire_call_back
      L6_2 = A0_2
      L7_2 = 2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_tabs
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_final_quest_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityFeverTimeQuestRewardTab"
  L5_2 = L5_1
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_final_reward_red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_has_reward
  L4_2 = L5_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_final_reward
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "CommonRewardPage_Remind"
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_default_tab_panel
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.set_selected
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_quest_tabs
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_normal_quest_view
  L4_2 = A0_2._quest_data
  L5_2 = A0_2._is_unlock_quests
  L6_2 = A0_2._unlock_time
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_final_quest_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_reward_dialog
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_quest_get_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_normal_quest_view
  L3_2 = A0_2._quest_data
  L4_2 = A0_2._is_unlock_quests
  L5_2 = A0_2._unlock_time
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_new_day_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_group_row_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_tab
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._refresh_quest_tabs = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._final_quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_FeverTime_Biggest_Reward_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_reward_sub_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._final_quest_data
  L3_2 = L3_2.DataRow
  L3_2 = L3_2.QuestTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._final_quest_data
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemDataFromReward
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2[1]
  L3_2 = L3_2.ConfigID
  A0_2._final_reward_item_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2[1]
  L4_2 = L4_2.ConfigID
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_reward_icon
  L7_2 = L3_2.ItemFigureIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_reward_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L6_1
  L7_2 = L2_2[1]
  L7_2 = L7_2.Count
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._final_quest_data
  L6_2 = L6_2.Progress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._final_quest_data
  L6_2 = L6_2.TotalProgress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_reward_progress
  L5_2 = A0_2._final_quest_data
  L5_2 = L5_2.Progress
  L5_2 = 1.0 * L5_2
  L6_2 = A0_2._final_quest_data
  L6_2 = L6_2.TotalProgress
  L5_2 = L5_2 / L6_2
  L4_2.fillAmount = L5_2
  L4_2 = A0_2._final_quest_data
  L4_2 = L4_2.Status
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_got
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.CMOFEAFMGAK
  L7_2 = L4_2 == L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_finish_cover
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.CMOFEAFMGAK
  L7_2 = L4_2 == L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_in_progress
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.KBBBFCIHJPC
  L7_2 = L4_2 == L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_get
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = CS
  L7_2 = L7_2.LEOGBBOPKKO
  L7_2 = L7_2.JKFPIINHGPD
  L7_2 = L4_2 == L7_2
  L5_2(L6_2, L7_2)
end
L0_1._refresh_final_quest_view = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._is_unlock_quests = A2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A2_2
  L4_2(L5_2, L6_2)
  A0_2._quest_data = A1_2
  L4_2 = A0_2._is_unlock_quests
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.QuestUtils
    L4_2 = L4_2.sort_quest_datas_stabled
    L5_2 = A0_2._quest_data
    L4_2 = L4_2(L5_2)
    A0_2._sorted_quest_data = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.QuestUtils
    L4_2 = L4_2.sort_quest_datas_stabled
    L5_2 = A0_2._quest_data
    L4_2 = L4_2(L5_2)
    A0_2._sorted_quest_data = L4_2
    A0_2._unlock_time = A3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.unlock_timer
    L5_2 = L4_2
    L4_2 = L4_2.SetTargetTimeByTimeStamp
    L6_2 = A3_2
    L7_2 = A0_2._tab_expire_call_back
    L8_2 = A0_2
    L9_2 = 2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_quest
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._sorted_quest_data
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_quest
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_quest
  L5_2 = L4_2
  L4_2 = L4_2.PlayFadeIn
  L4_2(L5_2)
end
L0_1._refresh_normal_quest_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.FeverTimeQuestRewardTabPanel
    L8_2 = G
    L8_2 = L8_2.FeverTimeQuestRewardTabPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._quest_group_row_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_btn_callback
  L7_2 = A0_2
  L8_2 = A0_2._on_quest_tab_click
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_tab_change = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FeverTimeRewardInfoRow
    L8_2 = G
    L8_2 = L8_2.FeverTimeRewardInfoRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_by_quest
  L7_2 = A0_2._sorted_quest_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._is_unlock_quests
  L9_2 = true
  L10_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_quest_change = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2._cur_select_tab_panel
  if L5_2 == A4_2 then
    return
  end
  L5_2 = A0_2._cur_select_tab_panel
  if L5_2 ~= nil then
    L5_2 = A0_2._cur_select_tab_panel
    L6_2 = L5_2
    L5_2 = L5_2.set_selected
    L7_2 = false
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
  end
  A0_2._cur_select_tab_panel = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_normal_quest_view
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_quest_tab_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._expire_call_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_unlock_quests = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._sorted_quest_data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._tab_expire_call_back = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_list
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.RewardDialog"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._show_reward_dialog = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_show_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_tab
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_default_tab_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._quest_group_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._check_has_reward
    L8_2 = L5_2.QuestGroupID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L4_2 - 1
      return L6_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_default_show_index = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L3_1.RedDotQuestSeries
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L3_1.RedDotQuestSeries
    L7_2 = L7_2[L6_2]
    if A1_2 == L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_has_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._final_quest_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_get = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._final_reward_item_id
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_btn_reward_detail = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._final_reward_item_id
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_reward_icon = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityFeverTimeConfigExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.QuestGroupID
    if L8_2 == A1_2 then
      L8_2 = L7_2.FeverTimeID
      return L8_2
    end
  end
  L3_2 = 1
  return L3_2
end
L0_1._get_fever_time_id_by_quest_group_id = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
return L0_1
