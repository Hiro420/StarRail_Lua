local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.BoxingClub.BoxingClubUnlockTaskPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.BoxingClub.BoxingClubUnlockTaskPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.BoxingClubActivityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BoxingClubModule
L3_1 = 1010204
L4_1 = 227
L5_1 = "BoxingClubActivity_Unlock_Missions"
L6_1 = "BoxingClubActivity_PrePhoneMessage_SubmissionID"
L7_1 = "BoxingClubActivity_PrePhoneMessage_GroupID"
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2.parent_page = A1_2
  A0_2.finish_count = 0
  A0_2._promise_end_count = 0
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = {}
  A0_2.mission_data = L4_2
  L4_2 = {}
  A0_2.mission_btn_list = L4_2
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quest
  L4_2 = A0_2._on_btn_quest
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_explain
  L4_2 = A0_2._on_btn_explain
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_mission_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityBoxingClubQuestEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_quest_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityBoxingClubAllChallenge"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._is_custom_loaded = true
end
L0_1._custom_on_load = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
  A0_2._reward_items = nil
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.on_left_stick_button_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone1
    if A1_2 == L2_2 then
      L2_2 = A0_2.parent_page
      L3_2 = L2_2
      L2_2 = L2_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "Menu_Confirm"
      L6_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2.finish_count
    L3_2 = A0_2.mission_id
    L3_2 = #L3_2
    if L2_2 ~= L3_2 then
      L2_2 = true
      return L2_2
    end
  end
end
L0_1._is_can_to_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_list
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
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._config_ids = L1_2
end
L0_1._on_added = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_panel_prefab_path_by_activity_data
  L3_2 = A0_2._activity_data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_custom_bind
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_custom_bind = true
  L3_2 = A0_2
  L2_2 = A0_2._custom_on_load
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.TagDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.EndTimeDate
  L5_2 = A0_2._expire_call_back
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.TitleName
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.SortedDisplayItemList
  L2_2 = L2_2(L3_2)
  A0_2._reward_items = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_config_ids
  L2_2(L3_2)
  A0_2.finish_count = 0
  A0_2._promise_count = 0
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission
  L2_2(L3_2)
end
L0_1._on_select = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_items
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RewardItemIconLite
  L8_2 = G
  L8_2 = L8_2.RewardItemIconLiteBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_items
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = false
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.BoxingClubUnlockTaskPanel
  L8_2 = G
  L8_2 = L8_2.BoxingClubUnlockTaskPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2.mission_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_callback
  L7_2 = A0_2._on_mission_click
  L8_2 = A0_2
  L9_2 = A0_2.mission_data
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2._on_mission_select
  L8_2 = A0_2
  L9_2 = A0_2.mission_data
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_mission_changed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._init_mission_data
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionDataWithPromise
  L3_2 = A0_2.message_submission_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3
    L1_3 = A0_3.Status
    A0_2.message_submission_status = L1_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2.mission_id
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetMainMissionDataWithPromise
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2
    L6_2 = L6_2.ThenLuaActionOneParam
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.receive_main_mission_data_callback
      L3_3 = L4_2
      L4_3 = A0_3
      L1_3(L2_3, L3_3, L4_3)
    end
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_mission = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.mission_data
  L3_2[A1_2] = A2_2
  L3_2 = A2_2.IsFinish
  if L3_2 then
    L3_2 = A0_2.finish_count
    L3_2 = L3_2 + 1
    A0_2.finish_count = L3_2
  end
  L3_2 = A0_2._promise_count
  L3_2 = L3_2 + 1
  A0_2._promise_count = L3_2
  L3_2 = A0_2._promise_count
  L4_2 = A0_2.mission_id
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.finish_all_promise
    L3_2(L4_2)
  end
end
L0_1.receive_main_mission_data_callback = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.mission_id = L1_2
  L1_2 = {}
  A0_2.sort_support_array = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L5_1
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L6_1
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueClientExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L7_1
  L3_2 = L3_2(L4_2)
  if L1_2 ~= nil then
    L4_2 = L1_2.Value
    if L4_2 ~= nil and L2_2 ~= nil and L3_2 ~= nil then
      goto lbl_36
    end
  end
  do return end
  ::lbl_36::
  L4_2 = L1_2.Value
  L4_2 = L4_2.ArrayValue
  L5_2 = 0
  L6_2 = L4_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.mission_id
    L11_2 = L4_2[L8_2]
    L11_2 = L11_2.IntValue
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.sort_support_array
    L10_2 = L4_2[L8_2]
    L10_2 = L10_2.IntValue
    L11_2 = A0_2.mission_id
    L11_2 = #L11_2
    L9_2[L10_2] = L11_2
  end
  L5_2 = L2_2.Value
  L5_2 = L5_2.IntValue
  A0_2.message_submission_id = L5_2
  L5_2 = L3_2.Value
  L5_2 = L5_2.IntValue
  A0_2.message_group_id = L5_2
end
L0_1._init_mission_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.sort_mission_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.finish_count
  L4_2 = A0_2.mission_id
  L4_2 = #L4_2
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_go
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.finish_count
  L4_2 = A0_2.mission_id
  L4_2 = #L4_2
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.finish_count
  L4_2 = A0_2.mission_id
  L4_2 = #L4_2
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_mission_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.mission_id
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = A0_2.mission_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L4_2 + 1
    L7_2 = A0_2.mission_data
    L7_2 = #L7_2
    if L6_2 <= L7_2 then
      L6_2 = L5_2.IsFinish
      if not L6_2 then
        L6_2 = A0_2.mission_data
        L7_2 = L4_2 + 1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.IsFinish
        if L6_2 then
          L6_2 = A0_2._binder
          L6_2 = L6_2.scroll_mission_list
          L7_2 = L6_2
          L6_2 = L6_2.GetShownItemByItemIndex
          L8_2 = L4_2 - 1
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = L6_2.UserObjectData
          L9_2 = L7_2
          L8_2 = L7_2.clear_navigation
          L8_2(L9_2)
          break
        end
      end
    end
  end
end
L0_1.finish_all_promise = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2.mission_data
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.IsStart
    L3_3 = A1_3.IsStart
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsStart
      return L2_3
    else
      L2_3 = A0_3.IsFinish
      L3_3 = A1_3.IsFinish
      if L2_3 ~= L3_3 then
        L2_3 = A1_3.IsFinish
        return L2_3
      else
        L2_3 = A0_2.sort_support_array
        L3_3 = A0_3.ID
        L2_3 = L2_3[L3_3]
        L3_3 = A0_2.sort_support_array
        L4_3 = A1_3.ID
        L3_3 = L3_3[L4_3]
        L2_3 = L2_3 < L3_3
        return L2_3
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1.sort_mission_data = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.IsStart
  if L2_2 then
    L2_2 = A0_2.parent_page
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.parent_page
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_mission_select = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.IsStart
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = "UIText_BoxingClub_Activity_PreMission"
    L4_2 = A0_2.mission_data
    L6_2 = A0_2
    L5_2 = A0_2.get_pre_unfinished_mission_index
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.NameStr
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageString
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L2_2 = A0_2.message_submission_status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SubMissionState
  L3_2 = L3_2.Finish
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.Goto
    L3_2 = 700
    L4_2 = {}
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MainMissionType
    L5_2 = L5_2.None
    L5_2 = #L5_2
    L6_2 = A1_2.ID
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.Goto
    L3_2 = 4000
    L4_2 = {}
    L5_2 = A0_2.message_group_id
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_mission_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = ipairs
  L4_2 = A0_2.mission_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.mission_data
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.ID
    L9_2 = A1_2.ID
    if L8_2 == L9_2 then
      return L2_2
    end
    L8_2 = L7_2.IsFinish
    if not L8_2 then
      L2_2 = L6_2
    end
  end
  L3_2 = 1
  return L3_2
end
L0_1.get_pre_unfinished_mission_index = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "TeleportBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = L4_1
  L1_2(L2_2)
end
L0_1._on_btn_go = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BoxingClub.BoxingClubQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_quest = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.show_introduce
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.TagDesc
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.IntroDesc
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_explain = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityRefreshAll
  L1_2(L2_2)
end
L0_1._expire_call_back = L8_1
return L0_1
