local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueDLCEntranceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueDLCEntranceItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueDLCEntranceDisplayDataItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueEntranceStateProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueEntranceClickAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousEntranceStateProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousEntranceClickAction"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousEntranceLockDataProvider"
L0_1(L1_1)
L0_1 = 100
L1_1 = 0.6
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.RogueSubMode
L3_1 = L3_1.ChessRogue
L4_1 = G
L4_1 = L4_1.ChessRogueEntranceStateProvider
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.RogueSubMode
L3_1 = L3_1.ChessRogueNous
L4_1 = G
L4_1 = L4_1.RogueNousEntranceStateProvider
L2_1[L3_1] = L4_1
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.RogueSubMode
L4_1 = L4_1.ChessRogue
L5_1 = G
L5_1 = L5_1.ChessRogueEntranceClickAction
L3_1[L4_1] = L5_1
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.RogueSubMode
L4_1 = L4_1.ChessRogueNous
L5_1 = G
L5_1 = L5_1.RogueNousEntranceClickAction
L3_1[L4_1] = L5_1
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.RogueSubMode
L5_1 = L5_1.ChessRogueNous
L6_1 = G
L6_1 = L6_1.RogueNousEntranceLockDataProvider
L4_1[L5_1] = L6_1
L5_1 = {}
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.RogueSubMode
L6_1 = L6_1.ChessRogue
L5_1[L6_1] = "ChessRogue"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.RogueSubMode
L6_1 = L6_1.ChessRogueNous
L5_1[L6_1] = "RogueNous"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "RogueDLCEntranceListPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2)
  A0_2._is_doing_snap = false
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shown_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_first_focused_item_index
  L1_2 = L1_2(L2_2)
  A0_2._cur_selected_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._load_all_prefabs
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dlc_entrance_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dlc_entrance_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_nearest_changed
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dlc_entrance_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_item_finished
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapItemFinished = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rogue_loop_list_view_extra
  L2_2 = L1_2
  L1_2 = L1_2.RegisterDragStartCallback
  L3_2 = A0_2
  L4_2 = A0_2._on_drag_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = L6_1._on_tutorial_move_scroll_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueSelectMainPagePlayDialogTransfer
  L4_2 = A0_2._on_rogue_select_main_page_play_dialog_transfer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_bind_input_callback
  L1_2(L2_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._dlc_shown_entrance_datas = nil
  L1_2 = A0_2._dlc_entrance_datas
  if L1_2 ~= nil then
    L1_2 = A0_2._dlc_entrance_datas
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = A0_2._dlc_entrance_datas
      L7_2 = L7_2[L5_2]
      L6_2(L7_2)
      L6_2 = A0_2._dlc_entrance_datas
      L6_2[L5_2] = nil
    end
    A0_2._dlc_entrance_datas = nil
  end
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shown_item_state
  L1_2(L2_2)
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2, A1_2)
  A0_2._item_dot_list_panel = A1_2
end
L6_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_shown_data
  L2_2(L3_2)
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._find_data_by_rogue_sub_mode
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._cur_selected_index = L2_2
  end
  L2_2 = A0_2._cur_selected_index
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_first_focused_item_index
    L2_2 = L2_2(L3_2)
    A0_2._cur_selected_index = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.dlc_entrance_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._dlc_shown_entrance_datas
  L4_2 = #L4_2
  L4_2 = L4_2 + 2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dlc_entrance_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._move_to_index
  L4_2 = A0_2._cur_selected_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_dot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_item_count
  L4_2 = A0_2._dlc_shown_entrance_datas
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_dot_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = A0_2._cur_selected_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_pattern_bg
  L3_2 = L2_2
  L2_2 = L2_2.switch_pattern_bg
  L4_2 = A0_2._dlc_shown_entrance_datas
  L5_2 = A0_2._cur_selected_index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.row
  L4_2 = L4_2.SubType
  L2_2(L3_2, L4_2)
end
L6_1.refresh_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.dlc_entrance_list
  L1_2 = L1_2.CurSnapNearestItemIndex
  L2_2 = A0_2._cur_selected_index
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_execute_action
    L2_2(L3_2)
  end
end
L6_1.do_gamepad_confirm_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.dlc_entrance_list
  L2_2 = L2_2.ItemList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.UserObjectData
      if L7_2 ~= nil then
        L7_2 = L2_2[L6_2]
        L7_2 = L7_2.UserObjectData
        if A1_2 then
          L8_2 = L2_2[L6_2]
          L8_2 = L8_2.ItemIndex
          L9_2 = A0_2._cur_selected_index
          if L8_2 == L9_2 then
            goto lbl_28
          end
        end
        L9_2 = L7_2
        L8_2 = L7_2.set_enabled
        L10_2 = A1_2
        L8_2(L9_2, L10_2)
      end
    end
    ::lbl_28::
  end
  if not A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_pattern_bg
    L4_2 = L3_2
    L3_2 = L3_2.hide_all_pattern_bgs
    L3_2(L4_2)
  end
end
L6_1.play_fade_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_selected_index
  if L1_2 ~= nil then
    L1_2 = A0_2._dlc_shown_entrance_datas
    L2_2 = A0_2._cur_selected_index
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._dlc_shown_entrance_datas
  L2_2 = A0_2._cur_selected_index
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.sub_mode
  return L1_2
end
L6_1.get_cur_dlc_sub_mode = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A2_2 == 0
  if L3_2 then
    L5_2 = A1_2
    L4_2 = A1_2.NewListViewItem
    L6_2 = 0
    return L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._dlc_shown_entrance_datas
  L4_2 = L4_2[A2_2]
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 ~= nil then
    L7_2 = L6_2.is_destroyed
    if not L7_2 then
      goto lbl_42
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2.create_panel
  L9_2 = G
  L9_2 = L9_2.RogueDLCEntranceItemPanel
  L10_2 = G
  L10_2 = L10_2.RogueDLCEntranceItemPanelBinder
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L7_2
  L8_2 = L6_2
  L7_2 = L6_2.bind
  L9_2 = L5_2.transform
  L7_2(L8_2, L9_2)
  L5_2.UserObjectData = L6_2
  L8_2 = L6_2
  L7_2 = L6_2.register_click_callback
  L9_2 = A0_2._on_item_click
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  ::lbl_42::
  L8_2 = L6_2
  L7_2 = L6_2.setup_view
  L9_2 = L4_2.row
  L10_2 = L4_2.state_provider
  L11_2 = L4_2.reddot_key
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_selected
  L9_2 = A0_2._cur_selected_index
  L9_2 = A2_2 == L9_2
  L7_2(L8_2, L9_2)
  return L5_2
end
L6_1._on_item_changed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._snap_to_index
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_pattern_bg
  L3_2 = L2_2
  L2_2 = L2_2.switch_pattern_bg
  L4_2 = A0_2._dlc_shown_entrance_datas
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.sub_mode
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_selected_index
  if L2_2 == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_execute_action
    L2_2(L3_2)
  end
end
L6_1._on_item_click = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2.ItemIndex
  L3_2 = L3_2 == 0
  if L3_2 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsObjectNull
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = A2_2.ItemIndex
  L5_2 = A0_2._nearest_item
  if L5_2 ~= nil then
    L5_2 = A0_2._nearest_item
    L5_2 = L5_2.ItemIndex
    if L5_2 == L4_2 then
      return
    end
  end
  L5_2 = A0_2._nearest_item
  if L5_2 ~= nil then
    L5_2 = A0_2._nearest_item
    L5_2 = L5_2.UserObjectData
    if L5_2 ~= nil then
      L5_2 = A0_2._nearest_item
      L5_2 = L5_2.UserObjectData
      L6_2 = L5_2
      L5_2 = L5_2.set_selected
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
  A0_2._nearest_item = A2_2
  L5_2 = A0_2._nearest_item
  if L5_2 ~= nil then
    L5_2 = A0_2._nearest_item
    L5_2 = L5_2.UserObjectData
    if L5_2 ~= nil then
      L5_2 = A0_2._nearest_item
      L5_2 = L5_2.UserObjectData
      L6_2 = L5_2
      L5_2 = L5_2.set_selected
      L7_2 = true
      L5_2(L6_2, L7_2)
    end
  end
  A0_2._cur_selected_index = L4_2
  L5_2 = A0_2._item_dot_list_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_selected
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_pattern_bg
  L6_2 = L5_2
  L5_2 = L5_2.switch_pattern_bg
  L7_2 = A0_2._dlc_shown_entrance_datas
  L7_2 = L7_2[L4_2]
  L7_2 = L7_2.row
  L7_2 = L7_2.SubType
  L5_2(L6_2, L7_2)
end
L6_1._on_snap_nearest_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._is_doing_snap = false
end
L6_1._on_snap_item_finished = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == 0 then
    return
  end
  if A1_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L6_1._on_drag_start = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == "RogueNous" then
    L3_2 = A0_2
    L2_2 = A0_2._find_data_by_rogue_sub_mode
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueSubMode
    L4_2 = L4_2.ChessRogueNous
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._snap_to_index
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L6_1._on_tutorial_move_scroll_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 or not A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._play_half_screen_dialog_show_anim
  L2_2(L3_2)
end
L6_1._on_rogue_select_main_page_play_dialog_transfer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSelectMainPagePlayDialogTransfer
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_half_screen_dialog_exit_anim
  L1_2(L2_2)
end
L6_1._on_half_screen_dialog_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._dlc_entrance_datas = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueDLCEntranceExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.RogueDLCEntranceDisplayDataItem
    L4_2 = L1_2.Current
    L2_2 = L2_2(L3_2, L4_2)
    L2_2.state_provider = nil
    L3_2 = L2_2.sub_mode
    L3_2 = L2_1[L3_2]
    if L3_2 ~= nil then
      L3_2 = G
      L3_2 = L3_2.new
      L4_2 = L2_2.sub_mode
      L4_2 = L2_1[L4_2]
      L3_2 = L3_2(L4_2)
      L2_2.state_provider = L3_2
    end
    L2_2.click_action = nil
    L3_2 = L2_2.sub_mode
    L3_2 = L3_1[L3_2]
    if L3_2 ~= nil then
      L3_2 = G
      L3_2 = L3_2.new
      L4_2 = L2_2.sub_mode
      L4_2 = L3_1[L4_2]
      L3_2 = L3_2(L4_2)
      L2_2.click_action = L3_2
    end
    L2_2.lock_data_provider = nil
    L3_2 = L2_2.sub_mode
    L3_2 = L4_1[L3_2]
    if L3_2 ~= nil then
      L3_2 = G
      L3_2 = L3_2.new
      L4_2 = L2_2.sub_mode
      L4_2 = L4_1[L4_2]
      L3_2 = L3_2(L4_2)
      L2_2.lock_data_provider = L3_2
    end
    L3_2 = L2_2.sub_mode
    L3_2 = L5_1[L3_2]
    L2_2.reddot_key = L3_2
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._dlc_entrance_datas
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L6_1._init_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2._dlc_entrance_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.row
    L6_2 = L6_2.ButtonPath
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.AssetLoader
    L7_2 = L7_2.SyncLoadAsset
    L8_2 = L6_2
    L9_2 = typeof
    L10_2 = CS
    L10_2 = L10_2.UnityEngine
    L10_2 = L10_2.GameObject
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = CS
    L8_2 = L8_2.SuperScrollView
    L8_2 = L8_2.ItemPrefabConfData
    L8_2 = L8_2()
    L8_2.mItemPrefab = L7_2
    L9_2 = L0_1
    L8_2.mPadding = L9_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.dlc_entrance_list
    L9_2 = L9_2.ItemPrefabDataList
    L10_2 = L9_2
    L9_2 = L9_2.Add
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L6_1._load_all_prefabs = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._dlc_shown_entrance_datas = L1_2
  L1_2 = pairs
  L2_2 = A0_2._dlc_entrance_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.state_provider
    if L6_2 ~= nil then
      L6_2 = L5_2.state_provider
      L7_2 = L6_2
      L6_2 = L6_2.is_show
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        goto lbl_20
      end
    end
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._dlc_shown_entrance_datas
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    ::lbl_20::
  end
end
L6_1._refresh_shown_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.dlc_entrance_list
  L2_2 = L2_2.ItemList
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      if L6_2 ~= nil then
        L6_2 = L5_2.UserObjectData
        L7_2 = A0_2._dlc_shown_entrance_datas
        L8_2 = L5_2.ItemIndex
        L7_2 = L7_2[L8_2]
        L9_2 = L6_2
        L8_2 = L6_2.setup_view
        L10_2 = L7_2.row
        L11_2 = L7_2.state_provider
        L12_2 = L7_2.reddot_key
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end
L6_1._refresh_shown_item_state = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueAdventureModule
  L2_2 = L1_2.LastRogueDLCSubMode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueUtils
  L3_2 = L3_2.IsDLCSubMode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueSubMode
    L2_2 = L3_2.ChessRogue
  end
  L4_2 = A0_2
  L3_2 = A0_2._find_data_by_rogue_sub_mode
  L5_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    return L3_2
  end
  L5_2 = A0_2._dlc_shown_entrance_datas
  L5_2 = #L5_2
  return L5_2
end
L6_1._get_first_focused_item_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._cur_selected_index
  L2_2 = A0_2._binder
  L2_2 = L2_2.dlc_entrance_list
  L2_2 = L2_2.CurSnapNearestItemIndex
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._move_to_index
    L3_2 = A0_2._cur_selected_index
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._dlc_shown_entrance_datas
  L2_2 = A0_2._cur_selected_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.state_provider
  if L2_2 ~= nil then
    L2_2 = L1_2.state_provider
    L3_2 = L2_2
    L2_2 = L2_2.is_locked
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Rogue.MainPage.RogueDLCEntranceLockDialog"
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2.LuaTable
      L4_2 = L3_2
      L3_2 = L3_2.set_exit_callback
      L5_2 = A0_2._on_half_screen_dialog_exit
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
  end
  else
    L2_2 = L1_2.click_action
    if L2_2 ~= nil then
      L2_2 = L1_2.click_action
      L3_2 = L2_2
      L2_2 = L2_2.on_click
      L2_2(L3_2)
    end
  end
end
L6_1._try_execute_action = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_do_border_rebound
  L3_2 = A0_2._cur_selected_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._snap_to_index
  L3_2 = A0_2._cur_selected_index
  L3_2 = L3_2 - 1
  L1_2(L2_2, L3_2)
end
L6_1._try_switch_to_prev = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_do_border_rebound
  L3_2 = A0_2._cur_selected_index
  L3_2 = L3_2 + 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._snap_to_index
  L3_2 = A0_2._cur_selected_index
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
end
L6_1._try_switch_to_next = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not (A1_2 < 1) then
    L2_2 = A0_2._dlc_shown_entrance_datas
    L2_2 = #L2_2
    if not (A1_2 > L2_2) then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.dlc_entrance_list
  L4_2 = L3_2
  L3_2 = L3_2.SetSnapTargetItemIndex
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._is_doing_snap = true
end
L6_1._snap_to_index = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.dlc_entrance_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A1_2 - 1
  L2_2(L3_2, L4_2)
end
L6_1._move_to_index = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_doing_snap
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rogue_loop_list_view_extra
  L3_2 = L2_2
  L2_2 = L2_2.ShowBorderAdjust
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_doing_snap = true
end
L6_1._do_border_rebound = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 < 1 then
    L3_2 = A0_2
    L2_2 = A0_2._do_border_rebound
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._dlc_shown_entrance_datas
  L2_2 = #L2_2
  if A1_2 > L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._do_border_rebound
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L6_1._try_do_border_rebound = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dlc_entrance_list
  L1_2 = L1_2.ItemList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UserObjectData
      if L6_2 ~= nil then
        L6_2 = L1_2[L5_2]
        L6_2 = L6_2.ItemIndex
        L7_2 = L1_2[L5_2]
        L7_2 = L7_2.UserObjectData
        L8_2 = A0_2._cur_selected_index
        if L6_2 == L8_2 then
          L9_2 = L7_2
          L8_2 = L7_2.set_in_dialog
          L10_2 = true
          L8_2(L9_2, L10_2)
        else
          L9_2 = L7_2
          L8_2 = L7_2.set_enabled
          L10_2 = false
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
end
L6_1._play_half_screen_dialog_show_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dlc_entrance_list
  L1_2 = L1_2.ItemList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UserObjectData
      if L6_2 ~= nil then
        L6_2 = L1_2[L5_2]
        L6_2 = L6_2.ItemIndex
        L7_2 = L1_2[L5_2]
        L7_2 = L7_2.UserObjectData
        L8_2 = A0_2._cur_selected_index
        if L6_2 == L8_2 then
          L9_2 = L7_2
          L8_2 = L7_2.set_in_dialog
          L10_2 = false
          L8_2(L9_2, L10_2)
        else
          L9_2 = L7_2
          L8_2 = L7_2.set_enabled
          L10_2 = true
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
end
L6_1._play_half_screen_dialog_exit_anim = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2._dlc_shown_entrance_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.row
    L7_2 = L7_2.SubType
    if L7_2 == A1_2 then
      L7_2 = L5_2
      L8_2 = L6_2
      return L7_2, L8_2
    end
  end
  L2_2 = nil
  L3_2 = nil
  return L2_2, L3_2
end
L6_1._find_data_by_rogue_sub_mode = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2.is_active_in_hierarchy
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = A0_2._wait_in_control_release
  if L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InControlActionsManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.InControlInputEventEnabled
  if not L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = L1_1
    if A2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_switch_to_prev
      L3_2(L4_2)
      A0_2._wait_in_control_release = true
      return
    end
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickDown
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = L1_1
    if A2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_switch_to_next
      L3_2(L4_2)
      A0_2._wait_in_control_release = true
      return
    end
  end
end
L6_1._on_in_control_press = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickUp
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.LeftStickDown
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickLeft
      L2_2 = #L2_2
      if A1_2 ~= L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickRight
        L2_2 = #L2_2
        if A1_2 ~= L2_2 then
          return
        end
      end
    end
  end
  A0_2._wait_in_control_release = false
end
L6_1._on_in_control_released = L7_1
function L7_1(A0_2, A1_2)
  A0_2._wait_in_control_release = false
end
L6_1._on_in_control_input_switch = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadUp
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadDown
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L6_1._on_in_control_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if 0 < A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_prev
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_switch_to_next
    L2_2(L3_2)
  end
end
L6_1._on_mouse_wheel_roll = L7_1
return L6_1
