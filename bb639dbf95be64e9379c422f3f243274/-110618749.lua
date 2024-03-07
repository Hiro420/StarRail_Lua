local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.RogueSelectBuffPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectBuffToEnhancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectBuffPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 == true then
    L3_2 = G
    L3_2 = L3_2.ImportCsToLua
    L3_2 = L3_2.CS_RPG_Client_UILayer_Dialog
    A0_2._ui_layer = L3_2
  else
    L3_2 = G
    L3_2 = L3_2.RogueUtils
    L3_2 = L3_2.add_mission_performance_lock
    L4_2 = A0_2
    L3_2(L4_2)
  end
  A0_2._action = A1_2
  L3_2 = {}
  A0_2._buffs = L3_2
  A0_2._select_index = 0
  A0_2._is_short_desc = true
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._execute_exit_callback
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_mission_performance_lock
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._execute_exit_callback = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_buff_row
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_page_button
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._show_res_bar
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.toggle_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.toggle_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_page_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_page_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_page_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2 or L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_buff_page_button = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  A0_2._select_index = nil
  L2_2 = A0_2
  L1_2 = A0_2._show_select_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_res_bar
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_buff_page_button
      L3_2 = A0_2._show_res_bar
      L3_2 = not L3_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_in_control_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_rogue_triggered_action_id
  L2_2 = A0_2._action
  L1_2(L2_2)
  A0_2._buffs = nil
  A0_2._select_index = nil
  A0_2._is_short_desc = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_discard
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_discard_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_discard_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reset
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_select_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_page
  L4_2 = L0_1._on_btn_buff_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle_switch
  L4_2 = L0_1._on_btn_switch_desc
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_res_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.JLLNJFPIPKA
  L4_2 = A0_2._on_get_rogue_handbook_data_sc_rsp
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.InputDeviceClassSwitched
  L4_2 = L0_1._on_in_control_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._play_buff_card_flip_animation
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueFinishAeonDialogue
  L4_2 = L0_1._play_buff_card_flip_animation
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshFuncEntrance
  L4_2 = L0_1._on_ui_refresh_func_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRogueActionRsp
  L4_2 = L0_1._on_rogue_action_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_select_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueNous_Select_Buff_Enhance_Hint_1"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_page_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Buff_Title_Up_Level"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueNous_Select_Buff_Enhance_Button_1"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_buff_card_flip_animation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._select_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_close_if_empty
  L1_2(L2_2)
end
L0_1._custom_setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buffs
  if L1_2 ~= nil then
    L1_2 = A0_2._buffs
    L1_2 = #L1_2
    if 0 < L1_2 then
      return
    end
  end
  L1_2 = A0_2._native
  if L1_2 ~= nil then
    L1_2 = A0_2._native
    L1_2 = L1_2.flagCallback
    if L1_2 ~= nil then
      L1_2 = A0_2._native
      L1_2 = L1_2.flagCallback
      L1_2()
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._try_close_if_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_content_canvas_sorting_order
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_lost_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_content_canvas_sorting_order
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_content
    if L2_2 then
      L2_2 = A0_2._ui_layer
      L3_2 = G
      L3_2 = L3_2.ImportCsToLua
      L3_2 = L3_2.CS_RPG_Client_UILayer_Dialog
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.canvas_content
        L2_2.overrideSorting = A1_2
      end
    end
  end
end
L0_1._set_content_canvas_sorting_order = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._show_res_bar
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_map_res_bar_unlock
  L1_2 = L1_2()
  A0_2._show_res_bar = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_res_bar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_res_bar
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._show_res_bar
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TopBarAreaPanel
    L4_2 = G
    L4_2 = L4_2.TopBarAreaPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_top_bar
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = "RogueSelectBuffPage"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_page_button
  L3_2 = A0_2._show_res_bar
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_res_bar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._action
  L2_2 = L2_2.EnhanceSelectBuffs
  L1_2 = L1_2(L2_2)
  A0_2._buffs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_pref_short_desc
  L1_2 = L1_2(L2_2)
  A0_2._is_short_desc = L1_2
end
L0_1._refresh_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_select_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars
  L1_2(L2_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff_row
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._buffs
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2 ~= nil
    L10_2 = L6_2
    L9_2 = L6_2.safe_set_active
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    if L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L12_2 = L6_2
      L11_2 = L6_2.get_navi_btn
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_content
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff_row
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._buffs
    L7_2 = L7_2[L5_2]
    L9_2 = L6_2
    L8_2 = L6_2.set_short_desc
    L10_2 = A0_2._is_short_desc
    L8_2(L9_2, L10_2)
    L9_2 = L6_2
    L8_2 = L6_2.setup_select_to_enhance_view
    L10_2 = L7_2
    L11_2 = L5_2
    L12_2 = A0_2._on_btn_buff
    L13_2 = A0_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L6_2
    L8_2 = L6_2.set_selected_anim_end_callback
    L10_2 = A0_2._on_selected_anim_end
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_handbook_hint
  L2_2(L3_2)
end
L0_1._setup_buff_content = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RogueAdventureModule
  L2_2 = L2_2.IsShowHandbookHint
  if L2_2 then
    L3_2 = 1
    L4_2 = 3
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._binder
      L7_2 = L7_2.panels_buff_row
      L7_2 = L7_2[L6_2]
      L8_2 = A0_2._buffs
      L8_2 = L8_2[L6_2]
      if L8_2 ~= nil then
        L9_2 = L8_2.BuffID
        if L9_2 ~= 0 then
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.Client
          L9_2 = L9_2.GlobalVars
          L9_2 = L9_2.s_ModuleManager
          L9_2 = L9_2.RogueHandbookModule
          L10_2 = L9_2
          L9_2 = L9_2.GetBuffData
          L11_2 = L8_2.BuffID
          L9_2 = L9_2(L10_2, L11_2)
          L10_2 = L9_2.IsUnlocked
          L10_2 = L9_2 ~= nil and L10_2
          L12_2 = L7_2
          L11_2 = L7_2.setup_handbook_hint
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
          if L10_2 then
            L1_2 = true
          end
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_handbook_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh_handbook_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_handbook_hint
  L1_2(L2_2)
end
L0_1._on_get_rogue_handbook_data_sc_rsp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayToEnd
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation
      L3_2 = "RogueSelectBuffCardFlip"
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation
      L3_2 = "RogueSelectBuffCardFlip"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._play_buff_card_flip_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panels_buff_row
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_short_desc
    L8_2 = A0_2._is_short_desc
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
end
L0_1._refresh_short_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2._buffs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff_row
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = A0_2._select_index
      L7_2 = L4_2 == L7_2
      L9_2 = L6_2
      L8_2 = L6_2.set_selected
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._show_select_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle_switch
  L1_2 = L1_2.isActiveAndEnabled
  if L1_2 == true then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_toggle_switch
    L2_2 = L1_2
    L1_2 = L1_2.SetChecked
    L3_2 = A0_2._is_short_desc
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_switch_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_confirm_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui_layer
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_Dialog
  if L1_2 == L2_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  return L1_2
end
L0_1._ignore_wait_anim_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.LuaTable
  L4_2 = L2_2
  L3_2 = L2_2.view_set_promise
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1._try_close_self_with_promise = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.GetRogueAeonID
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L3_2 = "RogueSelectBuffCardFlip_Sequence"
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = "RogueSelectBuffCardFlip_PathEcho"
  ::lbl_9::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.GetAnimationState
  L5_2 = A0_2._binder
  L5_2 = L5_2.animation
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  if not L4_2 then
    L4_2 = 1
  end
  L6_2 = A0_2
  L5_2 = A0_2.show_full_screen_block
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIAnimationUtils
  L5_2 = L5_2.PlayFromBegin
  L6_2 = A0_2._binder
  L6_2 = L6_2.animation
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L0_1._try_play_switch_anim_by_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._custom_setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._show_next_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.RogueSelectBuffShortDesc
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L0_1._get_pref_short_desc = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  if L2_2 ~= nil then
    L2_2.RogueSelectBuffShortDesc = A1_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.ForceSave
    L3_2()
  end
end
L0_1._set_pref_short_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_picked_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_avatars
  L1_2(L2_2)
end
L0_1._setup_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_res_bar
  L1_2(L2_2)
end
L0_1._on_ui_refresh_func_entrance = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._action
  if L2_2 ~= nil then
    L2_2 = A0_2._action
    L3_2 = L2_2
    L2_2 = L2_2.GetRogueActionID
    L2_2 = L2_2(L3_2)
    if L2_2 ~= A1_2 then
      goto lbl_11
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._close
  L2_2(L3_2)
  ::lbl_11::
end
L0_1._on_rogue_action_rsp = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._select_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_select_buff
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_confirm_btn
  L2_2(L3_2)
end
L0_1._on_btn_buff = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_anim_play_end = true
end
L0_1._on_selected_anim_end = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_buff_list_page
  L1_2()
end
L0_1._on_btn_buff_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_short_desc
  L1_2 = not L1_2
  A0_2._is_short_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_pref_short_desc
  L3_2 = A0_2._is_short_desc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_desc
  L1_2(L2_2)
end
L0_1._on_btn_switch_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 ~= nil
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panels_buff_row
    L3_2 = A0_2._select_index
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2
    L2_2 = L2_2.play_select_anim
    L2_2(L3_2)
    A0_2._is_get_select_buff_rsp = false
    A0_2._is_anim_play_end = false
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.NIJNBICAPPA
    L4_2 = L4_2.PPOJHAPBBMP
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.OOGONDGGKMI
    L3_2 = L2_2
    L2_2 = L2_2.HLCLLPMGBIF
    L4_2 = A0_2._buffs
    L5_2 = A0_2._select_index
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.BuffID
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._close = L1_1
return L0_1
