local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = "UIText_ActivityMuseum_UpgradeLockTip"
L3_1 = "UIText_ActivityMuseum_AreaCollecProgress"
L4_1 = "PhaseInfoPanel_Remind"
L5_1 = 1
L6_1 = 999
L7_1 = {}
L7_1[1] = "Area1"
L7_1[2] = "Area2"
L7_1[3] = "Area3"
L7_1[4] = "Area4"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_ExitWithCut
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L1_1.MuseumData
  A0_2._museum_data = L1_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_staff
  L4_2 = A0_2._on_btn_staff_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_icon
  L4_2 = A0_2._on_btn_buff_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_level_up
  L4_2 = A0_2._on_btn_level_up_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_atlas
  L4_2 = L0_1._on_btn_atlas
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_phase_reward
  L4_2 = A0_2._on_btn_phase_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 0
  L2_2 = A0_2._museum_data
  L2_2 = L2_2.MuseumAreaDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L4_2 + 1
    L6_2 = A0_2._binder
    L6_2 = L6_2.museum_area_panel_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_btn_callback
    L8_2 = A0_2._on_area_btn_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.museum_map_area_panel_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_btn_callback
    L8_2 = A0_2._on_area_btn_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "MuseumPage"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._disable_slot_btns
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_frame_capture
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumPhaseReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_phase_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumAtlasCollectReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_atlas
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_renew_point_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_view_active_change = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_frame_capture
  L1_2(L2_2)
end
L0_1._on_reconnect = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumPerformanceBegin
  L4_2 = A0_2._on_museum_performance_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumPerformanceEnd
  L4_2 = A0_2._on_museum_performance_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumExitUI
  L4_2 = A0_2._on_museum_exit_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumCurEditAreaChange
  L4_2 = A0_2._on_area_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumNewTurnHintEnd
  L4_2 = A0_2._new_turn_hint_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.MuseumAreaDatas
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 + 1
    L7_2 = A0_2._museum_data
    L7_2 = L7_2.MuseumAreaDatas
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2.IsLock
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = A0_2._binder
      L10_2 = L10_2.museum_area_panel_table
      L10_2 = L10_2[L6_2]
      L10_2 = L10_2._binder
      L10_2 = L10_2.btn_root
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._create_btn_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.museum_area_panel_table
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = L1_1.IsTargetUnlock
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2.MuseumNewTargetHint = false
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.release_screen_shot
  L1_2()
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryNotifyNewTurn
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_area_select
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_play_unlock_anim
    L2_2(L3_2)
  end
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.staff_slot_panel_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_btn_enable
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._disable_slot_btns = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_area_info
  L1_2(L2_2)
end
L0_1._on_museum_data_refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.IsAlreadyFinish
  if L1_2 then
    return
  end
  L1_2 = L1_1.IsConfigLocked
  if not L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsChapterMissionReachLimit
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_15
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  ::lbl_15::
end
L0_1._on_museum_performance_begin = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_frame_capture
  L1_2(L2_2)
end
L0_1._on_museum_performance_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_frame_capture
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._close_frame_capture = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryNotifyNewTurn
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllUnlockMissionData
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.root
      if L0_3 then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_buttons
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_target
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_total_renew_point
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_museum_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_area_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buttons
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_btn_navigation
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.refresh_navigation
  L1_2(L2_2)
end
L0_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_preview
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_max_bar
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.RenewPointData
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_preview_renew_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.RenewPointData
  L3_2 = L3_2.AddCurNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_total_renew_point = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._on_area_select
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2.__name
  L4_2 = "ChangeAreaBtn"
  L5_2 = A0_2._cur_museum_area_data
  L5_2 = L5_2.ID
  L6_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_area_btn_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.MuseumAreaDatas
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 + 1
    L7_2 = A0_2._museum_data
    L7_2 = L7_2.MuseumAreaDatas
    L7_2 = L7_2[L5_2]
    if L6_2 == A1_2 then
      A0_2._cur_museum_area_data = L7_2
    end
    L8_2 = A0_2._binder
    L8_2 = L8_2.museum_area_panel_table
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_selected
    L10_2 = L6_2 == A1_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.museum_map_area_panel_table
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_selected
    L10_2 = L6_2 == A1_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_area
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = L7_1[A1_2]
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_area_info
  L2_2(L3_2)
end
L0_1._on_area_select = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_panel
  L2_2 = L1_2
  L1_2 = L1_2.enable_refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.MuseumTargetData
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_new_target_fade_in_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_unlock_anim
  L1_2(L2_2)
  L1_2 = L1_1.IsAllFinish
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_renew_point
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._new_turn_hint_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_data
  L3_2 = L3_2.Row
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_turn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2._museum_data
  L4_2 = L4_2.TurnCount
  L5_2 = L6_1
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_museum_basic_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._museum_data
  L2_2 = L2_2.MuseumAreaDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L4_2 + 1
    L6_2 = A0_2._museum_data
    L6_2 = L6_2.MuseumAreaDatas
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.museum_area_panel_table
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.museum_map_area_panel_table
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_area_list = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_atlas
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.IsAtlasUnlock
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_all_area_have_staff
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_start
  L2_2.interactable = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_level_up
  L3_2 = L1_1.IsUpgradeUnlock
  L3_2 = not L3_2
  L2_2.IsInFakeDisableState = L3_2
end
L0_1._setup_buttons = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._museum_data
  L1_2 = L1_2.MuseumRandomEventData
  L2_2 = L1_2.CurBuffEvent
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_buff_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2.CurBuffEvent
    L4_2 = L4_2.RemainOpenDayCount
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_buff_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_buff = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_panel_active
  L3_2 = L1_1.IsTargetUnlock
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.IsTargetUnlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.target_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._museum_data
    L3_2 = L3_2.MuseumTargetData
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_target = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = A0_2._museum_data
  L2_2 = L2_2.MuseumAreaDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._museum_data
    L5_2 = L5_2.MuseumAreaDatas
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.IsLock
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.HaveStaff
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_all_area_have_staff = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_museum_area_data
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_museum_area_data
  L3_2 = L3_2.AreaRenewPoint
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_area_staff
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_stats_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_ctrl_color
  L3_2 = true
  L4_2 = true
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_stats_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_museum_area_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_museum_area_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_stuff_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_museum_area_data
  L3_2 = L3_2.ExhibitStuffsCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_stuff_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_museum_area_data
  L3_2 = L3_2.ExhibitStuffsMaxCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_collect_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = A0_2._cur_museum_area_data
  L5_2 = L5_2.Row
  L5_2 = L5_2.MuseumAreaName
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_museum_area_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumAreaUpgrade"
  L4_2 = A0_2._cur_museum_area_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_level_up_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._cur_museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.HaveStaff
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "MuseumStaffSettle"
    L4_2 = A0_2._cur_museum_area_data
    L4_2 = L4_2.ID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_staff_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.NewMuseumStaff
    L1_2 = L1_2.Count
    if 0 < L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "MuseumNewStaff"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_staff_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "MuseumMarket"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_staff_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._setup_cur_area_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._cur_museum_area_data
  L2_2 = L2_2.MuseumStaffDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L4_2 + 1
    L6_2 = A0_2._cur_museum_area_data
    L6_2 = L6_2.MuseumStaffDatas
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.staff_slot_panel_table
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_cur_area_staff = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.MuseumNewAreaUnlockHint
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.museum_map_area_panel_table
  L3_2 = L1_2.MuseumNewAreaUnlockHint
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.play_unlock_anim
  L2_2(L3_2)
  L1_2.MuseumNewAreaUnlockHint = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
end
L0_1._try_play_unlock_anim = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = A0_2.__name
  L4_2 = "EndTurnBtn"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_renew_point_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.set_screen_shot
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_frame_capture
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.img_frame_capture
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_root
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_bg
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._museum_data
    L1_3 = L0_3
    L0_3 = L0_3.FinishCurTurn
    L0_3(L1_3)
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.Prefs
    L0_3 = L0_3.User
    L0_3.MuseumNewTargetHint = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.target_panel
    L1_3 = L0_3
    L0_3 = L0_3.enable_refresh
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_start_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumStaffChooseDialog"
  L3_2 = A0_2._cur_museum_area_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_staff_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._museum_data
  L1_2 = L1_2.MuseumRandomEventData
  L1_2 = L1_2.CurBuffEvent
  L2_2 = G
  L2_2 = L2_2.MuseumUtils
  L2_2 = L2_2.create_buff_tip_dialog
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_tip_slot
  L3_2 = L3_2.transform
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_buff_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_level_up
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_level_up_disable_click
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Museum.MuseumUpgradeDialog"
    L3_2 = A0_2._cur_museum_area_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_level_up_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_level_up_disable_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumAtlasPage"
  L3_2 = false
  L4_2 = A0_2._cur_museum_area_data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_atlas = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumPhasePreviewPage"
  L1_2(L2_2)
end
L0_1._on_btn_phase_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_museum_exit_ui = L8_1
return L0_1
