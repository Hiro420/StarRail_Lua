local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookBuffPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookGridItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookTopTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueTextDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueExtraTextPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffDetailPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookBuffPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueHandbookModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueBuffTypeExcelTable
L3_1 = 100
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L3_2
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_binder
  L5_2 = G
  L5_2 = L5_2.RogueHandbookBuffPageBinder
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._binder = L3_2
  L3_2 = {}
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L3_2[1] = L4_2
  A0_2.listen_zooms = L3_2
  A0_2._pause_game = true
  A0_2._all_buff_list = nil
  L3_2 = {}
  A0_2._current_buff_table = L3_2
  L3_2 = L3_1
  A0_2._current_selected_buff_type = L3_2
  A0_2._current_grid_item_index = 0
  L3_2 = {}
  A0_2._available_buff_num_in_type = L3_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 114
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_back_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_view
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_get
  L4_2 = A0_2._on_btn_reward
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_get_buff
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueHandbookBuffDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueHandbookBuffDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._detail_panel = L1_2
  L1_2 = A0_2._detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_panel_root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_all_buff_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_available_buff_num_in_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_buff_table
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_num_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.UnlockBuffNum
  L4_2 = "/"
  L5_2 = L1_1.AvailableBuffNum
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabcontrol
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_grid_item_clicked
  L3_2 = 0
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_scroll_reddot
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_grid_view
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = A0_2._current_grid_item_index
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_grid_item_clicked
    L4_2 = A0_2._current_grid_item_index
    if not L4_2 then
      L4_2 = 0
    end
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_back_btn_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._tab_control
  if L2_2 ~= nil then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L4_2 = L2_2
    L3_2 = L2_2.get_data
    L3_2 = L3_2(L4_2)
    L1_2 = L3_2
  end
  if L1_2 == nil then
    L2_2 = A0_2._current_selected_buff_type
    if L2_2 ~= nil then
      L2_2 = L2_1
      L3_2 = L2_2
      L2_2 = L2_2.GetData
      L4_2 = A0_2._current_selected_buff_type
      L2_2 = L2_2(L3_2, L4_2)
      L1_2 = L2_2
    end
  end
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Rogue.Handbook.RogueHandbookBuffRewardDialog"
    L4_2 = L1_2
    L5_2 = A0_2._available_buff_num_in_type
    L6_2 = L1_2.RogueBuffType
    L5_2 = L5_2[L6_2]
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cur_buff_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cur_buff_table
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterFrames
  L3_2 = 1
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_navigation_target
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.get_first_selected_object
      L2_3, L3_3 = L2_3(L3_3)
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_tabitem_clicked = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.loop_grid_view
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    L5_2 = A0_2._previous_panel
    if L5_2 ~= nil then
      L5_2 = A0_2._previous_panel
      L6_2 = L5_2
      L5_2 = L5_2.change_btn_status
      L7_2 = false
      L8_2 = true
      L5_2(L6_2, L7_2, L8_2)
    end
    A0_2._previous_panel = L4_2
    if A2_2 then
      L6_2 = L4_2
      L5_2 = L4_2.change_btn_status
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
  end
  A0_2._current_grid_item_index = A1_2
  L5_2 = A0_2._detail_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_data
  L7_2 = A0_2._current_buff_table
  L8_2 = A0_2._current_grid_item_index
  L8_2 = L8_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._detail_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L5_2(L6_2)
  if L3_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._try_save_navigation_target
    L7_2 = L3_2.CachedRectTransform
    L7_2 = L7_2.gameObject
    L5_2(L6_2, L7_2)
  end
end
L0_1._on_grid_item_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._update_title
      L1_2(L2_2)
    end
  end
end
L0_1._on_quest_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._all_buff_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._all_buff_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._available_buff_num_in_type
    L7_2 = L5_2.RogueRow
    L7_2 = L7_2.RogueBuffType
    L6_2 = L6_2[L7_2]
    if L6_2 == nil then
      L6_2 = A0_2._available_buff_num_in_type
      L7_2 = L5_2.RogueRow
      L7_2 = L7_2.RogueBuffType
      L6_2[L7_2] = 0
    end
    L6_2 = A0_2._available_buff_num_in_type
    L7_2 = L5_2.RogueRow
    L7_2 = L7_2.RogueBuffType
    L8_2 = A0_2._available_buff_num_in_type
    L9_2 = L5_2.RogueRow
    L9_2 = L9_2.RogueBuffType
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2 + 1
    L6_2[L7_2] = L8_2
  end
end
L0_1._init_available_buff_num_in_type = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._available_buff_num_in_type
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._available_buff_num_in_type
  L2_2 = L2_2[A1_2]
  L2_2 = 0 < L2_2
  return L2_2
end
L0_1._is_type_has_available_buff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.RogueBuffType
    L4_2 = L3_1
    if L3_2 ~= L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._is_type_has_available_buff
      L5_2 = L2_2.RogueBuffType
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 == true then
        L4_2 = A0_2
        L3_2 = A0_2.create_panel
        L5_2 = G
        L5_2 = L5_2.RogueHandbookTopTabItem
        L6_2 = G
        L6_2 = L6_2.RogueHandbookTopTabItemBinder
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L5_2 = L3_2
        L4_2 = L3_2.bind
        L6_2 = A0_2._binder
        L6_2 = L6_2.tab_control_root
        L4_2(L5_2, L6_2)
        L5_2 = L3_2
        L4_2 = L3_2.set_data
        L6_2 = L2_2
        L4_2(L5_2, L6_2)
        L5_2 = L3_2
        L4_2 = L3_2.set_icon_path
        L6_2 = L2_2.RogueBuffTypeIcon
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._tab_control
        L5_2 = L4_2
        L4_2 = L4_2.add_item
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        L5_2 = L3_2
        L4_2 = L3_2.bind_reddot
        L6_2 = "RogueHandbookBuffReward"
        L7_2 = L2_2.RogueBuffType
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.tab_control_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_select_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_tabitem_clicked
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
end
L0_1._init_tabcontrol = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_left_reddot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_right_reddot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.ClearRedDotRoots
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.mono_scroll_reddot
    L8_2 = L7_2
    L7_2 = L7_2.AddRedDotRoot
    L10_2 = L6_2
    L9_2 = L6_2.get_reddot_transform
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_scroll_reddot
  L3_2 = L2_2
  L2_2 = L2_2.SetupScrollRedDot
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_left_reddot
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_right_reddot
  L6_2 = 10.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._init_scroll_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshScheduleStatusAndUnlockNum
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllSortedBuff
  L1_2 = L1_2(L2_2)
  A0_2._all_buff_list = L1_2
end
L0_1._init_all_buff_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.RogueBuffType
    L4_2 = L3_1
    if L3_2 ~= L4_2 then
      L3_2 = L2_2.RogueBuffType
      A0_2._current_selected_buff_type = L3_2
    end
  end
end
L0_1._init_cur_buff_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.get_data
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.RogueBuffType
  A0_2._current_selected_buff_type = L3_2
end
L0_1._refresh_cur_buff_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._current_buff_table = L1_2
  L1_2 = 0
  L2_2 = A0_2._all_buff_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._all_buff_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._current_selected_buff_type
    L7_2 = L3_1
    if L6_2 ~= L7_2 then
      L6_2 = A0_2._current_selected_buff_type
      L7_2 = L5_2.RogueRow
      L7_2 = L7_2.RogueBuffType
      if L6_2 ~= L7_2 then
        goto lbl_28
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._current_buff_table
    L8_2 = A0_2._current_buff_table
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
    ::lbl_28::
  end
end
L0_1._refresh_cur_buff_table = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = true
  L2_2 = ipairs
  L3_2 = A0_2._current_buff_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.IsUnlocked
    if L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  return L1_2
end
L0_1._is_all_cur_buff_locked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_all_cur_buff_locked
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loop_grid_view
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_panel_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L4_2 = L2_2
    L3_2 = L2_2.get_data
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_empty_tip
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.HintDesc
    L4_2(L5_2, L6_2)
  else
    A0_2._current_grid_item_index = 0
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_grid_view
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._current_buff_table
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_grid_view
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_grid_view
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_grid_item_clicked
    L4_2 = 0
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_title
  L2_2(L3_2)
end
L0_1._refresh_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueHandbookGridItemPanel
    L8_2 = G
    L8_2 = L8_2.RogueHandbookGridItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._current_buff_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2
  L9_2 = L5_2.MazeRow
  L9_2 = L9_2.BuffIcon
  L10_2 = L5_2.IsUnlocked
  L11_2 = L5_2.RogueRow
  L11_2 = L11_2.RogueBuffRarity
  L12_2 = L5_2.MazeRow
  L12_2 = L12_2.BuffName
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_btn_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_grid_item_clicked
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._current_grid_item_index
  if A2_2 ~= L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.change_btn_status
    L8_2 = false
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.change_btn_status
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  return L3_2
end
L0_1._on_get_buff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.get_data
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.RogueBuffType
  L5_2 = A0_2
  L4_2 = A0_2._construct_buff_count_data
  L6_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.tab_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L2_2.RogueBuffTypeTitle
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_unlock_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_total_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh_reward_btn
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
end
L0_1._update_title = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = false
  L3_2 = L3_1
  if A1_2 == L3_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.HasBuffTypeRewardCanTake
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "RogueHandbookBuffReward"
    L6_2 = nil
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reward_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.IsBuffTypeRewardCanTake
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "RogueHandbookBuffReward"
    L6_2 = A1_2
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reward_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_view
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_get
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_reward_btn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = L3_1
  if A1_2 == L4_2 then
    L2_2 = L1_1.UnlockBuffNum
    L4_2 = L1_1.BuffsMap
    L3_2 = L4_2.AvailableBuffNum
  else
    L4_2 = 1
    L5_2 = A0_2._current_buff_table
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._current_buff_table
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.IsUnlocked
      if L8_2 then
        L2_2 = L2_2 + 1
      end
    end
    L4_2 = A0_2._current_buff_table
    L3_2 = #L4_2
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._construct_buff_count_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_save_navigation_target = L4_1
return L0_1
