local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardLevelItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardContentItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardContentItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelRewardPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_NetworkManager
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
L0_1.StartIdx = 2
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LevelRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._level_data = L1_2
  L1_2 = {}
  A0_2._prize_data = L1_2
  L1_2 = {}
  L2_2 = "tips"
  L3_2 = "level"
  L4_2 = "task"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2._content_data = L1_2
  A0_2._button_state = ""
  A0_2._got_mission = nil
  A0_2._level = nil
  A0_2._level_now_data = nil
  A0_2._have_reward = false
  A0_2._show_content = false
  A0_2._last_select_level = nil
  A0_2._reward_list_fetched = false
  L1_2 = {}
  A0_2._level_idx_map = L1_2
  L1_2 = {}
  A0_2._config_ids = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.select_preview
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.select_next
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
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
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_poor_network_node_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = ""
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_poor_network_node_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.OBIGMJGLONO
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 64
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._get_level_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prize_scrollview
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._get_prize_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.touch_button
  L4_2 = A0_2._on_touch_layer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2._on_touch_layer
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_level_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2.on_snap_nearest_changed
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.receive_btn
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetLevelRewardGottenList
  L4_2 = L0_1._on_get_reward_level_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetLevelReward
  L4_2 = L0_1._on_get_level_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.receive_btn_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_LevelUpReward_2"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_LevelUpReward_1"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LevelRewardContentItem
  L4_2 = G
  L4_2 = L4_2.LevelRewardContentItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._content_tips_panel = L1_2
  L1_2 = A0_2._content_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_tips_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LevelRewardContentItem
  L4_2 = G
  L4_2 = L4_2.LevelRewardContentItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._content_limits_panel = L1_2
  L1_2 = A0_2._content_limits_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_limits_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LevelRewardContentItem
  L4_2 = G
  L4_2 = L4_2.LevelRewardContentItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._content_task_panel = L1_2
  L1_2 = A0_2._content_task_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_task_panel
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LevelRewardPageShowStateChanged
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_panel_active
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._prepare_data
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.receive_btn
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetLevelRewardGottenList
  L4_2 = L0_1._on_get_reward_level_list
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetLevelReward
  L4_2 = L0_1._on_get_level_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LevelRewardPageShowStateChanged
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._level_data = L1_2
  L1_2 = 0
  L2_2 = G
  L2_2 = L2_2.LevelRewardUtils
  L2_2 = L2_2.get_show_count
  L2_2 = L2_2()
  L3_2 = L0_1.StartIdx
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.LevelRewardUtils
    L7_2 = L7_2.get_world_level_row_by_level
    L8_2 = L6_2
    L7_2, L8_2 = L7_2(L8_2)
    L9_2 = false
    if L7_2 ~= nil then
      L10_2 = L7_2.Level
      L10_2 = L10_2 + 1
      if L8_2 ~= nil then
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = A0_2._level_data
        L13_2 = {}
        L13_2.level = L6_2
        L13_2.is_break = false
        L13_2.world_level = L1_2
        L11_2(L12_2, L13_2)
        L11_2 = A0_2._level_idx_map
        L12_2 = A0_2._level_data
        L12_2 = #L12_2
        L11_2[L6_2] = L12_2
        L1_2 = L10_2
        L9_2 = true
      end
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._level_data
    L12_2 = {}
    L12_2.level = L6_2
    L12_2.is_break = L9_2
    L12_2.world_level = L1_2
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._level_idx_map
    if L9_2 then
      L11_2 = -1
      if L11_2 then
        goto lbl_53
      end
    end
    L11_2 = 1
    ::lbl_53::
    L11_2 = L6_2 * L11_2
    L12_2 = A0_2._level_data
    L12_2 = #L12_2
    L10_2[L11_2] = L12_2
  end
end
L0_1._prepare_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_touch_layer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._last_select_level
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._last_select_level
  L3_2 = A0_2
  L2_2 = A0_2._get_level_idx
  L4_2 = L1_2.level
  L5_2 = L1_2.is_break
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2 + 1
  L3_2 = A0_2._level_data
  L4_2 = L2_2 + 1
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._on_click_level
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._last_select_level
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._last_select_level
  L3_2 = A0_2
  L2_2 = A0_2._get_level_idx
  L4_2 = L1_2.level
  L5_2 = L1_2.is_break
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2 - 1
  L3_2 = A0_2._level_data
  L4_2 = L2_2 + 1
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._on_click_level
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.select_preview = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormatWithTag
    L4_2 = G
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.UI
    L5_2 = "listview item item is nil"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A2_2.UserObjectData
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogFormatWithTag
    L5_2 = G
    L5_2 = L5_2.LogTag
    L5_2 = L5_2.UI
    L6_2 = "listview item UserObjectData is nil"
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.get_level
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._on_select_level
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.on_snap_nearest_changed = L4_1
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
    L7_2 = L7_2.LevelRewardLevelItem
    L8_2 = G
    L8_2 = L8_2.LevelRewardLevelItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._level_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_click_level
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._get_level_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.level
  L4_2 = A0_2
  L3_2 = A0_2._get_level_idx
  L5_2 = L2_2
  L6_2 = A1_2.is_break
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_level_idx
  L6_2 = A0_2._level_now_data
  L6_2 = L6_2.level
  L7_2 = A0_2._level_now_data
  L7_2 = L7_2.is_break
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L3_2 == L4_2 then
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_level_list
  L6_2 = L5_2
  L5_2 = L5_2.MovePanelToSnapPivotByItemIndex
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_level_list
  L6_2 = L5_2
  L5_2 = L5_2.FinishSnapImmediately
  L5_2(L6_2)
end
L0_1._on_click_level = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  end
  L5_2 = A0_2._prize_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._get_prize_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.LevelRewardContentItem
    L8_2 = G
    L8_2 = L8_2.LevelRewardContentItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._content_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._level_now_data
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._get_content_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.ItemWidth
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_level_list
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == nil then
      return
    end
    L2_2 = L1_2.UserObjectData
    if L2_2 == nil then
      return
    end
    L4_2 = L2_2
    L3_2 = L2_2.get_width
    L3_2 = L3_2(L4_2)
    A0_2.ItemWidth = L3_2
  end
  L1_2 = A0_2.ItemWidth
  return L1_2
end
L0_1._get_level_item_width = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.set_poor_network_node_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._level_data
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_level_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  A0_2._reward_list_fetched = true
  L3_2 = A0_2
  L2_2 = A0_2.get_unget_reward_idx
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._level_data
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    L3_2 = A0_2._level_now_data
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.refresh_panel_active
      L5_2 = A0_2._level_data
      L6_2 = A0_2._level_data
      L6_2 = #L6_2
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.level
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_level_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToSnapPivotByItemIndex
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_level_list
  L4_2 = L3_2
  L3_2 = L3_2.FinishSnapImmediately
  L3_2(L4_2)
end
L0_1._on_get_reward_level_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L1_1.PlayerData
  L1_2 = L1_2.Level
  L2_2 = L1_1.PlayerData
  L2_2 = L2_2.GottenLevelRewards
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.WorldLevel
  L4_2 = ipairs
  L5_2 = A0_2._level_data
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.level
    L10_2 = L8_2.world_level
    L11_2 = L8_2.is_break
    L12_2 = true
    if 1 < L9_2 then
      L14_2 = L2_2
      L13_2 = L2_2.Contains
      L15_2 = L9_2
      L13_2 = L13_2(L14_2, L15_2)
      L12_2 = L13_2
    end
    if L11_2 then
      L12_2 = L3_2 >= L10_2
    end
    if not L12_2 then
      return L7_2
    end
    if L1_2 < L9_2 then
      return L7_2
    end
  end
  L4_2 = A0_2._level_data
  L4_2 = #L4_2
  return L4_2
end
L0_1.get_unget_reward_idx = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog_with_important_hint
    L3_2 = A1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_get_reward_level_list
  L2_2(L3_2)
end
L0_1._on_get_level_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_state
  if L1_2 == "mission" then
    L1_2 = L3_1
    L2_2 = L1_2
    L1_2 = L1_2.SetTrackingMission
    L3_2 = A0_2._got_mission
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Mission.MissionPage"
    L1_2(L2_2)
  else
    L1_2 = A0_2._button_state
    if L1_2 == "reward" then
      L1_2 = L2_1
      L2_2 = L1_2
      L1_2 = L1_2.LBGDFOPKGAD
      L3_2 = A0_2._level
      L1_2(L2_2, L3_2)
    else
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.LogFormatWithTag
      L2_2 = G
      L2_2 = L2_2.LogTag
      L2_2 = L2_2.UI
      L3_2 = "_on_get_level_reward "
      L4_2 = args
      if L4_2 then
        L4_2 = args
        if L4_2 then
          goto lbl_38
        end
      end
      L4_2 = ""
      ::lbl_38::
      L3_2 = L3_2 .. L4_2
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_confirm_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.level
  A0_2._level_now_data = A1_2
  L3_2 = G
  L3_2 = L3_2.LevelRewardUtils
  L3_2 = L3_2.get_max_level
  L3_2 = L3_2()
  if L2_2 == nil or L2_2 <= 1 or L2_2 > L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._init_panel_active
    L4_2(L5_2)
    return
  end
  A0_2._level = L2_2
  L5_2 = A0_2
  L4_2 = A0_2._set_select_level
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh_level_and_task_data
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh_prize_data
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh_panel_active
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._on_select_level = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._last_select_level
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._set_level_panel_select_by_idx
    L6_2 = A0_2
    L5_2 = A0_2._get_level_idx
    L7_2 = L2_2.level
    L8_2 = L2_2.is_break
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_level_panel_select_by_idx
  L6_2 = A0_2
  L5_2 = A0_2._get_level_idx
  L7_2 = A1_2.level
  L8_2 = A1_2.is_break
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  A0_2._last_select_level = A1_2
end
L0_1._set_select_level = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    L3_2 = nil
    return L3_2
  end
  if A2_2 then
    L3_2 = -1
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = 1
  ::lbl_11::
  L3_2 = A1_2 * L3_2
  L4_2 = A0_2._level_idx_map
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2 - 1
  return L5_2
end
L0_1._get_level_idx = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_level_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.set_item_select
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
end
L0_1._set_level_panel_select_by_idx = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_scrollview
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_not_fill_in
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.fetched_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._init_panel_active = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L1_1.PlayerData
  L2_2 = L2_2.Level
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.WorldLevel
  L4_2 = L1_1.PlayerData
  L4_2 = L4_2.GottenLevelRewards
  L5_2 = A0_2._level_now_data
  L5_2 = L5_2.is_break
  L6_2 = L2_2 + 5
  L6_2 = A1_2 > L6_2
  L7_2 = A1_2 > L2_2
  L9_2 = L4_2
  L8_2 = L4_2.Contains
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  if L5_2 then
    L9_2 = A0_2._level_now_data
    L9_2 = L9_2.world_level
    L8_2 = L3_2 >= L9_2
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.prize_panel
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = not L6_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.empty_tips
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._show_content
  if L9_2 then
    L9_2 = not L6_2
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.content_scrollview
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.level_not_fill_in
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L7_2 or L12_2
  if L7_2 then
    L12_2 = not L8_2
  end
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.fetched_panel
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L8_2 or L12_2
  if L8_2 then
    L12_2 = not L6_2
  end
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.lock_tips
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L6_2
  L10_2(L11_2, L12_2)
  A0_2._button_state = ""
  if not L6_2 and A1_2 <= L2_2 and not L8_2 then
    L10_2 = A0_2._got_mission
    if L10_2 then
      A0_2._button_state = "mission"
      L10_2 = A0_2._binder
      L10_2 = L10_2.confirm_btn
      L10_2 = L10_2.gameObject
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.receive_btn
      L10_2 = L10_2.gameObject
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = false
      L10_2(L11_2, L12_2)
    else
      A0_2._button_state = "reward"
      L10_2 = A0_2._binder
      L10_2 = L10_2.confirm_btn
      L10_2 = L10_2.gameObject
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.receive_btn
      L10_2 = L10_2.gameObject
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = true
      L10_2(L11_2, L12_2)
    end
  end
  L10_2 = A0_2._button_state
  if L10_2 == "" then
    L10_2 = A0_2._binder
    L10_2 = L10_2.confirm_btn
    L10_2 = L10_2.gameObject
    L11_2 = L10_2
    L10_2 = L10_2.SafeSetActive
    L12_2 = false
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._binder
    L10_2 = L10_2.receive_btn
    L10_2 = L10_2.gameObject
    L11_2 = L10_2
    L10_2 = L10_2.SafeSetActive
    L12_2 = false
    L10_2(L11_2, L12_2)
  end
end
L0_1.refresh_panel_active = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.level
  L3_2 = A1_2.is_break
  if L3_2 then
    L4_2 = A0_2._got_mission
    if L4_2 then
      goto lbl_33
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PlayerLevelExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  A0_2._prize_data = L5_2
  if L4_2 ~= nil then
    L5_2 = L4_2.LevelRewardID
    if L5_2 ~= nil then
      L5_2 = L4_2.LevelRewardID
      L6_2 = G
      L6_2 = L6_2.RewardUtils
      L6_2 = L6_2.CreateRewardItemTable
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = {}
      end
      A0_2._prize_data = L6_2
      goto lbl_52
      ::lbl_33::
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.GlobalVars
      L4_2 = L4_2.s_ModuleManager
      L4_2 = L4_2.MissionModule
      L5_2 = L4_2
      L4_2 = L4_2.GetMainMissionRow
      L6_2 = A0_2._got_mission
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_2.RewardID
      L6_2 = G
      L6_2 = L6_2.RewardUtils
      L6_2 = L6_2.CreateRewardItemTable
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = {}
      end
      A0_2._prize_data = L6_2
    end
  end
  ::lbl_52::
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.UI
  L6_2 = "prize count level "
  L7_2 = A0_2._prize_data
  L7_2 = #L7_2
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.sort_reward_item
  L5_2 = A0_2._prize_data
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.prize_scrollview
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._prize_data
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.prize_scrollview
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
  L4_2 = A0_2._prize_data
  L4_2 = #L4_2
  L4_2 = 0 < L4_2
  A0_2._have_reward = L4_2
  L4_2 = {}
  A0_2._config_ids = L4_2
  L4_2 = ipairs
  L5_2 = A0_2._prize_data
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._config_ids
    L11_2 = L8_2.ItemID
    L9_2(L10_2, L11_2)
  end
end
L0_1.refresh_prize_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._got_mission = nil
  A0_2._show_content = false
  L2_2 = G
  L2_2 = L2_2.LevelRewardUtils
  L2_2 = L2_2.get_world_level_row_by_level
  L3_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2._level_now_data
    L4_2 = L4_2.is_break
    if L4_2 and L3_2 ~= nil then
      A0_2._show_content = true
      L4_2 = L2_2.LevelUpMission
      if L4_2 ~= nil and L4_2 ~= 0 then
        A0_2._got_mission = L4_2
      end
    end
  end
  L4_2 = A0_2._level_now_data
  L4_2 = L4_2.is_break
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_tips_panel
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_BreakUpMisson"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_tips_panel
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_LevelReward_LevelTitle"
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2._content_tips_panel
  L5_2 = L4_2
  L4_2 = L4_2.show_break_tips
  L6_2 = A0_2._level_now_data
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._content_limits_panel
  L5_2 = L4_2
  L4_2 = L4_2.show_level_limits
  L6_2 = A0_2._level_now_data
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._content_task_panel
  L5_2 = L4_2
  L4_2 = L4_2.show_task_intro
  L6_2 = A0_2._level_now_data
  L4_2(L5_2, L6_2)
end
L0_1.refresh_level_and_task_data = L4_1
return L0_1
