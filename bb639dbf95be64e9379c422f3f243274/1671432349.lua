local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BattlePass.BattlePassMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassRewardTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassRewardTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassQuestTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassQuestTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassDisplayTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassDisplayTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = 1
L2_1 = {}
L3_1 = "UIText_Battlepass_Title02"
L4_1 = "UIText_Battlepass_Title03"
L5_1 = "UIText_Battlepass_Title04"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "BattlePassMainPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattlePassMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = L1_1
  A0_2._current_index = L1_2
  A0_2._need_show_upgrade = false
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
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassChanged
  L4_2 = A0_2._on_bp_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshLevel
  L4_2 = A0_2._on_level_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassTryPlayLevelUp
  L4_2 = A0_2._try_show_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
  end
end
L3_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
  end
end
L3_1._select_next = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2._tab_control
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_show_upgrade
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2._on_top_page
  if L4_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2._on_top_page
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L3_1._on_view_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_upgrade
  L1_2 = L1_2(L2_2)
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_upgrade
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2._on_first_child_dialog_close
    if L3_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2._on_first_child_dialog_close
      L3_2(L4_2)
    end
  end
end
L3_1._on_first_child_dialog_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.BattlePassModule
  L2_2 = L1_2
  L1_2 = L1_2.HasBattlePass
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_reward_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_display_tab
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L3_1._init_tab_control = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassRewardTabItem
  L4_2 = G
  L4_2 = L4_2.BattlePassRewardTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_reward
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._init_reward_tab = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassQuestTabItem
  L4_2 = G
  L4_2 = L4_2.BattlePassQuestTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_quest
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._init_quest_tab = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassDisplayTabItem
  L4_2 = G
  L4_2 = L4_2.BattlePassDisplayTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_display
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._init_display_tab = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.BattlePassModule
  L2_2 = L1_2
  L1_2 = L1_2.HasBattlePass
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_tab_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordCurrentBattlePass
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L3_1._custom_setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_index = A1_2
  L2_2 = L2_1[A1_2]
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_current_tab
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L3_1._on_tab_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = A0_2
  L3_2 = A0_2._current_tab_item
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.get_short_cut_hint
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._refresh_short_cut_hint = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  return L1_2
end
L3_1._current_tab_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._custom_setup_view
    L2_2(L3_2)
  end
end
L3_1._on_bp_changed = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._need_show_upgrade = true
end
L3_1._on_level_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._need_show_upgrade
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BattlePass.BattlePassUpgradeDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.set_exit_callback
  function L4_2()
    local L0_3, L1_3
    A0_2._need_show_upgrade = false
  end
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L3_1._try_show_upgrade = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L3_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._current_tab_item
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2._is_can_to_zoom
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L3_1._is_can_to_zoom = L4_1
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._current_tab_item
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2
      L4_2 = L4_2.get_zone2_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_tab_hint
  L2_2(L3_2)
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_tab_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = 31
  L2_2(L3_2, L4_2)
end
L3_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tab_hint
  L1_2(L2_2)
end
L3_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._current_tab_item
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_tab_hint
  L2_2(L3_2)
end
L3_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_keymap
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tab_keymap
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_keymap_left
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tab_keymap_left
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tab_keymap_right
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tab_keymap_right
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1._refresh_tab_hint = L4_1
return L3_1
