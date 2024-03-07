local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DTouchPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_TimeManager
L3_1 = G
L3_1 = L3_1.ComponentExtensions
L4_1 = 0.8
L5_1 = 1.5
L6_1 = 0.5
L7_1 = 0.5
L8_1 = 12
L9_1 = 9
L10_1 = 3
L11_1 = 5
L12_1 = 102
L13_1 = 4
L14_1 = 5
L15_1 = 10
L16_1 = 10
L17_1 = 5
L18_1 = 10
L19_1 = 7
L20_1 = 9
L21_1 = 7
L22_1 = 9
L23_1 = 101
L24_1 = 10
L25_1 = 8
L26_1 = "Tutorial_Alley_Transport_Custom_First_01"
L27_1 = "Tutorial_Alley_Transport_Custom_First_02"
L28_1 = "Tutorial_Alley_Transport_Custom_First_03"
L29_1 = "Tutorial_Alley_Transport_Custom_First_04"
L30_1 = "Tutorial_Alley_Transport_Custom_01"
L31_1 = "Tutorial_Alley_Transport_Custom_02"
L32_1 = "Tutorial_Alley_Transport_Custom_03"
L33_1 = "Tutorial_Alley_Transport_Custom_04"
L34_1 = "Tutorial_Alley_Transport_Custom_05"
L35_1 = "Tutorial_Alley_Transport_Custom_06"
L36_1 = "Tutorial_Alley_Transport_Custom_07"
L37_1 = CS
L37_1 = L37_1.RPG
L37_1 = L37_1.GameCore
L37_1 = L37_1.ConstValueCommonExcelTable
L37_1 = L37_1.GetData
L38_1 = "Activity_Alley_Airline_WharfUnlock"
L37_1 = L37_1(L38_1)
L37_1 = L37_1.Value
L37_1 = L37_1.UintValue
L38_1 = {}
L38_1.Dock = 0
L38_1.Shop = 1
L38_1.Buff = 2
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/Alley/UI3D_Alley_TransportMap.prefab"
  L1_2 = A0_2.config
  L1_2.is_async_load = true
  A0_2.is_init_finish = false
  A0_2._is_first_tutorial = false
  A0_2._touch_second_pos_count = 0
  A0_2._touch_second_pos_x = 0
  A0_2._is_can_trigger_by_first_custom_03 = false
  A0_2._is_trigger_first_custom_03 = false
  A0_2._is_trigger_custom_03 = false
  A0_2._is_force_visible_energy_hint = false
  A0_2._cur_show_layer = 1
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AlleyTransportEditMode
  L1_2 = L1_2.Draw
  A0_2._cur_edit_mode = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AlleyTransportRouteState
  L1_2 = L1_2.Edit
  A0_2._cur_alley_transport_route_state = L1_2
  A0_2._last_show_buff_pop_up_time = 0
  A0_2._is_can_trigger_buff_pop_up_animator = false
  L1_2 = {}
  A0_2._map_layer_list = L1_2
  L1_2 = {}
  A0_2._map_grid_list = L1_2
  L1_2 = {}
  A0_2._map_alley_grid_list = L1_2
  L1_2 = {}
  A0_2._map_grid_animator_list = L1_2
  L1_2 = {}
  A0_2._map_icon_container_list = L1_2
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
  L1_2 = {}
  A0_2._icon_game_object_set = L1_2
  L1_2 = {}
  A0_2._is_create_map_icon_list = L1_2
  L1_2 = {}
  A0_2._buff_icon_image_list = L1_2
  L1_2 = {}
  A0_2._shop_red_dot_list = L1_2
  L1_2 = {}
  A0_2._shop_animation_effect_list = L1_2
  L1_2 = {}
  A0_2._shop_icon_game_object_list = L1_2
  L1_2 = {}
  A0_2._shop_light_effect_set = L1_2
  L1_2 = {}
  A0_2._dock_first_icon_game_object_list = L1_2
  L1_2 = {}
  A0_2._dock_icon_game_object_list = L1_2
  L1_2 = {}
  A0_2._dock_icon_animator_state = L1_2
  L1_2 = {}
  A0_2._buff_red_dot_list = L1_2
  L1_2 = {}
  A0_2._path_bff_animator_state = L1_2
  L1_2 = {}
  A0_2._buff_animator_state_list = L1_2
  L1_2 = {}
  A0_2._buff_animation_effect_list = L1_2
  L1_2 = {}
  A0_2._buff_event_animator_popup_dot = L1_2
  L1_2 = {}
  A0_2._energy_hint_game_object_list = L1_2
  L1_2 = {}
  A0_2._shop_line_buff_grid_item_data_list = L1_2
  L1_2 = 1
  L2_2 = G
  L2_2 = L2_2.AlleyTransport
  L2_2 = L2_2.max_layer
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._buff_icon_image_list
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._path_bff_animator_state
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._buff_event_animator_popup_dot
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._icon_game_object_list
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._icon_game_object_set
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._dock_icon_game_object_list
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._dock_icon_animator_state
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._shop_icon_game_object_list
    L6_2 = {}
    L5_2[L4_2] = L6_2
    L5_2 = A0_2._shop_light_effect_set
    L6_2 = {}
    L5_2[L4_2] = L6_2
  end
  L1_2 = {}
  A0_2._shop_energy_level_list = L1_2
  L1_2 = {}
  A0_2._draw_line_end_point_game_object_list = L1_2
  A0_2._cur_edit_shop_id = 0
  A0_2._draw_finish_toast = nil
  A0_2._draw_finish_toast_shop_id = nil
  A0_2._last_buff_toast_time = 0
end
L0_1.ctor = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_touch
  L1_2(L2_2)
  A0_2.is_init_finish = true
end
L0_1._on_load = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DTouchPanel
  L4_2 = "Root/Touch"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._touch_panel = L1_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.init_touch
  L1_2(L2_2)
end
L0_1._init_touch = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_alley_transport
  L1_2(L2_2)
end
L0_1._setup_view = L39_1
function L39_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._touch_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_camera_origin_pos
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._touch_panel
  L5_2 = L4_2
  L4_2 = L4_2.refresh
  L4_2(L5_2)
end
L0_1.set_camera_origin_pos = L39_1
function L39_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._touch_panel
  L5_2 = L4_2
  L4_2 = L4_2.focus_camera
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L1_1.FocusCameraTime
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.focus_camera_pos = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AlleyTransportHandler
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._alley_transport_handler = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetAlleyTransportHandler
  L3_2 = A0_2._alley_transport_handler
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetUnlockAlleyMapLayerList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  A0_2._unlock_map_layer_list = L1_2
  L1_2 = 1
  L2_2 = G
  L2_2 = L2_2.AlleyTransport
  L2_2 = L2_2.max_layer
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._map_layer_list
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = string
    L8_2 = L8_2.format
    L9_2 = "Root/BackGround/Map_Level_%s"
    L10_2 = L4_2 - 1
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2(L9_2, L10_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L5_2[L4_2] = L6_2
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.GetAlleyMapIDByLayer
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if 0 < L5_2 then
      L6_2 = A0_2._map_grid_list
      L8_2 = A0_2
      L7_2 = A0_2.sync_load_prefab
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.GetAlleyMapGridPrefabPath
      L11_2 = L5_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A0_2._map_layer_list
      L10_2 = L10_2[L4_2]
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2[L4_2] = L7_2
      L6_2 = A0_2._map_alley_grid_list
      L7_2 = L3_1.SafeGetCmpt
      L8_2 = typeof
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.AlleyGrid
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2._map_grid_list
      L9_2 = L9_2[L4_2]
      L10_2 = ""
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2[L4_2] = L7_2
      L6_2 = A0_2._map_grid_animator_list
      L7_2 = L3_1.SafeGetCmpt
      L8_2 = typeof
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Animator
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2._map_grid_list
      L9_2 = L9_2[L4_2]
      L10_2 = ""
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2[L4_2] = L7_2
      L6_2 = A0_2._map_icon_container_list
      L8_2 = A0_2
      L7_2 = A0_2._safe_find
      L9_2 = string
      L9_2 = L9_2.format
      L10_2 = "Root/BackGround/Map_Level_%s/Map_Icon_Container"
      L11_2 = L4_2 - 1
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2, L11_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L6_2[L4_2] = L7_2
    end
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsAlleyMapUnlockByLayer
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L1_1
      L7_2 = L6_2
      L6_2 = L6_2.GetAllShopListByMapID
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = G
      L7_2 = L7_2.Utils
      L7_2 = L7_2.cs_list_to_table
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = ipairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = L12_2.GridID
        L14_2 = L1_1
        L15_2 = L14_2
        L14_2 = L14_2.IsAlleyShopUnlock
        L16_2 = L13_2
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L14_2 = string
          L14_2 = L14_2.format
          L15_2 = "Root/BackGround/Bg_Map/Map_Effect/Internal/Light/%s_Shop"
          L16_2 = L13_2
          L14_2 = L14_2(L15_2, L16_2)
          L16_2 = A0_2
          L15_2 = A0_2._safe_get_cmpt
          L17_2 = CS
          L17_2 = L17_2.UnityEngine
          L17_2 = L17_2.Animator
          L18_2 = L14_2
          L19_2 = false
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
          if L15_2 then
            L16_2 = A0_2._shop_light_effect_set
            L16_2 = L16_2[L4_2]
            L16_2[L13_2] = L15_2
          end
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/BackGround/Map_Level_0/Map_Icon_Container"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_load_meta = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BackGround/Bg_Map/DockLocked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_map_dock_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BackGround/Bg_Map/DockUnlocked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_map_dock_un_locked = L1_2
  L1_2 = A0_2._node_map_dock_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._node_map_dock_un_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._map_grid_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._is_create_map_icon_list
    L6_2[L4_2] = false
  end
  L1_2 = 1
  L2_2 = G
  L2_2 = L2_2.AlleyTransport
  L2_2 = L2_2.max_layer
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._map_layer_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._init_node = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_transport_handler
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._init_alley_transport = L39_1
function L39_1(A0_2, A1_2)
  A0_2._is_first_tutorial = A1_2
end
L0_1.setup_is_first_tutorial = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_transport_handler
  if L2_2 then
    L2_2 = A0_2._alley_transport_handler
    L3_2 = L2_2
    L2_2 = L2_2.SetCameraCanDrag
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_camera_can_drag = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_transport_handler
  if L2_2 then
    L2_2 = A0_2._alley_transport_handler
    L3_2 = L2_2
    L2_2 = L2_2.SetCameraCanZoom
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_camera_can_zoom = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_transport_handler
  L3_2 = L2_2
  L2_2 = L2_2.SetEditCameraZoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_edit_camera_zoom = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_transport_handler
  L2_2 = L1_2
  L1_2 = L1_2.SwitchToEditCamera
  L1_2(L2_2)
end
L0_1.switch_to_edit_camera = L39_1
function L39_1(A0_2, A1_2)
  A0_2._cur_alley_transport_route_state = A1_2
end
L0_1.set_cur_alley_transport_route_state = L39_1
function L39_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_alley_transport_route_state
  return L1_2
end
L0_1.get_cur_alley_transport_route_state = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._cur_show_layer
  if L2_2 ~= A1_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetAlleyMapIDByLayer
    L4_2 = A0_2._cur_show_layer
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._clear_buff_red_dot_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = ipairs
  L3_2 = A0_2._map_grid_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._map_icon_container_list
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L2_2 = ipairs
  L3_2 = A0_2._map_layer_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._map_alley_grid_list
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.gridSize
  L2_2 = L2_2.x
  L2_2 = L2_2 / 2
  L8_1 = L2_2
  L2_2 = A0_2._map_alley_grid_list
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.gridSize
  L2_2 = L2_2.y
  L2_2 = L2_2 / 2
  L9_1 = L2_2
  A0_2._cur_show_layer = A1_2
  L2_2 = A0_2._alley_transport_handler
  L3_2 = L2_2
  L2_2 = L2_2.SetAlleyGrid
  L4_2 = A1_2
  L5_2 = A0_2._map_alley_grid_list
  L5_2 = L5_2[A1_2]
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.AlleyTransport
  L3_2 = A0_2._cur_show_layer
  L2_2.cur_show_layer = L3_2
  L2_2 = A0_2._map_layer_list
  L3_2 = A0_2._cur_show_layer
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_icon_container_list
  L3_2 = A0_2._cur_show_layer
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_map_icon_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TimeManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.NowTimeStamp
  A0_2._last_show_buff_pop_up_time = L2_2
  A0_2._is_can_trigger_buff_pop_up_animator = false
end
L0_1.setup_cur_map_layer = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L37_1
  if L1_2 then
    L1_2 = L37_1
    if 0 < L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_ModuleManager
      L1_2 = L1_2.MissionModule
      L2_2 = L1_2
      L1_2 = L1_2.TryGetMainMissionData
      L3_2 = L37_1
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 ~= nil then
        L2_2 = L1_2.IsFinish
        if L2_2 then
          L2_2 = A0_2._node_map_dock_locked
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetActive
          L4_2 = false
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._node_map_dock_un_locked
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetActive
          L4_2 = true
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1.setup_map_dock_locked_view = L39_1
function L39_1(A0_2)
  local L1_2
  L1_2 = A0_2._alley_transport_handler
  return L1_2
end
L0_1.get_alley_transport_handler = L39_1
function L39_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_edit_mode
  return L1_2
end
L0_1.get_cur_edit_mode = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_transport_handler
  L2_2 = L1_2
  L1_2 = L1_2.GetCurEditShopID
  L1_2 = L1_2(L2_2)
  if 0 < L1_2 then
    A0_2._cur_edit_shop_id = L1_2
  end
  L2_2 = A0_2._cur_edit_shop_id
  return L2_2
end
L0_1.get_cur_edit_shop_id = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    A1_2 = A0_2._cur_show_layer
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAlleyMapIDByLayer
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetLineBuffGridItemDataList
  L6_2 = L3_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = {}
  end
  return L4_2
end
L0_1.get_line_buff_grid_item_data_list = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._dock_first_icon_game_object_list
  L2_2 = A0_2._cur_show_layer
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1.get_first_dock_icon_game_object = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._alley_transport_handler
  if L2_2 then
    A0_2._cur_edit_mode = A1_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportEditMode
    L2_2 = L2_2.Draw
    if A1_2 == L2_2 then
      L2_2 = A0_2._alley_transport_handler
      L3_2 = L2_2
      L2_2 = L2_2.SetDraw
      L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.AlleyTransportEditMode
      L2_2 = L2_2.Erase
      if A1_2 == L2_2 then
        L2_2 = A0_2._alley_transport_handler
        L3_2 = L2_2
        L2_2 = L2_2.SetErase
        L2_2(L3_2)
      end
    end
  end
end
L0_1.setup_cur_edit_mode = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._alley_transport_handler
  L4_2 = L3_2
  L3_2 = L3_2.SetDrawCallback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_draw_call_back = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._alley_transport_handler
  L4_2 = L3_2
  L3_2 = L3_2.SetEndDrawCallback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_end_draw_call_back = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._alley_transport_handler
  L4_2 = L3_2
  L3_2 = L3_2.SetEraseCallback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_erase_call_back = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._alley_transport_handler
  L4_2 = L3_2
  L3_2 = L3_2.SetRouteStateChangeCallback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_route_state_change_call_back = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_transport_handler
  L3_2 = L2_2
  L2_2 = L2_2.SetConfirmPressedByGamepad
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_confirm_pressed_by_gamepad = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._touch_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_pinch_handler
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_zoom_callback = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_transport_handler
  L3_2 = L2_2
  L2_2 = L2_2.SetSoftZoneObject
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_edit_area_object = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._touch_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_camera_pos_z
  return L1_2(L2_2)
end
L0_1.get_camera_pos_z = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = A1_2.localPosition
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
    L3_2 = A1_2.localPosition
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
    L4_2 = A0_2._alley_transport_handler
    L5_2 = L4_2
    L4_2 = L4_2.SetVirtualCursorPosition
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.setup_virtual_cursor_position = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._alley_transport_handler
  L4_2 = L3_2
  L3_2 = L3_2.UpdateEditVCLookAtPositionByGamepad
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.update_edit_vc_look_at_position_by_game_pad = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buff_event_animator_popup_dot
  L2_2 = A0_2._cur_show_layer
  L1_2 = L1_2[L2_2]
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.check_has_buff_event_animator_popup_dot = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowTimeStamp
  L2_2 = A0_2._last_show_buff_pop_up_time
  L2_2 = L1_2 - L2_2
  L3_2 = L11_1
  if L2_2 > L3_2 then
    L2_2 = ipairs
    L3_2 = A0_2._buff_event_animator_popup_dot
    L4_2 = A0_2._cur_show_layer
    L3_2 = L3_2[L4_2]
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.SetTrigger
      L9_2 = "Shrink"
      L7_2(L8_2, L9_2)
    end
  else
    A0_2._is_can_trigger_buff_pop_up_animator = true
  end
end
L0_1.try_update_buff_event_animator_popup_dot = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowTimeStamp
  L2_2 = A0_2._last_show_buff_pop_up_time
  L2_2 = L1_2 - L2_2
  L3_2 = L11_1
  if L2_2 > L3_2 then
    L2_2 = A0_2._is_can_trigger_buff_pop_up_animator
    if L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2._buff_event_animator_popup_dot
      L4_2 = A0_2._cur_show_layer
      L3_2 = L3_2[L4_2]
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2.SetTrigger
        L9_2 = "Shrink"
        L7_2(L8_2, L9_2)
      end
      A0_2._is_can_trigger_buff_pop_up_animator = false
    end
  end
end
L0_1.trigger_buff_event_animator_popup_dot = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if A1_2 then
    L2_2 = A0_2._path_bff_animator_state
    L3_2 = A0_2._cur_show_layer
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = A0_2._cur_show_layer
  L3_2 = ipairs
  L4_2 = A0_2._buff_icon_image_list
  L4_2 = L4_2[L2_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._get_map_grid_transition_index
    L10_2 = L7_2.alley_map_buff_data
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = A0_2
    L9_2 = A0_2._get_connect_shop_id_by_buff_data
    L11_2 = L7_2.alley_map_buff_data
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 and 0 < L9_2 then
      L10_2 = G
      L10_2 = L10_2.AlleyTransport
      L10_2 = L10_2.get_trigger_name_by_shop_id
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = A0_2._path_bff_animator_state
      L12_2 = A0_2._cur_show_layer
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2[L8_2]
      if L11_2 == nil then
        L11_2 = L7_2.alley_map_buff_data
        L11_2 = L11_2.GridID
        L12_2 = G
        L12_2 = L12_2.AlleyTransport
        L12_2 = L12_2.normal_buff_id
        if L11_2 ~= L12_2 then
          L11_2 = L7_2.animator_root
          L12_2 = L11_2
          L11_2 = L11_2.SetBool
          L13_2 = "IsRareBuff"
          L14_2 = true
          L11_2(L12_2, L13_2, L14_2)
        end
        L11_2 = L7_2.animator_root
        L12_2 = L11_2
        L11_2 = L11_2.SetTrigger
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
        L11_2 = A0_2._path_bff_animator_state
        L12_2 = A0_2._cur_show_layer
        L11_2 = L11_2[L12_2]
        L11_2[L8_2] = L10_2
        L12_2 = A0_2
        L11_2 = A0_2._try_show_buff_toast
        L13_2 = L7_2
        L11_2(L12_2, L13_2)
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.GameCore
        L11_2 = L11_2.AlleyMapEffectExcelTable
        L11_2 = L11_2.GetData
        L12_2 = L7_2.alley_map_buff_data
        L12_2 = L12_2.GridID
        L11_2 = L11_2(L12_2)
        L12_2 = A0_2._energy_hint_game_object_list
        L13_2 = A0_2._cur_show_layer
        L12_2 = L12_2[L13_2]
        if L12_2 then
          L13_2 = L11_2.BuffOrDebuff
          L14_2 = CS
          L14_2 = L14_2.RPG
          L14_2 = L14_2.GameCore
          L14_2 = L14_2.BuffType
          L14_2 = L14_2.Buff
          if L13_2 == L14_2 then
            L13_2 = L12_2.animation_energy_hint
            L14_2 = L13_2
            L13_2 = L13_2.Play
            L15_2 = "MapBtnEnergyHint_Add"
            L13_2(L14_2, L15_2)
          else
            L13_2 = L11_2.BuffOrDebuff
            L14_2 = CS
            L14_2 = L14_2.RPG
            L14_2 = L14_2.GameCore
            L14_2 = L14_2.BuffType
            L14_2 = L14_2.DeBuff
            if L13_2 == L14_2 then
              L13_2 = L12_2.animation_energy_hint
              L14_2 = L13_2
              L13_2 = L13_2.Play
              L15_2 = "MapBtnEnergyHint_Reduce"
              L13_2(L14_2, L15_2)
            end
          end
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.Client
          L13_2 = L13_2.GlobalVars
          L13_2 = L13_2.s_AudioManager
          L14_2 = L13_2
          L13_2 = L13_2.PostEvent
          L15_2 = "Ev_sfx_ui_feedback_activity_alley_road_bell"
          L13_2(L14_2, L15_2)
        end
      else
        L11_2 = A0_2._path_bff_animator_state
        L12_2 = A0_2._cur_show_layer
        L11_2 = L11_2[L12_2]
        L11_2 = L11_2[L8_2]
        if L11_2 ~= L10_2 then
          L11_2 = L7_2.alley_map_buff_data
          L11_2 = L11_2.GridID
          L12_2 = G
          L12_2 = L12_2.AlleyTransport
          L12_2 = L12_2.normal_buff_id
          if L11_2 ~= L12_2 then
            L11_2 = L7_2.animator_root
            L12_2 = L11_2
            L11_2 = L11_2.SetBool
            L13_2 = "IsRareBuff"
            L14_2 = true
            L11_2(L12_2, L13_2, L14_2)
          end
          L11_2 = L7_2.animator_root
          L12_2 = L11_2
          L11_2 = L11_2.SetTrigger
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
          L11_2 = A0_2._path_bff_animator_state
          L12_2 = A0_2._cur_show_layer
          L11_2 = L11_2[L12_2]
          L11_2[L8_2] = L10_2
          L12_2 = A0_2
          L11_2 = A0_2._try_show_buff_toast
          L13_2 = L7_2
          L11_2(L12_2, L13_2)
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.GameCore
          L11_2 = L11_2.AlleyMapEffectExcelTable
          L11_2 = L11_2.GetData
          L12_2 = L7_2.alley_map_buff_data
          L12_2 = L12_2.GridID
          L11_2 = L11_2(L12_2)
          L12_2 = A0_2._energy_hint_game_object_list
          L13_2 = A0_2._cur_show_layer
          L12_2 = L12_2[L13_2]
          if L12_2 then
            L13_2 = L11_2.BuffOrDebuff
            L14_2 = CS
            L14_2 = L14_2.RPG
            L14_2 = L14_2.GameCore
            L14_2 = L14_2.BuffType
            L14_2 = L14_2.Buff
            if L13_2 == L14_2 then
              L13_2 = L12_2.animation_energy_hint
              L14_2 = L13_2
              L13_2 = L13_2.Play
              L15_2 = "MapBtnEnergyHint_Add"
              L13_2(L14_2, L15_2)
            else
              L13_2 = L11_2.BuffOrDebuff
              L14_2 = CS
              L14_2 = L14_2.RPG
              L14_2 = L14_2.GameCore
              L14_2 = L14_2.BuffType
              L14_2 = L14_2.DeBuff
              if L13_2 == L14_2 then
                L13_2 = L12_2.animation_energy_hint
                L14_2 = L13_2
                L13_2 = L13_2.Play
                L15_2 = "MapBtnEnergyHint_Reduce"
                L13_2(L14_2, L15_2)
              end
            end
            L13_2 = CS
            L13_2 = L13_2.RPG
            L13_2 = L13_2.Client
            L13_2 = L13_2.GlobalVars
            L13_2 = L13_2.s_AudioManager
            L14_2 = L13_2
            L13_2 = L13_2.PostEvent
            L15_2 = "Ev_sfx_ui_feedback_activity_alley_road_bell"
            L13_2(L14_2, L15_2)
          end
        end
      end
    else
      L10_2 = G
      L10_2 = L10_2.AlleyTransport
      L10_2 = L10_2.get_buff_item_color_trigger
      L11_2 = L7_2.buff_id
      L10_2 = L10_2(L11_2)
      L11_2 = A0_2._path_bff_animator_state
      L12_2 = A0_2._cur_show_layer
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2[L8_2]
      if L11_2 == nil then
        L11_2 = G
        L11_2 = L11_2.AlleyTransport
        L11_2 = L11_2.set_buff_item_color_trigger
        L12_2 = L7_2.animator_root
        L13_2 = L7_2.buff_id
        L11_2(L12_2, L13_2)
        L11_2 = A0_2._path_bff_animator_state
        L12_2 = A0_2._cur_show_layer
        L11_2 = L11_2[L12_2]
        L11_2[L8_2] = L10_2
      else
        L11_2 = A0_2._path_bff_animator_state
        L12_2 = A0_2._cur_show_layer
        L11_2 = L11_2[L12_2]
        L11_2 = L11_2[L8_2]
        if L11_2 ~= L10_2 then
          L11_2 = G
          L11_2 = L11_2.AlleyTransport
          L11_2 = L11_2.set_buff_item_color_trigger
          L12_2 = L7_2.animator_root
          L13_2 = L7_2.buff_id
          L11_2(L12_2, L13_2)
          L11_2 = A0_2._path_bff_animator_state
          L12_2 = A0_2._cur_show_layer
          L11_2 = L11_2[L12_2]
          L11_2[L8_2] = L10_2
        end
      end
    end
  end
end
L0_1.update_buff_icon_color = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 then
    L2_2 = A0_2._dock_icon_animator_state
    L3_2 = A0_2._cur_show_layer
    L4_2 = {}
    L2_2[L3_2] = L4_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = A0_2._dock_icon_game_object_list
  L5_2 = A0_2._cur_show_layer
  L4_2 = L4_2[L5_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._get_map_grid_transition_index
    L10_2 = L7_2.alley_map_buff_data
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.GetConnectShopIDByDockData
    L11_2 = L2_2
    L12_2 = L7_2.alley_map_buff_data
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if 0 < L9_2 then
      L10_2 = L7_2.entrance_road
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = false
      L10_2(L11_2, L12_2)
      L11_2 = A0_2
      L10_2 = A0_2._check_is_show_dock_popup
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L7_2.popup_dot
      L12_2 = L11_2
      L11_2 = L11_2.SafeSetActive
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
      L11_2 = G
      L11_2 = L11_2.AlleyTransport
      L11_2 = L11_2.get_trigger_name_by_shop_id
      L12_2 = L9_2
      L11_2 = L11_2(L12_2)
      L12_2 = A0_2._dock_icon_animator_state
      L13_2 = A0_2._cur_show_layer
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2[L8_2]
      if L12_2 == nil then
        L12_2 = L7_2.animator_root
        L13_2 = L12_2
        L12_2 = L12_2.SetTrigger
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
        L12_2 = A0_2._dock_icon_animator_state
        L13_2 = A0_2._cur_show_layer
        L12_2 = L12_2[L13_2]
        L12_2[L8_2] = L11_2
        L12_2 = A0_2._cur_alley_transport_route_state
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.Client
        L13_2 = L13_2.AlleyTransportRouteState
        L13_2 = L13_2.Draw
        if L12_2 == L13_2 then
          L12_2 = L7_2.animation_effect_node
          L13_2 = L12_2
          L12_2 = L12_2.SafeSetActive
          L14_2 = true
          L12_2(L13_2, L14_2)
          L12_2 = CS
          L12_2 = L12_2.RPG
          L12_2 = L12_2.Client
          L12_2 = L12_2.UIAnimationUtils
          L12_2 = L12_2.PlayFromBegin
          L13_2 = L7_2.animation_effect_node
          L14_2 = "MapBtn_Effect_Remind"
          L12_2(L13_2, L14_2)
          L13_2 = A0_2
          L12_2 = A0_2._try_show_draw_finish_toast
          L14_2 = L9_2
          L12_2(L13_2, L14_2)
        end
      else
        L12_2 = A0_2._dock_icon_animator_state
        L13_2 = A0_2._cur_show_layer
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2[L8_2]
        if L12_2 ~= L11_2 then
          L12_2 = L7_2.animator_root
          L13_2 = L12_2
          L12_2 = L12_2.SetTrigger
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
          L12_2 = A0_2._dock_icon_animator_state
          L13_2 = A0_2._cur_show_layer
          L12_2 = L12_2[L13_2]
          L12_2[L8_2] = L11_2
          L12_2 = A0_2._cur_alley_transport_route_state
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.Client
          L13_2 = L13_2.AlleyTransportRouteState
          L13_2 = L13_2.Draw
          if L12_2 == L13_2 then
            L12_2 = L7_2.animation_effect_node
            L13_2 = L12_2
            L12_2 = L12_2.SafeSetActive
            L14_2 = true
            L12_2(L13_2, L14_2)
            L12_2 = CS
            L12_2 = L12_2.RPG
            L12_2 = L12_2.Client
            L12_2 = L12_2.UIAnimationUtils
            L12_2 = L12_2.PlayFromBegin
            L13_2 = L7_2.animation_effect_node
            L14_2 = "MapBtn_Effect_Remind"
            L12_2(L13_2, L14_2)
            L13_2 = A0_2
            L12_2 = A0_2._try_show_draw_finish_toast
            L14_2 = L9_2
            L12_2(L13_2, L14_2)
          end
        end
      end
    else
      L10_2 = L7_2.popup_dot
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = false
      L10_2(L11_2, L12_2)
      L10_2 = L7_2.entrance_road
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = true
      L10_2(L11_2, L12_2)
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.UIAnimationUtils
      L10_2 = L10_2.PlayFromBegin
      L11_2 = L7_2.animation_entrance_road
      L12_2 = "MapBtnEntranceRoad_Loop"
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._dock_icon_animator_state
      L11_2 = A0_2._cur_show_layer
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2[L8_2]
      if L10_2 == nil then
        L10_2 = L7_2.animator_root
        L11_2 = L10_2
        L10_2 = L10_2.SetTrigger
        L12_2 = "ColorDefault"
        L10_2(L11_2, L12_2)
        L10_2 = A0_2._dock_icon_animator_state
        L11_2 = A0_2._cur_show_layer
        L10_2 = L10_2[L11_2]
        L10_2[L8_2] = "ColorDefault"
      else
        L10_2 = A0_2._dock_icon_animator_state
        L11_2 = A0_2._cur_show_layer
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2[L8_2]
        if L10_2 ~= "ColorDefault" then
          L10_2 = L7_2.animator_root
          L11_2 = L10_2
          L10_2 = L10_2.SetTrigger
          L12_2 = "ColorDefault"
          L10_2(L11_2, L12_2)
          L10_2 = A0_2._dock_icon_animator_state
          L11_2 = A0_2._cur_show_layer
          L10_2 = L10_2[L11_2]
          L10_2[L8_2] = "ColorDefault"
        end
      end
    end
  end
end
L0_1.update_dock_icon_color = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = A0_2._shop_icon_game_object_list
  L4_2 = A0_2._cur_show_layer
  L3_2 = L3_2[L4_2]
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.CheckShopHasLine
    L9_2 = L1_2
    L10_2 = L6_2.shop_id
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L7_2 = L6_2.animation_effect_node
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    else
      L7_2 = L6_2.animation_effect_node
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.UIAnimationUtils
      L7_2 = L7_2.PlayFromBegin
      L8_2 = L6_2.animation_effect_node
      L9_2 = "MapBtn_Effect_Remind_Loop"
      L7_2(L8_2, L9_2)
    end
    L7_2 = G
    L7_2 = L7_2.AlleyTransport
    L7_2 = L7_2.get_trigger_name_by_shop_id
    L8_2 = L6_2.shop_id
    L7_2 = L7_2(L8_2)
    L8_2 = L6_2.animator_root
    L9_2 = L8_2
    L8_2 = L8_2.SetTrigger
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.update_shop_icon_loop_effect = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = A0_2._shop_red_dot_list
  L3_2 = L3_2[L1_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.CheckLineCompletedState
    L11_2 = L1_2
    L12_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L9_2 = not L9_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.update_shop_red_dot_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2.hide_draw_line_end_point_icon_game_object
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_process_end_point_info_list
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._draw_line_end_point_game_object_list
    L8_2 = L6_2.shopID
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L8_2 = L7_2.node_root
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = L7_2.animation_effect_node
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = L6_2.coords
      L8_2 = L8_2.x
      L9_2 = L6_1
      L8_2 = L8_2 + L9_2
      L9_2 = L8_1
      L8_2 = L8_2 - L9_2
      L9_2 = L6_2.coords
      L9_2 = L9_2.y
      L10_2 = L7_1
      L9_2 = L9_2 + L10_2
      L10_2 = L9_1
      L9_2 = L9_2 - L10_2
      L10_2 = L7_2.icon_game_object
      L10_2 = L10_2.transform
      L11_2 = CS
      L11_2 = L11_2.UnityEngine
      L11_2 = L11_2.Vector3
      L12_2 = L8_2
      L13_2 = L9_2
      L14_2 = 0
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.localPosition = L11_2
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.UIAnimationUtils
      L10_2 = L10_2.PlayFromBegin
      L11_2 = L7_2.animation_effect_node
      L12_2 = "MapBtn_Effect_Remind_Loop"
      L10_2(L11_2, L12_2)
    else
      L9_2 = A0_2
      L8_2 = A0_2._new_draw_line_end_point_icon_game_object
      L10_2 = L6_2.coords
      L10_2 = L10_2.x
      L11_2 = L6_2.coords
      L11_2 = L11_2.y
      L12_2 = L6_2.shopID
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L0_1.update_draw_line_end_point_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._draw_line_end_point_game_object_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.animation_effect_node
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._shop_icon_game_object_list
  L3_2 = A0_2._cur_show_layer
  L2_2 = L2_2[L3_2]
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.animation_effect_node
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1.hide_draw_line_end_point_icon_game_object = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2._get_process_end_point_info_list
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._draw_line_end_point_game_object_list
    L8_2 = L6_2.shopID
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L8_2 = L6_2.coords
      L8_2 = L8_2.x
      L9_2 = L6_1
      L8_2 = L8_2 + L9_2
      L9_2 = L8_1
      L8_2 = L8_2 - L9_2
      L9_2 = L6_2.coords
      L9_2 = L9_2.y
      L10_2 = L7_1
      L9_2 = L9_2 + L10_2
      L10_2 = L9_1
      L9_2 = L9_2 - L10_2
      L10_2 = L7_2.icon_game_object
      L10_2 = L10_2.transform
      L11_2 = CS
      L11_2 = L11_2.UnityEngine
      L11_2 = L11_2.Vector3
      L12_2 = L8_2
      L13_2 = L9_2
      L14_2 = 0
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.localPosition = L11_2
    else
      L9_2 = A0_2
      L8_2 = A0_2._new_draw_line_end_point_icon_game_object
      L10_2 = L6_2.coords
      L10_2 = L10_2.x
      L11_2 = L6_2.coords
      L11_2 = L11_2.y
      L12_2 = L6_2.shopID
      L13_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_edit_shop_id
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._draw_line_end_point_game_object_list
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L4_2 = L3_2.node_root
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = L3_2.node_warning
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = L3_2.node_root
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = "Warning"
    L4_2(L5_2, L6_2)
  end
end
L0_1.play_draw_failure_effect = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = A0_2._buff_animation_effect_list
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = ipairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L1_1
      L13_2 = L12_2
      L12_2 = L12_2.CheckMapGridIsClicked
      L14_2 = L5_2
      L15_2 = L1_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if not L12_2 then
        L13_2 = L11_2
        L12_2 = L11_2.Play
        L14_2 = "MapBtn_FadeIn"
        L12_2(L13_2, L14_2)
      end
    end
  end
  L2_2 = {}
  A0_2._buff_animation_effect_list = L2_2
  L2_2 = pairs
  L3_2 = A0_2._shop_animation_effect_list
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.CheckMapGridIsClicked
    L9_2 = L5_2
    L10_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if not L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.Play
      L9_2 = "MapBtn_FadeIn"
      L7_2(L8_2, L9_2)
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.SetMapGridClickedState
      L9_2 = L5_2
      L10_2 = L1_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = {}
  A0_2._shop_animation_effect_list = L2_2
end
L0_1.update_map_btn_effect_view = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = A0_2._shop_light_effect_set
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.CheckLineCompletedState
    L10_2 = L2_2
    L11_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = A0_2._cur_show_layer
    if A1_2 == L9_2 and L8_2 then
      L10_2 = L7_2
      L9_2 = L7_2.Play
      L11_2 = "Map_Effect_Light_Strong"
      L9_2(L10_2, L11_2)
    else
      L10_2 = L7_2
      L9_2 = L7_2.Play
      L11_2 = "Map_Effect_Light_Weak"
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1.update_shop_light_view_by_layer = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.cs_list_to_table
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetUnlockAlleyMapLayerList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.update_shop_light_view_by_layer
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.update_shop_light_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = G
  L2_2 = L2_2.AlleyTransport
  L2_2 = L2_2.max_layer
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._energy_hint_game_object_list
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L6_2 = L5_2.animation_energy_hint
      L7_2 = L6_2
      L6_2 = L6_2.Play
      L8_2 = "MapBtnEnergyHint_Normal"
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._is_force_visible_energy_hint
      if L6_2 == false then
        L6_2 = L5_2.icon_game_object
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetActiveByScale
        L8_2 = false
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1.hide_energy_hint_game_object = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_force_visible_energy_hint = A1_2
  L2_2 = A0_2._energy_hint_game_object_list
  L3_2 = A0_2._cur_show_layer
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.icon_game_object
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActiveByScale
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_energy_hint_game_object_visible = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = nil
  L2_2 = A0_2._energy_hint_game_object_list
  L3_2 = A0_2._cur_show_layer
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._new_energy_hint_game_object
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    L2_2 = A0_2._energy_hint_game_object_list
    L3_2 = A0_2._cur_show_layer
    L2_2[L3_2] = L1_2
  else
    L2_2 = A0_2._energy_hint_game_object_list
    L3_2 = A0_2._cur_show_layer
    L1_2 = L2_2[L3_2]
    L2_2 = L1_2.icon_game_object
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActiveByScale
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_process_end_point_info_list
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_cur_edit_shop_id
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = ipairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.shopID
    if L10_2 == L3_2 then
      L4_2 = L9_2
      break
    end
  end
  if L4_2 then
    L5_2 = L1_2.icon_game_object
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.GetAlleyMapIDByLayer
    L8_2 = A0_2._cur_show_layer
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetEnergyCount
    L9_2 = L6_2
    L10_2 = L3_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = L1_2.text_energy
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetText
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AlleyShopExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L9_2 = L1_2.image_energy
    L10_2 = L8_2.ShopEnergy
    L10_2 = L7_2 / L10_2
    L9_2.fillAmount = L10_2
    L9_2 = 4
    L10_2 = 0
    L11_2 = L8_2.EnergyColor
    L11_2 = L11_2.Length
    L11_2 = L11_2 - 1
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = L8_2.EnergyColor
      L14_2 = L14_2[L13_2]
      if L7_2 < L14_2 then
        L9_2 = L13_2 + 1
        break
      end
    end
    L10_2 = L1_2.animator_energy
    L11_2 = L10_2
    L10_2 = L10_2.SetTrigger
    L12_2 = string
    L12_2 = L12_2.format
    L13_2 = "Color%s"
    L14_2 = L9_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L12_2(L13_2, L14_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L10_2 = A0_2._shop_energy_level_list
    L10_2 = L10_2[L3_2]
    if L10_2 then
      L10_2 = A0_2._shop_energy_level_list
      L10_2 = L10_2[L3_2]
      if L10_2 ~= L9_2 then
        L10_2 = A0_2._shop_energy_level_list
        L10_2 = L10_2[L3_2]
        if L9_2 > L10_2 then
          L10_2 = L1_2.animation_energy_hint
          L11_2 = L10_2
          L10_2 = L10_2.Play
          L12_2 = "MapBtnEnergyHint_Add"
          L10_2(L11_2, L12_2)
        else
          L10_2 = L1_2.animation_energy_hint
          L11_2 = L10_2
          L10_2 = L10_2.Play
          L12_2 = "MapBtnEnergyHint_Reduce"
          L10_2(L11_2, L12_2)
        end
      end
    else
      L10_2 = L1_2.animation_energy_hint
      L11_2 = L10_2
      L10_2 = L10_2.Play
      L12_2 = "MapBtnEnergyHint_Add"
      L10_2(L11_2, L12_2)
    end
    L10_2 = A0_2._shop_energy_level_list
    L10_2[L3_2] = L9_2
    L10_2 = A0_2._draw_line_end_point_game_object_list
    L10_2 = L10_2[L3_2]
    if L10_2 then
      L11_2 = L10_2.node_warning
      L12_2 = L11_2
      L11_2 = L11_2.SafeSetActive
      L13_2 = false
      L11_2(L12_2, L13_2)
      L11_2 = L10_2.node_root
      L12_2 = L11_2
      L11_2 = L11_2.SafeSetActive
      L13_2 = false
      L11_2(L12_2, L13_2)
    end
    L11_2 = L4_2.coords
    L11_2 = L11_2.x
    L12_2 = L4_2.coords
    L12_2 = L12_2.y
    L13_2 = L6_1
    L13_2 = L11_2 + L13_2
    L14_2 = L8_1
    L13_2 = L13_2 - L14_2
    L14_2 = L7_1
    L14_2 = L12_2 + L14_2
    L15_2 = L9_1
    L14_2 = L14_2 - L15_2
    L15_2 = L5_2.transform
    L16_2 = CS
    L16_2 = L16_2.UnityEngine
    L16_2 = L16_2.Vector3
    L17_2 = L13_2
    L18_2 = L14_2
    L19_2 = 0
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2.localPosition = L16_2
  end
end
L0_1.update_energy_hint_game_object = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.is_use_by_tutorial
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_alley_transport_route_state
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportRouteState
    L2_2 = L2_2.Edit
    if L1_2 == L2_2 then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.GetAlleyMapIDByLayer
      L3_2 = A0_2._cur_show_layer
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.CheckLineCompletedStateByMapID
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.trigger_custom_string
        L4_2 = L31_1
        L2_2(L3_2, L4_2)
      end
      L2_2 = ipairs
      L3_2 = A0_2._buff_icon_image_list
      L4_2 = A0_2._cur_show_layer
      L3_2 = L3_2[L4_2]
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = A0_2
        L7_2 = A0_2._get_connect_shop_id_by_buff_data
        L9_2 = L6_2.alley_map_buff_data
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 and 0 < L7_2 then
          L8_2 = L12_1
          if L7_2 == L8_2 then
            L8_2 = L6_2.alley_map_buff_data
            L8_2 = L8_2.PosX
            L9_2 = L13_1
            if L8_2 == L9_2 then
              L8_2 = L6_2.alley_map_buff_data
              L8_2 = L8_2.PosY
              L9_2 = L14_1
              if L8_2 == L9_2 then
                L9_2 = A0_2
                L8_2 = A0_2.trigger_custom_string
                L10_2 = L30_1
                L8_2(L9_2, L10_2)
              end
            end
          end
        end
      end
      L3_2 = A0_2
      L2_2 = A0_2._get_process_end_point_info_list
      L4_2 = false
      L2_2 = L2_2(L3_2, L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.get_cur_edit_shop_id
      L3_2 = L3_2(L4_2)
      L4_2 = nil
      L5_2 = ipairs
      L6_2 = L2_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.shopID
        if L10_2 == L3_2 then
          L4_2 = L9_2
          break
        end
      end
      if L4_2 == nil then
        return
      end
      L5_2 = L4_2.coords
      L5_2 = L5_2.x
      L6_2 = L4_2.coords
      L6_2 = L6_2.y
      L7_2 = A0_2._is_first_tutorial
      if L7_2 then
        L7_2 = L15_1
        if L5_2 == L7_2 then
          L7_2 = L16_1
          if L6_2 == L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2.trigger_custom_string
            L9_2 = L26_1
            L7_2(L8_2, L9_2)
          end
        end
        L7_2 = L17_1
        if L5_2 == L7_2 then
          L7_2 = L18_1
          if L6_2 == L7_2 then
            L7_2 = A0_2._touch_second_pos_count
            L7_2 = L7_2 + 1
            A0_2._touch_second_pos_count = L7_2
            L7_2 = A0_2._touch_second_pos_count
            if L7_2 == 1 then
              L7_2 = L17_1
              A0_2._touch_second_pos_x = L7_2
              L8_2 = A0_2
              L7_2 = A0_2.trigger_custom_string
              L9_2 = L27_1
              L7_2(L8_2, L9_2)
            else
              L7_2 = A0_2._is_can_trigger_by_first_custom_03
              if L7_2 then
                A0_2._is_trigger_first_custom_03 = true
                L8_2 = A0_2
                L7_2 = A0_2.trigger_custom_string
                L9_2 = L28_1
                L7_2(L8_2, L9_2)
              end
            end
        end
        else
          L7_2 = A0_2._touch_second_pos_x
          L8_2 = L17_1
          if L7_2 == L8_2 then
            L7_2 = L17_1
            if L5_2 > L7_2 then
              A0_2._is_can_trigger_by_first_custom_03 = true
            end
          end
        end
      else
        L7_2 = L4_2.shopID
        L8_2 = L23_1
        if L7_2 == L8_2 then
          L7_2 = L19_1
          if L5_2 == L7_2 then
            L7_2 = L20_1
            if L6_2 == L7_2 then
              L8_2 = A0_2
              L7_2 = A0_2.trigger_custom_string
              L9_2 = L32_1
              L7_2(L8_2, L9_2)
              A0_2._is_trigger_custom_03 = true
            end
          end
          L7_2 = L21_1
          if L5_2 == L7_2 then
            L7_2 = L22_1
            if L6_2 == L7_2 then
              L8_2 = A0_2
              L7_2 = A0_2.trigger_custom_string
              L9_2 = L36_1
              L7_2(L8_2, L9_2)
            end
          end
        end
        L7_2 = A0_2._is_trigger_custom_03
        if L7_2 then
          L7_2 = L1_1
          L8_2 = L7_2
          L7_2 = L7_2.CheckLineCompletedStateByMapID
          L9_2 = L1_2
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2.trigger_custom_string
            L9_2 = L34_1
            L7_2(L8_2, L9_2)
          end
        end
      end
      L7_2 = A0_2._is_first_tutorial
      if L7_2 then
        L7_2 = A0_2._is_can_trigger_by_first_custom_03
        if L7_2 then
          L7_2 = A0_2._is_trigger_first_custom_03
          if not L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2.trigger_custom_string
            L9_2 = L29_1
            L7_2(L8_2, L9_2)
          end
        end
      end
    end
  end
end
L0_1.update_tutorial_custom_string_state_by_edit = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.is_use_by_tutorial
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_alley_transport_route_state
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportRouteState
    L2_2 = L2_2.Wipe
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.trigger_custom_string
      L3_2 = L33_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._is_first_tutorial
      if L1_2 == false then
        L2_2 = A0_2
        L1_2 = A0_2._get_process_end_point_info_list
        L3_2 = false
        L1_2 = L1_2(L2_2, L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.get_cur_edit_shop_id
        L2_2 = L2_2(L3_2)
        L3_2 = nil
        L4_2 = ipairs
        L5_2 = L1_2
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        for L7_2, L8_2 in L4_2, L5_2, L6_2 do
          L9_2 = L8_2.shopID
          if L9_2 == L2_2 then
            L3_2 = L8_2
            break
          end
        end
        L4_2 = L3_2.shopID
        L5_2 = L23_1
        if L4_2 == L5_2 then
          L4_2 = L3_2.coords
          L4_2 = L4_2.x
          L5_2 = L3_2.coords
          L5_2 = L5_2.y
          L6_2 = L24_1
          if L4_2 == L6_2 then
            L6_2 = L25_1
            if L5_2 == L6_2 then
              L7_2 = A0_2
              L6_2 = A0_2.trigger_custom_string
              L8_2 = L35_1
              L6_2(L7_2, L8_2)
            end
          end
        end
      end
    end
  end
end
L0_1.update_tutorial_custom_string_state_by_wipe = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_alley_transport_route_state
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AlleyTransportRouteState
  L2_2 = L2_2.Wipe
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_cur_alley_transport_route_state
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AlleyTransportRouteState
    L2_2 = L2_2.Draw
    if L1_2 ~= L2_2 then
      goto lbl_45
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_edit_shop_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.get_line_buff_grid_item_data_list
  L4_2 = A0_2._cur_show_layer
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._shop_line_buff_grid_item_data_list
  L3_2 = L3_2[L1_2]
  if L3_2 ~= nil then
    L3_2 = #L2_2
    L4_2 = A0_2._shop_line_buff_grid_item_data_list
    L4_2 = L4_2[L1_2]
    if L3_2 < L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = "Ev_sfx_ui_feedback_activity_alley_road_bell"
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = A0_2._shop_line_buff_grid_item_data_list
  L4_2 = #L2_2
  L3_2[L1_2] = L4_2
  ::lbl_45::
end
L0_1.update_activity_alley_road_bell = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._icon_game_object_list
  L4_2 = L4_2[A1_2]
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.icon_game_object = L7_2
    L8_2.is_end_point = false
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = pairs
  L4_2 = A0_2._draw_line_end_point_game_object_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L9_2 = L7_2.icon_game_object
    L8_2.icon_game_object = L9_2
    L8_2.is_end_point = true
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L2_2
end
L0_1.get_icon_game_object_list = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._virtual_cursor_root = A1_2
  L2_2 = A0_2._alley_transport_handler
  L3_2 = L2_2
  L2_2 = L2_2.InitVirtualCursor
  L4_2 = A0_2._virtual_cursor_root
  L4_2 = L4_2.transform
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_virtual_cursor_position
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_virtual_cursor_root = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._cur_alley_grid_trigger_name
  if L2_2 then
    L2_2 = A0_2._cur_alley_grid_trigger_name
    if L2_2 ~= A1_2 then
      A0_2._cur_alley_grid_trigger_name = A1_2
      L2_2 = 1
      L3_2 = G
      L3_2 = L3_2.AlleyTransport
      L3_2 = L3_2.max_layer
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._map_grid_animator_list
        L6_2 = L6_2[L5_2]
        L7_2 = L6_2
        L6_2 = L6_2.SetTrigger
        L8_2 = A1_2
        L6_2(L7_2, L8_2)
      end
    end
  else
    A0_2._cur_alley_grid_trigger_name = A1_2
    L2_2 = 1
    L3_2 = G
    L3_2 = L3_2.AlleyTransport
    L3_2 = L3_2.max_layer
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._map_grid_animator_list
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.SetTrigger
      L8_2 = A1_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.set_alley_grid_animator_trigger = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.update_draw_line_end_point_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.trigger_custom_string
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1.trigger_custom_string = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_create_map_icon_list
  L2_2 = A0_2._cur_show_layer
  L1_2 = L1_2[L2_2]
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._setup_tutorial_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_shop_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_dock_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_buff_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.update_buff_icon_color
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.update_dock_icon_color
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.update_shop_icon_loop_effect
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.update_shop_light_view_by_layer
    L3_2 = A0_2._cur_show_layer
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._is_create_map_icon_list
    L2_2 = A0_2._cur_show_layer
    L1_2[L2_2] = true
  end
end
L0_1._setup_map_icon_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyGridItemDataListByType
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GridTypeEnum
  L5_2 = L5_2.Tutorial
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = A0_2
    L9_2 = A0_2._new_tutorial_icon_game_object
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._setup_tutorial_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllShopListByMapID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._shop_red_dot_list
  L5_2 = A0_2._shop_red_dot_list
  L5_2 = L5_2[L1_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[L1_2] = L5_2
  L4_2 = {}
  A0_2._shop_animation_effect_list = L4_2
  L4_2 = A0_2._shop_icon_game_object_list
  L5_2 = A0_2._cur_show_layer
  L6_2 = A0_2._shop_icon_game_object_list
  L7_2 = A0_2._cur_show_layer
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    L6_2 = {}
  end
  L4_2[L5_2] = L6_2
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.GridID
    L11_2 = A0_2
    L10_2 = A0_2._new_icon_game_object
    L12_2 = L8_2
    L13_2 = L38_1.Shop
    L14_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.AppUtils
    L11_2 = L11_2.IsEditor
    if L11_2 then
      L11_2 = L10_2.gameObject
      L11_2.name = L9_2
    end
    L11_2 = L3_1.SafeGetCmpt
    L12_2 = typeof
    L13_2 = CS
    L13_2 = L13_2.UnityEngine
    L13_2 = L13_2.Animator
    L12_2 = L12_2(L13_2)
    L13_2 = L10_2
    L14_2 = "Root"
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = G
    L12_2 = L12_2.AlleyTransport
    L12_2 = L12_2.get_trigger_name_by_shop_id
    L13_2 = L9_2
    L12_2 = L12_2(L13_2)
    L14_2 = L11_2
    L13_2 = L11_2.SetTrigger
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L13_2 = L1_1
    L14_2 = L13_2
    L13_2 = L13_2.IsAlleyShopUnlock
    L15_2 = L8_2.GridID
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 then
      L13_2 = L3_1.SafeFind
      L14_2 = L10_2
      L15_2 = "RedDot/PopUpRedDot"
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = A0_2._shop_red_dot_list
      L14_2 = L14_2[L1_2]
      L14_2[L9_2] = L13_2
      L14_2 = L3_1.SafeGetCmpt
      L15_2 = typeof
      L16_2 = CS
      L16_2 = L16_2.UnityEngine
      L16_2 = L16_2.Animation
      L15_2 = L15_2(L16_2)
      L16_2 = L10_2
      L17_2 = ""
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L15_2 = A0_2._shop_animation_effect_list
      L15_2[L8_2] = L14_2
      L15_2 = L3_1.SafeFind
      L16_2 = L10_2
      L17_2 = "RedDot/EventHint"
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = L3_1.SafeGetCmpt
      L17_2 = typeof
      L18_2 = CS
      L18_2 = L18_2.UnityEngine
      L18_2 = L18_2.UI
      L18_2 = L18_2.Text
      L17_2 = L17_2(L18_2)
      L18_2 = L10_2
      L19_2 = "RedDot/EventHint/PopUpTip/Content/Text"
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L17_2 = L3_1.SafeGetCmpt
      L18_2 = typeof
      L19_2 = CS
      L19_2 = L19_2.UnityEngine
      L19_2 = L19_2.UI
      L19_2 = L19_2.Button
      L18_2 = L18_2(L19_2)
      L19_2 = L10_2
      L20_2 = ""
      L17_2 = L17_2(L18_2, L19_2, L20_2)
      L18_2 = {}
      L18_2.alley_map_shop_data = L8_2
      L18_2.icon_game_object = L10_2
      L20_2 = A0_2
      L19_2 = A0_2._bind_btn_callback
      L21_2 = L17_2
      L22_2 = A0_2._on_shop_icon_btn_click
      L23_2 = L18_2
      L19_2(L20_2, L21_2, L22_2, L23_2)
      L19_2 = L1_1
      L20_2 = L19_2
      L19_2 = L19_2.CheckAlleyGridCanPopUpTip
      L21_2 = L1_2
      L22_2 = L9_2
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      if L19_2 then
        L19_2 = L1_1
        L20_2 = L19_2
        L19_2 = L19_2.CheckMapGridNeedPopUpTip
        L21_2 = L8_2
        L22_2 = L1_2
        L19_2 = L19_2(L20_2, L21_2, L22_2)
        if L19_2 then
          L20_2 = L16_2
          L19_2 = L16_2.SafeSetTextID
          L21_2 = "UIText_ActivityAlley_Airline_RelatedGoods"
          L19_2(L20_2, L21_2)
          L20_2 = L15_2
          L19_2 = L15_2.SafeSetActive
          L21_2 = true
          L19_2(L20_2, L21_2)
        else
          L20_2 = L15_2
          L19_2 = L15_2.SafeSetActive
          L21_2 = false
          L19_2(L20_2, L21_2)
        end
      end
      L19_2 = {}
      L20_2 = L3_1.SafeGetCmpt
      L21_2 = typeof
      L22_2 = CS
      L22_2 = L22_2.UnityEngine
      L22_2 = L22_2.Animation
      L21_2 = L21_2(L22_2)
      L22_2 = L10_2
      L23_2 = "Root/Effect"
      L20_2 = L20_2(L21_2, L22_2, L23_2)
      L19_2.animation_effect_node = L20_2
      L19_2.shop_id = L9_2
      L19_2.animator_root = L11_2
      L20_2 = A0_2._shop_icon_game_object_list
      L21_2 = A0_2._cur_show_layer
      L20_2 = L20_2[L21_2]
      L20_2[L9_2] = L19_2
    else
      L13_2 = L3_1.SafeFind
      L14_2 = L10_2
      L15_2 = "Root/ShopNode/LockPanel"
      L13_2 = L13_2(L14_2, L15_2)
      L15_2 = L13_2
      L14_2 = L13_2.SafeSetActive
      L16_2 = true
      L14_2(L15_2, L16_2)
      L14_2 = L3_1.SafeGetCmpt
      L15_2 = typeof
      L16_2 = CS
      L16_2 = L16_2.UnityEngine
      L16_2 = L16_2.UI
      L16_2 = L16_2.Button
      L15_2 = L15_2(L16_2)
      L16_2 = L10_2
      L17_2 = ""
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      L16_2 = A0_2
      L15_2 = A0_2._bind_btn_callback
      L17_2 = L14_2
      L18_2 = A0_2._on_unlock_shop_icon_btn_click
      L15_2(L16_2, L17_2, L18_2)
    end
    L13_2 = G
    L13_2 = L13_2.AlleyTransport
    L13_2 = L13_2.is_use_by_tutorial
    if L13_2 then
      L14_2 = A0_2
      L13_2 = A0_2._new_draw_line_end_point_icon_game_object
      L15_2 = L8_2.PosX
      L16_2 = L8_2.PosY
      L17_2 = L8_2.GridID
      L13_2(L14_2, L15_2, L16_2, L17_2)
    end
  end
end
L0_1._setup_shop_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyGridItemDataListByType
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GridTypeEnum
  L5_2 = L5_2.Dock
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._dock_icon_game_object_list
  L5_2 = A0_2._cur_show_layer
  L6_2 = A0_2._dock_icon_game_object_list
  L7_2 = A0_2._cur_show_layer
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    L6_2 = {}
  end
  L4_2[L5_2] = L6_2
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = A0_2
    L9_2 = A0_2._new_icon_game_object
    L11_2 = L8_2
    L12_2 = L38_1.Dock
    L13_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L10_2 = L3_1.SafeGetCmpt
    L11_2 = typeof
    L12_2 = CS
    L12_2 = L12_2.UnityEngine
    L12_2 = L12_2.UI
    L12_2 = L12_2.Button
    L11_2 = L11_2(L12_2)
    L12_2 = L9_2
    L13_2 = ""
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = {}
    L11_2.alley_map_dock_data = L8_2
    L11_2.icon_game_object = L9_2
    L13_2 = A0_2
    L12_2 = A0_2._bind_btn_callback
    L14_2 = L10_2
    L15_2 = A0_2._on_dock_icon_btn_click
    L16_2 = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = L3_1.SafeFind
    L13_2 = L9_2
    L14_2 = "RedDot/EventHint"
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = L3_1.SafeGetCmpt
    L14_2 = typeof
    L15_2 = CS
    L15_2 = L15_2.UnityEngine
    L15_2 = L15_2.UI
    L15_2 = L15_2.Text
    L14_2 = L14_2(L15_2)
    L15_2 = L9_2
    L16_2 = "RedDot/EventHint/PopUpTip/Content/Text"
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L15_2 = L13_2
    L14_2 = L13_2.SafeSetTextID
    L16_2 = "UIText_ActivityAlley_Airline_RelatedOrder"
    L14_2(L15_2, L16_2)
    L15_2 = A0_2
    L14_2 = A0_2._get_transition_index
    L16_2 = L8_2.PosX
    L17_2 = L8_2.PosY
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = {}
    L15_2.icon_game_object = L9_2
    L15_2.alley_map_buff_data = L8_2
    L16_2 = L3_1.SafeGetCmpt
    L17_2 = typeof
    L18_2 = CS
    L18_2 = L18_2.UnityEngine
    L18_2 = L18_2.Animator
    L17_2 = L17_2(L18_2)
    L18_2 = L9_2
    L19_2 = "Root"
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2.animator_root = L16_2
    L15_2.popup_dot = L12_2
    L16_2 = L3_1.SafeGetCmpt
    L17_2 = typeof
    L18_2 = CS
    L18_2 = L18_2.UnityEngine
    L18_2 = L18_2.Animation
    L17_2 = L17_2(L18_2)
    L18_2 = L9_2
    L19_2 = "Root/Effect"
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2.animation_effect_node = L16_2
    L16_2 = L3_1.SafeFind
    L17_2 = L9_2
    L18_2 = "Root/DockNode/EntranceRoad"
    L16_2 = L16_2(L17_2, L18_2)
    L15_2.entrance_road = L16_2
    L16_2 = L3_1.SafeGetCmpt
    L17_2 = typeof
    L18_2 = CS
    L18_2 = L18_2.UnityEngine
    L18_2 = L18_2.Animation
    L17_2 = L17_2(L18_2)
    L18_2 = L9_2
    L19_2 = "Root/DockNode/EntranceRoad"
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2.animation_entrance_road = L16_2
    L16_2 = A0_2._dock_icon_game_object_list
    L17_2 = A0_2._cur_show_layer
    L16_2 = L16_2[L17_2]
    L16_2[L14_2] = L15_2
    if L7_2 == 1 then
      L16_2 = A0_2._dock_first_icon_game_object_list
      L17_2 = A0_2._cur_show_layer
      L16_2[L17_2] = L9_2
    end
    L16_2 = CS
    L16_2 = L16_2.RPG
    L16_2 = L16_2.Client
    L16_2 = L16_2.AppUtils
    L16_2 = L16_2.IsEditor
    if L16_2 then
      L16_2 = L9_2.gameObject
      L17_2 = L8_2.GridID
      L16_2.name = L17_2
    end
  end
end
L0_1._setup_dock_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyGridItemDataListByType
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GridTypeEnum
  L5_2 = L5_2.Buff
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = {}
  A0_2._alley_map_buff_list = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._alley_map_buff_list = L3_2
  L3_2 = A0_2._buff_icon_image_list
  L4_2 = A0_2._cur_show_layer
  L5_2 = {}
  L3_2[L4_2] = L5_2
  L3_2 = {}
  A0_2._buff_red_dot_list = L3_2
  L3_2 = ipairs
  L4_2 = A0_2._alley_map_buff_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.GridID
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AlleyMapEffectExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L11_2 = A0_2
      L10_2 = A0_2._setup_path_buff_view
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
    end
  end
end
L0_1._setup_buff_view = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._new_icon_game_object
  L5_2 = A1_2
  L6_2 = L38_1.Buff
  L7_2 = true
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = L3_1.SafeGetCmpt
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Button
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L8_2 = ""
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.AppUtils
  L6_2 = L6_2.IsEditor
  if L6_2 then
    L6_2 = L3_2.gameObject
    L7_2 = A1_2.GridID
    L6_2.name = L7_2
  end
  L6_2 = {}
  L7_2 = {}
  L7_2.alley_map_buff_data = A1_2
  L7_2.icon_game_object = L3_2
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = L6_2
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._bind_btn_callback
  L10_2 = L5_2
  L11_2 = A0_2._on_buff_icon_btn_click
  L12_2 = L6_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A0_2._buff_red_dot_list
  L9_2 = A0_2._buff_red_dot_list
  L9_2 = L9_2[A1_2]
  if not L9_2 then
    L9_2 = {}
  end
  L8_2[A1_2] = L9_2
  L8_2 = A0_2._buff_animation_effect_list
  L9_2 = A0_2._buff_animation_effect_list
  L9_2 = L9_2[A1_2]
  if not L9_2 then
    L9_2 = {}
  end
  L8_2[A1_2] = L9_2
  L8_2 = L3_1.SafeFind
  L9_2 = L3_2
  L10_2 = "RedDot/PopUpNewMark"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = A0_2._buff_red_dot_list
  L10_2 = L10_2[A1_2]
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L10_2 = L8_2
  L9_2 = L8_2.SafeSetActive
  L11_2 = L1_1
  L12_2 = L11_2
  L11_2 = L11_2.CheckMapGridIsClicked
  L13_2 = A1_2
  L14_2 = L2_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L11_2 = not L11_2
  L9_2(L10_2, L11_2)
  L9_2 = L3_1.SafeFind
  L10_2 = L3_2
  L11_2 = "RedDot/EventHint"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L3_1.SafeGetCmpt
  L11_2 = typeof
  L12_2 = CS
  L12_2 = L12_2.UnityEngine
  L12_2 = L12_2.Animator
  L11_2 = L11_2(L12_2)
  L12_2 = L3_2
  L13_2 = "RedDot/EventHint"
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = L3_1.SafeGetCmpt
  L12_2 = typeof
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.UI
  L13_2 = L13_2.Text
  L12_2 = L12_2(L13_2)
  L13_2 = L3_2
  L14_2 = "RedDot/EventHint/PopUpTip/Content/Text"
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = L3_1.SafeGetCmpt
  L13_2 = typeof
  L14_2 = CS
  L14_2 = L14_2.UnityEngine
  L14_2 = L14_2.Animation
  L13_2 = L13_2(L14_2)
  L14_2 = L3_2
  L15_2 = ""
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = table
  L13_2 = L13_2.insert
  L14_2 = A0_2._buff_animation_effect_list
  L14_2 = L14_2[A1_2]
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = L3_1.SafeGetCmpt
  L14_2 = typeof
  L15_2 = CS
  L15_2 = L15_2.UnityEngine
  L15_2 = L15_2.UI
  L15_2 = L15_2.Image
  L14_2 = L14_2(L15_2)
  L15_2 = L3_2
  L16_2 = "Root/BuffNode/HalfBuffIcon"
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = L3_1.SafeGetCmpt
  L15_2 = typeof
  L16_2 = CS
  L16_2 = L16_2.UnityEngine
  L16_2 = L16_2.Animator
  L15_2 = L15_2(L16_2)
  L16_2 = L3_2
  L17_2 = "Root"
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L15_2 = {}
  L15_2.alley_map_buff_data = A1_2
  L16_2 = A1_2.GridID
  L15_2.buff_id = L16_2
  L15_2.img_icon = L4_2
  L15_2.animator_root = L14_2
  L15_2.half_buff_icon = L13_2
  L17_2 = A0_2
  L16_2 = A0_2._get_transition_index
  L18_2 = A1_2.PosX
  L19_2 = A1_2.PosY
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L15_2.index_id = L16_2
  L15_2.btn_root = L5_2
  L16_2 = L3_1.SafeGetCmpt
  L17_2 = typeof
  L18_2 = CS
  L18_2 = L18_2.UnityEngine
  L18_2 = L18_2.Animation
  L17_2 = L17_2(L18_2)
  L18_2 = L3_2
  L19_2 = "Root/Effect"
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L15_2.animation_effect_node = L16_2
  L16_2 = table
  L16_2 = L16_2.insert
  L17_2 = A0_2._buff_icon_image_list
  L18_2 = A0_2._cur_show_layer
  L17_2 = L17_2[L18_2]
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
  L16_2 = L1_1
  L17_2 = L16_2
  L16_2 = L16_2.CheckAlleyGridCanPopUpTip
  L18_2 = L2_2
  L19_2 = A1_2.GridID
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  if L16_2 then
    L16_2 = L1_1
    L17_2 = L16_2
    L16_2 = L16_2.CheckMapGridNeedPopUpTip
    L18_2 = A1_2
    L19_2 = L2_2
    L16_2 = L16_2(L17_2, L18_2, L19_2)
    if L16_2 then
      L17_2 = L11_2
      L16_2 = L11_2.SafeSetTextID
      L18_2 = "UIText_ActivityAlley_Airline_RelatedEvent"
      L16_2(L17_2, L18_2)
      L17_2 = L9_2
      L16_2 = L9_2.SafeSetActive
      L18_2 = true
      L16_2(L17_2, L18_2)
      L16_2 = table
      L16_2 = L16_2.insert
      L17_2 = A0_2._buff_event_animator_popup_dot
      L18_2 = A0_2._cur_show_layer
      L17_2 = L17_2[L18_2]
      L18_2 = L10_2
      L16_2(L17_2, L18_2)
    else
      L17_2 = L9_2
      L16_2 = L9_2.SafeSetActive
      L18_2 = false
      L16_2(L17_2, L18_2)
    end
  end
end
L0_1._setup_path_buff_view = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.try_update_buff_event_animator_popup_dot
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_alley_transport_route_state
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AlleyTransportRouteState
  L3_2 = L3_2.Wipe
  if L2_2 ~= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_cur_alley_transport_route_state
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AlleyTransportRouteState
    L3_2 = L3_2.Draw
    if L2_2 ~= L3_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  if A1_2 then
    L2_2 = #A1_2
    if 0 < L2_2 then
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.GetAlleyMapIDByLayer
      L4_2 = A0_2._cur_show_layer
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = #A1_2
      if L3_2 == 1 then
        L3_2 = A1_2[1]
        L3_2 = L3_2.alley_map_buff_data
        L3_2 = L3_2.RegionID
        if L3_2 then
          L3_2 = A1_2[1]
          L3_2 = L3_2.alley_map_buff_data
          L3_2 = L3_2.RegionID
          if L3_2 == 0 then
            L4_2 = A0_2
            L3_2 = A0_2._hide_buff_red_dot_view
            L5_2 = A1_2[1]
            L5_2 = L5_2.alley_map_buff_data
            L6_2 = L2_2
            L3_2(L4_2, L5_2, L6_2)
          end
        end
      end
      L3_2 = {}
      L4_2 = ipairs
      L5_2 = A1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = {}
        L10_2 = L8_2.alley_map_buff_data
        L9_2.alley_map_buff_data = L10_2
        L10_2 = L8_2.alley_map_buff_data
        L10_2 = L10_2.GridID
        L9_2.grid_id = L10_2
        L11_2 = A0_2
        L10_2 = A0_2._get_connect_shop_id_by_buff_data
        L12_2 = L8_2.alley_map_buff_data
        L10_2 = L10_2(L11_2, L12_2)
        L9_2.shop_id = L10_2
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
      L4_2 = G
      L4_2 = L4_2.Utils
      L4_2 = L4_2.is_gamepad_input
      L4_2 = L4_2()
      if L4_2 then
        L4_2 = G
        L4_2 = L4_2.UIManager
        L4_2 = L4_2.load_and_async_show
        L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
        L6_2 = L3_2
        L7_2 = true
        L8_2 = A0_2._virtual_cursor_root
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L4_2 = A1_2[1]
        L4_2 = L4_2.icon_game_object
        L4_2 = L4_2.transform
        L4_2 = L4_2.position
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.GlobalVars
        L5_2 = L5_2.s_UI3DCamera
        L6_2 = L5_2
        L5_2 = L5_2.WorldToScreenPoint
        L7_2 = L4_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = CS
        L6_2 = L6_2.UnityEngine
        L6_2 = L6_2.Vector2
        L7_2 = L5_2.x
        L8_2 = L5_2.y
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = G
        L7_2 = L7_2.UIManager
        L7_2 = L7_2.load_and_async_show
        L8_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
        L9_2 = L3_2
        L10_2 = true
        L11_2 = nil
        L12_2 = L6_2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end
L0_1._on_buff_icon_btn_click = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2.icon_game_object
  L3_2 = A1_2.alley_map_dock_data
  L5_2 = A0_2
  L4_2 = A0_2.try_update_buff_event_animator_popup_dot
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.get_cur_alley_transport_route_state
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AlleyTransportRouteState
  L5_2 = L5_2.Wipe
  if L4_2 ~= L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.get_cur_alley_transport_route_state
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AlleyTransportRouteState
    L5_2 = L5_2.Draw
    if L4_2 ~= L5_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetAlleyMapIDByLayer
  L6_2 = A0_2._cur_show_layer
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetConnectShopIDByDockData
  L7_2 = L4_2
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._check_is_show_dock_popup
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = {}
  L8_2 = {}
  L9_2 = L3_2.GridID
  L8_2.grid_id = L9_2
  L9_2 = L5_2 or L9_2
  if not L6_2 or not L5_2 then
    L9_2 = 0
  end
  L8_2.shop_id = L9_2
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L7_2
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = G
  L9_2 = L9_2.Utils
  L9_2 = L9_2.is_gamepad_input
  L9_2 = L9_2()
  if L9_2 then
    L9_2 = G
    L9_2 = L9_2.UIManager
    L9_2 = L9_2.load_and_async_show
    L10_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
    L11_2 = L7_2
    L12_2 = false
    L13_2 = A0_2._virtual_cursor_root
    L9_2(L10_2, L11_2, L12_2, L13_2)
  else
    L9_2 = L2_2.transform
    L9_2 = L9_2.position
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.GlobalVars
    L10_2 = L10_2.s_UI3DCamera
    L11_2 = L10_2
    L10_2 = L10_2.WorldToScreenPoint
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = CS
    L11_2 = L11_2.UnityEngine
    L11_2 = L11_2.Vector2
    L12_2 = L10_2.x
    L13_2 = L10_2.y
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = G
    L12_2 = L12_2.UIManager
    L12_2 = L12_2.load_and_async_show
    L13_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
    L14_2 = L7_2
    L15_2 = false
    L16_2 = nil
    L17_2 = L11_2
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  end
end
L0_1._on_dock_icon_btn_click = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.try_update_buff_event_animator_popup_dot
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_ActivityAlley_Airline_ShopLockTips"
  L1_2(L2_2, L3_2)
end
L0_1._on_unlock_shop_icon_btn_click = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A1_2.icon_game_object
  L3_2 = A1_2.alley_map_shop_data
  L5_2 = A0_2
  L4_2 = A0_2.try_update_buff_event_animator_popup_dot
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.get_cur_alley_transport_route_state
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AlleyTransportRouteState
  L5_2 = L5_2.Wipe
  if L4_2 ~= L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.get_cur_alley_transport_route_state
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AlleyTransportRouteState
    L5_2 = L5_2.Draw
    if L4_2 ~= L5_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L4_2 = {}
  L5_2 = {}
  L6_2 = L3_2.GridID
  L5_2.grid_id = L6_2
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.is_gamepad_input
  L6_2 = L6_2()
  if L6_2 then
    L6_2 = G
    L6_2 = L6_2.UIManager
    L6_2 = L6_2.load_and_async_show
    L7_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
    L8_2 = L4_2
    L9_2 = false
    L10_2 = A0_2._virtual_cursor_root
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L6_2 = L2_2.transform
    L6_2 = L6_2.position
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_UI3DCamera
    L8_2 = L7_2
    L7_2 = L7_2.WorldToScreenPoint
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Vector2
    L9_2 = L7_2.x
    L10_2 = L7_2.y
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = G
    L9_2 = L9_2.UIManager
    L9_2 = L9_2.load_and_async_show
    L10_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialog"
    L11_2 = L4_2
    L12_2 = false
    L13_2 = nil
    L14_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L0_1._on_shop_icon_btn_click = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = pairs
  L3_2 = A0_2._buff_red_dot_list
  if not L3_2 then
    L3_2 = {}
  end
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2 or L8_2
    if not L6_2 then
      L8_2 = {}
    end
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L13_2 = L11_2
      L12_2 = L11_2.SafeSetActive
      L14_2 = false
      L12_2(L13_2, L14_2)
      L12_2 = L1_1
      L13_2 = L12_2
      L12_2 = L12_2.SetMapGridClickedState
      L14_2 = L5_2
      L15_2 = A1_2
      L12_2(L13_2, L14_2, L15_2)
    end
  end
end
L0_1._clear_buff_red_dot_view = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = pairs
  L4_2 = A0_2._buff_red_dot_list
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = false
    L8_2(L9_2, L10_2)
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.SetMapGridClickedState
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._hide_buff_red_dot_view = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = A0_2._icon_game_object_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L12_2 = A0_2
      L11_2 = A0_2.destroy_object
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
  L1_2 = {}
  A0_2._icon_game_object_set = L1_2
end
L0_1._release_game_object_pool = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._prefab_load_meta
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._map_icon_container_list
  L6_2 = A0_2._cur_show_layer
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = 1
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.sizeDelta = L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AppUtils
  L3_2 = L3_2.IsEditor
  if L3_2 then
    L3_2 = L2_2.gameObject
    L4_2 = A1_2.GridID
    L3_2.name = L4_2
  end
  L3_2 = L3_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Animator
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = "Root"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = L3_1.SafeFind
  L5_2 = L2_2
  L6_2 = "Root/BuffNode"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = L3_1.SafeFind
  L6_2 = L2_2
  L7_2 = "Root/Outline"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = L3_1.SafeFind
  L7_2 = L2_2
  L8_2 = "Root/Effect"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.SafeSetActive
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = L3_1.SafeFind
  L8_2 = L2_2
  L9_2 = "Root/DockNode"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.SafeSetActive
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = L3_1.SafeGetCmpt
  L9_2 = typeof
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.UI
  L10_2 = L10_2.GraphicCast
  L9_2 = L9_2(L10_2)
  L10_2 = L2_2
  L11_2 = ""
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L8_2.enabled = false
  L9_2 = A1_2.PosX
  L10_2 = L6_1
  L9_2 = L9_2 + L10_2
  L10_2 = L8_1
  L9_2 = L9_2 - L10_2
  L10_2 = A1_2.PosY
  L11_2 = L7_1
  L10_2 = L10_2 + L11_2
  L11_2 = L9_1
  L10_2 = L10_2 - L11_2
  L11_2 = L2_2.transform
  L12_2 = CS
  L12_2 = L12_2.UnityEngine
  L12_2 = L12_2.Vector3
  L13_2 = L9_2
  L14_2 = L10_2
  L15_2 = 0
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2.localPosition = L12_2
  L12_2 = A0_2
  L11_2 = A0_2._get_map_grid_transition_index
  L13_2 = A1_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = CS
  L12_2 = L12_2.RPG
  L12_2 = L12_2.Client
  L12_2 = L12_2.GlobalVars
  L12_2 = L12_2.s_ModuleManager
  L12_2 = L12_2.TutorialSupportModule
  L13_2 = L12_2
  L12_2 = L12_2.SetNodeDynamicKey
  L14_2 = L2_2.gameObject
  L15_2 = L11_2
  L12_2(L13_2, L14_2, L15_2)
  return L2_2
end
L0_1._new_tutorial_icon_game_object = L39_1
function L39_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = A0_2
  L4_2 = A0_2.instantiate_object
  L6_2 = A0_2._prefab_load_meta
  L6_2 = L6_2.Prefab
  L7_2 = A0_2._map_icon_container_list
  L8_2 = A0_2._cur_show_layer
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.transform
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2.transform
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector2
  L7_2 = 1
  L8_2 = 1
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.sizeDelta = L6_2
  L5_2 = L3_1.SafeGetCmpt
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Button
  L6_2 = L6_2(L7_2)
  L7_2 = L4_2
  L8_2 = ""
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L5_2.IsForbidButtonCheck = false
  if A3_2 then
    L5_2.enabled = true
  else
    L5_2.enabled = false
  end
  L7_2 = A0_2
  L6_2 = A0_2._get_map_grid_transition_index
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.TutorialSupportModule
  L8_2 = L7_2
  L7_2 = L7_2.SetNodeDynamicKey
  L9_2 = L4_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A1_2.PosX
  L8_2 = L6_1
  L7_2 = L7_2 + L8_2
  L8_2 = L8_1
  L7_2 = L7_2 - L8_2
  L8_2 = A1_2.PosY
  L9_2 = L7_1
  L8_2 = L8_2 + L9_2
  L9_2 = L9_1
  L8_2 = L8_2 - L9_2
  L9_2 = L4_2.transform
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector3
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.localPosition = L10_2
  L9_2 = L3_1.SafeFind
  L10_2 = L4_2
  L11_2 = "Root/BuffNode"
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L3_1.SafeFind
  L11_2 = L4_2
  L12_2 = "Root/ShopNode"
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L3_1.SafeFind
  L12_2 = L4_2
  L13_2 = "Root/DockNode"
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L3_1.SafeFind
  L13_2 = L4_2
  L14_2 = "Root/EventNode"
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = nil
  L14_2 = nil
  L15_2 = L38_1.Buff
  if A2_2 == L15_2 then
    L16_2 = L11_2
    L15_2 = L11_2.SafeSetActive
    L17_2 = false
    L15_2(L16_2, L17_2)
    L16_2 = L10_2
    L15_2 = L10_2.SafeSetActive
    L17_2 = false
    L15_2(L16_2, L17_2)
    L15_2 = CS
    L15_2 = L15_2.RPG
    L15_2 = L15_2.GameCore
    L15_2 = L15_2.AlleyMapEffectExcelTable
    L15_2 = L15_2.GetData
    L16_2 = A1_2.GridID
    L15_2 = L15_2(L16_2)
    L14_2 = L15_2
    L15_2 = L14_2.BuffOrDebuff
    L16_2 = CS
    L16_2 = L16_2.RPG
    L16_2 = L16_2.GameCore
    L16_2 = L16_2.BuffType
    L16_2 = L16_2.Neutral
    if L15_2 == L16_2 then
      L16_2 = L12_2
      L15_2 = L12_2.SafeSetActive
      L17_2 = true
      L15_2(L16_2, L17_2)
      L16_2 = L9_2
      L15_2 = L9_2.SafeSetActive
      L17_2 = false
      L15_2(L16_2, L17_2)
      L15_2 = L3_1.SafeGetCmpt
      L16_2 = typeof
      L17_2 = CS
      L17_2 = L17_2.UnityEngine
      L17_2 = L17_2.UI
      L17_2 = L17_2.Image
      L16_2 = L16_2(L17_2)
      L17_2 = L4_2
      L18_2 = "Root/EventNode/EventIcon"
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L13_2 = L15_2
    else
      L16_2 = L12_2
      L15_2 = L12_2.SafeSetActive
      L17_2 = false
      L15_2(L16_2, L17_2)
      L16_2 = L9_2
      L15_2 = L9_2.SafeSetActive
      L17_2 = true
      L15_2(L16_2, L17_2)
      L15_2 = L3_1.SafeGetCmpt
      L16_2 = typeof
      L17_2 = CS
      L17_2 = L17_2.UnityEngine
      L17_2 = L17_2.UI
      L17_2 = L17_2.Image
      L16_2 = L16_2(L17_2)
      L17_2 = L4_2
      L18_2 = "Root/BuffNode/BuffIcon"
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L13_2 = L15_2
    end
  else
    L15_2 = L38_1.Shop
    if A2_2 == L15_2 then
      L16_2 = L11_2
      L15_2 = L11_2.SafeSetActive
      L17_2 = false
      L15_2(L16_2, L17_2)
      L16_2 = L9_2
      L15_2 = L9_2.SafeSetActive
      L17_2 = false
      L15_2(L16_2, L17_2)
      L16_2 = L10_2
      L15_2 = L10_2.SafeSetActive
      L17_2 = true
      L15_2(L16_2, L17_2)
      L15_2 = L3_1.SafeGetCmpt
      L16_2 = typeof
      L17_2 = CS
      L17_2 = L17_2.UnityEngine
      L17_2 = L17_2.UI
      L17_2 = L17_2.Image
      L16_2 = L16_2(L17_2)
      L17_2 = L4_2
      L18_2 = "Root/ShopNode/ShopIcon"
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L13_2 = L15_2
    else
      L15_2 = L38_1.Dock
      if A2_2 == L15_2 then
        L16_2 = L9_2
        L15_2 = L9_2.SafeSetActive
        L17_2 = false
        L15_2(L16_2, L17_2)
        L16_2 = L10_2
        L15_2 = L10_2.SafeSetActive
        L17_2 = false
        L15_2(L16_2, L17_2)
        L16_2 = L11_2
        L15_2 = L11_2.SafeSetActive
        L17_2 = true
        L15_2(L16_2, L17_2)
        L15_2 = L3_1.SafeGetCmpt
        L16_2 = typeof
        L17_2 = CS
        L17_2 = L17_2.UnityEngine
        L17_2 = L17_2.UI
        L17_2 = L17_2.Image
        L16_2 = L16_2(L17_2)
        L17_2 = L4_2
        L18_2 = "Root/DockNode/ShopIcon"
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        L13_2 = L15_2
      end
    end
  end
  L15_2 = CS
  L15_2 = L15_2.RPG
  L15_2 = L15_2.GameCore
  L15_2 = L15_2.AlleyGridExcelTable
  L15_2 = L15_2.GetData
  L16_2 = A1_2.GridID
  L15_2 = L15_2(L16_2)
  L16_2 = L38_1.Shop
  if A2_2 == L16_2 then
    L17_2 = A0_2
    L16_2 = A0_2.load_sprite_to
    L18_2 = L13_2
    L19_2 = L15_2.GridIcon
    L16_2(L17_2, L18_2, L19_2)
  else
    L16_2 = L38_1.Buff
    if A2_2 == L16_2 then
      L16_2 = L14_2.BuffOrDebuff
      L17_2 = CS
      L17_2 = L17_2.RPG
      L17_2 = L17_2.GameCore
      L17_2 = L17_2.BuffType
      L17_2 = L17_2.Neutral
      if L16_2 ~= L17_2 then
        L17_2 = A0_2
        L16_2 = A0_2.load_sprite_to
        L18_2 = L13_2
        L19_2 = L15_2.GridIcon
        L16_2(L17_2, L18_2, L19_2)
      end
    end
  end
  L16_2 = A0_2._icon_game_object_list
  L17_2 = A0_2._cur_show_layer
  L18_2 = A0_2._icon_game_object_list
  L19_2 = A0_2._cur_show_layer
  L18_2 = L18_2[L19_2]
  if not L18_2 then
    L18_2 = {}
  end
  L16_2[L17_2] = L18_2
  L16_2 = table
  L16_2 = L16_2.insert
  L17_2 = A0_2._icon_game_object_list
  L18_2 = A0_2._cur_show_layer
  L17_2 = L17_2[L18_2]
  L18_2 = L4_2
  L16_2(L17_2, L18_2)
  L16_2 = A0_2._icon_game_object_set
  L17_2 = A0_2._cur_show_layer
  L18_2 = A0_2._icon_game_object_set
  L19_2 = A0_2._cur_show_layer
  L18_2 = L18_2[L19_2]
  if not L18_2 then
    L18_2 = {}
  end
  L16_2[L17_2] = L18_2
  L17_2 = A0_2
  L16_2 = A0_2._get_transition_index
  L18_2 = A1_2.PosX
  L19_2 = A1_2.PosY
  L16_2 = L16_2(L17_2, L18_2, L19_2)
  L17_2 = A0_2._icon_game_object_set
  L18_2 = A0_2._cur_show_layer
  L17_2 = L17_2[L18_2]
  L17_2[L16_2] = true
  L17_2 = L4_2
  L18_2 = L13_2
  return L17_2, L18_2
end
L0_1._new_icon_game_object = L39_1
function L39_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L6_2 = A0_2
  L5_2 = A0_2.instantiate_object
  L7_2 = A0_2._prefab_load_meta
  L7_2 = L7_2.Prefab
  L8_2 = A0_2._map_icon_container_list
  L9_2 = A0_2._cur_show_layer
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.transform
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2.transform
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector2
  L8_2 = 1
  L9_2 = 1
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.sizeDelta = L7_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.AppUtils
  L6_2 = L6_2.IsEditor
  if L6_2 then
    L6_2 = L5_2.gameObject
    L7_2 = tostring
    L8_2 = A3_2
    L7_2 = L7_2(L8_2)
    L8_2 = "_end_point"
    L7_2 = L7_2 .. L8_2
    L6_2.name = L7_2
  end
  L6_2 = L3_1.SafeGetCmpt
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Animator
  L7_2 = L7_2(L8_2)
  L8_2 = L5_2
  L9_2 = "Root"
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.SafeSetActive
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = G
  L7_2 = L7_2.AlleyTransport
  L7_2 = L7_2.get_trigger_name_by_shop_id
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  L9_2 = L6_2
  L8_2 = L6_2.SetTrigger
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L3_1.SafeFind
  L9_2 = L5_2
  L10_2 = "Root/BuffNode"
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L8_2
  L9_2 = L8_2.SafeSetActive
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = L3_1.SafeFind
  L10_2 = L5_2
  L11_2 = "Root/Outline"
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L9_2
  L10_2 = L9_2.SafeSetActive
  L12_2 = false
  L10_2(L11_2, L12_2)
  L10_2 = L3_1.SafeFind
  L11_2 = L5_2
  L12_2 = "Root/Effect"
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = L10_2
  L11_2 = L10_2.SafeSetActive
  L13_2 = false
  L11_2(L12_2, L13_2)
  L11_2 = L3_1.SafeFind
  L12_2 = L5_2
  L13_2 = "Root/DockNode"
  L11_2 = L11_2(L12_2, L13_2)
  L13_2 = L11_2
  L12_2 = L11_2.SafeSetActive
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = L3_1.SafeFind
  L13_2 = L5_2
  L14_2 = "Root/Warning"
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = L3_1.SafeGetCmpt
  L14_2 = typeof
  L15_2 = CS
  L15_2 = L15_2.UnityEngine
  L15_2 = L15_2.Animation
  L14_2 = L14_2(L15_2)
  L15_2 = L5_2
  L16_2 = "Root/Effect"
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  if A4_2 then
    L15_2 = L13_2
    L14_2 = L13_2.SafeSetActive
    L16_2 = false
    L14_2(L15_2, L16_2)
  else
    L15_2 = L13_2
    L14_2 = L13_2.SafeSetActive
    L16_2 = true
    L14_2(L15_2, L16_2)
    L14_2 = CS
    L14_2 = L14_2.RPG
    L14_2 = L14_2.Client
    L14_2 = L14_2.UIAnimationUtils
    L14_2 = L14_2.PlayFromBegin
    L15_2 = L13_2
    L16_2 = "MapBtn_Effect_Remind_Loop"
    L14_2(L15_2, L16_2)
  end
  L14_2 = L3_1.SafeGetCmpt
  L15_2 = typeof
  L16_2 = CS
  L16_2 = L16_2.UnityEngine
  L16_2 = L16_2.UI
  L16_2 = L16_2.GraphicCast
  L15_2 = L15_2(L16_2)
  L16_2 = L5_2
  L17_2 = ""
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L14_2.enabled = false
  L15_2 = L6_1
  L15_2 = A1_2 + L15_2
  L16_2 = L8_1
  L15_2 = L15_2 - L16_2
  L16_2 = L7_1
  L16_2 = A2_2 + L16_2
  L17_2 = L9_1
  L16_2 = L16_2 - L17_2
  L17_2 = L5_2.transform
  L18_2 = CS
  L18_2 = L18_2.UnityEngine
  L18_2 = L18_2.Vector3
  L19_2 = L15_2
  L20_2 = L16_2
  L21_2 = 0
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L17_2.localPosition = L18_2
  L17_2 = CS
  L17_2 = L17_2.RPG
  L17_2 = L17_2.Client
  L17_2 = L17_2.GlobalVars
  L17_2 = L17_2.s_ModuleManager
  L17_2 = L17_2.TutorialSupportModule
  L18_2 = L17_2
  L17_2 = L17_2.SetNodeDynamicKey
  L19_2 = L5_2.gameObject
  L20_2 = A3_2
  L17_2(L18_2, L19_2, L20_2)
  L17_2 = {}
  L17_2.node_root = L6_2
  L17_2.node_warning = L12_2
  L17_2.icon_game_object = L5_2
  L17_2.animation_effect_node = L13_2
  L18_2 = A0_2._draw_line_end_point_game_object_list
  L18_2[A3_2] = L17_2
end
L0_1._new_draw_line_end_point_icon_game_object = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._prefab_load_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._map_icon_container_list
  L5_2 = A0_2._cur_show_layer
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = 1
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.sizeDelta = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AppUtils
  L2_2 = L2_2.IsEditor
  if L2_2 then
    L2_2 = L1_2.gameObject
    L3_2 = tostring
    L4_2 = A0_2._cur_show_layer
    L3_2 = L3_2(L4_2)
    L4_2 = "_end_point"
    L3_2 = L3_2 .. L4_2
    L2_2.name = L3_2
  end
  L2_2 = L3_1.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = "Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L3_1.SafeFind
  L4_2 = L1_2
  L5_2 = "Root/BuffNode"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = L3_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Animation
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2
  L7_2 = "RedDot/EnergyHint"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.is_pc_mode
  L5_2 = L5_2()
  if L5_2 == false then
    L5_2 = L3_1.SafeFind
    L6_2 = L1_2
    L7_2 = "RedDot"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L1_2.transform
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector3
    L8_2 = L5_1
    L9_2 = L5_1
    L10_2 = 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.localScale = L7_2
    L6_2 = L5_2.transform
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector3
    L8_2 = L5_2.transform
    L8_2 = L8_2.localPosition
    L8_2 = L8_2.x
    L9_2 = L4_1
    L10_2 = 0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.localPosition = L7_2
  end
  L5_2 = L3_1.SafeFind
  L6_2 = L1_2
  L7_2 = "Root/Outline"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = L3_1.SafeFind
  L7_2 = L1_2
  L8_2 = "Root/Effect"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.SafeSetActive
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = L3_1.SafeFind
  L8_2 = L1_2
  L9_2 = "Root/DockNode"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.SafeSetActive
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = L3_1.SafeGetCmpt
  L9_2 = typeof
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Animation
  L9_2 = L9_2(L10_2)
  L10_2 = L1_2
  L11_2 = "Root/Effect"
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L10_2 = L8_2
  L9_2 = L8_2.SafeSetActive
  L11_2 = false
  L9_2(L10_2, L11_2)
  L9_2 = L3_1.SafeGetCmpt
  L10_2 = typeof
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.UI
  L11_2 = L11_2.GraphicCast
  L10_2 = L10_2(L11_2)
  L11_2 = L1_2
  L12_2 = ""
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L9_2.enabled = false
  L10_2 = {}
  L10_2.icon_game_object = L1_2
  L10_2.animation_energy_hint = L4_2
  L11_2 = L3_1.SafeGetCmpt
  L12_2 = typeof
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.UI
  L13_2 = L13_2.Text
  L12_2 = L12_2(L13_2)
  L13_2 = L1_2
  L14_2 = "RedDot/EnergyHint/Content/NumText"
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.text_energy = L11_2
  L11_2 = L3_1.SafeGetCmpt
  L12_2 = typeof
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.UI
  L13_2 = L13_2.Image
  L12_2 = L12_2(L13_2)
  L13_2 = L1_2
  L14_2 = "RedDot/EnergyHint/Content/ProgressBar/Fill"
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.image_energy = L11_2
  L11_2 = L3_1.SafeGetCmpt
  L12_2 = typeof
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.Animator
  L12_2 = L12_2(L13_2)
  L13_2 = L1_2
  L14_2 = "RedDot/EnergyHint/Content"
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.animator_energy = L11_2
  return L10_2
end
L0_1._new_energy_hint_game_object = L39_1
function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._clear_buff_red_dot_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._release_game_object_pool
  L2_2(L3_2)
  A0_2._alley_transport_handler = nil
  L2_2 = {}
  A0_2._energy_hint_game_object_list = L2_2
  L2_2 = A0_2._draw_finish_toast
  if L2_2 then
    L2_2 = A0_2._draw_finish_toast
    L3_2 = L2_2
    L2_2 = L2_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_dispose = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAllShopListByMapID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.cs_list_to_table
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = ipairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.GridID
    L12_2 = L1_1
    L13_2 = L12_2
    L12_2 = L12_2.IsAlleyShopUnlock
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L12_2 = CS
      L12_2 = L12_2.UnityEngine
      L12_2 = L12_2.Vector2Int
      L12_2 = L12_2.zero
      if A1_2 then
        L13_2 = L1_1
        L14_2 = L13_2
        L13_2 = L13_2.GetDrawLineEndPointPosition
        L15_2 = L2_2
        L16_2 = L11_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L12_2 = L13_2
      else
        L13_2 = L1_1
        L14_2 = L13_2
        L13_2 = L13_2.GetDrawLineEndPointPositionExcludeZero
        L15_2 = L2_2
        L16_2 = L11_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L12_2 = L13_2
      end
      L13_2 = CS
      L13_2 = L13_2.UnityEngine
      L13_2 = L13_2.Vector2Int
      L13_2 = L13_2.zero
      if L12_2 ~= L13_2 then
        L13_2 = {}
        L13_2.coords = L12_2
        L13_2.shopID = L11_2
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L5_2
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  return L5_2
end
L0_1._get_process_end_point_info_list = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByLayer
  L4_2 = A0_2._cur_show_layer
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAlleyGridItemDataListByType
  L5_2 = L2_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GridTypeEnum
  L6_2 = L6_2.Shop
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.cs_list_to_table
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = A0_2
    L10_2 = A0_2.get_line_buff_grid_item_data_list
    L12_2 = A0_2._cur_show_layer
    L13_2 = L9_2.GridID
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = pairs
    L12_2 = L10_2
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    for L14_2, L15_2 in L11_2, L12_2, L13_2 do
      L16_2 = A1_2.PosX
      L17_2 = L15_2.PosX
      if L16_2 == L17_2 then
        L16_2 = A1_2.PosY
        L17_2 = L15_2.PosY
        if L16_2 == L17_2 then
          L16_2 = L9_2.GridID
          return L16_2
        end
      end
    end
  end
  L5_2 = nil
  return L5_2
end
L0_1._get_connect_shop_id_by_buff_data = L39_1
function L39_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  return L2_2
end
L0_1._check_is_show_dock_popup = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_alley_transport_route_state
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AlleyTransportRouteState
  L3_2 = L3_2.Draw
  if L2_2 == L3_2 then
    L2_2 = A1_2.animation_effect_node
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A1_2.animation_effect_node
    L4_2 = "MapBtn_Effect_Remind"
    L2_2(L3_2, L4_2)
    L2_2 = L2_1.NowTimeStamp
    L3_2 = A0_2._last_buff_toast_time
    L3_2 = L2_2 - L3_2
    L4_2 = L10_1
    if L3_2 > L4_2 then
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessageTextID
      L5_2 = "UIText_ActivityAlley_Airline_BuffToast"
      L3_2(L4_2, L5_2)
      A0_2._last_buff_toast_time = L2_2
    end
  end
end
L0_1._try_show_buff_toast = L39_1
function L39_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._draw_finish_toast
  if L1_2 then
    L1_2 = A0_2._draw_finish_toast
    L2_2 = L1_2
    L1_2 = L1_2.exit
    L1_2(L2_2)
    A0_2._draw_finish_toast = nil
  end
end
L0_1.try_close_finish_toast = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._draw_finish_toast
  if L2_2 then
    L2_2 = A0_2._draw_finish_toast_shop_id
    if L2_2 ~= A1_2 then
      L2_2 = A0_2._draw_finish_toast
      L3_2 = L2_2
      L2_2 = L2_2.exit
      L2_2(L3_2)
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_show
      L3_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportWayFinishToast"
      L4_2 = A0_2._cur_show_layer
      L5_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._draw_finish_toast = L2_2
      A0_2._draw_finish_toast_shop_id = A1_2
    else
      L2_2 = A0_2._draw_finish_toast
      L3_2 = L2_2
      L2_2 = L2_2.try_show
      L4_2 = A0_2._cur_show_layer
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportWayFinishToast"
    L4_2 = A0_2._cur_show_layer
    L5_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._draw_finish_toast = L2_2
    A0_2._draw_finish_toast_shop_id = A1_2
  end
end
L0_1._try_show_draw_finish_toast = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2 * 100
  L3_2 = L3_2 + A2_2
  return L3_2
end
L0_1._get_transition_index = L39_1
function L39_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 * 100
  L3_2 = L3_2 + A2_2
  L4_2 = A0_2._cur_show_layer
  L3_2 = L3_2 + L4_2
  return L3_2
end
L0_1._get_transition_with_layer_index = L39_1
function L39_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.PosX
  L2_2 = L2_2 * 100
  L3_2 = A1_2.PosY
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._cur_show_layer
  L2_2 = L2_2 + L3_2
  return L2_2
end
L0_1._get_map_grid_transition_index = L39_1
return L0_1
