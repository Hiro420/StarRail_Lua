local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.ActivityFeverTimeMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.ActivityFeverTimeLevelItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityFeverTimeMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityFeverTimeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = 5001001
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityFeverTimeMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._level_config_row_list = L1_2
  L1_2 = {}
  A0_2._sort_level_config_row_list = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._show_fever_time_id = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_auto_focus_level_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_level_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityFeverTimeQuestRewardTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_cumulative_rewards
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_level_config_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._level_config_row_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_auto_focus_level_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = L3_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.IsInSchedule
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_reward
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.remain_timer
      L4_2 = L3_2
      L3_2 = L3_2.SetTargetTime
      L5_2 = L2_2.EndTimeDate
      L6_2 = A0_2._expire_call_back
      L7_2 = A0_2
      L8_2 = 2
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reward
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._expire_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._level_config_row_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityFeverTimeConfigExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._level_config_row_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._sort_level_config_row_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._level_config_row_list
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.FeverTimeID
    L3_3 = A1_3.FeverTimeID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
end
L0_1._generate_level_config_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityFeverTimeLevelItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityFeverTimeLevelItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._level_config_row_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_level_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityFeverTime.Reward.ActivityFeverTimeQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._show_fever_time_id
  if L1_2 then
    L1_2 = ipairs
    L2_2 = A0_2._level_config_row_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.FeverTimeID
      L7_2 = A0_2._show_fever_time_id
      if L6_2 == L7_2 then
        L6_2 = L4_2 - 1
        return L6_2
      end
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._level_config_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._check_is_un_lock
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._check_has_seen
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L6_2 = L4_2 - 1
        return L6_2
      end
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._level_config_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._check_is_un_lock
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._check_is_challenged
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L6_2 = L4_2 - 1
        return L6_2
      end
    end
  end
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = A0_2._level_config_row_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._check_is_un_lock
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L1_2 = L5_2
    end
  end
  L2_2 = L1_2 - 1
  return L2_2
end
L0_1._get_auto_focus_level_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = A1_2.ActivityModuleID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.IsInSchedule
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L0_1._check_is_un_lock = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetHistoryBattleRank
  L4_2 = A1_2.FeverTimeID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityRank
  L3_2 = L3_2.None
  L3_2 = L2_2 ~= L3_2
  return L3_2
end
L0_1._check_is_challenged = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_challenged
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.CheckHasSeenLevel
    L4_2 = A1_2.FeverTimeID
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  end
end
L0_1._check_has_seen = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
