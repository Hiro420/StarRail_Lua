local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Map.WorldMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapVirtualCursorPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldMapPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = 30
L3_1 = 100
L4_1 = 0.6
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  A0_2._map_ui3d = A3_2
  A0_2._cur_show_world_id = A4_2
  A0_2.go_to_planet_id = nil
  A0_2._is_can_tick = false
  A0_2._is_touch_down = false
  A0_2._is_in_cut_scene = false
  A0_2._virtual_cursor = nil
  A0_2._world_id_by_hover = nil
  A0_2._trace_mission_root = nil
  A0_2._trace_mission_floor_text = nil
  A0_2._trace_mission_world_id = nil
  A0_2._story_line_id = A5_2
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_list
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.BigMapUtils
  L7_2 = L7_2.GetVisibleWorldIDs
  L8_2 = A5_2
  L7_2, L8_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._show_world_ids = L6_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_world_map_click_call_back = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    A0_2.planet_id = nil
    L1_2 = ipairs
    L2_2 = A0_2._show_world_ids
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2._map_ui3d
      L7_2 = L6_2
      L6_2 = L6_2.set_world_planet_animator_trigger_by_id
      L8_2 = L5_2
      L9_2 = "Normal"
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.SubmitButtonType
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2.planet_id
    if L2_2 then
      L2_2 = A0_2._map_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.set_world_planet_animator_trigger_by_id
      L4_2 = A0_2.planet_id
      L5_2 = "Pressed"
      L2_2(L3_2, L4_2, L5_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._on_touch_up
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_left_stick_up_press
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_left_stick_down_press
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_left_stick_left_press
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_left_stick_right_press
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press_call_back = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L4_1
  L2_2 = A1_2 * L2_2
  L3_2 = A0_2._map_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.move_camera
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = 0
  L7_2 = L2_2
  L8_2 = 0
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_left_stick_up_press = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = -A1_2
  L3_2 = L4_1
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._map_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.move_camera
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = 0
  L7_2 = L2_2
  L8_2 = 0
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_left_stick_down_press = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = -A1_2
  L3_2 = L4_1
  L2_2 = L2_2 * L3_2
  L3_2 = A0_2._map_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.move_camera
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = 0
  L8_2 = 0
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_left_stick_left_press = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L4_1
  L2_2 = A1_2 * L2_2
  L3_2 = A0_2._map_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.move_camera
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L2_2
  L7_2 = 0
  L8_2 = 0
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_left_stick_right_press = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_in_cut_scene
  L1_2 = L1_2 == false
  return L1_2
end
L0_1.is_can_exit = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.planet_id
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1.is_enable_move = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._is_in_cut_scene
  if L1_2 then
    return
  end
  L1_2 = nil
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsObjectNull
    L3_2 = A0_2._virtual_cursor
    L2_2 = L2_2(L3_2)
    if L2_2 then
      return
    end
    L2_2 = A0_2._virtual_cursor
    L2_2 = L2_2.localPosition
    L2_2 = L2_2.x
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIUtils
    L3_2 = L3_2.UIScaleFactor
    L2_2 = L2_2 * L3_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Screen
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._virtual_cursor
    L3_2 = L3_2.localPosition
    L3_2 = L3_2.y
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIUtils
    L4_2 = L4_2.UIScaleFactor
    L3_2 = L3_2 * L4_2
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Screen
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.UIUtils
    L4_2 = L4_2.RaycastByPointPos
    L5_2 = "UI3D"
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector2
    L7_2 = L2_2
    L8_2 = L3_2
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L1_2 = L4_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIUtils
    L2_2 = L2_2.RaycastByMouseOrTouch
    L3_2 = "UI3D"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L1_2.parent
    L2_2 = L2_2.name
    L3_2 = A0_2._map_ui3d
    L4_2 = L3_2
    L3_2 = L3_2.get_planet_id_by_name
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.planet_id = L3_2
    L3_2 = A0_2._map_ui3d
    L4_2 = L3_2
    L3_2 = L3_2.set_world_planet_animator_trigger_by_id
    L5_2 = A0_2.planet_id
    L6_2 = "Highlight"
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._world_id_by_hover
    if L2_2 == nil then
      A0_2.planet_id = nil
      L2_2 = ipairs
      L3_2 = A0_2._show_world_ids
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = A0_2._map_ui3d
        L8_2 = L7_2
        L7_2 = L7_2.set_world_planet_animator_trigger_by_id
        L9_2 = L6_2
        L10_2 = "Normal"
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1.tick_highlight = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._map_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._map_ui3d
    L1_2 = L1_2.is_init_finish
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = A0_2.is_active
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_in_cut_scene
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_world_panel
    if L1_2 ~= nil then
      goto lbl_27
    end
  end
  do return end
  ::lbl_27::
  A0_2._is_ticking = true
  L1_2 = ipairs
  L2_2 = A0_2._show_world_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._map_ui3d
    L7_2 = L6_2
    L6_2 = L6_2.world_position_to_local_point_in_rectangle
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_world_panel
    L8_2 = L8_2.transform
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_root_list
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.transform
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Vector3
    L9_2 = L6_2.x
    L10_2 = L6_2.y
    L11_2 = 0
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.localPosition = L8_2
  end
  A0_2._is_ticking = false
  L2_2 = A0_2
  L1_2 = A0_2._is_need_show_tip
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_trace_mission_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._update_trace_mission_tip
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_trace_mission_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._tick_text = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trace_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.hide_all_planets
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._show_world_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._map_ui3d
    L8_2 = L7_2
    L7_2 = L7_2.enable_world_planet
    L9_2 = L6_2
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
    L1_2 = L6_2
  end
  L2_2 = A0_2._show_world_ids
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._map_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.set_show_destinations_count
    L4_2 = A0_2._show_world_ids
    L4_2 = #L4_2
    L4_2 = L4_2 - 1
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_symbol_show
  L2_2(L3_2)
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.WorldDataConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2._map_ui3d
      L4_2 = L3_2
      L3_2 = L3_2.setup_touch_size
      L5_2 = L2_2.CameraWidth
      L6_2 = L2_2.CameraHeight
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_next_frame_callback
  L3_2 = A0_2._focus_camera_pos_immediately
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._map_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.focus_camera_pos_by_world_id
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetCurPlayerWorldID
  L3_2 = L3_2()
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._focus_camera_pos_immediately = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._trace_mission_world_id
  if L1_2 then
    L1_2 = A0_2._map_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.focus_camera_pos_by_world_id
    L3_2 = A0_2._trace_mission_world_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_trace_mission_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_show_world_id
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.TrainWorldID
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.BigMapUtils
    L1_2 = L1_2.GetCurWorldID
    L1_2 = L1_2()
    A0_2._cur_show_world_id = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2._show_world_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_player_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.BigMapUtils
    L8_2 = L8_2.GetCurPlayerWorldID
    L8_2 = L8_2()
    L8_2 = L8_2 == L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._setup_mission_symbol_show
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_symbol_show = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MapVirtualCursorPanel
  L4_2 = G
  L4_2 = L4_2.MapVirtualCursorPanelBinder
  L5_2 = L2_1
  L6_2 = nil
  L7_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._map_virtual_cursor_panel = L1_2
  L1_2 = A0_2._map_virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = A0_2.setup_virtual_cursor
  L5_2 = A0_2._on_in_control_press_call_back
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ipairs
  L2_2 = A0_2._show_world_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_root_list
    L8_2 = L8_2[L5_2]
    L9_2 = A0_2._on_btn_root_click
    L10_2 = L5_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._show_world_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.EventTriggerListener
    L6_2 = L6_2.Get
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_root_list
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.gameObject
    L6_2 = L6_2(L7_2)
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = tonumber
      L2_3 = A0_3.name
      L1_3 = L1_3(L2_3)
      A0_2._world_id_by_hover = L1_3
      L1_3 = A0_2._map_ui3d
      L2_3 = L1_3
      L1_3 = L1_3.set_world_planet_animator_trigger_by_id
      L3_3 = A0_2._world_id_by_hover
      L4_3 = "Highlight"
      L1_3(L2_3, L3_3, L4_3)
    end
    L6_2.OnEnterTrigger = L7_2
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_2._map_ui3d
      L2_3 = L1_3
      L1_3 = L1_3.set_world_planet_animator_trigger_by_id
      L3_3 = tonumber
      L4_3 = A0_3.name
      L3_3 = L3_3(L4_3)
      L4_3 = "Normal"
      L1_3(L2_3, L3_3, L4_3)
      A0_2._world_id_by_hover = nil
    end
    L6_2.OnExitTrigger = L7_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._tick_text
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._hide_all_worlds
  L2_2(L3_2)
  L2_2 = ipairs
  L3_2 = A0_2._show_world_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_root_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.BigMapUtils
    L7_2 = L7_2.IsWorldUnlocked
    L8_2 = L6_2
    L9_2 = A0_2._story_line_id
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.lock_marks
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = not L7_2
    L8_2(L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._setup_name
    L10_2 = A0_2._binder
    L10_2 = L10_2.text_list
    L10_2 = L10_2[L6_2]
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_trace_mission
  L5_2 = A0_2._on_btn_trace_mission_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.SwipeStart
  L5_2 = A0_2._on_swipe_start
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.SwipeEnd
  L5_2 = A0_2._on_swipe_end
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.TouchDown
  L5_2 = A0_2._on_touch_down
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_gesture
  L4_2 = GestureType
  L4_2 = L4_2.TouchUp
  L5_2 = A0_2._on_touch_up
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.2f"
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIUtils
  L5_2 = L5_2.UIScaleFactor
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Screen
  L3_2 = L3_2.width
  L3_2 = L3_2 / L2_2
  L3_2 = L3_2 / 2
  A0_2._safe_half_width = L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Screen
  L3_2 = L3_2.height
  L3_2 = L3_2 / L2_2
  L3_2 = L3_2 / 2
  A0_2._safe_half_height = L3_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.WorldIDList
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_root_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._hide_all_worlds = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BigMapUtils
  L2_2 = L2_2.IsWorldUnlocked
  L3_2 = A1_2
  L4_2 = A0_2._story_line_id
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_WorldMap_World_Locked"
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_entrance_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_root_click = L5_1
function L5_1(A0_2, A1_2)
  A0_2._virtual_cursor = A1_2
end
L0_1.setup_virtual_cursor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_swiping = true
  A0_2._is_swiped = true
end
L0_1._on_swipe_start = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_swiping = false
end
L0_1._on_swipe_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_swiping
  if L2_2 then
    return
  end
  L2_2 = A0_2._is_in_cut_scene
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.RaycastByMouseOrTouch
  L3_2 = "UI3D"
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsObjectNull
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2._is_touch_down
    if L3_2 == false then
      L3_2 = L2_2.parent
      L3_2 = L3_2.name
      L4_2 = A0_2._map_ui3d
      L5_2 = L4_2
      L4_2 = L4_2.get_planet_id_by_name
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      A0_2.planet_id = L4_2
      L4_2 = A0_2._map_ui3d
      L5_2 = L4_2
      L4_2 = L4_2.set_world_planet_animator_trigger_by_id
      L6_2 = A0_2.planet_id
      L7_2 = "Pressed"
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  A0_2._is_touch_down = true
end
L0_1._on_touch_down = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._is_swiped
  if L2_2 then
    A0_2._is_swiped = false
    A0_2._is_touch_down = false
    return
  end
  L2_2 = A0_2._is_swiping
  if L2_2 then
    return
  end
  L2_2 = A0_2._is_in_cut_scene
  if L2_2 then
    return
  end
  L2_2 = A0_2.planet_id
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.BigMapUtils
    L2_2 = L2_2.IsWorldUnlocked
    L3_2 = A0_2.planet_id
    L4_2 = A0_2._story_line_id
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_WorldMap_World_Locked"
      L2_2(L3_2, L4_2)
      return
    end
    L2_2 = A0_2.planet_id
    A0_2.go_to_planet_id = L2_2
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2._map_ui3d
      L1_3 = L0_3
      L0_3 = L0_3.set_world_planet_animator_trigger_by_id
      L2_3 = A0_2.planet_id
      L3_3 = "Normal"
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_entrance_click
      L2_3 = A0_2.go_to_planet_id
      L0_3(L1_3, L2_3)
      A0_2._is_in_cut_scene = false
      A0_2.planet_id = nil
    end
    A0_2._is_in_cut_scene = true
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._map_ui3d
    L4_2 = L3_2
    L3_2 = L3_2.play_map_cut_scene
    L5_2 = L2_2
    L6_2 = A0_2.go_to_planet_id
    L3_2(L4_2, L5_2, L6_2)
  end
  A0_2._is_touch_down = false
end
L0_1._on_touch_up = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.WorldDataConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.SafeSetTextID
  L6_2 = L3_2.WorldName
  L4_2(L5_2, L6_2)
end
L0_1._setup_name = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_entrance_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTrackingMissionByStoryLineID
  L4_2 = A0_2._story_line_id
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_mission_list
    L3_2 = L3_2[A1_2]
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BigMapUtils
  L3_2 = L3_2.GetTraceSubMissionByWorldID
  L4_2 = A1_2
  L5_2 = A0_2._story_line_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_mission_list
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 ~= nil
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetWaypointIconType
    L6_2 = L3_2.ID
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MiniMapIconExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2 or L6_2
    if L5_2 then
      L6_2 = L5_2.IconPath
    end
    L8_2 = A0_2
    L7_2 = A0_2._async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.image_mission_list
    L9_2 = L9_2[A1_2]
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.image_trace_mission
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_root_list
    L7_2 = L7_2[A1_2]
    A0_2._trace_mission_root = L7_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_list
    L7_2 = L7_2[A1_2]
    A0_2._trace_mission_floor_text = L7_2
    A0_2._trace_mission_world_id = A1_2
  end
end
L0_1._setup_mission_symbol_show = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._trace_mission_root
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_trace_mission_tip_rect
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  L5_2 = A0_2._trace_mission_root
  L5_2 = L5_2.transform
  L5_2 = L5_2.localPosition
  L5_2 = L5_2.x
  L5_2 = L2_2 < L5_2
  return L5_2
end
L0_1._is_need_show_tip = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2._trace_mission_root
  L1_2 = L1_2.transform
  L1_2 = L1_2.localPosition
  L1_2 = L1_2.x
  L2_2 = A0_2._trace_mission_root
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.y
  L4_2 = A0_2
  L3_2 = A0_2._get_trace_mission_tip_rect
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L7_2 = L1_2
  if L4_2 < L7_2 then
    L7_2 = L4_2
  elseif L3_2 > L7_2 then
    L8_2 = A0_2._safe_half_width
    L8_2 = -L8_2
    L9_2 = A0_2._trace_mission_root
    L9_2 = L9_2.transform
    L9_2 = L9_2.sizeDelta
    L9_2 = L9_2.x
    L9_2 = L9_2 / 2
    L7_2 = L8_2 + L9_2
  end
  L8_2 = L2_2
  if L6_2 < L8_2 then
    L9_2 = A0_2._safe_half_height
    L10_2 = A0_2._trace_mission_root
    L10_2 = L10_2.transform
    L10_2 = L10_2.sizeDelta
    L10_2 = L10_2.y
    L8_2 = L9_2 - L10_2
  elseif L5_2 > L8_2 then
    L8_2 = L5_2
  end
  L9_2 = 0
  L10_2 = G
  L10_2 = L10_2.MathUtils
  L10_2 = L10_2.float_equal
  L11_2 = L1_2
  L12_2 = L7_2
  L10_2 = L10_2(L11_2, L12_2)
  if L10_2 then
    if L2_2 >= L8_2 then
      L9_2 = 0
    elseif L2_2 < L8_2 then
      L9_2 = 180
    end
  elseif L1_2 >= L7_2 then
    L9_2 = -90
  elseif L1_2 < L7_2 then
    L9_2 = 90
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_trace_mission_arrow
  L10_2 = L10_2.transform
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Quaternion
  L11_2 = L11_2.Euler
  L12_2 = CS
  L12_2 = L12_2.UnityEngine
  L12_2 = L12_2.Vector3
  L13_2 = 0
  L14_2 = 0
  L15_2 = L9_2
  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L10_2.rotation = L11_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_trace_mission_tip
  L10_2 = L10_2.transform
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Vector3
  L12_2 = L7_2
  L13_2 = L8_2
  L14_2 = 0
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.localPosition = L11_2
end
L0_1._update_trace_mission_tip = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._safe_half_width
  L1_2 = -L1_2
  L2_2 = A0_2._trace_mission_floor_text
  L2_2 = L2_2.transform
  L2_2 = L2_2.sizeDelta
  L2_2 = L2_2.x
  L2_2 = L2_2 / 2
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._safe_half_width
  L3_2 = A0_2._trace_mission_floor_text
  L3_2 = L3_2.transform
  L3_2 = L3_2.sizeDelta
  L3_2 = L3_2.x
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._safe_half_height
  L3_2 = -L3_2
  L4_2 = A0_2._trace_mission_root
  L4_2 = L4_2.transform
  L4_2 = L4_2.sizeDelta
  L4_2 = L4_2.y
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._safe_half_height
  L5_2 = A0_2._trace_mission_root
  L5_2 = L5_2.transform
  L5_2 = L5_2.sizeDelta
  L5_2 = L5_2.y
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  return L5_2, L6_2, L7_2, L8_2
end
L0_1._get_trace_mission_tip_rect = L5_1
return L0_1
