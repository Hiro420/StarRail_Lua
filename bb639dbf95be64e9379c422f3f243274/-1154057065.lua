local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainLeftSilhouettePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainLeftSilhouettePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainRightInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainRightInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityGuessTheSilhouette.ActivityGuessTheSilhouetteMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityGuessTheSilhouetteModule
L3_1 = CS
L3_1 = L3_1.System
L3_1 = L3_1.Convert
L3_1 = L3_1.ToUInt32
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ActivityConstantGSExcelTable
L4_1 = L4_1.GetData
L5_1 = "ActivityGuessSilhouette_Tutorial"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L3_1 = L3_1(L4_1)
L4_1 = false
L5_1 = 30006
L6_1 = 2
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityGuessTheSilhouetteMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1.init = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.Action3
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._cur_day_status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ActivityGuessTheSilhouetteDataStatus
    L3_2 = L3_2.NotStart
    if L2_2 ~= L3_2 then
    end
  end
end
L0_1._on_in_control_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_game_pad_hint
    L1_2(L2_2)
  end
end
L0_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.left_silhouette_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GuessTheSilhouetteDataRefresh
  L4_2 = A0_2._on_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = A0_2._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_world_language_tilte
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._top_tab_control = L1_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_tab
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_tab
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._generate_tab_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityGuessTheSilhouetteMainLeftSilhouettePanel
  L4_2 = G
  L4_2 = L4_2.ActivityGuessTheSilhouetteMainLeftSilhouettePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.left_silhouette_panel = L1_2
  L1_2 = A0_2.left_silhouette_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_click_photo
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.left_silhouette_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_silhouette_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityGuessTheSilhouetteMainRightInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityGuessTheSilhouetteMainRightInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.right_silhouette_panel = L1_2
  L1_2 = A0_2.right_silhouette_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_right_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  A0_2._current_day = 1
  L1_2 = {}
  A0_2._cur_day_silhouette_table = L1_2
  A0_2._cur_day_status = nil
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._top_tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
    end
  end
end
L0_1._select_prev = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._top_tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
    end
  end
end
L0_1._select_next = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L2_1.ActivityGuessTheSilhouetteDayIndexDict
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = {}
    L8_2 = L6_2[0]
    L8_2 = L8_2.Day
    L7_2.Day = L8_2
    L8_2 = L6_2[0]
    L8_2 = L8_2.Row
    L8_2 = L8_2.Tab
    L7_2.TabTxt = L8_2
    L7_2.DataList = L6_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Day
    L3_3 = A1_3.Day
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityGuessTheSilhouetteMainTabItem
    L9_2 = G
    L9_2 = L9_2.ActivityGuessTheSilhouetteMainTabItemBinder
    L10_2 = L1_2[L5_2]
    L10_2 = L10_2.Day
    L11_2 = L1_2[L5_2]
    L11_2 = L11_2.TabTxt
    L13_2 = A0_2
    L12_2 = A0_2._get_cur_day_status
    L14_2 = L1_2[L5_2]
    L14_2 = L14_2.DataList
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_top_tab
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_callback
    L9_2 = A0_2._on_tab_click
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._top_tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._generate_tab_info = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2[0]
  L2_2 = L2_2.Status
  L3_2 = A1_2.Count
  L4_2 = L6_1
  if L3_2 > L4_2 then
    L3_2 = L6_1
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = A1_2.Count
  ::lbl_11::
  L4_2 = 1
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L8_2 = L8_2.Status
    if L8_2 ~= L2_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.ActivityGuessTheSilhouetteDataStatus
      L8_2 = L8_2.IsStart
      return L8_2
    end
  end
  return L2_2
end
L0_1._get_cur_day_status = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_day = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L2_2 = A0_2.left_silhouette_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_select_state
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelSwitch
  L3_2 = A0_2.__name
  L4_2 = "DAY"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_tab_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_locate_day
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._current_day
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._first_open_tutorial_guide
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetGuessTheSilhouetteActivityData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.TitleName
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.ActivityGuessTheSilhouetteDayIndexDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_day_status
    L4_2 = L1_2.Current
    L4_2 = L4_2.Value
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ActivityGuessTheSilhouetteDataStatus
    L3_2 = L3_2.Completed
    if L2_2 == L3_2 then
      L3_2 = L2_1
      L4_2 = L3_2
      L3_2 = L3_2.IsRewardTaken
      L5_2 = L1_2.Current
      L5_2 = L5_2.Value
      L5_2 = L5_2[0]
      L5_2 = L5_2.Day
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = L1_2.Current
        L3_2 = L3_2.Value
        L3_2 = L3_2[0]
        L3_2 = L3_2.Day
        A0_2._current_day = L3_2
        return
      end
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ActivityGuessTheSilhouetteDataStatus
      L3_2 = L3_2.IsStart
      if L2_2 == L3_2 then
        L3_2 = L1_2.Current
        L3_2 = L3_2.Value
        L3_2 = L3_2[0]
        L3_2 = L3_2.Day
        A0_2._current_day = L3_2
        return
      end
    end
  end
end
L0_1._get_locate_day = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_day_status
  L3_2 = L2_1.ActivityGuessTheSilhouetteDayIndexDict
  L4_2 = A0_2._current_day
  L3_2 = L3_2[L4_2]
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_day_status = L1_2
  L1_2 = A0_2.left_silhouette_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_day
  L4_2 = A0_2._cur_day_silhouette_table
  L5_2 = A0_2._cur_day_status
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.right_silhouette_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_day
  L4_2 = A0_2._cur_day_silhouette_table
  L5_2 = A0_2._cur_day_status
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._deactive_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_game_pad_hint
  L1_2(L2_2)
end
L0_1._on_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._cur_day_silhouette_table = L1_2
  L1_2 = L2_1.ActivityGuessTheSilhouetteDayIndexDict
  L2_2 = L1_2
  L1_2 = L1_2.ContainsKey
  L3_2 = A0_2._current_day
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = L2_1.ActivityGuessTheSilhouetteDayIndexDict
    L2_2 = A0_2._current_day
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      goto lbl_23
    end
  end
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogWarningFormat
  L2_2 = "ActivityGuessTheSilhouetteMainLeftSilhouettePanel: \231\172\172.."
  L3_2 = A0_2._current_day
  L4_2 = "..\229\164\169\231\154\132\230\180\187\229\138\168\230\149\176\230\141\174\228\184\186\231\169\186"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  goto lbl_31
  ::lbl_23::
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L2_1.ActivityGuessTheSilhouetteDayIndexDict
  L3_2 = A0_2._current_day
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2(L2_2)
  A0_2._cur_day_silhouette_table = L1_2
  ::lbl_31::
end
L0_1._generate_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ActivityGuessTheSilhouetteMainPageIsOpened
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Tutorial.GuideDetailDialog"
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2.ActivityGuessTheSilhouetteMainPageIsOpened = true
  end
end
L0_1._first_open_tutorial_guide = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActivityGuessTheSilhouetteDataStatus
  L3_2 = L3_2.NotStart
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "LimitType_LimitTypeDesc_3"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ActivityGuessTheSilhouetteDataStatus
    L3_2 = L3_2.Completed
    if L2_2 == L3_2 then
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteZoomDialog"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_async_show
      L3_2 = "Ui.Activity.ActivityGuessTheSilhouette.Camera.ActivityGuessTheSilhouetteZoomDialog"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_photo = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._cur_day_silhouette_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._cur_day_silhouette_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.IsNew
    if L5_2 then
      L5_2 = L2_1
      L6_2 = L5_2
      L5_2 = L5_2.SetGuessTheSilhouetteSeen
      L7_2 = A0_2._cur_day_silhouette_table
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
      break
    end
  end
end
L0_1._deactive_reddot = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._set_game_pad_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._check_activity_finish
  L2_2(L3_2)
end
L0_1._on_activity_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_activity_finish
  L1_2(L2_2)
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.IsFinish
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "RetCodeError_4674"
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
end
L0_1._check_activity_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.GuessTheSilhouetteOnResultClose
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
return L0_1
