local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnWorldNodeItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnWorldNodeItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnLineNodeItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnLineNodeItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleCanTakeTipItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleCanTakeTipItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.PathDetail.MissionChroniclePathDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleZoomSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapZoomSliderPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.ChronicleUtilities.MissionChronicleUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleGraphListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = 15
L3_1 = 110
L4_1 = 23
L5_1 = 500
L6_1 = 0.005
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.ConstValueClientExcelTable
L7_1 = L7_1.GetData
L8_1 = "Chronicle_ViewZoom_Max"
L7_1 = L7_1(L8_1)
L7_1 = L7_1.Value
L7_1 = L7_1.FloatValue
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.ConstValueClientExcelTable
L8_1 = L8_1.GetData
L9_1 = "Chronicle_ViewZoom_Min"
L8_1 = L8_1(L9_1)
L8_1 = L8_1.Value
L8_1 = L8_1.FloatValue
L9_1 = 0.5
L10_1 = 0.03
L11_1 = 7000
L12_1 = 1000
L13_1 = 9000
L14_1 = 10
L15_1 = 80
L16_1 = 80
L17_1 = 80
L18_1 = 50
L19_1 = 1
L20_1 = -100
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_bg
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._chronicle_path_panel_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = 0
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._target_pos = L1_2
  A0_2._smooth_target_pos = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_trans
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = 0
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.anchoredPosition = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_view
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._window_width = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_view
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._base_window_width = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_view
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  A0_2._window_height = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_view
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  A0_2._base_window_height = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MissionChroniclePathDetailPanel
  L4_2 = G
  L4_2 = L4_2.MissionChroniclePathDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._path_detail_panel = L1_2
  L1_2 = A0_2._path_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_close_callback
  L3_2 = A0_2._on_detail_panel_close
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._path_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_path_detail_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MissionChronicleZoomSliderPanel
  L4_2 = G
  L4_2 = L4_2.MapZoomSliderPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._zoom_slider_panel = L1_2
  L1_2 = A0_2._zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_slider_value_change_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_slider_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._zoom_slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_slider
  L1_2(L2_2, L3_2)
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoPerformanceUITransfer
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mono_ticker = L2_2
  L2_2 = A0_2._mono_ticker
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeAddCmpt
    L3_2 = L1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._mono_ticker = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_force_fade_in_timer
  L5_2 = L14_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._safe_force_fade_in_timer = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EventTriggerListener
  L2_2 = L2_2.Get
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_scroll_view
  L3_2 = L3_2.gameObject
  L2_2 = L2_2(L3_2)
  function L3_2()
    local L0_3, L1_3
    A0_2._is_enter_graph_area = true
  end
  L2_2.OnEnterTrigger = L3_2
  function L3_2()
    local L0_3, L1_3
    A0_2._is_enter_graph_area = false
  end
  L2_2.OnExitTrigger = L3_2
  A0_2._x_offset = 0
  L3_2 = {}
  A0_2._can_take_path_table = L3_2
  L3_2 = L9_1
  A0_2._default_slider_value = L3_2
  L3_2 = L8_1
  L4_2 = L7_1
  L5_2 = L8_1
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2._default_slider_value
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  A0_2._scale = L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L3_2 = L3_2.zero
  A0_2._pos_setting_velocity = L3_2
  A0_2._is_first = true
end
L0_1._on_load = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._safe_force_fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._chronicle_path_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._chronicle_path_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.force_fade_in
    L5_2(L6_2)
  end
end
L0_1._on_force_fade_in_timer = L21_1
function L21_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L21_1
function L21_1(A0_2, A1_2, A2_2)
  A0_2._world_change_callback = A1_2
  A0_2._world_change_callback_self = A2_2
end
L0_1.register_world_change_callback = L21_1
function L21_1(A0_2, A1_2, A2_2)
  A0_2._drag_change_callback = A1_2
  A0_2._drag_change_callback_self = A2_2
end
L0_1.register_drag_change_callback = L21_1
function L21_1(A0_2, A1_2, A2_2)
  A0_2._click_can_take_tip_callback = A1_2
  A0_2._click_can_take_tip_callback_self = A2_2
end
L0_1.register_click_can_take_tip_callback = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._chronicle_path_panel_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._chronicle_path_panel_table
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_id
    L7_2 = L7_2(L8_2)
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_panel_by_graph_id = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = 1
  L3_2 = A0_2._chronicle_path_panel_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._chronicle_path_panel_table
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_path_data
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.ID
    if L8_2 == A1_2 then
      L9_2 = A0_2
      L8_2 = A0_2.get_detail_panel_node
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.gameObject
      L8_2 = L8_2.activeSelf
      if not L8_2 then
        L9_2 = L7_2.IsSkipType
        if L9_2 then
          L9_2 = 1
          L10_2 = A0_2._chronicle_path_panel_table
          L10_2 = #L10_2
          L11_2 = 1
          for L12_2 = L9_2, L10_2, L11_2 do
            L13_2 = A0_2._chronicle_path_panel_table
            L13_2 = L13_2[L12_2]
            L15_2 = L13_2
            L14_2 = L13_2.get_path_data
            L14_2 = L14_2(L15_2)
            L15_2 = L14_2.IsBelongNoWorld
            if not L15_2 then
              L15_2 = L14_2.WorldID
              L16_2 = L7_2.WorldID
              if L15_2 == L16_2 then
                L15_2 = L14_2.IsSkipType
                if not L15_2 then
                  L16_2 = A0_2
                  L15_2 = A0_2.set_navigation_target
                  L18_2 = L13_2
                  L17_2 = L13_2.get_btn
                  L17_2 = L17_2(L18_2)
                  L17_2 = L17_2.gameObject
                  L15_2(L16_2, L17_2)
                  break
                end
              end
            end
          end
        else
          L10_2 = A0_2
          L9_2 = A0_2.set_navigation_target
          L12_2 = L6_2
          L11_2 = L6_2.get_btn
          L11_2 = L11_2(L12_2)
          L11_2 = L11_2.gameObject
          L9_2(L10_2, L11_2)
        end
      end
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector2
      L10_2 = L7_2.PosX
      L10_2 = -L10_2
      L11_2 = L7_2.PosY
      L11_2 = -L11_2
      L9_2 = L9_2(L10_2, L11_2)
      A0_2._target_pos = L9_2
      L9_2 = A0_2._target_pos
      A0_2._smooth_target_pos = L9_2
      return
    end
  end
end
L0_1.move_to_target_path = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_selected_path_data
  return L1_2
end
L0_1.get_cur_selected_path_data = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_path_detail_panel
  return L1_2
end
L0_1.get_detail_panel_node = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L1_2 = -10000000
  L2_2 = 10000000
  L3_2 = 10000000
  L4_2 = -10000000
  L5_2 = 1
  L6_2 = A0_2._chronicle_path_panel_table
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._chronicle_path_panel_table
    L9_2 = L9_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.get_pos
    L10_2 = L10_2(L11_2)
    L11_2 = L10_2.y
    if L1_2 < L11_2 then
      L1_2 = L10_2.y
    end
    L11_2 = L10_2.y
    if L2_2 > L11_2 then
      L2_2 = L10_2.y
    end
    L11_2 = L10_2.x
    if L3_2 > L11_2 then
      L3_2 = L10_2.x
    end
    L11_2 = L10_2.x
    if L4_2 < L11_2 then
      L4_2 = L10_2.x
    end
  end
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  return L5_2, L6_2, L7_2, L8_2
end
L0_1.get_graph_bound = L21_1
function L21_1(A0_2, A1_2)
  A0_2._world_scroll_rect = A1_2
end
L0_1.set_world_scroll_rect = L21_1
function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._world_scroll_rect
  if L1_2 then
    L1_2 = A0_2._world_scroll_rect
    L1_2 = L1_2.Dragging
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2 = L2_2.Dragging
  if not L2_2 then
    L2_2 = L1_2
  end
  return L2_2
end
L0_1.check_is_dragging = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.Dragging
  return L1_2
end
L0_1.check_is_graph_dragging = L21_1
function L21_1(A0_2)
  local L1_2
  A0_2._is_click_world = true
end
L0_1.set_is_click_world = L21_1
function L21_1(A0_2, A1_2, A2_2)
  A0_2._tick_callback = A1_2
  A0_2._tick_callback_self = A2_2
end
L0_1.register_tick_callback = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = nil
  if A1_2 ~= nil then
    L5_2 = -A1_2
    if L5_2 then
      goto lbl_11
      L3_2 = L5_2 or L3_2
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_trans
  L5_2 = L5_2.anchoredPosition
  L3_2 = L5_2.x
  ::lbl_11::
  if A2_2 ~= nil then
    L5_2 = -A2_2
    if L5_2 then
      goto lbl_20
      L4_2 = L5_2 or L4_2
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_trans
  L5_2 = L5_2.anchoredPosition
  L4_2 = L5_2.y
  ::lbl_20::
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector2
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._target_pos = L5_2
  L5_2 = A0_2._target_pos
  A0_2._smooth_target_pos = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_trans
  L6_2 = A0_2._smooth_target_pos
  L5_2.anchoredPosition = L6_2
end
L0_1.direct_set_graph_pos = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2._can_take_path_table
  return L1_2
end
L0_1.get_can_take_path_table = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._is_first
  if L1_2 then
    A0_2._is_first = false
    L1_2 = nil
    L2_2 = nil
    L4_2 = A0_2
    L3_2 = A0_2._get_target_path
    L5_2 = A0_2._first_path_id
    L3_2, L4_2 = L3_2(L4_2, L5_2)
    L1_2 = L4_2
    L2_2 = L3_2
    if L2_2 ~= nil then
      L3_2 = L2_2.IsSkipType
      if not L3_2 then
        L3_2 = L2_2.IsBelongNoWorld
        if not L3_2 then
          goto lbl_48
        end
      end
      L3_2 = 0
      L4_2 = L2_2.ConnectionList
      L4_2 = L4_2.Count
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L2_2.ConnectionList
        L7_2 = L7_2[L6_2]
        L7_2 = L7_2.PathData
        L8_2 = G
        L8_2 = L8_2.MissionChronicleUtils
        L8_2 = L8_2.check_is_path_data_available
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = L7_2.IsSkipType
          if not L8_2 then
            L8_2 = L7_2.IsBelongNoWorld
            if not L8_2 then
              L9_2 = A0_2
              L8_2 = A0_2._get_target_path
              L10_2 = L7_2.ID
              L8_2, L9_2 = L8_2(L9_2, L10_2)
              L1_2 = L9_2
              L2_2 = L8_2
              break
            end
          end
        end
      end
    end
    ::lbl_48::
    if L1_2 ~= nil then
      L4_2 = L1_2
      L3_2 = L1_2.get_btn
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.gameObject
      return L3_2
    end
    L3_2 = nil
    return L3_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_detail_panel_node
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    L2_2 = A0_2.nav_detail_object
    if L2_2 ~= nil then
      L2_2 = A0_2.nav_detail_object
      return L2_2
    else
      L3_2 = A0_2
      L2_2 = A0_2.get_last_nav_panel
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L4_2 = L2_2
        L3_2 = L2_2.get_btn
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.gameObject
        return L3_2
      end
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2.get_last_nav_panel
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L4_2 = L2_2
      L3_2 = L2_2.get_btn
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.gameObject
      return L3_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_selected_object = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = 1
  L5_2 = A0_2._chronicle_path_panel_table
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._chronicle_path_panel_table
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2
    L8_2 = L8_2.get_path_data
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2.ID
    if L9_2 == A1_2 then
      L9_2 = A0_2._chronicle_path_panel_table
      L3_2 = L9_2[L7_2]
      L2_2 = L8_2
      break
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_target_path = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._last_nav_panel
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._check_path_panel_is_in_bound
    L3_2 = A0_2._last_nav_panel
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2._last_nav_panel
      return L1_2
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_nav_path_panel
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_last_nav_panel = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._chronicle_path_panel_table
  if L1_2 ~= nil then
    L1_2 = A0_2._chronicle_path_panel_table
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_actual_pos
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.x
  L3_2 = -L3_2
  L1_2.x = L3_2
  L3_2 = L2_2.y
  L3_2 = -L3_2
  L1_2.y = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_bound
  L3_2(L4_2)
  L3_2 = 10000000
  L4_2 = nil
  L5_2 = 1
  L6_2 = A0_2._chronicle_path_panel_table
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._chronicle_path_panel_table
    L9_2 = L9_2[L8_2]
    L11_2 = L9_2
    L10_2 = L9_2.get_path_data
    L10_2 = L10_2(L11_2)
    L11_2 = L10_2.IsSkipType
    if not L11_2 then
      L12_2 = L9_2
      L11_2 = L9_2.get_pos
      L11_2 = L11_2(L12_2)
      L13_2 = A0_2
      L12_2 = A0_2._get_pos_dis
      L14_2 = L11_2
      L15_2 = L1_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if L3_2 > L12_2 then
        L3_2 = L12_2
        L4_2 = L9_2
      end
    end
  end
  return L4_2
end
L0_1.get_cur_nav_path_panel = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.get_path_data
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.NodeType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleNodeType
  L4_2 = L4_2.ChapterToBeContinue
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1._check_is_to_be_continue_panel = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2
  L3_2 = A0_2.get_detail_panel_node
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.activeSelf
  if L3_2 then
    L3_2 = A0_2._path_detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_is_play_fade_out
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = A1_2
      L3_2 = A1_2.get_path_data
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.NodeType
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.ChronicleNodeType
      L5_2 = L5_2.MissionMain
      if L4_2 ~= L5_2 then
        L4_2 = L3_2.NodeType
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.ChronicleNodeType
        L5_2 = L5_2.MissionSide
        if L4_2 ~= L5_2 then
          L4_2 = L3_2.NodeType
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.GameCore
          L5_2 = L5_2.ChronicleNodeType
          L5_2 = L5_2.ChapterSingle
          if L4_2 ~= L5_2 then
            goto lbl_59
          end
        end
      end
      L4_2 = A0_2._last_nav_panel
      if L4_2 ~= nil then
        L4_2 = A0_2._last_nav_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_path_data
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.ID
        L5_2 = L3_2.ID
        if L4_2 ~= L5_2 then
          L5_2 = A0_2
          L4_2 = A0_2.close_detail_panel
          L6_2 = true
          L4_2(L5_2, L6_2)
          L5_2 = A1_2
          L4_2 = A1_2.trigger_btn
          L4_2(L5_2)
          A2_2 = true
      end
      else
        L5_2 = A0_2
        L4_2 = A0_2._force_move_to_path
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        goto lbl_61
        ::lbl_59::
        L5_2 = A0_2
        L4_2 = A0_2.close_detail_panel
        L4_2(L5_2)
      end
    end
  end
  ::lbl_61::
  L4_2 = A0_2
  L3_2 = A0_2._nav_path_panel_move
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_bound
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_connect_path_panel_table
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_bound_include_path_panel_table
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L10_2 = A0_2
  L9_2 = A0_2._get_vertical_nav_btn
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = A1_2
  L14_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = L9_2
  L10_2 = A0_2
  L9_2 = A0_2._get_vertical_nav_btn
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = A1_2
  L14_2 = true
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = L9_2
  L10_2 = A0_2
  L9_2 = A0_2._get_horizontal_nav_btn
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = A1_2
  L14_2 = true
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L9_2
  L10_2 = A0_2
  L9_2 = A0_2._get_horizontal_nav_btn
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = A1_2
  L14_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L9_2
  L10_2 = A0_2
  L9_2 = A0_2._set_single_btn_navigation
  L12_2 = A1_2
  L11_2 = A1_2.get_btn
  L11_2 = L11_2(L12_2)
  L12_2 = L5_2
  L13_2 = L6_2
  L14_2 = L7_2
  L15_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  A0_2._last_nav_panel = A1_2
end
L0_1._on_path_panel_nav = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = A1_2
  L3_2 = A1_2.get_pos
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.get_width_height
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = L3_2.x
  L7_2 = L4_2 / 2
  L6_2 = L6_2 - L7_2
  L7_2 = L3_2.x
  L8_2 = L4_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2.y
  L9_2 = L5_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L3_2.y
  L10_2 = L5_2 / 2
  L9_2 = L9_2 - L10_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = A0_2._bound_left
  L12_2 = L6_2 - L12_2
  L13_2 = L3_1
  if L12_2 < L13_2 then
    L12_2 = L3_1
    L13_2 = A0_2._bound_left
    L13_2 = L6_2 - L13_2
    L12_2 = L12_2 - L13_2
    L10_2 = L10_2 - L12_2
  end
  L12_2 = A0_2._bound_right
  L12_2 = L12_2 - L7_2
  L13_2 = L3_1
  if L12_2 < L13_2 then
    L12_2 = L3_1
    L13_2 = A0_2._bound_right
    L13_2 = L13_2 - L7_2
    L12_2 = L12_2 - L13_2
    L10_2 = L10_2 + L12_2
  end
  L12_2 = A0_2._bound_up
  L12_2 = L12_2 - L8_2
  L13_2 = L3_1
  if L12_2 < L13_2 then
    L12_2 = L3_1
    L13_2 = A0_2._bound_up
    L13_2 = L13_2 - L8_2
    L12_2 = L12_2 - L13_2
    L11_2 = L11_2 + L12_2
  end
  L12_2 = A0_2._bound_down
  L12_2 = L9_2 - L12_2
  L13_2 = L3_1
  if L12_2 < L13_2 then
    L12_2 = L3_1
    L13_2 = A0_2._bound_down
    L13_2 = L9_2 - L13_2
    L12_2 = L12_2 - L13_2
    L11_2 = L11_2 - L12_2
  end
  if L10_2 ~= 0 or L11_2 ~= 0 then
    L13_2 = A0_2
    L12_2 = A0_2.get_cur_actual_pos
    L12_2 = L12_2(L13_2)
    L13_2 = L12_2.x
    L13_2 = -L13_2
    L14_2 = L12_2.y
    L14_2 = -L14_2
    if A2_2 then
      L15_2 = G
      L15_2 = L15_2.MissionChronicleUtils
      L15_2 = L15_2.check_is_path_can_click
      L17_2 = A1_2
      L16_2 = A1_2.get_path_data
      L16_2, L17_2 = L16_2(L17_2)
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 then
        L15_2 = CS
        L15_2 = L15_2.UnityEngine
        L15_2 = L15_2.Vector2
        L16_2 = A0_2._target_pos
        L16_2 = L16_2.x
        L17_2 = A0_2._target_pos
        L17_2 = L17_2.y
        L15_2 = L15_2(L16_2, L17_2)
        A0_2._target_pos = L15_2
    end
    else
      L15_2 = CS
      L15_2 = L15_2.UnityEngine
      L15_2 = L15_2.Vector2
      L16_2 = L13_2 + L10_2
      L16_2 = -L16_2
      L17_2 = L14_2 + L11_2
      L17_2 = -L17_2
      L15_2 = L15_2(L16_2, L17_2)
      A0_2._target_pos = L15_2
    end
    L15_2 = A0_2._target_pos
    A0_2._smooth_target_pos = L15_2
  end
end
L0_1._nav_path_panel_move = L21_1
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L6_2 = A3_2
  L5_2 = A3_2.get_pos
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = 10000000
  L8_2 = 1
  L9_2 = #A1_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A1_2[L11_2]
    L14_2 = L12_2
    L13_2 = L12_2.get_pos
    L13_2 = L13_2(L14_2)
    L14_2 = math
    L14_2 = L14_2.abs
    L15_2 = L13_2.x
    L16_2 = L5_2.x
    L15_2 = L15_2 - L16_2
    L14_2 = L14_2(L15_2)
    L15_2 = L1_1
    if L14_2 < L15_2 then
      L15_2 = L12_2
      L14_2 = L12_2.get_width_height
      L14_2, L15_2 = L14_2(L15_2)
      if A4_2 then
        L16_2 = L13_2.y
        L17_2 = L15_2 / 2
        L16_2 = L16_2 + L17_2
        if L16_2 then
          goto lbl_33
        end
      end
      L16_2 = L13_2.y
      L17_2 = L15_2 / 2
      L16_2 = L16_2 - L17_2
      ::lbl_33::
      L17_2 = L5_2.y
      L17_2 = L16_2 - L17_2
      if A4_2 then
        L18_2 = -L17_2
        L17_2 = L18_2 or L17_2
        if not L18_2 then
        end
      end
      L18_2 = L2_1
      if L17_2 > L18_2 and L7_2 > L17_2 then
        L7_2 = L17_2
        L19_2 = L12_2
        L18_2 = L12_2.get_btn
        L18_2 = L18_2(L19_2)
        L6_2 = L18_2
      end
    end
  end
  L7_2 = 10000000
  L8_2 = nil
  if L6_2 == nil then
    L9_2 = 1
    L10_2 = #A1_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A1_2[L12_2]
      L15_2 = L13_2
      L14_2 = L13_2.get_pos
      L14_2 = L14_2(L15_2)
      L16_2 = L13_2
      L15_2 = L13_2.get_width_height
      L15_2, L16_2 = L15_2(L16_2)
      if A4_2 then
        L17_2 = L14_2.y
        L18_2 = L16_2 / 2
        L17_2 = L17_2 + L18_2
        if L17_2 then
          goto lbl_73
        end
      end
      L17_2 = L14_2.y
      L18_2 = L16_2 / 2
      L17_2 = L17_2 - L18_2
      ::lbl_73::
      L18_2 = L5_2.y
      L18_2 = L17_2 - L18_2
      if A4_2 then
        L19_2 = -L18_2
        L18_2 = L19_2 or L18_2
        if not L19_2 then
        end
      end
      L19_2 = L2_1
      if L18_2 > L19_2 and L7_2 > L18_2 then
        L7_2 = L18_2
        L8_2 = L14_2
        L20_2 = L13_2
        L19_2 = L13_2.get_btn
        L19_2 = L19_2(L20_2)
        L6_2 = L19_2
      elseif L18_2 == L7_2 then
        L20_2 = A0_2
        L19_2 = A0_2._get_pos_dis
        L21_2 = L8_2
        L22_2 = L5_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L21_2 = A0_2
        L20_2 = A0_2._get_pos_dis
        L22_2 = L14_2
        L23_2 = L5_2
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        if L19_2 > L20_2 then
          L8_2 = L14_2
          L22_2 = L13_2
          L21_2 = L13_2.get_btn
          L21_2 = L21_2(L22_2)
          L6_2 = L21_2
        end
      end
    end
  end
  L7_2 = 10000000
  if L6_2 == nil then
    L9_2 = 1
    L10_2 = #A2_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A2_2[L12_2]
      L15_2 = L13_2
      L14_2 = L13_2.get_pos
      L14_2 = L14_2(L15_2)
      L15_2 = math
      L15_2 = L15_2.abs
      L16_2 = L14_2.x
      L17_2 = L5_2.x
      L16_2 = L16_2 - L17_2
      L15_2 = L15_2(L16_2)
      L16_2 = L1_1
      if L15_2 < L16_2 then
        L16_2 = L13_2
        L15_2 = L13_2.get_width_height
        L15_2, L16_2 = L15_2(L16_2)
        if A4_2 then
          L17_2 = L14_2.y
          L18_2 = L16_2 / 2
          L17_2 = L17_2 + L18_2
          if L17_2 then
            goto lbl_139
          end
        end
        L17_2 = L14_2.y
        L18_2 = L16_2 / 2
        L17_2 = L17_2 - L18_2
        ::lbl_139::
        L18_2 = L5_2.y
        L18_2 = L17_2 - L18_2
        if A4_2 then
          L19_2 = -L18_2
          L18_2 = L19_2 or L18_2
          if not L19_2 then
          end
        end
        L19_2 = L2_1
        if L18_2 > L19_2 and L7_2 > L18_2 then
          L7_2 = L18_2
          L20_2 = L13_2
          L19_2 = L13_2.get_btn
          L19_2 = L19_2(L20_2)
          L6_2 = L19_2
        end
      end
    end
  end
  L7_2 = 10000000
  L8_2 = nil
  if L6_2 == nil then
    L9_2 = 1
    L10_2 = #A2_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A2_2[L12_2]
      L15_2 = L13_2
      L14_2 = L13_2.get_pos
      L14_2 = L14_2(L15_2)
      L16_2 = L13_2
      L15_2 = L13_2.get_width_height
      L15_2, L16_2 = L15_2(L16_2)
      if A4_2 then
        L17_2 = L14_2.y
        L18_2 = L16_2 / 2
        L17_2 = L17_2 + L18_2
        if L17_2 then
          goto lbl_179
        end
      end
      L17_2 = L14_2.y
      L18_2 = L16_2 / 2
      L17_2 = L17_2 - L18_2
      ::lbl_179::
      L18_2 = L5_2.y
      L18_2 = L17_2 - L18_2
      if A4_2 then
        L19_2 = -L18_2
        L18_2 = L19_2 or L18_2
        if not L19_2 then
        end
      end
      L19_2 = L2_1
      if L18_2 > L19_2 and L7_2 > L18_2 then
        L7_2 = L18_2
        L8_2 = L14_2
        L20_2 = L13_2
        L19_2 = L13_2.get_btn
        L19_2 = L19_2(L20_2)
        L6_2 = L19_2
      elseif L18_2 == L7_2 then
        L20_2 = A0_2
        L19_2 = A0_2._get_pos_dis
        L21_2 = L8_2
        L22_2 = L5_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L21_2 = A0_2
        L20_2 = A0_2._get_pos_dis
        L22_2 = L14_2
        L23_2 = L5_2
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        if L19_2 > L20_2 then
          L8_2 = L14_2
          L22_2 = L13_2
          L21_2 = L13_2.get_btn
          L21_2 = L21_2(L22_2)
          L6_2 = L21_2
        end
      end
    end
  end
  return L6_2
end
L0_1._get_vertical_nav_btn = L21_1
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L6_2 = A3_2
  L5_2 = A3_2.get_pos
  L5_2 = L5_2(L6_2)
  L6_2 = nil
  L7_2 = 10000000
  L8_2 = 1
  L9_2 = #A1_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A1_2[L11_2]
    L14_2 = L12_2
    L13_2 = L12_2.get_pos
    L13_2 = L13_2(L14_2)
    L15_2 = L12_2
    L14_2 = L12_2.get_width_height
    L14_2, L15_2 = L14_2(L15_2)
    if A4_2 then
      L16_2 = L13_2.x
      L17_2 = L14_2 / 2
      L16_2 = L16_2 + L17_2
      if L16_2 then
        goto lbl_24
      end
    end
    L16_2 = L13_2.x
    L17_2 = L14_2 / 2
    L16_2 = L16_2 - L17_2
    ::lbl_24::
    L17_2 = math
    L17_2 = L17_2.abs
    L18_2 = L13_2.y
    L19_2 = L5_2.y
    L18_2 = L18_2 - L19_2
    L17_2 = L17_2(L18_2)
    L18_2 = L1_1
    if L17_2 < L18_2 then
      L17_2 = L5_2.x
      L17_2 = L16_2 - L17_2
      if A4_2 then
        L18_2 = -L17_2
        L17_2 = L18_2 or L17_2
        if not L18_2 then
        end
      end
      L18_2 = L2_1
      if L17_2 > L18_2 and L7_2 > L17_2 then
        L7_2 = L17_2
        L19_2 = L12_2
        L18_2 = L12_2.get_btn
        L18_2 = L18_2(L19_2)
        L6_2 = L18_2
      end
    end
  end
  L7_2 = 10000000
  L8_2 = nil
  if L6_2 == nil then
    L9_2 = 1
    L10_2 = #A1_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A1_2[L12_2]
      L15_2 = L13_2
      L14_2 = L13_2.get_pos
      L14_2 = L14_2(L15_2)
      L16_2 = L13_2
      L15_2 = L13_2.get_width_height
      L15_2, L16_2 = L15_2(L16_2)
      if A4_2 then
        L17_2 = L14_2.x
        L18_2 = L15_2 / 2
        L17_2 = L17_2 + L18_2
        if L17_2 then
          goto lbl_73
        end
      end
      L17_2 = L14_2.x
      L18_2 = L15_2 / 2
      L17_2 = L17_2 - L18_2
      ::lbl_73::
      L18_2 = L5_2.x
      L18_2 = L17_2 - L18_2
      if A4_2 then
        L19_2 = -L18_2
        L18_2 = L19_2 or L18_2
        if not L19_2 then
        end
      end
      L19_2 = L2_1
      if L18_2 > L19_2 and L7_2 > L18_2 then
        L7_2 = L18_2
        L8_2 = L14_2
        L20_2 = L13_2
        L19_2 = L13_2.get_btn
        L19_2 = L19_2(L20_2)
        L6_2 = L19_2
      elseif L18_2 == L7_2 then
        L20_2 = A0_2
        L19_2 = A0_2._get_pos_dis
        L21_2 = L8_2
        L22_2 = L5_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L21_2 = A0_2
        L20_2 = A0_2._get_pos_dis
        L22_2 = L14_2
        L23_2 = L5_2
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        if L19_2 > L20_2 then
          L8_2 = L14_2
          L22_2 = L13_2
          L21_2 = L13_2.get_btn
          L21_2 = L21_2(L22_2)
          L6_2 = L21_2
        end
      end
    end
  end
  L7_2 = 10000000
  if L6_2 == nil then
    L9_2 = 1
    L10_2 = #A2_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A2_2[L12_2]
      L15_2 = L13_2
      L14_2 = L13_2.get_pos
      L14_2 = L14_2(L15_2)
      L15_2 = math
      L15_2 = L15_2.abs
      L16_2 = L14_2.y
      L17_2 = L5_2.y
      L16_2 = L16_2 - L17_2
      L15_2 = L15_2(L16_2)
      L16_2 = L1_1
      if L15_2 < L16_2 then
        L16_2 = L13_2
        L15_2 = L13_2.get_width_height
        L15_2, L16_2 = L15_2(L16_2)
        if A4_2 then
          L17_2 = L14_2.x
          L18_2 = L15_2 / 2
          L17_2 = L17_2 + L18_2
          if L17_2 then
            goto lbl_139
          end
        end
        L17_2 = L14_2.x
        L18_2 = L15_2 / 2
        L17_2 = L17_2 - L18_2
        ::lbl_139::
        L18_2 = L5_2.x
        L18_2 = L17_2 - L18_2
        if A4_2 then
          L19_2 = -L18_2
          L18_2 = L19_2 or L18_2
          if not L19_2 then
          end
        end
        L19_2 = L2_1
        if L18_2 > L19_2 and L7_2 > L18_2 then
          L7_2 = L18_2
          L20_2 = L13_2
          L19_2 = L13_2.get_btn
          L19_2 = L19_2(L20_2)
          L6_2 = L19_2
        end
      end
    end
  end
  L7_2 = 10000000
  L8_2 = nil
  if L6_2 == nil then
    L9_2 = 1
    L10_2 = #A2_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = A2_2[L12_2]
      L15_2 = L13_2
      L14_2 = L13_2.get_pos
      L14_2 = L14_2(L15_2)
      L16_2 = L13_2
      L15_2 = L13_2.get_width_height
      L15_2, L16_2 = L15_2(L16_2)
      if A4_2 then
        L17_2 = L14_2.x
        L18_2 = L15_2 / 2
        L17_2 = L17_2 + L18_2
        if L17_2 then
          goto lbl_179
        end
      end
      L17_2 = L14_2.x
      L18_2 = L15_2 / 2
      L17_2 = L17_2 - L18_2
      ::lbl_179::
      L18_2 = L5_2.x
      L18_2 = L17_2 - L18_2
      if A4_2 then
        L19_2 = -L18_2
        L18_2 = L19_2 or L18_2
        if not L19_2 then
        end
      end
      L19_2 = L2_1
      if L18_2 > L19_2 and L7_2 > L18_2 then
        L7_2 = L18_2
        L8_2 = L14_2
        L20_2 = L13_2
        L19_2 = L13_2.get_btn
        L19_2 = L19_2(L20_2)
        L6_2 = L19_2
      elseif L18_2 == L7_2 then
        L20_2 = A0_2
        L19_2 = A0_2._get_pos_dis
        L21_2 = L8_2
        L22_2 = L5_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        L21_2 = A0_2
        L20_2 = A0_2._get_pos_dis
        L22_2 = L14_2
        L23_2 = L5_2
        L20_2 = L20_2(L21_2, L22_2, L23_2)
        if L19_2 > L20_2 then
          L8_2 = L14_2
          L22_2 = L13_2
          L21_2 = L13_2.get_btn
          L21_2 = L21_2(L22_2)
          L6_2 = L21_2
        end
      end
    end
  end
  return L6_2
end
L0_1._get_horizontal_nav_btn = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = {}
  L4_2 = A1_2
  L3_2 = A1_2.get_path_data
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = nil
  L7_2 = A0_2
  L6_2 = A0_2._get_available_connect_path_data_table
  L8_2 = L3_2
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L5_2 = L7_2
  L4_2 = L6_2
  L6_2 = 1
  L7_2 = #L4_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L11_2 = A0_2
    L10_2 = A0_2._check_is_path_panel_exist
    L12_2 = L2_2
    L13_2 = L4_2[L9_2]
    L13_2 = L13_2.ID
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    if not L10_2 then
      L11_2 = A0_2
      L10_2 = A0_2.get_panel_by_graph_id
      L12_2 = L4_2[L9_2]
      L12_2 = L12_2.ID
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L2_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L6_2 = 1
  L7_2 = #L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2[L9_2]
    L12_2 = A0_2
    L11_2 = A0_2._get_parent_connect_panel_table_and_parent_path_table
    L13_2 = L10_2
    L11_2, L12_2 = L11_2(L12_2, L13_2)
    L13_2 = 1
    L14_2 = #L11_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = L11_2[L16_2]
      L18_2 = L17_2
      L17_2 = L17_2.get_id
      L17_2 = L17_2(L18_2)
      L18_2 = L3_2.ID
      if L17_2 ~= L18_2 then
        L18_2 = A0_2
        L17_2 = A0_2._check_is_path_panel_exist
        L19_2 = L2_2
        L20_2 = L11_2[L16_2]
        L21_2 = L20_2
        L20_2 = L20_2.get_id
        L20_2, L21_2, L22_2 = L20_2(L21_2)
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
        if not L17_2 then
          L17_2 = L11_2[L16_2]
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L2_2
          L20_2 = L17_2
          L18_2(L19_2, L20_2)
        end
      end
    end
  end
  L6_2 = nil
  L7_2 = nil
  L9_2 = A0_2
  L8_2 = A0_2._get_parent_connect_panel_table_and_parent_path_table
  L10_2 = L3_2
  L8_2, L9_2 = L8_2(L9_2, L10_2)
  L6_2 = L9_2
  L7_2 = L8_2
  L8_2 = 1
  L9_2 = #L7_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L2_2
    L14_2 = L7_2[L11_2]
    L12_2(L13_2, L14_2)
  end
  L8_2 = 1
  L9_2 = #L6_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L6_2[L11_2]
    L14_2 = A0_2
    L13_2 = A0_2._get_available_connect_path_data_table
    L15_2 = L12_2
    L13_2, L14_2 = L13_2(L14_2, L15_2)
    L15_2 = 1
    L16_2 = #L13_2
    L17_2 = 1
    for L18_2 = L15_2, L16_2, L17_2 do
      L19_2 = L13_2[L18_2]
      L19_2 = L19_2.ID
      L20_2 = L3_2.ID
      if L19_2 ~= L20_2 then
        L20_2 = A0_2
        L19_2 = A0_2._check_is_path_panel_exist
        L21_2 = L2_2
        L22_2 = L13_2[L18_2]
        L22_2 = L22_2.ID
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        if not L19_2 then
          L20_2 = A0_2
          L19_2 = A0_2.get_panel_by_graph_id
          L21_2 = L13_2[L18_2]
          L21_2 = L21_2.ID
          L19_2 = L19_2(L20_2, L21_2)
          L20_2 = table
          L20_2 = L20_2.insert
          L21_2 = L2_2
          L22_2 = L19_2
          L20_2(L21_2, L22_2)
        end
      end
    end
  end
  return L2_2
end
L0_1._get_connect_path_panel_table = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = {}
  L3_2 = {}
  L5_2 = A1_2
  L4_2 = A1_2.IsCanStepNextPath
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = 0
    L5_2 = A1_2.ConnectionList
    L5_2 = L5_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A1_2.ConnectionList
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2.LineType
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ChronicleLineType
      L10_2 = L10_2.Normal
      if L9_2 ~= L10_2 then
        L9_2 = L8_2.LineType
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.ChronicleLineType
        L10_2 = L10_2.Hide
        if L9_2 ~= L10_2 then
          goto lbl_85
        end
      end
      L9_2 = G
      L9_2 = L9_2.MissionChronicleUtils
      L9_2 = L9_2.check_is_path_data_available
      L10_2 = L8_2.PathData
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = L8_2.PathData
        L9_2 = L9_2.IsSkipType
        if L9_2 then
          L9_2 = nil
          L10_2 = nil
          L12_2 = A0_2
          L11_2 = A0_2._get_available_connect_path_data_table
          L13_2 = L8_2.PathData
          L11_2, L12_2 = L11_2(L12_2, L13_2)
          L10_2 = L12_2
          L9_2 = L11_2
          L11_2 = 1
          L12_2 = #L10_2
          L13_2 = 1
          for L14_2 = L11_2, L12_2, L13_2 do
            L15_2 = table
            L15_2 = L15_2.insert
            L16_2 = L2_2
            L17_2 = L9_2[L14_2]
            L15_2(L16_2, L17_2)
            L15_2 = table
            L15_2 = L15_2.insert
            L16_2 = L3_2
            L17_2 = L10_2[L14_2]
            L15_2(L16_2, L17_2)
          end
          L12_2 = A0_2
          L11_2 = A0_2._check_is_path_data_exist
          L13_2 = L3_2
          L14_2 = L8_2.PathData
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          if not L11_2 then
            L11_2 = table
            L11_2 = L11_2.insert
            L12_2 = L3_2
            L13_2 = L8_2.PathData
            L11_2(L12_2, L13_2)
          end
        else
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L2_2
          L11_2 = L8_2.PathData
          L9_2(L10_2, L11_2)
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L3_2
          L11_2 = L8_2.PathData
          L9_2(L10_2, L11_2)
        end
      end
      ::lbl_85::
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_available_connect_path_data_table = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = nil
  L4_2 = A1_2
  L3_2 = A1_2.GetType
  L3_2 = L3_2(L4_2)
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MissionChronicleMainPathData
  L4_2 = L4_2(L5_2)
  if L3_2 == L4_2 then
    L2_2 = A1_2.ParentMainPathList
  else
    L4_2 = A1_2
    L3_2 = A1_2.GetType
    L3_2 = L3_2(L4_2)
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.MissionChronicleSubPathData
    L4_2 = L4_2(L5_2)
    if L3_2 == L4_2 then
      L2_2 = A1_2.ParentSubPathList
    end
  end
  L3_2 = {}
  L4_2 = {}
  L5_2 = 0
  L6_2 = L2_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    L10_2 = L9_2.IsSkipType
    if L10_2 then
      L10_2 = nil
      L11_2 = nil
      L13_2 = A0_2
      L12_2 = A0_2._get_parent_connect_panel_table_and_parent_path_table
      L14_2 = L9_2
      L12_2, L13_2 = L12_2(L13_2, L14_2)
      L11_2 = L13_2
      L10_2 = L12_2
      L12_2 = 1
      L13_2 = #L11_2
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = L10_2[L15_2]
        L17_2 = L11_2[L15_2]
        L19_2 = A0_2
        L18_2 = A0_2._check_is_path_panel_exist
        L20_2 = L3_2
        L21_2 = L17_2.ID
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        if not L18_2 then
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L3_2
          L20_2 = L16_2
          L18_2(L19_2, L20_2)
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L4_2
          L20_2 = L17_2
          L18_2(L19_2, L20_2)
        end
      end
      L13_2 = L9_2
      L12_2 = L9_2.IsCanStepNextPath
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = false
        L13_2 = 1
        L14_2 = #L4_2
        L15_2 = 1
        for L16_2 = L13_2, L14_2, L15_2 do
          L17_2 = L4_2[L16_2]
          L17_2 = L17_2.ID
          L18_2 = L9_2.ID
          if L17_2 == L18_2 then
            L12_2 = true
          end
        end
        if not L12_2 then
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L4_2
          L15_2 = L9_2
          L13_2(L14_2, L15_2)
        end
      end
    else
      L11_2 = A0_2
      L10_2 = A0_2._check_is_path_panel_exist
      L12_2 = L3_2
      L13_2 = L9_2.ID
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      if not L10_2 then
        L11_2 = L9_2
        L10_2 = L9_2.IsCanStepNextPath
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L11_2 = A0_2
          L10_2 = A0_2.get_panel_by_graph_id
          L12_2 = L9_2.ID
          L10_2 = L10_2(L11_2, L12_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L3_2
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = L4_2
          L13_2 = L9_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L0_1._get_parent_connect_panel_table_and_parent_path_table = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_path_data
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.ID
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_path_panel_exist = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.ID
    if L7_2 == A2_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_path_data_exist = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._chronicle_path_panel_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._chronicle_path_panel_table
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.get_path_data
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.IsSkipType
    if not L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2._check_path_panel_is_in_bound
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L0_1._get_bound_include_path_panel_table = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A1_2
  L2_2 = A1_2.get_pos
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.get_width_height
  L3_2, L4_2 = L3_2(L4_2)
  L6_2 = A1_2
  L5_2 = A1_2.check_is_small_size
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = L4_1
    if L5_2 then
      goto lbl_13
    end
  end
  L5_2 = 0
  ::lbl_13::
  L6_2 = L2_2.x
  L6_2 = L6_2 - L5_2
  L7_2 = L3_2 / 2
  L6_2 = L6_2 - L7_2
  L7_2 = L2_2.x
  L7_2 = L7_2 - L5_2
  L8_2 = L3_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L2_2.y
  L9_2 = L4_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L2_2.y
  L10_2 = L4_2 / 2
  L9_2 = L9_2 - L10_2
  L10_2 = A0_2._bound_left
  if L6_2 >= L10_2 then
    L10_2 = A0_2._bound_right
  end
  L10_2 = L6_2 < L10_2
  L11_2 = A0_2._bound_down
  if L8_2 > L11_2 then
    L11_2 = A0_2._bound_up
  end
  L11_2 = L8_2 <= L11_2
  L12_2 = L10_2 or L12_2
  if L10_2 then
    L12_2 = L11_2
  end
  return L12_2
end
L0_1._check_path_panel_is_in_bound = L21_1
function L21_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L6_2 = A1_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnUp = A2_2
  else
    L6_2.selectOnUp = nil
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnDown = A3_2
  else
    L6_2.selectOnDown = nil
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnLeft = A4_2
  else
    L6_2.selectOnLeft = nil
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnRight = A5_2
  else
    L6_2.selectOnRight = nil
  end
  A1_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L21_1
function L21_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
end
L0_1.play_fade_in = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2._slider_value
  return L1_2
end
L0_1.get_slider_value = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._zoom_slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_slider_value_without_delta
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_slider_value = L21_1
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._mission_path_info_table = A1_2
  A0_2._first_path_id = A3_2
  L4_2 = 1
  L5_2 = A0_2._mission_path_info_table
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._mission_path_info_table
    L8_2 = L8_2[L7_2]
    L9_2 = nil
    L10_2 = L8_2.NodeType
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.GameCore
    L11_2 = L11_2.ChronicleNodeType
    L11_2 = L11_2.MissionMain
    if L10_2 ~= L11_2 then
      L10_2 = L8_2.NodeType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ChronicleNodeType
      L11_2 = L11_2.ChapterToBeContinue
      if L10_2 ~= L11_2 then
        goto lbl_32
      end
    end
    L10_2 = A0_2._binder
    L10_2 = L10_2.prefab_loader
    L10_2 = L10_2.MultiPrefabList
    L9_2 = L10_2[1]
    goto lbl_77
    ::lbl_32::
    L10_2 = L8_2.NodeType
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.GameCore
    L11_2 = L11_2.ChronicleNodeType
    L11_2 = L11_2.ChapterSingle
    if L10_2 ~= L11_2 then
      L10_2 = L8_2.NodeType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ChronicleNodeType
      L11_2 = L11_2.MissionSide
      if L10_2 ~= L11_2 then
        goto lbl_53
      end
    end
    L10_2 = A0_2._binder
    L10_2 = L10_2.prefab_loader
    L10_2 = L10_2.MultiPrefabList
    L9_2 = L10_2[2]
    goto lbl_77
    ::lbl_53::
    L10_2 = L8_2.NodeType
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.GameCore
    L11_2 = L11_2.ChronicleNodeType
    L11_2 = L11_2.WorldNode
    if L10_2 == L11_2 then
      L9_2 = "UI/Chronicle/Widget/Chronicle_Mission04.prefab"
    else
      L10_2 = L8_2.NodeType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ChronicleNodeType
      L11_2 = L11_2.LineNode
      if L10_2 == L11_2 then
        L9_2 = "UI/Chronicle/Widget/Chronicle_Chapter.prefab"
      else
        L10_2 = A0_2._binder
        L10_2 = L10_2.prefab_loader
        L10_2 = L10_2.MultiPrefabList
        L9_2 = L10_2[0]
      end
    end
    ::lbl_77::
    L10_2 = nil
    L11_2 = nil
    L12_2 = L8_2.NodeType
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.GameCore
    L13_2 = L13_2.ChronicleNodeType
    L13_2 = L13_2.WorldNode
    if L12_2 == L13_2 then
      L13_2 = A0_2
      L12_2 = A0_2.sync_load_prefab
      L14_2 = L9_2
      L15_2 = A0_2._binder
      L15_2 = L15_2.prefab_loader
      L15_2 = L15_2.transform
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L10_2 = L12_2
      L13_2 = A0_2
      L12_2 = A0_2.create_panel
      L14_2 = G
      L14_2 = L14_2.MissionChronicleSingleBtnWorldNodeItem
      L15_2 = G
      L15_2 = L15_2.MissionChronicleSingleBtnWorldNodeItemBinder
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L12_2
    else
      L12_2 = L8_2.NodeType
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.GameCore
      L13_2 = L13_2.ChronicleNodeType
      L13_2 = L13_2.LineNode
      if L12_2 == L13_2 then
        L13_2 = A0_2
        L12_2 = A0_2.sync_load_prefab
        L14_2 = L9_2
        L15_2 = A0_2._binder
        L15_2 = L15_2.prefab_loader
        L15_2 = L15_2.transform
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L10_2 = L12_2
        L13_2 = A0_2
        L12_2 = A0_2.create_panel
        L14_2 = G
        L14_2 = L14_2.MissionChronicleSingleBtnLineNodeItem
        L15_2 = G
        L15_2 = L15_2.MissionChronicleSingleBtnLineNodeItemBinder
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2 = L12_2
      else
        L13_2 = A0_2
        L12_2 = A0_2.instantiate_object
        L14_2 = L9_2
        L15_2 = A0_2._binder
        L15_2 = L15_2.prefab_loader
        L15_2 = L15_2.transform
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L10_2 = L12_2
        L13_2 = A0_2
        L12_2 = A0_2.create_panel
        L14_2 = G
        L14_2 = L14_2.MissionChronicleSingleBtnItem
        L15_2 = G
        L15_2 = L15_2.MissionChronicleSingleBtnItemBinder
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2 = L12_2
      end
    end
    L13_2 = L11_2
    L12_2 = L11_2.register_click_callback
    L14_2 = A0_2._on_click_path
    L15_2 = A0_2
    L12_2(L13_2, L14_2, L15_2)
    L13_2 = L11_2
    L12_2 = L11_2.register_find_graph_panel_callback
    L14_2 = A0_2.get_panel_by_graph_id
    L15_2 = A0_2
    L12_2(L13_2, L14_2, L15_2)
    L13_2 = L11_2
    L12_2 = L11_2.register_nav_callback
    L14_2 = A0_2._on_path_panel_nav
    L15_2 = A0_2
    L12_2(L13_2, L14_2, L15_2)
    L13_2 = L11_2
    L12_2 = L11_2.bind
    L14_2 = L10_2
    L12_2(L13_2, L14_2)
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = A0_2._chronicle_path_panel_table
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_graph
  L4_2(L5_2)
  if not A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._play_fade_in
    L4_2(L5_2)
  end
  L4_2 = A0_2._mono_ticker
  L5_2 = L4_2
  L4_2 = L4_2.SetTickCallback
  L6_2 = A0_2._on_tick
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._zoom_slider_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_slider_value
  L6_2 = A0_2._default_slider_value
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_scale
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_tip_point
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._add_touch_event
  L4_2(L5_2)
end
L0_1.setup_view = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._chronicle_path_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._chronicle_path_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = A0_2._mission_path_info_table
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = 1
      L1_3 = A0_2._chronicle_path_panel_table
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = A0_2._chronicle_path_panel_table
        L4_3 = L4_3[L3_3]
        L5_3 = L4_3
        L4_3 = L4_3.setup_line
        L4_3(L5_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_first_graph_pos
  L1_2(L2_2)
end
L0_1._setup_graph = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._chronicle_path_panel_table
  L1_2 = L1_2[1]
  L2_2 = A0_2._first_path_id
  L3_2 = A0_2._chronicle_path_panel_table
  L3_2 = L3_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.get_id
  L3_2 = L3_2(L4_2)
  if L2_2 ~= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_panel_by_graph_id
    L4_2 = A0_2._first_path_id
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L1_2 = L2_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_need_fade_in_anim_panel_table
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = A0_2._chronicle_path_panel_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._chronicle_path_panel_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.get_id
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2._check_is_id_exist_in_panel_table
    L9_2 = L6_2
    L10_2 = A0_2._need_anim_fade_in_panel_table
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if not L7_2 then
      L7_2 = A0_2._chronicle_path_panel_table
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.force_fade_in
      L7_2(L8_2)
    end
  end
  L3_2 = L1_2
  L2_2 = L1_2.play_fade_in_anim
  L2_2(L3_2)
  L2_2 = A0_2._safe_force_fade_in_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._safe_force_fade_in_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._play_fade_in = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._need_anim_fade_in_panel_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.get_panel_by_graph_id
  L3_2 = A0_2._first_path_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._need_anim_fade_in_panel_table
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  while true do
    L3_2 = A0_2._need_anim_fade_in_panel_table
    L3_2 = #L3_2
    if not (L2_2 <= L3_2) then
      break
    end
    L3_2 = A0_2._need_anim_fade_in_panel_table
    L3_2 = L3_2[L2_2]
    L4_2 = L3_2
    L3_2 = L3_2.get_path_data
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._search_next_need_fade_in_anim_panel
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L2_2 = L2_2 + 1
  end
end
L0_1._get_need_fade_in_anim_panel_table = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A1_2
  L2_2 = A1_2.IsCanStepNextPath
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = 0
  L3_2 = A1_2.ConnectionList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.ConnectionList
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.LineType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ChronicleLineType
    L8_2 = L8_2.Normal
    if L7_2 ~= L8_2 then
      L7_2 = L6_2.LineType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ChronicleLineType
      L8_2 = L8_2.Hide
      if L7_2 ~= L8_2 then
        goto lbl_55
      end
    end
    L7_2 = G
    L7_2 = L7_2.MissionChronicleUtils
    L7_2 = L7_2.check_is_path_data_available
    L8_2 = L6_2.PathData
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2.get_panel_by_graph_id
      L9_2 = L6_2.PathData
      L9_2 = L9_2.ID
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L9_2 = A0_2
        L8_2 = A0_2._check_is_id_exist_in_panel_table
        L10_2 = L6_2.PathData
        L10_2 = L10_2.ID
        L11_2 = A0_2._need_anim_fade_in_panel_table
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        if not L8_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = A0_2._need_anim_fade_in_panel_table
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    end
    ::lbl_55::
  end
end
L0_1._search_next_need_fade_in_anim_panel = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 1
  L4_2 = #A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A2_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_id
    L7_2 = L7_2(L8_2)
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_id_exist_in_panel_table = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._chronicle_path_panel_table
  L1_2 = #L1_2
  if L1_2 <= 1 then
    return
  end
  L1_2 = A0_2._first_path_id
  L2_2 = A0_2._chronicle_path_panel_table
  L2_2 = L2_2[1]
  L3_2 = L2_2
  L2_2 = L2_2.get_path_data
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.ID
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_panel_by_graph_id
    L3_2 = A0_2._first_path_id
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.rect_trans
      L3_2 = CS
      L3_2 = L3_2.UnityEngine
      L3_2 = L3_2.Vector2
      L5_2 = L1_2
      L4_2 = L1_2.get_pos
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.x
      L4_2 = -L4_2
      L6_2 = L1_2
      L5_2 = L1_2.get_pos
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.y
      L5_2 = -L5_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2.anchoredPosition = L3_2
      return
    end
  end
  L1_2 = A0_2._window_width
  L1_2 = -L1_2
  L1_2 = L1_2 / 3
  L2_2 = A0_2._scale
  L1_2 = L1_2 / L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_most_left_path_data
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PosX
  L3_2 = L1_2 - L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_trans
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector2
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_trans
  L7_2 = L7_2.anchoredPosition
  L7_2 = L7_2.y
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.anchoredPosition = L5_2
end
L0_1._setup_first_graph_pos = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._mission_path_info_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_path_info_table
    L6_2 = L6_2[L5_2]
    if L1_2 ~= nil then
      L7_2 = L6_2.PosX
      L8_2 = L1_2.PosX
      if not (L7_2 < L8_2) then
        goto lbl_16
      end
    end
    L1_2 = L6_2
    ::lbl_16::
  end
  return L1_2
end
L0_1._get_most_left_path_data = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.viewport_trans
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = A0_2._scale
  L4_2 = A0_2._scale
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.localScale = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L1_2 = L1_2.transform
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = A0_2._scale
  L3_2 = 1 / L3_2
  L4_2 = A0_2._scale
  L4_2 = 1 / L4_2
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.localScale = L2_2
  L1_2 = A0_2._base_window_width
  L2_2 = A0_2._scale
  L2_2 = 1 / L2_2
  L1_2 = L1_2 * L2_2
  A0_2._window_width = L1_2
  L1_2 = A0_2._base_window_height
  L2_2 = A0_2._scale
  L2_2 = 1 / L2_2
  L1_2 = L1_2 * L2_2
  A0_2._window_height = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_bound
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._force_set_pos
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_can_take_tip
  L1_2(L2_2)
end
L0_1._setup_scale = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._mission_path_info_table
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_actual_pos
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._last_pos
  L2_2 = L2_2 == nil
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_bound
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.check_is_dragging
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A0_2._smooth_target_pos
    if L4_2 == nil then
      L5_2 = A0_2
      L4_2 = A0_2._force_set_pos
      L4_2(L5_2)
    else
      L4_2 = L11_1
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector2
      L5_2 = L5_2.Distance
      L6_2 = L1_2
      L7_2 = A0_2._smooth_target_pos
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2 * 12
      L6_2 = L12_1
      if L4_2 < L6_2 then
        L6_2 = L12_1
        L4_2 = L6_2 or L4_2
        if not L6_2 then
        end
      end
      if L5_2 <= 1 then
        A0_2._smooth_target_pos = nil
        L6_2 = A0_2._binder
        L6_2 = L6_2.rect_trans
        L7_2 = A0_2._target_pos
        L6_2.anchoredPosition = L7_2
      else
        L6_2 = A0_2._binder
        L6_2 = L6_2.rect_trans
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.Vector2
        L7_2 = L7_2.SmoothDamp
        L8_2 = A0_2._binder
        L8_2 = L8_2.rect_trans
        L8_2 = L8_2.anchoredPosition
        L9_2 = A0_2._target_pos
        L10_2 = A0_2._pos_setting_velocity
        L11_2 = L10_1
        L12_2 = L4_2
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2.anchoredPosition = L7_2
      end
    end
  else
    A0_2._smooth_target_pos = nil
  end
  if L2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._set_world_change
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_can_take_tip
    L4_2(L5_2)
  end
  L4_2 = A0_2._last_dragging
  if L4_2 ~= nil then
    L4_2 = A0_2._last_dragging
    if L3_2 ~= L4_2 then
      L4_2 = A0_2._drag_change_callback
      if L4_2 then
        L4_2 = A0_2._drag_change_callback_self
        if L4_2 then
          L4_2 = A0_2._drag_change_callback
          L5_2 = A0_2._drag_change_callback_self
          L6_2 = A0_2._binder
          L6_2 = L6_2.scroll_rect
          L6_2 = L6_2.Dragging
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  A0_2._last_dragging = L3_2
  L4_2 = A0_2._tick_callback
  if L4_2 then
    L4_2 = A0_2._tick_callback_self
    if L4_2 then
      L4_2 = A0_2._tick_callback
      L5_2 = A0_2._tick_callback_self
      L4_2(L5_2)
    end
  end
  A0_2._last_pos = L1_2
end
L0_1._on_tick = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bound
  L1_2(L2_2)
  L1_2 = {}
  A0_2._include_pos_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._mission_path_info_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._mission_path_info_table
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2._check_is_in_bound
    L8_2 = L5_2.PosX
    L9_2 = L5_2.PosY
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = {}
      L7_2 = L5_2.ID
      L6_2.ID = L7_2
      L8_2 = A0_2
      L7_2 = A0_2._check_is_id_exist_in_pos_table
      L9_2 = L6_2.ID
      L10_2 = A0_2._include_pos_table
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L7_2 = L5_2.PosX
        L6_2.x = L7_2
        L7_2 = L5_2.PosY
        L6_2.y = L7_2
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._include_pos_table
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
      L8_2 = L5_2
      L7_2 = L5_2.IsCanStepNextPath
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = 0
        L8_2 = L5_2.ConnectionList
        L8_2 = L8_2.Count
        L8_2 = L8_2 - 1
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = L5_2.ConnectionList
          L11_2 = L11_2[L10_2]
          L12_2 = L11_2.LineType
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.GameCore
          L13_2 = L13_2.ChronicleLineType
          L13_2 = L13_2.Normal
          if L12_2 ~= L13_2 then
            L12_2 = L11_2.LineType
            L13_2 = CS
            L13_2 = L13_2.RPG
            L13_2 = L13_2.GameCore
            L13_2 = L13_2.ChronicleLineType
            L13_2 = L13_2.Hide
            if L12_2 ~= L13_2 then
              goto lbl_91
            end
          end
          L12_2 = G
          L12_2 = L12_2.MissionChronicleUtils
          L12_2 = L12_2.check_is_path_data_available
          L13_2 = L11_2.PathData
          L12_2 = L12_2(L13_2)
          if L12_2 then
            L12_2 = {}
            L13_2 = L11_2.ID
            L12_2.ID = L13_2
            L14_2 = A0_2
            L13_2 = A0_2._check_is_id_exist_in_pos_table
            L15_2 = L12_2.ID
            L16_2 = A0_2._include_pos_table
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            if not L13_2 then
              L13_2 = L11_2.PathData
              L13_2 = L13_2.PosX
              L12_2.x = L13_2
              L13_2 = L11_2.PathData
              L13_2 = L13_2.PosY
              L12_2.y = L13_2
              L13_2 = table
              L13_2 = L13_2.insert
              L14_2 = A0_2._include_pos_table
              L15_2 = L12_2
              L13_2(L14_2, L15_2)
            end
          end
          ::lbl_91::
        end
      end
      L7_2 = nil
      L9_2 = L5_2
      L8_2 = L5_2.GetType
      L8_2 = L8_2(L9_2)
      L9_2 = typeof
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.MissionChronicleMainPathData
      L9_2 = L9_2(L10_2)
      if L8_2 == L9_2 then
        L7_2 = L5_2.ParentMainPathList
      else
        L9_2 = L5_2
        L8_2 = L5_2.GetType
        L8_2 = L8_2(L9_2)
        L9_2 = typeof
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.MissionChronicleSubPathData
        L9_2 = L9_2(L10_2)
        if L8_2 == L9_2 then
          L7_2 = L5_2.ParentSubPathList
        end
      end
      L8_2 = 0
      L9_2 = L7_2.Count
      L9_2 = L9_2 - 1
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L7_2[L11_2]
        L13_2 = {}
        L14_2 = L12_2.ID
        L13_2.ID = L14_2
        L15_2 = A0_2
        L14_2 = A0_2._check_is_id_exist_in_pos_table
        L16_2 = L13_2.ID
        L17_2 = A0_2._include_pos_table
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        if not L14_2 then
          L14_2 = L12_2.PosX
          L13_2.x = L14_2
          L14_2 = L12_2.PosY
          L13_2.y = L14_2
          L14_2 = table
          L14_2 = L14_2.insert
          L15_2 = A0_2._include_pos_table
          L16_2 = L13_2
          L14_2(L15_2, L16_2)
        end
      end
    end
  end
  L1_2 = A0_2._include_pos_table
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = 99999999
    L2_2 = nil
    L3_2 = 1
    L4_2 = A0_2._last_pos_table
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._last_pos_table
      L7_2 = L7_2[L6_2]
      L9_2 = A0_2
      L8_2 = A0_2._get_pos_dis
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      if L2_2 == nil or L1_2 > L8_2 then
        L1_2 = L8_2
        L2_2 = L7_2
      end
    end
    L3_2 = L2_2.x
    A0_2._min_left = L3_2
    L3_2 = L2_2.x
    A0_2._max_right = L3_2
    L3_2 = L2_2.y
    A0_2._min_down = L3_2
    L3_2 = L2_2.y
    A0_2._max_up = L3_2
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.deep_copy
  L2_2 = A0_2._include_pos_table
  L1_2 = L1_2(L2_2)
  A0_2._last_pos_table = L1_2
  L1_2 = A0_2._mission_path_info_table
  L1_2 = L1_2[1]
  L1_2 = L1_2.PosX
  A0_2._min_left = L1_2
  L1_2 = A0_2._mission_path_info_table
  L1_2 = L1_2[1]
  L1_2 = L1_2.PosX
  A0_2._max_right = L1_2
  L1_2 = A0_2._mission_path_info_table
  L1_2 = L1_2[1]
  L1_2 = L1_2.PosY
  A0_2._min_down = L1_2
  L1_2 = A0_2._mission_path_info_table
  L1_2 = L1_2[1]
  L1_2 = L1_2.PosY
  A0_2._max_up = L1_2
  L1_2 = 1
  L2_2 = A0_2._include_pos_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._include_pos_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.x
    L7_2 = A0_2._min_left
    if L6_2 < L7_2 then
      L6_2 = L5_2.x
      if L6_2 then
        goto lbl_211
      end
    end
    L6_2 = A0_2._min_left
    ::lbl_211::
    A0_2._min_left = L6_2
    L6_2 = L5_2.x
    L7_2 = A0_2._max_right
    if L6_2 > L7_2 then
      L6_2 = L5_2.x
      if L6_2 then
        goto lbl_220
      end
    end
    L6_2 = A0_2._max_right
    ::lbl_220::
    A0_2._max_right = L6_2
    L6_2 = L5_2.y
    L7_2 = A0_2._min_down
    if L6_2 < L7_2 then
      L6_2 = L5_2.y
      if L6_2 then
        goto lbl_229
      end
    end
    L6_2 = A0_2._min_down
    ::lbl_229::
    A0_2._min_down = L6_2
    L6_2 = L5_2.y
    L7_2 = A0_2._max_up
    if L6_2 > L7_2 then
      L6_2 = L5_2.y
      if L6_2 then
        goto lbl_238
      end
    end
    L6_2 = A0_2._max_up
    ::lbl_238::
    A0_2._max_up = L6_2
  end
  L1_2 = A0_2._max_right
  L2_2 = A0_2._x_offset
  L1_2 = L1_2 + L2_2
  A0_2._max_right = L1_2
end
L0_1._get_bound = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_actual_pos
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.x
  L2_2 = -L2_2
  L3_2 = A0_2._window_width
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  A0_2._bound_left = L2_2
  L2_2 = L1_2.y
  L2_2 = -L2_2
  L3_2 = A0_2._window_height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 + L3_2
  A0_2._bound_up = L2_2
  L2_2 = L1_2.x
  L2_2 = -L2_2
  L3_2 = A0_2._window_width
  L3_2 = L3_2 / 2
  L2_2 = L2_2 + L3_2
  A0_2._bound_right = L2_2
  L2_2 = L1_2.y
  L2_2 = -L2_2
  L3_2 = A0_2._window_height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  A0_2._bound_down = L2_2
end
L0_1._refresh_bound = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._bound_left
  if A1_2 >= L3_2 then
    L3_2 = A0_2._bound_right
    if A1_2 <= L3_2 then
      L3_2 = A0_2._bound_down
      if A2_2 >= L3_2 then
        L3_2 = A0_2._bound_up
        if A2_2 <= L3_2 then
          L3_2 = true
          return L3_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_in_bound = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = #A2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A2_2[L6_2]
    L7_2 = L7_2.ID
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_is_id_exist_in_pos_table = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_cur_actual_pos
    L3_2 = L3_2(L4_2)
    L4_2 = {}
    A2_2 = L4_2
    L4_2 = L3_2.x
    L4_2 = -L4_2
    A2_2.x = L4_2
    L4_2 = L3_2.y
    L4_2 = -L4_2
    A2_2.y = L4_2
  end
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = A2_2.x
  L5_2 = A1_2.x
  L4_2 = L4_2 - L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = A2_2.y
  L6_2 = A1_2.y
  L5_2 = L5_2 - L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2 * L3_2
  L6_2 = L4_2 * L4_2
  L5_2 = L5_2 + L6_2
  return L5_2
end
L0_1._get_pos_dis = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_actual_pos
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2._path_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.check_is_close
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A0_2._max_right
    L6_2 = A0_2
    L5_2 = A0_2._get_left_mid_offset_on_detail_open
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 + L5_2
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = A0_2._max_right
  ::lbl_16::
  L5_2 = L1_2.x
  L5_2 = -L5_2
  L6_2 = A0_2._min_left
  if L5_2 < L6_2 then
    L5_2 = A0_2._min_left
    L2_2 = -L5_2
  else
    L5_2 = L1_2.x
    L5_2 = -L5_2
    if L4_2 < L5_2 then
      L2_2 = -L4_2
    end
  end
  L5_2 = L1_2.y
  L5_2 = -L5_2
  L6_2 = A0_2._min_down
  if L5_2 < L6_2 then
    L5_2 = A0_2._min_down
    L3_2 = -L5_2
  else
    L5_2 = L1_2.y
    L5_2 = -L5_2
    L6_2 = A0_2._max_up
    if L5_2 > L6_2 then
      L5_2 = A0_2._max_up
      L3_2 = -L5_2
    end
  end
  if L2_2 ~= nil or L3_2 ~= nil then
    if L3_2 == nil then
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector2
      L6_2 = L2_2
      L7_2 = L1_2.y
      L5_2 = L5_2(L6_2, L7_2)
      A0_2._target_pos = L5_2
    elseif L2_2 == nil then
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector2
      L6_2 = L1_2.x
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      A0_2._target_pos = L5_2
    else
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Vector2
      L6_2 = L2_2
      L7_2 = L3_2
      L5_2 = L5_2(L6_2, L7_2)
      A0_2._target_pos = L5_2
    end
    L5_2 = A0_2._target_pos
    A0_2._smooth_target_pos = L5_2
  end
end
L0_1._force_set_pos = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._world_change_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._world_change_callback_self
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._world_change_callback
  L2_2 = A0_2._world_change_callback_self
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_trans
  L3_2 = L3_2.anchoredPosition
  L3_2 = L3_2.x
  L3_2 = -L3_2
  L1_2(L2_2, L3_2)
end
L0_1._set_world_change = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.get_path_data
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cur_selected_path_data
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_path_data
    L3_2 = L3_2.ID
    L4_2 = L2_2.ID
    if L3_2 ~= L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.close_detail_panel
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = L2_2.NodeType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleNodeType
  L4_2 = L4_2.ChapterToBeContinue
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Chronicle_WaitingFor_Tips"
    L3_2(L4_2, L5_2)
    return
  else
    L3_2 = L2_2.Status
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ChronicleStatus
    L4_2 = L4_2.Prediction
    if L3_2 == L4_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = "UIText_Chronicle_Tip_Unlock_ClickTips"
      L3_2(L4_2, L5_2)
      return
    end
  end
  A0_2._last_nav_panel = A1_2
  L3_2 = L2_2.NodeType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleNodeType
  L4_2 = L4_2.MissionMain
  if L3_2 ~= L4_2 then
    L3_2 = L2_2.NodeType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChronicleNodeType
    L4_2 = L4_2.MissionSide
    if L3_2 ~= L4_2 then
      L3_2 = L2_2.NodeType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ChronicleNodeType
      L4_2 = L4_2.ChapterSingle
      if L3_2 ~= L4_2 then
        goto lbl_119
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_detail_panel_node
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.activeSelf
  if not L3_2 then
    L3_2 = A0_2._path_detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.get_btn_close
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A1_2
    L4_2 = A1_2.set_selected
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._on_path_panel_nav
    L6_2 = A1_2
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2
    L4_2 = A0_2._force_move_to_path
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._report_mission_path_click
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2._path_detail_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_selected_object
    L3_2 = L3_2(L4_2)
    A0_2.nav_detail_object = L3_2
    L3_2 = A0_2.nav_detail_object
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = A0_2._path_detail_panel
      L6_2 = L5_2
      L5_2 = L5_2.get_selected_object
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
      goto lbl_133
      ::lbl_119::
      L3_2 = L2_2.IsSkipType
      if L3_2 then
      else
        L3_2 = A0_2._callback
        if L3_2 then
          L3_2 = A0_2._callback_self
          if L3_2 then
            L3_2 = A0_2._callback
            L4_2 = A0_2._callback_self
            L5_2 = L2_2
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
  ::lbl_133::
  A0_2._cur_selected_path_data = L2_2
end
L0_1._on_click_path = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportClickMissionChroniclePath
  L3_2 = A1_2.ID
  L4_2 = G
  L4_2 = L4_2.MissionChronicleUtils
  L4_2 = L4_2.get_path_status_report_value
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._owner
  L5_2 = L5_2.belong_path_chapter_id
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._report_mission_path_click = L21_1
function L21_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_trans
  L1_2 = L1_2.anchoredPosition
  return L1_2
end
L0_1.get_cur_actual_pos = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A1_2.PosY
  L3_2 = -L3_2
  L2_2.y = L3_2
  L3_2 = A1_2.PosX
  L5_2 = A0_2
  L4_2 = A0_2._get_left_mid_offset_on_detail_open
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 + L4_2
  L3_2 = -L3_2
  L2_2.x = L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._target_pos = L3_2
  L3_2 = A0_2._target_pos
  A0_2._smooth_target_pos = L3_2
end
L0_1._force_move_to_path = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._path_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_width
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._base_window_width
  L2_2 = L2_2 - L1_2
  L3_2 = A0_2._base_window_width
  L3_2 = L3_2 / 2
  L4_2 = L2_2 / 2
  L3_2 = L3_2 - L4_2
  L4_2 = L20_1
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._scale
  L3_2 = L3_2 / L4_2
  return L3_2
end
L0_1._get_left_mid_offset_on_detail_open = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L8_1
  L3_2 = L7_1
  L4_2 = L8_1
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 * A1_2
  L2_2 = L2_2 + L3_2
  A0_2._slider_value = A1_2
  L3_2 = A0_2._scale
  if L3_2 == L2_2 then
    return
  end
  A0_2._scale = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_scale
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._gamepad_cur_nav_legal_check
  L3_2(L4_2)
end
L0_1._on_slider_change = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_enter_graph_area
  if not L2_2 then
    return
  end
  L2_2 = L5_1
  L2_2 = A1_2 * L2_2
  L2_2 = L2_2 / 1000
  L3_2 = A0_2._zoom_slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_slider_value
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_mouse_wheel_roll = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_last_nav_panel
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._last_nav_panel
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.get_path_data
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.ID
      L3_2 = A0_2._last_nav_panel
      L4_2 = L3_2
      L3_2 = L3_2.get_path_data
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.ID
      if L2_2 ~= L3_2 then
        L2_2 = A0_2._last_nav_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_selected
        L4_2 = false
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L5_2 = L1_2
        L4_2 = L1_2.get_btn
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.gameObject
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2._on_path_panel_nav
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._gamepad_cur_nav_legal_check = L21_1
function L21_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_can_take_path_panel_table
  L1_2(L2_2)
end
L0_1._setup_tip_point = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_tips
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._chronicle_path_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._chronicle_path_panel_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.get_path_data
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.CheckIsCanTakeMission
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.instantiate_object
      L8_2 = A0_2._binder
      L8_2 = L8_2.prefab_loader_can_take_tips
      L8_2 = L8_2.Prefab
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_loader_can_take_tips
      L9_2 = L9_2.transform
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L7_2 = {}
      L8_2 = L5_2.ID
      L7_2.ID = L8_2
      L8_2 = A0_2._chronicle_path_panel_table
      L8_2 = L8_2[L4_2]
      L7_2.Panel = L8_2
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.MissionChronicleCanTakeTipItem
      L11_2 = G
      L11_2 = L11_2.MissionChronicleCanTakeTipItemBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.register_click_callback
      L11_2 = A0_2._on_click_tip
      L12_2 = A0_2
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L6_2
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.setup_view
      L11_2 = L5_2
      L12_2 = L7_2.Panel
      L9_2(L10_2, L11_2, L12_2)
      L7_2.TipPanel = L8_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._can_take_path_table
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_can_take_tip
  L1_2(L2_2)
end
L0_1._get_can_take_path_panel_table = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = {}
  L2_2 = A0_2._window_width
  L2_2 = -L2_2
  L2_2 = L2_2 / 2
  L3_2 = L15_1
  L4_2 = A0_2._scale
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._window_width
  L3_2 = L3_2 / 2
  L4_2 = L16_1
  L5_2 = A0_2._scale
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._window_height
  L4_2 = L4_2 / 2
  L5_2 = L17_1
  L6_2 = A0_2._scale
  L5_2 = L5_2 / L6_2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2._window_height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L6_2 = L18_1
  L7_2 = A0_2._scale
  L6_2 = L6_2 / L7_2
  L5_2 = L5_2 + L6_2
  L6_2 = 1
  L7_2 = A0_2._can_take_path_table
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._can_take_path_table
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.Panel
    L11_2 = L10_2
    L10_2 = L10_2.get_pos
    L10_2 = L10_2(L11_2)
    L12_2 = A0_2
    L11_2 = A0_2._check_path_panel_is_in_bound
    L13_2 = A0_2._can_take_path_table
    L13_2 = L13_2[L9_2]
    L13_2 = L13_2.Panel
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = A0_2._can_take_path_table
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.TipPanel
    if not L11_2 then
      L14_2 = A0_2
      L13_2 = A0_2.get_cur_actual_pos
      L13_2 = L13_2(L14_2)
      L14_2 = {}
      L15_2 = L13_2.x
      L15_2 = -L15_2
      L16_2 = L13_2.y
      L16_2 = -L16_2
      L17_2 = L10_2.x
      L18_2 = L10_2.y
      if L15_2 == L17_2 then
        L14_2.x = 0
        L19_2 = L10_2.y
        L20_2 = A0_2._bound_up
        if L19_2 > L20_2 then
          L14_2.y = L4_2
        else
          L19_2 = L10_2.y
          L20_2 = A0_2._bound_down
          if L19_2 < L20_2 then
            L14_2.y = L5_2
          else
            L19_2 = L10_2.y
            L20_2 = A0_2._bound_down
            L19_2 = L19_2 - L20_2
            L20_2 = A0_2._window_height
            L20_2 = L20_2 / 2
            L19_2 = L19_2 - L20_2
            L14_2.y = L19_2
          end
        end
      else
        L19_2 = L18_2 - L16_2
        L20_2 = L17_2 - L15_2
        L19_2 = L19_2 / L20_2
        L20_2 = L19_2 * L15_2
        L20_2 = L16_2 - L20_2
        L21_2 = {}
        L22_2 = nil
        L23_2 = L10_2.x
        L24_2 = A0_2._bound_left
        if L23_2 < L24_2 then
          L23_2 = A0_2._window_width
          L23_2 = -L23_2
          L23_2 = L23_2 / 2
          L22_2 = L23_2 + L15_2
          L21_2.x = L22_2
          L23_2 = L19_2 * L22_2
          L23_2 = L23_2 + L20_2
          L21_2.y = L23_2
        else
          L23_2 = L10_2.x
          L24_2 = A0_2._bound_right
          if L23_2 > L24_2 then
            L23_2 = A0_2._window_width
            L23_2 = L23_2 / 2
            L22_2 = L23_2 + L15_2
            L21_2.x = L22_2
            L23_2 = L19_2 * L22_2
            L23_2 = L23_2 + L20_2
            L21_2.y = L23_2
          else
            L22_2 = L10_2.x
            L21_2.x = L22_2
            L23_2 = L19_2 * L22_2
            L23_2 = L23_2 + L20_2
            L21_2.y = L23_2
          end
        end
        L23_2 = L21_2.x
        L23_2 = L23_2 - L15_2
        L14_2.x = L23_2
        L23_2 = L21_2.y
        L23_2 = L23_2 - L16_2
        L14_2.y = L23_2
        L23_2 = L14_2.x
        if L23_2 < 0 then
          L23_2 = L14_2.x
          if L2_2 > L23_2 then
            L14_2.x = L2_2
        end
        else
          L23_2 = L14_2.x
          if 0 < L23_2 then
            L23_2 = L14_2.x
            if L3_2 < L23_2 then
              L14_2.x = L3_2
            end
          end
        end
        L23_2 = L14_2.y
        if 0 < L23_2 then
          L23_2 = L14_2.y
          if L4_2 < L23_2 then
            L14_2.y = L4_2
        end
        else
          L23_2 = L14_2.y
          if L23_2 < 0 then
            L23_2 = L14_2.y
            if L5_2 > L23_2 then
              L14_2.y = L5_2
            end
          end
        end
      end
      L20_2 = L12_2
      L19_2 = L12_2.set_pos
      L21_2 = L14_2.x
      L22_2 = L14_2.y
      L19_2(L20_2, L21_2, L22_2)
      L20_2 = A0_2
      L19_2 = A0_2._get_rot
      L21_2 = L10_2
      L19_2 = L19_2(L20_2, L21_2)
      L21_2 = L12_2
      L20_2 = L12_2.set_rot
      L22_2 = L19_2
      L20_2(L21_2, L22_2)
      L20_2 = table
      L20_2 = L20_2.insert
      L21_2 = L1_2
      L22_2 = L12_2
      L20_2(L21_2, L22_2)
    else
      L14_2 = L12_2
      L13_2 = L12_2.set_show
      L15_2 = false
      L13_2(L14_2, L15_2)
    end
  end
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = 1
  L11_2 = #L1_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L1_2[L13_2]
    L15_2 = math
    L15_2 = L15_2.abs
    L17_2 = L14_2
    L16_2 = L14_2.get_pos
    L16_2 = L16_2(L17_2)
    L16_2 = L16_2.x
    L16_2 = L16_2 - L2_2
    L15_2 = L15_2(L16_2)
    L16_2 = L19_1
    if L15_2 < L16_2 then
      if L6_2 == nil then
        L6_2 = L14_2
      else
        L16_2 = L14_2
        L15_2 = L14_2.get_path_data
        L15_2 = L15_2(L16_2)
        L15_2 = L15_2.ID
        L17_2 = L6_2
        L16_2 = L6_2.get_path_data
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2.ID
        if L15_2 ~= L16_2 then
          L16_2 = A0_2
          L15_2 = A0_2._compare_min_dis_tip
          L17_2 = L14_2
          L18_2 = L6_2
          L15_2 = L15_2(L16_2, L17_2, L18_2)
          if L15_2 then
            L16_2 = L6_2
            L15_2 = L6_2.set_show
            L17_2 = false
            L15_2(L16_2, L17_2)
            L6_2 = L14_2
          else
            L16_2 = L14_2
            L15_2 = L14_2.set_show
            L17_2 = false
            L15_2(L16_2, L17_2)
          end
        end
      end
    else
      L15_2 = math
      L15_2 = L15_2.abs
      L17_2 = L14_2
      L16_2 = L14_2.get_pos
      L16_2 = L16_2(L17_2)
      L16_2 = L16_2.x
      L16_2 = L16_2 - L3_2
      L15_2 = L15_2(L16_2)
      L16_2 = L19_1
      if L15_2 < L16_2 then
        if L7_2 == nil then
          L7_2 = L14_2
        else
          L16_2 = L14_2
          L15_2 = L14_2.get_path_data
          L15_2 = L15_2(L16_2)
          L15_2 = L15_2.ID
          L17_2 = L7_2
          L16_2 = L7_2.get_path_data
          L16_2 = L16_2(L17_2)
          L16_2 = L16_2.ID
          if L15_2 ~= L16_2 then
            L16_2 = A0_2
            L15_2 = A0_2._compare_min_dis_tip
            L17_2 = L14_2
            L18_2 = L7_2
            L15_2 = L15_2(L16_2, L17_2, L18_2)
            if L15_2 then
              L16_2 = L7_2
              L15_2 = L7_2.set_show
              L17_2 = false
              L15_2(L16_2, L17_2)
              L7_2 = L14_2
            else
              L16_2 = L14_2
              L15_2 = L14_2.set_show
              L17_2 = false
              L15_2(L16_2, L17_2)
            end
          end
        end
      else
        L15_2 = math
        L15_2 = L15_2.abs
        L17_2 = L14_2
        L16_2 = L14_2.get_pos
        L16_2 = L16_2(L17_2)
        L16_2 = L16_2.y
        L16_2 = L16_2 - L4_2
        L15_2 = L15_2(L16_2)
        L16_2 = L19_1
        if L15_2 < L16_2 then
          if L8_2 == nil then
            L8_2 = L14_2
          else
            L16_2 = L14_2
            L15_2 = L14_2.get_path_data
            L15_2 = L15_2(L16_2)
            L15_2 = L15_2.ID
            L17_2 = L8_2
            L16_2 = L8_2.get_path_data
            L16_2 = L16_2(L17_2)
            L16_2 = L16_2.ID
            if L15_2 ~= L16_2 then
              L16_2 = A0_2
              L15_2 = A0_2._compare_min_dis_tip
              L17_2 = L14_2
              L18_2 = L8_2
              L15_2 = L15_2(L16_2, L17_2, L18_2)
              if L15_2 then
                L16_2 = L8_2
                L15_2 = L8_2.set_show
                L17_2 = false
                L15_2(L16_2, L17_2)
                L8_2 = L14_2
              else
                L16_2 = L14_2
                L15_2 = L14_2.set_show
                L17_2 = false
                L15_2(L16_2, L17_2)
              end
            end
          end
        else
          L15_2 = math
          L15_2 = L15_2.abs
          L17_2 = L14_2
          L16_2 = L14_2.get_pos
          L16_2 = L16_2(L17_2)
          L16_2 = L16_2.y
          L16_2 = L16_2 - L5_2
          L15_2 = L15_2(L16_2)
          L16_2 = L19_1
          if L15_2 < L16_2 then
            if L9_2 == nil then
              L9_2 = L14_2
            else
              L16_2 = L14_2
              L15_2 = L14_2.get_path_data
              L15_2 = L15_2(L16_2)
              L15_2 = L15_2.ID
              L17_2 = L9_2
              L16_2 = L9_2.get_path_data
              L16_2 = L16_2(L17_2)
              L16_2 = L16_2.ID
              if L15_2 ~= L16_2 then
                L16_2 = A0_2
                L15_2 = A0_2._compare_min_dis_tip
                L17_2 = L14_2
                L18_2 = L9_2
                L15_2 = L15_2(L16_2, L17_2, L18_2)
                if L15_2 then
                  L16_2 = L9_2
                  L15_2 = L9_2.set_show
                  L17_2 = false
                  L15_2(L16_2, L17_2)
                  L9_2 = L14_2
                else
                  L16_2 = L14_2
                  L15_2 = L14_2.set_show
                  L17_2 = false
                  L15_2(L16_2, L17_2)
                end
              end
            end
          end
        end
      end
    end
  end
  if L6_2 ~= nil then
    L11_2 = L6_2
    L10_2 = L6_2.set_show
    L12_2 = true
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._left_tip
    if L10_2 ~= nil then
      L11_2 = L6_2
      L10_2 = L6_2.get_path_data
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.ID
      L11_2 = A0_2._left_tip
      L12_2 = L11_2
      L11_2 = L11_2.get_path_data
      L11_2 = L11_2(L12_2)
      L11_2 = L11_2.ID
      if L10_2 ~= L11_2 then
        L10_2 = A0_2._left_tip
        L11_2 = L10_2
        L10_2 = L10_2.set_show
        L12_2 = false
        L10_2(L11_2, L12_2)
      end
    end
    A0_2._left_tip = L6_2
  else
    L10_2 = A0_2._left_tip
    if L10_2 ~= nil then
      L10_2 = A0_2._left_tip
      L11_2 = L10_2
      L10_2 = L10_2.set_show
      L12_2 = false
      L10_2(L11_2, L12_2)
      A0_2._left_tip = nil
    end
  end
  if L7_2 ~= nil then
    L11_2 = L7_2
    L10_2 = L7_2.set_show
    L12_2 = true
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._right_tip
    if L10_2 ~= nil then
      L11_2 = L7_2
      L10_2 = L7_2.get_path_data
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.ID
      L11_2 = A0_2._right_tip
      L12_2 = L11_2
      L11_2 = L11_2.get_path_data
      L11_2 = L11_2(L12_2)
      L11_2 = L11_2.ID
      if L10_2 ~= L11_2 then
        L10_2 = A0_2._right_tip
        L11_2 = L10_2
        L10_2 = L10_2.set_show
        L12_2 = false
        L10_2(L11_2, L12_2)
      end
    end
    A0_2._right_tip = L7_2
  else
    L10_2 = A0_2._right_tip
    if L10_2 ~= nil then
      L10_2 = A0_2._right_tip
      L11_2 = L10_2
      L10_2 = L10_2.set_show
      L12_2 = false
      L10_2(L11_2, L12_2)
      A0_2._right_tip = nil
    end
  end
  if L8_2 ~= nil then
    L11_2 = L8_2
    L10_2 = L8_2.set_show
    L12_2 = true
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._up_tip
    if L10_2 ~= nil then
      L11_2 = L8_2
      L10_2 = L8_2.get_path_data
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.ID
      L11_2 = A0_2._up_tip
      L12_2 = L11_2
      L11_2 = L11_2.get_path_data
      L11_2 = L11_2(L12_2)
      L11_2 = L11_2.ID
      if L10_2 ~= L11_2 then
        L10_2 = A0_2._up_tip
        L11_2 = L10_2
        L10_2 = L10_2.set_show
        L12_2 = false
        L10_2(L11_2, L12_2)
      end
    end
    A0_2._up_tip = L8_2
  else
    L10_2 = A0_2._up_tip
    if L10_2 ~= nil then
      L10_2 = A0_2._up_tip
      L11_2 = L10_2
      L10_2 = L10_2.set_show
      L12_2 = false
      L10_2(L11_2, L12_2)
      A0_2._up_tip = nil
    end
  end
  if L9_2 ~= nil then
    L11_2 = L9_2
    L10_2 = L9_2.set_show
    L12_2 = true
    L10_2(L11_2, L12_2)
    L10_2 = A0_2._down_tip
    if L10_2 ~= nil then
      L11_2 = L9_2
      L10_2 = L9_2.get_path_data
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.ID
      L11_2 = A0_2._down_tip
      L12_2 = L11_2
      L11_2 = L11_2.get_path_data
      L11_2 = L11_2(L12_2)
      L11_2 = L11_2.ID
      if L10_2 ~= L11_2 then
        L10_2 = A0_2._down_tip
        L11_2 = L10_2
        L10_2 = L10_2.set_show
        L12_2 = false
        L10_2(L11_2, L12_2)
      end
    end
    A0_2._down_tip = L9_2
  else
    L10_2 = A0_2._down_tip
    if L10_2 ~= nil then
      L10_2 = A0_2._down_tip
      L11_2 = L10_2
      L10_2 = L10_2.set_show
      L12_2 = false
      L10_2(L11_2, L12_2)
      A0_2._down_tip = nil
    end
  end
end
L0_1._setup_can_take_tip = L21_1
function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.get_path_panel
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.get_pos
  L3_2 = L3_2(L4_2)
  L5_2 = A2_2
  L4_2 = A2_2.get_path_panel
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.get_pos
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_pos_dis
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_pos_dis
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2 < L6_2
  return L7_2
end
L0_1._compare_min_dis_tip = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._left_tip
  if L2_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.get_path_data
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.ID
    L3_2 = A0_2._left_tip
    L4_2 = L3_2
    L3_2 = L3_2.get_path_data
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.ID
  end
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1._is_four_direction_tip = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_actual_pos
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.x
  L3_2 = -L3_2
  L4_2 = L2_2.y
  L4_2 = -L4_2
  L5_2 = A1_2.x
  L5_2 = L5_2 - L3_2
  L6_2 = A1_2.y
  L6_2 = L6_2 - L4_2
  L7_2 = nil
  if L5_2 == 0 then
    if 0 < L6_2 then
      L7_2 = 90
    else
      L7_2 = -90
    end
  else
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.MMathf
    L8_2 = L8_2.Atan
    L9_2 = L6_2 / L5_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * 180
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.MMathf
    L9_2 = L9_2.PI
    L7_2 = L8_2 / L9_2
  end
  L8_2 = A1_2.x
  if L3_2 > L8_2 then
    L8_2 = A1_2.y
    if L4_2 >= L8_2 then
      L7_2 = L7_2 + 180
  end
  else
    L8_2 = A1_2.x
    if L3_2 > L8_2 then
      L8_2 = A1_2.y
      if L4_2 < L8_2 then
        L8_2 = math
        L8_2 = L8_2.abs
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        L7_2 = 180 - L8_2
      end
    end
  end
  L8_2 = L7_2 - 90
  return L8_2
end
L0_1._get_rot = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._can_take_path_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._can_take_path_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.TipPanel
    L6_2 = L5_2
    L5_2 = L5_2.destroy_prefab
    L5_2(L6_2)
  end
  L1_2 = {}
  A0_2._can_take_path_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_bound_tips
  L1_2(L2_2)
end
L0_1._clear_tips = L21_1
function L21_1(A0_2)
  local L1_2
  A0_2._left_tip = nil
  A0_2._right_tip = nil
  A0_2._up_tip = nil
  A0_2._down_tip = nil
end
L0_1._clear_bound_tips = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  while true do
    L2_2 = A0_2._can_take_path_table
    L2_2 = #L2_2
    if not (L1_2 <= L2_2) then
      break
    end
    L2_2 = A0_2._can_take_path_table
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.Panel
    L3_2 = L2_2
    L2_2 = L2_2.get_path_data
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.CheckIsCanTakeMission
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = A0_2._can_take_path_table
      L3_2 = L3_2[L1_2]
      L3_2 = L3_2.TipPanel
      L4_2 = A0_2._left_tip
      if L4_2 ~= nil then
        L4_2 = A0_2._left_tip
        L5_2 = L4_2
        L4_2 = L4_2.get_path_data
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.ID
        L6_2 = L3_2
        L5_2 = L3_2.get_path_data
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.ID
        if L4_2 == L5_2 then
          A0_2._left_tip = nil
      end
      else
        L4_2 = A0_2._right_tip
        if L4_2 ~= nil then
          L4_2 = A0_2._right_tip
          L5_2 = L4_2
          L4_2 = L4_2.get_path_data
          L4_2 = L4_2(L5_2)
          L4_2 = L4_2.ID
          L6_2 = L3_2
          L5_2 = L3_2.get_path_data
          L5_2 = L5_2(L6_2)
          L5_2 = L5_2.ID
          if L4_2 == L5_2 then
            A0_2._right_tip = nil
        end
        else
          L4_2 = A0_2._up_tip
          if L4_2 ~= nil then
            L4_2 = A0_2._up_tip
            L5_2 = L4_2
            L4_2 = L4_2.get_path_data
            L4_2 = L4_2(L5_2)
            L4_2 = L4_2.ID
            L6_2 = L3_2
            L5_2 = L3_2.get_path_data
            L5_2 = L5_2(L6_2)
            L5_2 = L5_2.ID
            if L4_2 == L5_2 then
              A0_2._up_tip = nil
          end
          else
            L4_2 = A0_2._down_tip
            if L4_2 ~= nil then
              L4_2 = A0_2._down_tip
              L5_2 = L4_2
              L4_2 = L4_2.get_path_data
              L4_2 = L4_2(L5_2)
              L4_2 = L4_2.ID
              L6_2 = L3_2
              L5_2 = L3_2.get_path_data
              L5_2 = L5_2(L6_2)
              L5_2 = L5_2.ID
              if L4_2 == L5_2 then
                A0_2._down_tip = nil
              end
            end
          end
        end
      end
      L5_2 = L3_2
      L4_2 = L3_2.destroy_prefab
      L4_2(L5_2)
      L4_2 = table
      L4_2 = L4_2.remove
      L5_2 = A0_2._can_take_path_table
      L6_2 = L1_2
      L4_2(L5_2, L6_2)
    else
      L1_2 = L1_2 + 1
    end
  end
end
L0_1._refresh_tips = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.move_to_target_path
  L4_2 = A1_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._click_can_take_tip_callback
  if L2_2 then
    L2_2 = A0_2._click_can_take_tip_callback_self
    if L2_2 then
      L2_2 = A0_2._click_can_take_tip_callback
      L3_2 = A0_2._click_can_take_tip_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_tip = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tips
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_detail_panel_node
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    L1_2 = A0_2.nav_detail_object
    if L1_2 ~= nil then
      L1_2 = A0_2._path_detail_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_selected_object
      L1_2 = L1_2(L2_2)
      A0_2.nav_detail_object = L1_2
      L1_2 = A0_2.nav_detail_object
      if L1_2 == nil then
        L2_2 = A0_2
        L1_2 = A0_2.get_last_nav_panel
        L1_2 = L1_2(L2_2)
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L5_2 = L1_2
        L4_2 = L1_2.get_btn
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.gameObject
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_return_to_top = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_pinching = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.PinchIn
  L4_2 = A0_2._pinch_in_callback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.PinchOut
  L4_2 = A0_2._pinch_out_callback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.PinchEnd
  L4_2 = A0_2._pinch_end_callback
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_touch_event = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_pinching = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2.enabled = false
  L2_2 = A1_2.deltaPinch
  L2_2 = -L2_2
  L3_2 = L6_1
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._zoom_slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_slider_value
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._pinch_in_callback = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_pinching = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2.enabled = false
  L2_2 = A1_2.deltaPinch
  L3_2 = L6_1
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._zoom_slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_slider_value
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._pinch_out_callback = L21_1
function L21_1(A0_2, A1_2)
  local L2_2
  A0_2._is_pinching = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L2_2.enabled = true
end
L0_1._pinch_end_callback = L21_1
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._path_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.check_is_close
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._path_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_is_show
  L4_2 = false
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  A0_2.nav_detail_object = nil
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.get_btn_close
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = A0_2._chronicle_path_panel_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._chronicle_path_panel_table
    L7_2 = L7_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.set_selected
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 32
      L0_3(L1_3, L2_3)
    end
  end
  L3_2(L4_2)
end
L0_1.close_detail_panel = L21_1
function L21_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.close_detail_panel
  L1_2(L2_2)
end
L0_1._on_detail_panel_close = L21_1
function L21_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.close_detail_panel
  L1_2(L2_2)
end
L0_1._on_click_bg = L21_1
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mono_ticker
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L3_2 = A0_2._on_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_unload = L21_1
return L0_1
