local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookMiraclePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookGridItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueTextDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueExtraTextPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueHandbookModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueHandbookMiraclePage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._current_selected_grid_item_index = 0
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
  L5_2 = L5_2.RogueHandbookMiraclePageBinder
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._binder = L3_2
  A0_2._is_save_by_click = false
  A0_2._pause_game = true
  L3_2 = {}
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L3_2[1] = L4_2
  A0_2.listen_zooms = L3_2
  A0_2._version = 1
  A0_2._cur_tab_index = 1
  L3_2 = {}
  A0_2._current_miracle_list = L3_2
  L3_2 = {}
  A0_2._available_miracle_type_row_table = L3_2
  L3_2 = {}
  A0_2._available_miracle_list_in_tab = L3_2
  A0_2._have_tab_control = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_back_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_miracle_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L1_2.IsAutoFadeIn = false
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
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
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakeRogueHandbookMiracleReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L2_1
function L2_1(A0_2)
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
L1_1.get_first_selected_object = L2_1
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
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2, A1_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = A0_2._available_miracle_list_in_tab
  L4_2 = L4_2[A1_2]
  if L4_2 == nil then
    L4_2 = L2_2
    L5_2 = L3_2
    return L4_2, L5_2
  end
  L4_2 = A0_2._available_miracle_list_in_tab
  L4_2 = L4_2[A1_2]
  L3_2 = #L4_2
  L4_2 = pairs
  L5_2 = A0_2._available_miracle_list_in_tab
  L5_2 = L5_2[A1_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.IsUnlocked
    if L9_2 then
      L2_2 = L2_2 + 1
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L1_1._get_miracle_count_in_tab_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_control_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._have_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._have_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tab_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._have_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._have_tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.click_item_by_uid
      L3_2 = 1
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_tab_item_clicked
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_num_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L0_1.UnlockMiracleNum
  L4_2 = "/"
  L5_2 = L0_1.AvailableMiracleNum
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2(L2_2, L3_2)
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
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_tab_index
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_tab_index
    L2_2 = A0_2._available_miracle_type_row_table
    L2_2 = #L2_2
    if not (L1_2 > L2_2) then
      L1_2 = A0_2._have_tab_control
      if L1_2 then
        goto lbl_13
      end
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._available_miracle_type_row_table
  L2_2 = A0_2._cur_tab_index
  L1_2 = L1_2[L2_2]
  L3_2 = A0_2
  L2_2 = A0_2._get_miracle_count_in_tab_index
  L4_2 = A0_2._cur_tab_index
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.tab_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2.RogueMiracleTypeTitle
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_unlock_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1._setup_miracle_tab_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._available_miracle_list_in_tab
  L2_2 = A0_2._cur_tab_index
  L1_2 = L1_2[L2_2]
  A0_2._current_miracle_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._current_miracle_list
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._setup_miracle_grid_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshScheduleStatusAndUnlockNum
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAvailableMiracleTypeList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._available_miracle_type_row_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._available_miracle_type_row_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.GetSortedMiracle
    L8_2 = L5_2.RogueHandbookMiracleType
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._available_miracle_list_in_tab
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L1_1._init_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._available_miracle_type_row_table
  L1_2 = #L1_2
  L1_2 = 2 < L1_2
  A0_2._have_tab_control = L1_2
  L1_2 = A0_2._have_tab_control
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
  L3_2 = L3_2.tab_control_root
  L1_2(L2_2, L3_2)
  A0_2._cur_tab_index = 1
  L1_2 = ipairs
  L2_2 = A0_2._available_miracle_type_row_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RogueHandbookTopTabItem
    L9_2 = G
    L9_2 = L9_2.RogueHandbookTopTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.tab_control_root
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_data
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_icon_path
    L9_2 = L5_2.TypeIcon
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind_reddot
    L9_2 = "RogueHandbookMiracleRewardTab"
    L10_2 = L5_2.RogueHandbookMiracleType
    L7_2(L8_2, L9_2, L10_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_item_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._init_tab_control = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_tab_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  A0_2._current_grid_item_index = 0
  L3_2 = A0_2
  L2_2 = A0_2._on_grid_item_clicked
  L4_2 = 0
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_tab_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_grid_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_tab_title
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_back_btn_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  A0_2._current_selected_grid_item_index = A1_2
  L6_2 = A0_2
  L5_2 = A0_2._update_detail_panel
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._update_text
  L5_2(L6_2)
end
L1_1._on_grid_item_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L5_2 = A0_2._current_miracle_list
  L5_2 = L5_2[A2_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2
  L9_2 = L5_2.DisplayRow
  L9_2 = L9_2.MiracleIconPath
  L10_2 = L5_2.IsUnlocked
  L11_2 = nil
  L12_2 = L5_2.DisplayRow
  L12_2 = L12_2.MiracleName
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_btn_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_grid_item_clicked
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_reddot
  L8_2 = "RogueHandbookMiracleReward"
  L9_2 = L5_2.MiracleHandbookID
  L6_2(L7_2, L8_2, L9_2)
  if A2_2 == 0 then
    L6_2 = 1
  end
  L6_2 = L3_2.transform
  L6_2 = L6_2.gameObject
  L7_2 = "RogueHandbookMiracle"
  L8_2 = tostring
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  L6_2.name = L7_2
  return L3_2
end
L1_1._on_miracle_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_miracle_list
  L2_2 = A0_2._current_selected_grid_item_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.IsUnlocked
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._update_unlocked_miracle_text
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._update_get_miracle_text
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.miracle_desc_scroll_rect
  L2_2.verticalNormalizedPosition = 1
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_desc
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_bg_desc
  L3_2 = L3_2.transform
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_desc_root
  L2_2(L3_2)
end
L1_1._update_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_desc
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_bg_desc
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_miracle_list
  L2_2 = A0_2._current_selected_grid_item_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.Row
  L2_2 = L2_2.UnlockIDList
  L2_2 = L2_2.Length
  L3_2 = ""
  L4_2 = 0
  L5_2 = L2_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = A0_2
    L8_2 = A0_2._generate_unlock_config
    L10_2 = L1_2
    L11_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = G
    L9_2 = L9_2.TextmapStatic
    L9_2 = L9_2.GetText
    L10_2 = L8_2.textid
    L9_2 = L9_2(L10_2)
    L10_2 = "\239\188\136"
    L11_2 = L8_2.current_progress
    L12_2 = "/"
    L13_2 = L8_2.requirement
    L14_2 = ")"
    L15_2 = "\n"
    L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    L10_2 = L3_2
    L11_2 = L9_2
    L3_2 = L10_2 .. L11_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.miracle_desc
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1._update_locked_miracle_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_desc
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_bg_desc
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_HandBook_Miracle_UnKown_Tip_1"
  L1_2(L2_2, L3_2)
end
L1_1._update_unlocked_miracle_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_desc
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_miracle_list
  L2_2 = A0_2._current_selected_grid_item_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.DisplayRow
  L2_2 = L2_2.MiracleDesc
  L3_2 = L1_2.DisplayRow
  L3_2 = L3_2.DescParamList
  L4_2 = L1_2.DisplayRow
  L4_2 = L4_2.MiracleBGDesc
  L5_2 = L4_2 ~= nil
  L6_2 = A0_2._binder
  L6_2 = L6_2.miracle_desc
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L2_2
  L9_2 = G
  L9_2 = L9_2.UITextUtils
  L9_2 = L9_2.GetSkillParams
  L10_2 = L3_2
  L9_2, L10_2 = L9_2(L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.miracle_bg_desc
  L6_2 = L6_2.transform
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.miracle_bg_desc
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
end
L1_1._update_get_miracle_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueTextDescPanel
    L8_2 = G
    L8_2 = L8_2.RogueTextDescPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._current_miracle_list
  L6_2 = A0_2._current_selected_grid_item_index
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.IsUnlocked
  if not L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._generate_unlock_config
    L8_2 = L5_2
    L9_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L4_2
    L7_2 = L4_2.setup_view_by_unlock_config
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  elseif A2_2 == 0 then
    L7_2 = L4_2
    L6_2 = L4_2.setup_textid_with_next_line
    L8_2 = L5_2.DisplayRow
    L8_2 = L8_2.MiracleDesc
    L9_2 = G
    L9_2 = L9_2.UITextUtils
    L9_2 = L9_2.GetSkillParams
    L10_2 = L5_2.DisplayRow
    L10_2 = L10_2.DescParamList
    L9_2, L10_2 = L9_2(L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  elseif A2_2 == 1 then
    L7_2 = L4_2
    L6_2 = L4_2.setup_bg_desc_text
    L8_2 = L5_2.DisplayRow
    L8_2 = L8_2.MiracleBGDesc
    L9_2 = ""
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L1_1._on_text_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._current_miracle_list
  L3_2 = A0_2._current_selected_grid_item_index
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2.Row
  L5_2 = A0_2
  L4_2 = A0_2._update_reward_view
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  if A1_2 == true then
    return
  end
  L4_2 = L2_2.DisplayRow
  L5_2 = L2_2.IsUnlocked
  if not L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.miracle_name_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Rogue_HandBook_UnKownTitle"
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._update_img_view
    L7_2 = 0
    L8_2 = L4_2.MiracleFigureIconPath
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.miracle_name_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_2.MiracleName
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._update_img_view
    L7_2 = 1
    L8_2 = L4_2.MiracleFigureIconPath
    L5_2(L6_2, L7_2, L8_2)
  end
end
L1_1._update_detail_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 ~= nil and A2_2 ~= "" then
    L4_2 = A0_2
    L3_2 = A0_2.load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.miracle_img
    L5_2 = L5_2[A1_2]
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_img
  L3_2 = L3_2[0]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 == 0
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.miracle_img
  L3_2 = L3_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 == 1
  L3_2(L4_2, L5_2)
end
L1_1._update_img_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A2_2.MiracleReward
  if 0 < L3_2 then
    L4_2 = G
    L4_2 = L4_2.RewardUtils
    L4_2 = L4_2.CreateRewardItemTable
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_12
    end
  end
  L4_2 = nil
  ::lbl_12::
  L5_2 = L4_2 ~= nil
  L6_2 = A1_2.HasTakenReward
  L7_2 = L5_2 or L7_2
  if L5_2 then
    L7_2 = not L6_2
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reward_root
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L7_2 == false then
    L8_2 = A0_2._current_selected_grid_item_index
    A0_2._cur_play_reward_index = L8_2
    return
  end
  L8_2 = A1_2.IsUnlocked
  L9_2 = A0_2._binder
  L9_2 = L9_2.text_reward_title
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetTextID
  L11_2 = "UIText_Rogue_Handbook_MiracleReward_Title"
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_reward_item
  L10_2 = L9_2
  L9_2 = L9_2.setup_view_by_reward_item
  L11_2 = L4_2[1]
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_reward_item
  L10_2 = L9_2
  L9_2 = L9_2.bind_click
  L11_2 = A0_2
  L12_2 = A0_2._on_reward_click
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reward_status
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = not L8_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_reward_item
  L10_2 = L9_2
  L9_2 = L9_2.update_lock_mark
  L11_2 = not L8_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reward_canget_effect
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L8_2 or L11_2
  if L8_2 then
    L11_2 = not L6_2
  end
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reward_unlock_effect
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L8_2 or L11_2
  if L8_2 then
    L11_2 = not L6_2
  end
  L9_2(L10_2, L11_2)
  if L8_2 then
    L9_2 = A0_2._cur_play_reward_index
    L10_2 = A0_2._current_selected_grid_item_index
    if L9_2 ~= L10_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.panel_reward_item
      L10_2 = L9_2
      L9_2 = L9_2.play_effect
      L11_2 = 1
      L9_2(L10_2, L11_2)
    end
  end
  L9_2 = A0_2._current_selected_grid_item_index
  A0_2._cur_play_reward_index = L9_2
end
L1_1._update_reward_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._current_miracle_list
  L4_2 = A0_2._current_selected_grid_item_index
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.HasRewardCanTake
  if L4_2 == true then
    L5_2 = A0_2
    L4_2 = A0_2.show_full_screen_block_for_packet
    L6_2 = CS
    L6_2 = L6_2.PBIBDHBOIGI
    L6_2 = L6_2.JGJIACIHMEJ
    L4_2(L5_2, L6_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_NetworkManager
    L5_2 = L4_2
    L4_2 = L4_2.KMLALHMHBLB
    L6_2 = L3_2.Row
    L6_2 = L6_2.MiracleHandbookID
    L4_2(L5_2, L6_2)
  else
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_show
    L5_2 = "Ui.Common.ItemDetailDialog"
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
end
L1_1._on_reward_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueUnlockConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.Row
  L4_2 = L4_2.UnlockIDList
  L4_2 = L4_2[A2_2]
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FinishWayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.UnlockFinishWay
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = -1
  L7_2 = L3_2.RogueUnlockDetail
  L5_2.textid = L7_2
  L7_2 = L4_2.Progress
  L5_2.requirement = L7_2
  if L6_2 == -1 then
    L5_2.current_progress = 0
  else
    L5_2.current_progress = L6_2
  end
  return L5_2
end
L1_1._generate_unlock_config = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_detail_panel
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1._on_get_reward = L2_1
return L1_1
