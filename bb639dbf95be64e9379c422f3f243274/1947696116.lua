local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostPhasePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.HeliobusSNSMainPostPhasePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.SNSInfo.HeliobusMainEntranceSNSInfoCarouselItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.SNSInfo.HeliobusMainEntranceSNSInfoCarouselItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.SNSInfo.HeliobusMainEntranceSNSInfoCarouselNumItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Entrance.SNSInfo.HeliobusMainEntranceSNSInfoCarouselNumItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusMainEntranceSNSInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_SNS_NoBeginTips_Day"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.ArrayValue
L3_1 = {}
L3_1.Carousel = 1
L3_1.InProgress = 2
L3_1.AllFinish = 3
L4_1 = 3
L5_1 = 0.9
function L6_1(A0_2, A1_2, A2_2)
  A0_2._x_pos = 0
  A0_2._y_pos = 0
  A0_2._is_action_triggered = false
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sns
  L4_2 = A0_2._on_btn_sns
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gamepad_action_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_sns
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_sns
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_gamepad_action_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_sns
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_gamepad_action_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSMainPostPhasePanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSMainPostPhasePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._post_phase_panel = L1_2
  L1_2 = A0_2._post_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_post_phase_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_carousel
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = -1
  L4_2 = A0_2._on_carousel_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_carousel
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
  L1_2 = L1_2.loop_listview_carousel
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_snap_finished
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapItemFinished = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = G
  L5_2 = L5_2.HeliobusMainEntranceSNSInfoCarouselNumItem
  L6_2 = G
  L6_2 = L6_2.HeliobusMainEntranceSNSInfoCarouselNumItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._carousel_num_panel = L1_2
  L1_2 = A0_2._carousel_num_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_carousel_num_panel
  L1_2(L2_2, L3_2)
  A0_2._status = nil
  L1_2 = {}
  A0_2._carousel_post_table = L1_2
  L1_2 = {}
  A0_2._carousel_num_table = L1_2
  A0_2._selected_carousel_idx = nil
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_carousel_played
  L4_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._carousel_play_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_carousel
  L1_2.ForbidDrag = true
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_sns
  return L1_2
end
L0_1.get_root_btn = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._is_scroll_enable
  if not L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.RightStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_right_stick_up
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_right_stick_down
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
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
  end
end
L0_1._on_in_control_press = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.RightStickLeft
  L3_2 = #L3_2
  if A1_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightStickRight
    L3_2 = #L3_2
    if A1_2 ~= L3_2 then
      goto lbl_16
    end
  end
  A0_2._is_action_triggered = false
  ::lbl_16::
end
L0_1._on_in_control_released = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._y_pos = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._process_axis_input
  L2_2(L3_2)
end
L0_1._on_right_stick_up = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = -A1_2
  A0_2._y_pos = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._process_axis_input
  L2_2(L3_2)
end
L0_1._on_right_stick_down = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = -A1_2
  A0_2._x_pos = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._process_axis_input
  L2_2(L3_2)
end
L0_1._on_right_stick_left = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._x_pos = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._process_axis_input
  L2_2(L3_2)
end
L0_1._on_right_stick_right = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_action_triggered
  if L1_2 then
    return
  end
  L1_2 = math
  L1_2 = L1_2.abs
  L2_2 = A0_2._x_pos
  L1_2 = L1_2(L2_2)
  L2_2 = L5_1
  if L1_2 < L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.GetWheelItemIndexByFourWheel
  L2_2 = A0_2._x_pos
  L3_2 = A0_2._y_pos
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 == 2 or L1_2 == 4
  A0_2._is_action_triggered = L2_2
  L2_2 = A0_2._is_action_triggered
  if L2_2 then
    if L1_2 == 2 then
      L3_2 = A0_2
      L2_2 = A0_2._trigger_right_move
      L2_2(L3_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._trigger_left_move
      L2_2(L3_2)
    end
  end
end
L0_1._process_axis_input = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[HeliobusSNSInfoPanel]: _trigger_right_move"
  L1_2(L2_2)
end
L0_1._trigger_right_move = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[HeliobusSNSInfoPanel]: _trigger_left_move"
  L1_2(L2_2)
end
L0_1._trigger_left_move = L6_1
function L6_1(A0_2, A1_2)
  A0_2._is_scroll_enable = A1_2
end
L0_1._setup_gamepad_action_enable = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._carousel_play_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._status
  L2_2 = L3_1.Carousel
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._selected_carousel_idx
  L1_2 = L1_2 + 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_carousel
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToMiddleWithAnimation
  L4_2 = L1_2
  L5_2 = 0.5
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._carousel_play_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._carousel_play_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._on_carousel_played = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._check_is_showing
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_carousel
  L3_2 = L2_2
  L2_2 = L2_2.SetSnapTargetItemIndex
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_carousel_selected = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_carousel
  L2_2 = L2_2.CurSnapNearestItemIndex
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._check_is_showing = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._init_view
  if L3_2 ~= true then
    return
  end
  L3_2 = A2_2.ItemIndex
  A0_2._selected_carousel_idx = L3_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = "Move Panel To Item Index to "
  L5_2 = tostring
  L6_2 = A0_2._selected_carousel_idx
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
end
L0_1._on_snap_finished = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._init_view
  if L3_2 ~= true then
    return
  end
  L3_2 = A2_2.ItemIndex
  A0_2._selected_carousel_idx = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_carousel_num_table
  L3_2(L4_2)
  L3_2 = A0_2._carousel_num_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._carousel_num_table
  L3_2(L4_2, L5_2)
end
L0_1._on_snap_nearest_changed = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._post_phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_nodes
  L1_2(L2_2)
  L1_2 = L1_1.IsMissionPrepared
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_panel_status
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.HeliobusOnAllMissionPrepared
    L4_2 = A0_2._on_mission_prepared
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnAllMissionPrepared
  L4_2 = A0_2._on_mission_prepared
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_panel_status
  L1_2(L2_2)
end
L0_1._on_mission_prepared = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_sns_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_all_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_carousel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsAllMissionFinish
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L3_1.AllFinish
    A0_2._status = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_status_all_finish
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1.PostMissionInProgress
  if L1_2 ~= nil then
    L1_2 = L3_1.InProgress
    A0_2._status = L1_2
    L1_2 = G
    L1_2 = L1_2.HeliobusSNSUtils
    L1_2 = L1_2.get_post_in_mission_progress
    L1_2 = L1_2()
    if L1_2 == nil then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogErrorFormat
      L3_2 = "HeliobusMainEntranceSNSInfoPanel _setup_panel_status() : \230\156\170\233\128\154\232\191\135\228\187\187\229\138\161ID("
      L4_2 = L1_1.PostMissionInProgress
      L4_2 = L4_2.ID
      L5_2 = ")\230\137\190\229\136\176\229\175\185\229\186\148\231\154\132\230\142\168\230\150\135"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      return
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_listview_carousel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = {}
    L3_2 = L1_2
    L2_2[1] = L3_2
    A0_2._carousel_post_table = L2_2
    A0_2._selected_carousel_idx = 0
    return
  end
  L1_2 = L3_1.Carousel
  A0_2._status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._generate_carousel_post_table
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_anchor_first
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._carousel_post_table
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_carousel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._carousel_post_table
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._carousel_post_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    A0_2._selected_carousel_idx = 0
    L2_2 = A0_2
    L1_2 = A0_2._setup_carousel_item_list
    L1_2(L2_2)
    L1_2 = A0_2._carousel_post_table
    L1_2 = #L1_2
    if 2 <= L1_2 then
      L1_2 = A0_2._carousel_play_timer
      L2_2 = L1_2
      L1_2 = L1_2.reset
      L1_2(L2_2)
      L1_2 = A0_2._carousel_play_timer
      L2_2 = L1_2
      L1_2 = L1_2.start
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._set_carousel_num_table
      L1_2(L2_2)
      L1_2 = A0_2._carousel_num_panel
      L2_2 = L1_2
      L1_2 = L1_2.rebind_child_node
      L3_2 = A0_2._carousel_num_table
      L3_2 = #L3_2
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._carousel_num_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._carousel_num_table
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_panel_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._carousel_num_table = L1_2
  L1_2 = A0_2._carousel_post_table
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 - 1
    L7_2 = A0_2._selected_carousel_idx
    L7_2 = L7_2 % L1_2
    L6_2 = L6_2 == L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._carousel_num_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_carousel_num_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_in_mission_progress
  L1_2 = L1_2()
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusMainEntranceSNSInfoPanel _setup_post_mission() : \230\156\170\233\128\154\232\191\135\228\187\187\229\138\161ID("
    L4_2 = L1_1.PostMissionInProgress
    L4_2 = L4_2.ID
    L5_2 = ")\230\137\190\229\136\176\229\175\185\229\186\148\231\154\132\230\142\168\230\150\135"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_sns_post
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Title
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.PostType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostType
  L3_2 = L3_2.MissionAnchor
  if L2_2 == L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HeliobusPostType
    L2_2 = L3_2.MissionMain
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostTypeConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_sns_post_icon
  L7_2 = L3_2.PostTypeIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_post_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.PostPhase
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.HeliobusSNSPostPhase
  L2_2 = L2_2.TakeMission
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = 0
  L2_2 = L2_1.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1[L4_2]
    L5_2 = L5_2.UintValue
    L6_2 = L1_1.ActionDay
    if L5_2 == L6_2 then
      return
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HeliobusSNSPostPhase
  L1_2 = L1_2.TakeMission
  L1_2 = #L1_2
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.check_post_phase_is_seen
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Heliobus.SNS.ActionDay.PostPhase.HeliobusActionDayPostPhaseDialog"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._check_post_phase_1_seen = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  A0_2._carousel_post_table = L1_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_sns_post_table
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.filter_post_table
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostType
  L3_2 = L3_2.MissionMain
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.get_post_can_take_mission_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSUtils
  L4_2 = L4_2.filter_post_table
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.HeliobusPostType
  L5_2 = L5_2.MissionSide
  L6_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = G
  L5_2 = L5_2.HeliobusSNSUtils
  L5_2 = L5_2.get_post_can_take_mission_table
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = G
    L2_3 = L2_3.HeliobusSNSUtils
    L2_3 = L2_3.compare_by_heliobus_sns_sort_type
    L3_3 = HeliobusSNSSortType
    L3_3 = L3_3.Time
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = false
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L7_2 = table
  L7_2 = L7_2.sort
  L8_2 = L3_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.sort
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = 0
  L8_2 = 3
  L9_2 = 1
  L10_2 = #L3_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = A0_2._carousel_post_table
    L15_2 = L3_2[L12_2]
    L13_2(L14_2, L15_2)
    L7_2 = L7_2 + 1
    if L8_2 <= L7_2 then
      return
    end
  end
  L9_2 = 1
  L10_2 = #L5_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = A0_2._carousel_post_table
    L15_2 = L5_2[L12_2]
    L13_2(L14_2, L15_2)
    L7_2 = L7_2 + 1
    if L8_2 <= L7_2 then
      return
    end
  end
end
L0_1._generate_carousel_post_table = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_carousel_idx
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_carousel
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToSnapPivotByItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_carousel
  L3_2 = L2_2
  L2_2 = L2_2.FinishSnapImmediately
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_carousel
  L3_2 = L2_2
  L2_2 = L2_2.SetSnapTargetItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      A0_2._init_view = true
      L0_3 = A0_2._binder
      L0_3 = L0_3.loop_listview_carousel
      L1_3 = L0_3
      L0_3 = L0_3.FinishSnapImmediately
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
end
L0_1._setup_carousel_item_list = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusMainEntranceSNSInfoCarouselItem
    L8_2 = G
    L8_2 = L8_2.HeliobusMainEntranceSNSInfoCarouselItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = nil
  L6_2 = A0_2._carousel_post_table
  L6_2 = #L6_2
  if L6_2 ~= 0 then
    L6_2 = A0_2._carousel_post_table
    L6_2 = #L6_2
    L5_2 = A2_2 % L6_2
  else
    L5_2 = A2_2
  end
  L6_2 = A0_2._carousel_post_table
  L7_2 = L5_2 + 1
  L6_2 = L6_2[L7_2]
  if L6_2 ~= nil then
    L7_2 = L4_2
    L6_2 = L4_2.register_click_callback
    L8_2 = A0_2._on_click_carousel_item
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L4_2
    L6_2 = L4_2.register_select_callback
    L8_2 = A0_2._on_carousel_selected
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L4_2
    L6_2 = L4_2.setup_view
    L8_2 = A0_2._carousel_post_table
    L9_2 = L5_2 + 1
    L8_2 = L8_2[L9_2]
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
  end
  return L3_2
end
L0_1._on_carousel_item_change = L6_1
function L6_1(A0_2, A1_2)
end
L0_1._on_click_carousel_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusCanReplySNSMissionPost"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.IsMissionPrepared
  if not L1_2 then
    return
  end
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_sns = L6_1
return L0_1
