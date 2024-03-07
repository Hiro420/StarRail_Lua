local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.RogueSelectMiraclePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectMiraclePage"
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
  L1_2 = L1_2.TransitionStyle_Default
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectMiraclePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._need_enabled_bg_canvas_group = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if A2_2 == true then
    L4_2 = G
    L4_2 = L4_2.ImportCsToLua
    L4_2 = L4_2.CS_RPG_Client_UILayer_Dialog
    A0_2._ui_layer = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.RogueUtils
    L4_2 = L4_2.add_mission_performance_lock
    L5_2 = A0_2
    L4_2(L5_2)
  end
  A0_2._miracle_select_action = A1_2
  if A1_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_list
    L5_2 = A1_2.SelectMiracleIDs
    L4_2 = L4_2(L5_2)
    A0_2._miracle_ids = L4_2
  else
    L4_2 = {}
    A0_2._miracle_ids = L4_2
  end
  A0_2._select_index = 0
  if A3_2 == true then
    A0_2._need_enabled_bg_canvas_group = true
  end
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
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_rogue_triggered_action_id
  L2_2 = A0_2._miracle_select_action
  L1_2(L2_2)
  A0_2._miracle_ids = nil
  A0_2._select_index = nil
  L2_2 = A0_2
  L1_2 = A0_2._try_unblock_full_screen
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_bg
  L2_2 = A0_2._need_enabled_bg_canvas_group
  L1_2.enabled = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_page_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Choose_Miracle_Tip"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Choose_Miracle_Tip"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_discard_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_discard
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
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
  L3_2 = L3_2.btn_miracle_page
  L4_2 = L0_1._btn_miracle_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_resbar_area
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
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
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.IsInEndlessCosmicFragmentArea
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
    L4_2 = "ActivityRogueEndlessMiraclePage"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_page_button
  L3_2 = A0_2._show_res_bar
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1.setup_resbar_area = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRogueActionRsp
  L4_2 = L0_1._on_rogue_action_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueMiracleReward
  L4_2 = L0_1._on_get_rogue_miracle_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
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
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._miracle_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._miracle_ids
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
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._try_close_if_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
    A0_2._block_id = nil
  end
end
L0_1._try_unblock_full_screen = L1_1
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
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btns_miracle_row
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
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
  L1_2 = A0_2._show_select_miracle
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
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_miracle_page_button
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._show_res_bar
    L4_2 = not L4_2
  end
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
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.miracle_page_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.miracle_page_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_miracle_page_button = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracles
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_select_miracle
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
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._miracle_select_action
  L2_2 = L2_2.SelectMiracleIDs
  L1_2 = L1_2(L2_2)
  A0_2._miracle_ids = L1_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_miracle_row
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._miracle_ids
    L7_2 = L7_2[L5_2]
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_btn_miracle
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L10_2 = L6_2
    L9_2 = L6_2.setup_view
    L11_2 = L7_2
    L12_2 = L8_2
    L13_2 = L5_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
    if L7_2 and L7_2 ~= 0 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = A0_2._binder
      L11_2 = L11_2.btns_miracle_row
      L11_2 = L11_2[L5_2]
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_handbook_hint
  L2_2(L3_2)
end
L0_1._setup_miracles = L1_1
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
      L7_2 = L7_2.panels_miracle_row
      L7_2 = L7_2[L6_2]
      L8_2 = A0_2._miracle_ids
      L8_2 = L8_2[L6_2]
      if L8_2 ~= nil and L8_2 ~= 0 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.GlobalVars
        L9_2 = L9_2.s_ModuleManager
        L9_2 = L9_2.RogueHandbookModule
        L10_2 = L9_2
        L9_2 = L9_2.GetMiracleDataByMiracleID
        L11_2 = L8_2
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2._miracle_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_miracle_row
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
L0_1._show_select_miracle = L1_1
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
  L2_2 = A0_2
  L1_2 = A0_2._check_miracle_need_select
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_unblock_full_screen
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_finish_rogue_miracle_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = false
  L2_2 = A0_2._miracle_ids
  if L2_2 ~= nil then
    L2_2 = A0_2._miracle_ids
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.RogueStatic
      L2_2 = L2_2.GetCurModeRogueMiracleInfo
      L2_2 = L2_2()
      if L2_2 ~= nil then
        L3_2 = L2_2.SelectMiracleIDs
        if L3_2 ~= nil then
          L4_2 = L3_2.Count
          L5_2 = A0_2._miracle_ids
          L5_2 = #L5_2
          if L4_2 == L5_2 then
            L4_2 = 1
            L5_2 = A0_2._miracle_ids
            L5_2 = #L5_2
            L6_2 = 1
            for L7_2 = L4_2, L5_2, L6_2 do
              L8_2 = A0_2._miracle_ids
              L8_2 = L8_2[L7_2]
              L9_2 = L7_2 - 1
              L9_2 = L3_2[L9_2]
              if L8_2 ~= L9_2 then
                L8_2 = false
                return L8_2
              end
            end
            L1_2 = true
          end
        end
      end
    end
  end
  return L1_2
end
L0_1._check_miracle_need_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._miracle_select_action
  if L2_2 ~= nil then
    L2_2 = A0_2._miracle_select_action
    L3_2 = L2_2
    L2_2 = L2_2.GetRogueActionID
    L2_2 = L2_2(L3_2)
    if L2_2 ~= A1_2 then
      goto lbl_13
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_unblock_full_screen
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  ::lbl_13::
end
L0_1._on_rogue_action_rsp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_unblock_full_screen
  L1_2(L2_2)
end
L0_1._on_get_rogue_miracle_reward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._select_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_select_miracle
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_confirm_btn
  L2_2(L3_2)
end
L0_1._on_btn_miracle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 ~= nil
  if L1_2 == false then
    return
  end
  L2_2 = A0_2._miracle_ids
  L3_2 = A0_2._select_index
  L2_2 = L2_2[L3_2]
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NetworkManager
  L3_2 = L3_2.OOGONDGGKMI
  L4_2 = L3_2
  L3_2 = L3_2.EDCPFKKFFNG
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.show_full_screen_block
  L5_2 = 3
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._block_id = L3_2
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_miracle_list_page
  L1_2()
end
L0_1._btn_miracle_page = L1_1
return L0_1
