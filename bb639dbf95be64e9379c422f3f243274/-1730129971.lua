local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnKeyPointRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMissionTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMissionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnMissionPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityPlayerReturnModule
L2_1 = {}
L2_1[0] = 0.0
L2_1[1] = 0.22
L2_1[2] = 0.39
L2_1[3] = 0.67
L2_1[4] = 0.9
L2_1[5] = 1.0
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._parent_page = A1_2
  L3_2 = {}
  A0_2._key_point_taken_list = L3_2
  L3_2 = {}
  A0_2._key_point_panels = L3_2
  L3_2 = {}
  A0_2._key_point_targets = L3_2
  L3_2 = {}
  A0_2._key_point_buttons = L3_2
  L3_2 = {}
  A0_2._quest_item_panels = L3_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnPointChange
  L4_2 = A0_2._on_total_points_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnTakePointReward
  L4_2 = A0_2._on_key_point_reward_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerReturnDailyRefresh
  L4_2 = A0_2._on_new_day_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_tab_left
  L4_2 = A0_2._on_btn_select_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_tab_right
  L4_2 = A0_2._on_btn_select_right
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._button_mutex = L1_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_point_reward_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._key_point_taken_list = nil
  A0_2._key_point_panels = nil
  A0_2._key_point_targets = nil
  A0_2._key_point_buttons = nil
  A0_2._quest_item_panels = nil
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._button_mutex = nil
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.is_current_tab_item
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_tab_button_enable
  L5_2 = NavigationZoneType
  L5_2 = L5_2.Zone2
  L5_2 = A1_2 == L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_set_valid_navigation_target
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_select_tab_left
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_select_tab_right
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.tip_mono_tab_left
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.tip_mono_tab_right
  L2_2.IsShowTip = A1_2
end
L0_1._setup_tab_button_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_out_most_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = nil
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_btn_of_quest
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_btn_of_point_reward
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2.gameObject
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_set_valid_navigation_target = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._mission_tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  L2_2 = A0_2._quest_item_panels
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.cur_select_item_panel
  if L2_2 ~= nil then
    L3_2 = L2_2.is_main_panel_selected
    if L3_2 then
      L4_2 = L2_2
      L3_2 = L2_2.get_all_reward_ids
      L3_2 = L3_2(L4_2)
      L4_2 = {}
      L4_2.items = L3_2
      L5_2 = G
      L5_2 = L5_2.InventoryUtils
      L5_2 = L5_2.show_item_detail_display_dialog_for_gamepad
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
end
L0_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2.uid
  L2_2 = A0_2._quest_item_panels
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_btn
  return L2_2(L3_2)
end
L0_1.get_first_selected_btn_of_quest = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = L1_1.CurPoint
  L4_2 = 1
  L5_2 = A0_2._key_point_panels
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._key_point_panels
    L8_2 = L8_2[L7_2]
    L9_2 = L1_1.PlayerReturnData
    L10_2 = L9_2
    L9_2 = L9_2.GetQuestKeyPoint
    L11_2 = L8_2.point_id
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = A0_2._key_point_taken_list
    L11_2 = L8_2.point_id
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2 == true
    L11_2 = L3_2 >= L9_2
    if L10_2 then
      L2_2 = L7_2
    end
    if L11_2 and not L10_2 and L1_2 == nil then
      L1_2 = L7_2
    end
  end
  L4_2 = L1_2 or L4_2
  L4_2 = L2_2 or L4_2
  if not L1_2 and not L2_2 then
    L4_2 = 1
  end
  L5_2 = A0_2._key_point_buttons
  L5_2 = L5_2[L4_2]
  return L5_2
end
L0_1.get_first_selected_btn_of_point_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._key_point_buttons
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._key_point_buttons
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.navigation
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Navigation
    L7_2 = L7_2.Mode
    L7_2 = L7_2.Explicit
    L6_2.mode = L7_2
    L6_2.selectOnRight = A1_2
    L7_2 = A0_2._key_point_buttons
    L7_2 = L7_2[L5_2]
    L7_2.navigation = L6_2
  end
end
L0_1.setup_right_navigation_target = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._mission_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_item_state
  L1_2(L2_2)
  L1_2 = A0_2._mission_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._mission_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tab_control = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2._key_point_panels = L1_2
  L1_2 = {}
  A0_2._key_point_buttons = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mission_reward_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.PlayerReturnData
    L6_2 = L5_2
    L5_2 = L5_2.GetQuestKeyPointID
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.PlayerReturnKeyPointRewardPanel
    L9_2 = G
    L9_2 = L9_2.PlayerReturnKeyPointRewardPanelBinder
    L10_2 = A0_2._parent_page
    L11_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_mission_reward_list
    L9_2 = L9_2[L4_2]
    L7_2(L8_2, L9_2)
    L7_2 = L1_1.PlayerReturnData
    L8_2 = L7_2
    L7_2 = L7_2.GetQuestKeyPointRewardID
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= 0 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.ItemFactory
      L8_2 = L8_2.CreateDisplayItemDataFromReward
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L10_2 = L6_2
      L9_2 = L6_2.set_item_view_by_item_display_data
      L11_2 = L8_2[0]
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
    else
      L8_2 = L1_1.PlayerReturnData
      L9_2 = L8_2
      L8_2 = L8_2.GetQuestKeyPointItemID
      L10_2 = L5_2
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = L6_2
      L9_2 = L6_2.set_item_view_by_item_id
      L11_2 = L8_2
      L12_2 = true
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = L6_2
    L8_2 = L6_2.register_click_callback
    L10_2 = A0_2
    L11_2 = A0_2._on_point_reward_click
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L6_2
    L8_2 = L6_2.bind_reddot
    L10_2 = "PlayerReturnMissionPointReward"
    L11_2 = L5_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._key_point_panels
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._key_point_buttons
    L10_2 = L6_2._binder
    L10_2 = L10_2.btn_root
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._key_point_buttons
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_point_reward_panels = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._quest_item_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_phase_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.PlayerReturnData
    L6_2 = L5_2
    L5_2 = L5_2.GetTabUnlockDay
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L1_1.PassedDay
    L5_2 = L5_2 <= L6_2
    L6_2 = L1_1.PlayerReturnData
    L7_2 = L6_2
    L6_2 = L6_2.GetTabQuestGroup
    L8_2 = L4_2 - 1
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.PlayerReturnMissionTabItem
    L10_2 = G
    L10_2 = L10_2.PlayerReturnMissionTabItemBinder
    L11_2 = A0_2._parent_page
    L12_2 = L4_2
    L13_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_tab_item_root
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._quest_item_panels
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._mission_tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item_created
    L10_2 = L7_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.node_tab_phase_list
    L11_2 = L11_2[L4_2]
    L8_2(L9_2, L10_2, L11_2)
    if L5_2 then
      L9_2 = L7_2
      L8_2 = L7_2.bind_reddot
      L10_2 = "PlayerReturnMissionTab"
      L11_2 = L4_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1._init_quest_items = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_phase_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1.PlayerReturnData
    L6_2 = L5_2
    L5_2 = L5_2.GetTabUnlockDay
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L1_1.PassedDay
    L5_2 = L5_2 <= L6_2
    L6_2 = A0_2._quest_item_panels
    L6_2 = L6_2[L4_2]
    L8_2 = L6_2
    L7_2 = L6_2.set_panel_lock_state
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    if L5_2 then
      L8_2 = L6_2
      L7_2 = L6_2.bind_reddot
      L9_2 = "PlayerReturnMissionTab"
      L10_2 = L4_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh_quest_item_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_points_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_line_progress
  L3_2 = A0_2._cur_points
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_value_anim
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer
  L3_2 = L2_2
  L2_2 = L2_2.SetProgress
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mission_tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetFirstQuestTabIndex
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_total_points
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_point_reward_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_point_rewards
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_points_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.CurPoint
  A0_2._cur_points = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_points
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_points
  L1_2(L2_2, L3_2)
end
L0_1._set_total_points = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.PointRewardList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._key_point_taken_list
    L7_2[L6_2] = true
  end
end
L0_1._set_point_reward_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2._key_point_targets
  L2_2[0] = 0
  L2_2 = L1_1.CurPoint
  L3_2 = 1
  L4_2 = A0_2._key_point_panels
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._key_point_panels
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._key_point_targets
    L8_2 = L8_2[L6_2]
    if L8_2 == nil then
      L9_2 = L1_1.PlayerReturnData
      L10_2 = L9_2
      L9_2 = L9_2.GetQuestKeyPoint
      L11_2 = L7_2.point_id
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = L9_2
      L9_2 = A0_2._key_point_targets
      L9_2[L6_2] = L8_2
    end
    L9_2 = A0_2._key_point_taken_list
    L10_2 = L7_2.point_id
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2 == true
    L10_2 = L2_2 >= L8_2
    L12_2 = L7_2
    L11_2 = L7_2.set_key_point_num
    L13_2 = L8_2
    L11_2(L12_2, L13_2)
    L12_2 = L7_2
    L11_2 = L7_2.set_reward_status
    L13_2 = L10_2
    L14_2 = L9_2
    L15_2 = A1_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
  end
end
L0_1._set_point_rewards = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_anim
  L2_2.StartValue = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_anim
  L2_2.EndValue = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_anim
  L2_2.Duration = 0.5
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_anim
  L3_2 = L2_2
  L2_2 = L2_2.SetValueChangeCallback
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.line_renderer
    L2_3 = L1_3
    L1_3 = L1_3.SetProgress
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_anim
  L3_2 = L2_2
  L2_2 = L2_2.SetFinishCallback
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_points_view
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._init_value_anim = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2._key_point_targets
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._key_point_targets
    L7_2 = L7_2[L6_2]
    if A1_2 <= L7_2 then
      break
    end
    L2_2 = L2_2 + 1
  end
  L3_2 = 0.0
  L4_2 = A0_2._key_point_targets
  L4_2 = #L4_2
  if L2_2 >= L4_2 then
    L3_2 = 1.0
  else
    L4_2 = L2_1[L2_2]
    L5_2 = L2_2 + 1
    L5_2 = L2_1[L5_2]
    L6_2 = L2_1[L2_2]
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2._key_point_targets
    L6_2 = L6_2[L2_2]
    L6_2 = A1_2 - L6_2
    L5_2 = L5_2 * L6_2
    L6_2 = A0_2._key_point_targets
    L7_2 = L2_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = A0_2._key_point_targets
    L7_2 = L7_2[L2_2]
    L6_2 = L6_2 - L7_2
    L5_2 = L5_2 / L6_2
    L3_2 = L4_2 + L5_2
  end
  return L3_2
end
L0_1._get_line_progress = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.CurPoint
  A0_2._cur_points = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_line_progress
  L3_2 = A0_2._cur_points
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_anim
  L3_2 = L2_2
  L2_2 = L2_2.Continue
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._play_line_progress_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_set_valid_navigation_target
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_select_left = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_set_valid_navigation_target
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_select_right = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.ButtonMutex
  L3_2 = L3_2.click_mutex
  L4_2 = A0_2._button_mutex
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = A2_2
    if not L0_3 then
      L0_3 = L1_1
      L1_3 = L0_3
      L0_3 = L0_3.TryTakePointReward
      L2_3 = A1_2
      L3_3 = 0
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = L1_1.PlayerReturnData
      L1_3 = L0_3
      L0_3 = L0_3.GetQuestKeyPointItemID
      L2_3 = A1_2
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.BattlePassRewardPointData
      L1_3 = L1_3.CreateDataFromItemUse
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = A1_2
      A0_2._option_point_id = L2_3
      L2_3 = G
      L2_3 = L2_3.UIManager
      L2_3 = L2_3.load_and_show
      L3_3 = "Ui.BattlePass.BattlePassRewardChoiceDialog"
      L4_3 = L1_3
      L5_3 = false
      L6_3 = A0_2._on_option_chosen
      L7_3 = A0_2
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L4_3 = L2_3
      L3_3 = L2_3.close_merge_node
      L3_3(L4_3)
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1._on_point_reward_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    return
  end
  L3_2 = A2_2[0]
  L3_2 = L3_2.OptionalRewardId
  A0_2._optional_reward_id = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryTakePointReward
  L5_2 = A0_2._option_point_id
  L6_2 = A0_2._optional_reward_id
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_option_chosen = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L1_1.PlayerReturnData
  L3_2 = L2_2
  L2_2 = L2_2.GetTabUnlockDay
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1.PassedDay
  L2_2 = L2_2 <= L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg_train
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlock_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.time_unlock_hint
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTimeByTimeStamp
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetUnlockHintTime
    L7_2 = A1_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._on_tab_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._owner_is_top_page
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
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
  L3_2 = A0_2._mission_tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.refresh_view
  L3_2(L4_2)
  L3_2 = A0_2._mission_tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.check_is_all_reward_taken
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._mission_tab_control
    L3_2 = L3_2.current_select_item
    L4_2 = L3_2
    L3_2 = L3_2.get_panel_index
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.PlayerReturnTakeStationReward
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_quest_get_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_current_tab_item
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._mission_tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.refresh_view
  L2_2(L3_2)
end
L0_1._on_quest_updated = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_points
  A0_2._pre_points = L1_2
  A0_2._need_refresh_view = true
end
L0_1._on_total_points_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._need_refresh_view
  if L1_2 == true then
    L2_2 = A0_2
    L1_2 = A0_2._play_line_progress_anim
    L1_2(L2_2)
    A0_2._need_refresh_view = false
  end
  L1_2 = A0_2._mission_tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._mission_tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.refresh_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_points_view
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2.ItemList_
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.ItemFactory
    L8_2 = L8_2.CreateDisplayItemData
    L9_2 = L7_2.ItemId
    L10_2 = L7_2.Num
    L11_2 = L7_2.Level
    L12_2 = L7_2.UniqueId
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.RewardDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_key_point_reward_taken = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_item_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_tab_select
  L3_2 = A0_2._mission_tab_control
  L3_2 = L3_2.current_select_item
  L3_2 = L3_2.uid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
end
L0_1._on_new_day_refresh = L3_1
return L0_1
