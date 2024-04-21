local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapeBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "UIText_ClockPark_Recover_Progress"
L2_1 = "ClockParkSelectTapePage_FadeIn"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityClockParkSelectTapePage"
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
  L3_2 = L3_2.ActivityClockParkSelectTapePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1.init = L4_1
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
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._tape_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tape_panel_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.get_data
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.IsPlaying
    if L6_2 then
      L6_2 = A0_2._tape_panel_list
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.get_btn
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.gameObject
      return L6_2
    end
  end
  L1_2 = 1
  L2_2 = A0_2._tape_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tape_panel_list
    L5_2 = L5_2[L4_2]
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.CheckScriptUnlock
    L9_2 = L5_2
    L8_2 = L5_2.get_data
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.ID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = A0_2._tape_panel_list
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.get_btn
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.gameObject
      return L6_2
    end
  end
  L1_2 = 1
  L2_2 = A0_2._tape_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tape_panel_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.is_lock
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.is_finish
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = A0_2._tape_panel_list
        L6_2 = L6_2[L4_2]
        L7_2 = L6_2
        L6_2 = L6_2.get_btn
        L6_2 = L6_2(L7_2)
        L6_2 = L6_2.gameObject
        return L6_2
      end
    end
  end
  L1_2 = 1
  L2_2 = A0_2._tape_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tape_panel_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.is_lock
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = A0_2._tape_panel_list
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.get_btn
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.gameObject
      return L6_2
    end
  end
  L1_2 = A0_2._tape_panel_list
  L2_2 = A0_2._tape_panel_list
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._tape_panel_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tape_list_root
  L1_2 = L1_2.childCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityClockParkSelectTapeBtnPanel
    L9_2 = G
    L9_2 = L9_2.ActivityClockParkSelectTapeBtnPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_tape_list_root
    L10_2 = L9_2
    L9_2 = L9_2.GetChild
    L11_2 = L5_2
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._tape_panel_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ClockParkInfoRefresh
  L5_2 = A0_2._setup_view
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ClockParkScriptUnlock
  L5_2 = A0_2._on_clock_park_script_unlock
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllClockParkScriptData
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2.Count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tape_panel_list
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._tape_panel_list
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.setup_view
      L8_2 = L5_2 - 1
      L8_2 = L1_2[L8_2]
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L0_1.Progress
  L3_2 = L3_2 / 100
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_progress_bar
  L4_2 = L2_2 / 100
  L3_2.fillAmount = L4_2
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkScriptDetailPage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_clock_park_script_unlock = L4_1
return L3_1
