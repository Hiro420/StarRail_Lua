local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.BirthdayEditDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.NumPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.NumPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ButtonMutex"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BirthdayEditDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BirthdayEditDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._selected_month = 1
  A0_2._selected_day = 1
  A0_2._cur_navi_panel = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.EJKFNHPHBOJ
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.month_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_month_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.day_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_day_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.month_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2._lock_month
    if L2_3 then
      return
    end
    L2_3 = A1_3.UserObjectData
    L4_3 = L2_3
    L3_3 = L2_3.get_num
    L3_3 = L3_3(L4_3)
    A0_2._selected_month = L3_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._post_sound
    L3_3(L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._refresh_day_list
    L3_3(L4_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.day_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2._lock_day
    if L2_3 then
      return
    end
    L2_3 = A1_3.UserObjectData
    L4_3 = L2_3
    L3_3 = L2_3.get_num
    L3_3 = L3_3(L4_3)
    A0_2._selected_day = L3_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._post_sound
    L3_3(L4_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_month_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_day_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._lock_month = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.month_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 12
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.month_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L4_2 = A0_2
  L3_2 = A0_2._get_move_index_by_month
  L5_2 = A0_2._selected_month
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._lock_month = false
end
L0_1._refresh_month_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._lock_day = true
  L2_2 = A0_2
  L1_2 = A0_2._get_day_count_by_month
  L3_2 = A0_2._selected_month
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._day_count = L1_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._day_count
  L3_2 = A0_2._selected_day
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._selected_day = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.day_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._day_count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.day_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L4_2 = A0_2
  L3_2 = A0_2._get_move_index_by_day
  L5_2 = A0_2._selected_day
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.day_list
  L2_2 = L1_2
  L1_2 = L1_2.FinishSnapImmediately
  L1_2(L2_2)
  A0_2._lock_day = false
end
L0_1._refresh_day_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.NumPanel
    L8_2 = G
    L8_2 = L8_2.NumPanelBinder
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
  L7_2 = A2_2 + 1
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_num_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A2_2 % 12
  L5_2 = A0_2
  L4_2 = A0_2._on_num_item_changed
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.is_gamepad_input
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = A0_2._is_navi_month
    if L5_2 then
      L5_2 = L3_2 + 1
      L6_2 = A0_2._selected_month
      if L5_2 == L6_2 then
        L5_2 = L4_2.UserObjectData
        L7_2 = A0_2
        L6_2 = A0_2.set_navigation_target
        L9_2 = L5_2
        L8_2 = L5_2.get_first_selected_object
        L8_2, L9_2 = L8_2(L9_2)
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
  return L4_2
end
L0_1._on_month_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._day_count
  L3_2 = A2_2 % L3_2
  L5_2 = A0_2
  L4_2 = A0_2._on_num_item_changed
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.is_gamepad_input
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = A0_2._is_navi_month
    if not L5_2 then
      L5_2 = L3_2 + 1
      L6_2 = A0_2._selected_day
      if L5_2 == L6_2 then
        L5_2 = L4_2.UserObjectData
        L7_2 = A0_2
        L6_2 = A0_2.set_navigation_target
        L9_2 = L5_2
        L8_2 = L5_2.get_first_selected_object
        L8_2, L9_2 = L8_2(L9_2)
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
  return L4_2
end
L0_1._on_day_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 == 2 then
    L2_2 = 29
    return L2_2
  end
  if A1_2 == 4 or A1_2 == 6 or A1_2 == 9 or A1_2 == 11 then
    L2_2 = 30
    return L2_2
  end
  L2_2 = 31
  return L2_2
end
L0_1._get_day_count_by_month = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 - 1
  return L2_2
end
L0_1._get_move_index_by_month = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 - 1
  return L2_2
end
L0_1._get_move_index_by_day = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._finish_month_snap_immediately
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._finish_day_snap_immediately
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.PlayerUtils
      L1_3 = L1_3.do_modify_birthday
      L2_3 = A0_2._selected_month
      L3_3 = A0_2._selected_day
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.NIJNBICAPPA
      L3_3 = L3_3.EJKFNHPHBOJ
      L1_3(L2_3, L3_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Birthday_Confirm_Content"
  L5_2 = A0_2._selected_month
  L6_2 = A0_2._selected_day
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.month_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L4_2 = A0_2
  L3_2 = A0_2._get_move_index_by_month
  L5_2 = A0_2._selected_month
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._finish_month_snap_immediately = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.day_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToSnapPivotByItemIndex
  L4_2 = A0_2
  L3_2 = A0_2._get_move_index_by_day
  L5_2 = A0_2._selected_day
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._finish_day_snap_immediately = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_click_timePicker_select"
  L1_2(L2_2, L3_2)
end
L0_1._post_sound = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.DPadLeft
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_incontrol_left
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.DPadRight
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_incontrol_right
      L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.DPadUp
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._on_incontrol_up
        L2_2(L3_2)
      else
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.DPadDown
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._on_incontrol_down
          L2_2(L3_2)
        end
      end
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 < 0.9 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_incontrol_left
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickRight
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_incontrol_right
      L3_2(L4_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickUp
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_incontrol_up
        L3_2(L4_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickDown
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_incontrol_down
          L3_2(L4_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._is_navi_month
      if L1_2 then
        return
      end
      L1_2 = A0_2._move_month_list
      A0_2._cur_navi_func = L1_2
      A0_2._is_navi_month = true
      L1_2 = A0_2._binder
      L1_2 = L1_2.month_list
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.day_list
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
    end
  end
end
L0_1._on_incontrol_left = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._is_navi_month
      if not L1_2 then
        return
      end
      L1_2 = A0_2._move_day_list
      A0_2._cur_navi_func = L1_2
      A0_2._is_navi_month = false
      L1_2 = A0_2._binder
      L1_2 = L1_2.month_list
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.day_list
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
    end
  end
end
L0_1._on_incontrol_right = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._cur_navi_func
      L2_2 = A0_2
      L3_2 = -1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_incontrol_up = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._cur_navi_func
      L2_2 = A0_2
      L3_2 = 1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_incontrol_down = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._move_month_list
  A0_2._cur_navi_func = L1_2
  A0_2._is_navi_month = true
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._button_mutex
  L3_2 = L2_2
  L2_2 = L2_2.GetMutex
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._selected_month
  L2_2 = L2_2 + A1_2
  L2_2 = L2_2 % 12
  A0_2._selected_month = L2_2
  L2_2 = A0_2._selected_month
  if L2_2 == 0 then
    A0_2._selected_month = 12
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_move_index_by_month
  L4_2 = A0_2._selected_month
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.month_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToSnapPivotByItemIndex
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.month_list
  L4_2 = L3_2
  L3_2 = L3_2.FinishSnapImmediately
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._post_sound
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_day_list
  L3_2(L4_2)
  L3_2 = A0_2._button_mutex
  L4_2 = L3_2
  L3_2 = L3_2.SetMutex
  L5_2 = 0.2
  L3_2(L4_2, L5_2)
end
L0_1._move_month_list = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._button_mutex
  L3_2 = L2_2
  L2_2 = L2_2.GetMutex
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._selected_day
  L2_2 = L2_2 + A1_2
  L3_2 = A0_2._day_count
  L2_2 = L2_2 % L3_2
  A0_2._selected_day = L2_2
  L2_2 = A0_2._selected_day
  if L2_2 == 0 then
    L2_2 = A0_2._day_count
    A0_2._selected_day = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_move_index_by_day
  L4_2 = A0_2._selected_day
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.day_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToSnapPivotByItemIndex
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.day_list
  L4_2 = L3_2
  L3_2 = L3_2.FinishSnapImmediately
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._post_sound
  L3_2(L4_2)
  L3_2 = A0_2._button_mutex
  L4_2 = L3_2
  L3_2 = L3_2.SetMutex
  L5_2 = 0.2
  L3_2(L4_2, L5_2)
end
L0_1._move_day_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.GetShownItemByItemIndex
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.UserObjectData
  L6_2 = A0_2
  L5_2 = A0_2.set_navigation_target
  L8_2 = L4_2
  L7_2 = L4_2.get_first_selected_object
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._set_navi_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = A0_2._is_navi_month
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._set_navi_panel
        L4_2 = A0_2._binder
        L4_2 = L4_2.month_list
        L6_2 = A0_2
        L5_2 = A0_2._get_move_index_by_month
        L7_2 = A0_2._selected_month
        L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2._set_navi_panel
        L4_2 = A0_2._binder
        L4_2 = L4_2.day_list
        L6_2 = A0_2
        L5_2 = A0_2._get_move_index_by_day
        L7_2 = A0_2._selected_day
        L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.month_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L4_2 = A0_2
  L3_2 = A0_2._get_move_index_by_month
  L5_2 = A0_2._selected_month
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = nil
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_in_control_input_switch = L1_1
return L0_1
