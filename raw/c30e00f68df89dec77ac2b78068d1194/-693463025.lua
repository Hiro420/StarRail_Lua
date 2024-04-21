local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.Widget.TeamDataInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TeamListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_show_activated_hint = true
  A0_2._is_show_btns = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._cur_team_data = A1_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._is_show_btns = true
  A0_2._on_btn_confirm_click = A1_2
  A0_2._on_btn_quick_edit_click = A2_2
end
L0_1.bind_btn_callbacks = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_confirm_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._loaded_callback = A1_2
  A0_2._loaded_callback_self = A2_2
end
L0_1.set_loaded_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_show_activated_hint = A1_2
end
L0_1.show_activated_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_team_data_info
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetBattleTeam
  L4_2 = A0_2._refresh_team_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamCurrentEditTeamSwitched
  L4_2 = A0_2._refresh_team_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamDataRefresh
  L4_2 = A0_2._on_team_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_edit
  L4_2 = A0_2._on_btn_quick_edit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.MainlineTeamCount
  L2_2 = {}
  A0_2._team_data_list = L2_2
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetMainlineTeam
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._team_data_list
    L8_2 = A0_2._team_data_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L7_2[L8_2] = L6_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.team_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._team_data_list
  L4_2 = A0_2._cur_team_data
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = 1
  end
  if L2_2 ~= 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.team_list
    L4_2 = L3_2
    L3_2 = L3_2.MovePanelToItemIndex
    L5_2 = L2_2 - 1
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_team_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._loaded_callback
  L5_2 = A0_2._loaded_callback_self
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  A0_2._loaded_callback = nil
  A0_2._loaded_callback_self = nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btns
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_show_btns
  L3_2(L4_2, L5_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_28
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.TeamDataInfoPanel
  L8_2 = G
  L8_2 = L8_2.TeamDataInfoPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_team_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.show_bg_index_mark
  L7_2 = true
  L5_2(L6_2, L7_2)
  ::lbl_28::
  L5_2 = A0_2._team_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._cur_team_data
  L6_2 = L5_2 == L6_2
  L7_2 = L5_2.MainLineIndex
  L8_2 = L1_1.CurrentMainlineTeamIndex
  L7_2 = L7_2 == L8_2
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_selected
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.show_activate_hint
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L6_2 then
    A0_2._cur_panel = L4_2
    A0_2._cur_team_data = L5_2
  end
  return L3_2
end
L0_1._on_get_team_data_info = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._cur_team_data
  if A1_2 == L3_2 then
    return
  end
  L3_2 = A0_2._cur_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_team_data = A1_2
  A0_2._cur_panel = A2_2
  L3_2 = A0_2._cur_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._callback
  L5_2 = A0_2._callback_self
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_team_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
end
L0_1._refresh_team_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_show_activated_hint
  if L1_2 then
    L1_2 = A0_2._cur_team_data
    L1_2 = L1_2.MainLineIndex
    L2_2 = L1_1.CurrentMainlineTeamIndex
    L1_2 = L1_2 == L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_activated
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._need_refresh = true
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_info
  L1_2(L2_2)
end
L0_1._on_team_data_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._need_refresh
  if not L1_2 then
    return
  end
  A0_2._need_refresh = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_team_info
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btns
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_confirm_click
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_quick_edit_click
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_quick_edit = L2_1
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.team_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.team_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.save_navigation_target
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1.in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.team_list
    L2_2 = L1_2
    L1_2 = L1_2.MovePanelToItemIndex
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._on_in_control_input_switch = L2_1
return L0_1
