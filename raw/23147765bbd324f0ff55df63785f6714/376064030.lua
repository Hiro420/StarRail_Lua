local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritRoundIconListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritRoundIconListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherUI3D.AetherSpiritUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = 45
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._spirit_ui3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._enable_camera_rot_or_zoom
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._enable_spirit_3d_rotate = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._spirit_data = A1_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = false
  end
  A0_2._is_locate = L5_2
  A0_2._line_up_data = A4_2
  if A3_2 ~= nil then
    A0_2._spirit_data_table = A3_2
  else
    L6_2 = A0_2
    L5_2 = A0_2._get_spirit_data_table
    L5_2 = L5_2(L6_2)
    A0_2._spirit_data_table = L5_2
  end
  L5_2 = A0_2._spirit_data
  if L5_2 == nil then
    L5_2 = A0_2._spirit_data_table
    L5_2 = L5_2[1]
    A0_2._spirit_data = L5_2
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = L1_1.AllAetherMonsterAvatars
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Promotion
    if 0 < L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUtils
  L3_2 = L3_2.sort_spirit_table
  L4_2 = L1_2
  L5_2 = false
  L6_2 = A0_2._line_up_data
  L3_2(L4_2, L5_2, L6_2)
  return L1_2
end
L0_1._get_spirit_data_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_detail_panel
  if L1_2 then
    L1_2 = A0_2._spirit_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = nil
    return L1_2
  end
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_hide_spirit_icon_list = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_icon_list_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._spirit_icon_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_hide
    L3_2 = A0_2._is_hide_spirit_icon_list
    L1_2(L2_2, L3_2)
  end
end
L0_1.hide_spirit_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._spirit_icon_list_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._spirit_icon_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_btn_select_dialog
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_btn_select_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._swipe_callback
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_easy_touch_event = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._spirit_ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._enable_spirit_3d_rotate
    if L2_2 then
      L2_2 = A0_2._spirit_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.rotate_spirit
      L4_2 = A1_2.deltaPosition
      L4_2 = L4_2.x
      L4_2 = -L4_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._swipe_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.RightStickLeft
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_right_stick_left
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightStickRight
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_right_stick_right
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_press = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._spirit_ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._enable_spirit_3d_rotate
      if L2_2 then
        L2_2 = A0_2._spirit_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.rotate_spirit
        L4_2 = L2_1
        L4_2 = A1_2 * L4_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_right_stick_left = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._spirit_ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._enable_spirit_3d_rotate
      if L2_2 then
        L2_2 = A0_2._spirit_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.rotate_spirit
        L4_2 = -A1_2
        L5_2 = L2_1
        L4_2 = L4_2 * L5_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_right_stick_right = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnSyncSpirit
  L4_2 = L0_1._on_spirit_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnPromote
  L4_2 = L0_1._on_spirit_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnEquipSkillCore
  L4_2 = L0_1._on_spirit_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritOnTakeOffSkillCore
  L4_2 = L0_1._on_spirit_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritRoundIconListPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritRoundIconListPanelBinder
  L5_2 = A0_2._spirit_data
  L6_2 = A0_2._is_locate
  L7_2 = A0_2._spirit_data_table
  L8_2 = A0_2._line_up_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._spirit_icon_list_panel = L1_2
  L1_2 = A0_2._spirit_icon_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spirit_round_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritMainDetailPanel
  L4_2 = G
  L4_2 = L4_2.AetherSpiritMainDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._spirit_detail_panel = L1_2
  L1_2 = A0_2._spirit_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_detail
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._allow_camera_zoom_rotation_by_mouse = A1_2
  A0_2._allow_camera_rotation = false
  A0_2._allow_camera_zoom_by_gamepad = A1_2
end
L0_1._enable_camera_rot_or_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._spirit_icon_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._spirit_icon_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_spirit_icon
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._spirit_icon_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_open_select_dialog_callback
  L3_2 = A0_2._on_click_open_select_dialog
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L1_2 = A0_2._spirit_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_spirit
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_easy_touch_event
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.AetherSpiritOnMainPageOpen
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._spirit_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._spirit_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_data
  L2_2 = L1_2
  L1_2 = L1_2.SetIsNew
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._spirit_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L2_2 = A0_2._spirit_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.switch_spirit
  L4_2 = A0_2._spirit_data
  L2_2(L3_2, L4_2)
end
L0_1._on_click_spirit_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritSelect.AetherSpiritSelectDialog"
  L3_2 = A0_2._spirit_data
  L4_2 = A0_2._spirit_data_table
  L5_2 = A0_2._line_up_data
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_click_spirit_item_callback
  L4_2 = A0_2._on_select_dialog_item_clicked
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_close_callback
  L4_2 = A0_2._on_select_dialog_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._spirit_icon_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_alpha
  L4_2 = 0
  L2_2(L3_2, L4_2)
end
L0_1._on_click_open_select_dialog = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_click_spirit_icon
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._spirit_icon_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.trigger_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_select_dialog_item_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_spirit_round_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_icon_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_alpha
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_select_dialog_close = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.ID
  L3_2 = A1_2.ID
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_refresh
    L2_2(L3_2)
  end
end
L0_1._on_spirit_sync = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._spirit_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_anim_trigger
  L3_2 = "OnSpiritList"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._spirit_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.reset_camera
  L1_2(L2_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
