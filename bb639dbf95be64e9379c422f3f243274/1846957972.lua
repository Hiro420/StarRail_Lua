local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BattleCollege.BattleCollegeLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattleCollege.BattleCollegeLevelPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._current_data = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_level_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level_list
  L1_2(L2_2)
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.group_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_battle_college_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._clear_current_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_group_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_level_list
  L3_2(L4_2)
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.check_by_level_id
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.check_by_list_index
    L5_2 = 0
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_btn_status
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._mark_as_seen
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.update_group_status
  L3_2 = A0_2.group_data
  L1_2(L2_2, L3_2)
end
L0_1.setup_group_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2.data = L1_2
  L1_2 = 0
  L2_2 = A0_2.group_data
  L2_2 = L2_2.BattleCollegeDataList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2.data
    L7_2 = A0_2.group_data
    L7_2 = L7_2.BattleCollegeDataList
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2.data
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Row
    L2_3 = L2_3.SortID
    L3_3 = A1_3.Row
    L3_3 = L3_3.SortID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._refresh_battle_college_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_challenge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.setup_btn_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.BattleCollegeSeenGroupIDs
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2.group_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.BattleCollegeSeenGroupIDs
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2.group_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L0_1._mark_as_seen = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.current_check_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.current_check_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_reward_dialog
  L1_2(L2_2)
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._current_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_detail_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.data
  if L2_2 == nil then
    return
  end
  L2_2 = 1
  L3_2 = ipairs
  L4_2 = A0_2.data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    if L8_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.check_by_list_index
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
end
L0_1.check_by_level_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_level_button
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.check_by_list_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.data
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_level_list = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._get_battle_college_data = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._current_data = nil
  A0_2._current_data_row = nil
  A0_2.current_check_panel = nil
end
L0_1._clear_current_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  A0_2._current_data = A1_2
  L2_2 = A1_2.Row
  A0_2._current_data_row = L2_2
end
L0_1._set_current_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.data
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BattleCollegeLevelPanel
    L9_2 = G
    L9_2 = L9_2.BattleCollegeLevelPanelBinder
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
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_click_callback
  L8_2 = A0_2._on_level_button
  L9_2 = A0_2
  L10_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_checked
  L8_2 = false
  L6_2(L7_2, L8_2)
  return L4_2
end
L0_1._on_level_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.data
  L3_2 = A1_2 + 1
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2._current_data
  if L3_2 then
    L3_2 = A0_2._current_data
    L3_2 = L3_2.ID
    L4_2 = L2_2.ID
    if L3_2 == L4_2 then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_current_data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.try_check_level_panel
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_detail_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._record_report_info
  L3_2(L4_2)
end
L0_1._on_level_button = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.UserObjectData
  if L3_2 ~= nil then
    L4_2 = A0_2.current_check_panel
    if L4_2 ~= L3_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L4_2 = A0_2.current_check_panel
  if L4_2 ~= nil then
    L4_2 = A0_2.current_check_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_checked
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L5_2 = L3_2
  L4_2 = L3_2.set_checked
  L6_2 = true
  L4_2(L5_2, L6_2)
  A0_2.current_check_panel = L3_2
end
L0_1.try_check_level_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.group_data
  L2_2 = L1_2
  L1_2 = L1_2.IsUnlock
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._report_info
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.EnterBattle
  if L2_2 ~= nil then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.SetAutoShowOnExitBattle
    L5_2 = A0_2.group_data
    L5_2 = L5_2.ID
    L6_2 = A0_2._current_data
    L6_2 = L6_2.ID
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2
    L3_2 = L2_2.TriggerBattleByBattleCollege
    L5_2 = A0_2._current_data
    L5_2 = L5_2.ID
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_challenge = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowMsTimeStamp
  A0_2._record_time_stamp = L1_2
end
L0_1._record_report_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._record_time_stamp
  if L1_2 == nil then
    return
  end
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.NowMsTimeStamp
  L3_2 = A0_2._record_time_stamp
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 / 1000
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelLeave
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = A0_2._current_data
  L4_2 = L4_2.ID
  L5_2 = L1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._report_info = L2_1
return L0_1
