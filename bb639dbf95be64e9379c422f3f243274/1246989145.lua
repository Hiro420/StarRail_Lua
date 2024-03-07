local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBaseIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapBaseIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = 1
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_btn_click_call_back = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._icon_game_object_list
  return L1_2
end
L0_1.get_icon_game_object_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._icon_game_object_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.destroy_object
    L8_2 = L5_2.icon_game_object
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
end
L0_1.release_game_object_pool = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_icon
  L4_2 = L4_2.transform
  L4_2.localScale = A1_2
  L4_2 = pairs
  L5_2 = A0_2._icon_game_object_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._map_icon_data
    if L9_2 then
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.MiniMapIconExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2.map_icon_data
      L10_2 = L10_2.MapIconType
      L9_2 = L9_2(L10_2)
    end
    if L9_2 then
      L10_2 = L9_2.IsFollowMapScale
      if L10_2 and A3_2 then
        L10_2 = L8_2.icon_game_object
        L10_2 = L10_2.transform
        L11_2 = A2_2 * A3_2
        L10_2.localScale = L11_2
    end
    else
      L10_2 = L8_2.icon_game_object
      L10_2 = L10_2.transform
      L10_2.localScale = A2_2
    end
  end
end
L0_1.setup_icon_scale = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_icon_visible
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_icon_visible_by_layer
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MiniMapIconExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._map_icon_data
  L2_2 = L2_2.MapIconType
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.StrExt
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = L1_2.IconPath
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_29
    end
  end
  do return end
  ::lbl_29::
  L3_2 = A0_2
  L2_2 = A0_2._new_icon_game_object
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon_img
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon_layer
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon_click
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_mapping_trace_tip_effect
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._create_icon_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mapping_info_prefab_load_meta
  L2_2 = A0_2._show_type
  L3_2 = MapIconShowType
  L3_2 = L3_2.Teleport
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L1_2 = L2_2.teleport_prefab_load_meta
  else
    L2_2 = A0_2._show_type
    L3_2 = MapIconShowType
    L3_2 = L3_2.Mission
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L1_2 = L2_2.mission_prefab_load_meta
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = L1_2.Prefab
  L5_2 = L1_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._show_type
  L4_2 = MapIconShowType
  L4_2 = L4_2.Teleport
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.TutorialSupportModule
    L4_2 = L3_2
    L3_2 = L3_2.SetNodeDynamicKey
    L5_2 = L2_2
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.InstanceId
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = {}
  L3_2.icon_game_object = L2_2
  L4_2 = A0_2._map_icon_data
  L3_2.map_icon_data = L4_2
  L4_2 = A0_2._show_type
  L3_2.show_type = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._is_icon_can_click
  L4_2 = L4_2(L5_2)
  L3_2.is_can_click = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._icon_game_object_list
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._new_icon_game_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Transform
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L6_2 = "Button/MissionLoopHint_Map"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._show_type
  L5_2 = MapIconShowType
  L5_2 = L5_2.Mission
  if L4_2 == L5_2 then
    L5_2 = L3_2
    L4_2 = L3_2.SafeSetActive
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.BigMapUtils
    L6_2 = L6_2.IsTraceSubMission
    L7_2 = A0_2._map_icon_data
    L7_2 = L7_2.SubMissionData
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L5_2 = L3_2
    L4_2 = L3_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MiniMapIconExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._map_icon_data
  L5_2 = L5_2.MapIconType
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.StrExt
  L5_2 = L5_2.IsNullOrEmpty
  L6_2 = L4_2.IconPath
  L5_2 = L5_2(L6_2)
  if L5_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = L2_2
  L8_2 = L4_2.IconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._map_icon_data
  L5_2 = L5_2.MapIconColor
  L2_2.color = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.SetNativeSize
  L5_2(L6_2)
  L5_2 = A0_2._map_icon_data
  if L5_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MiniMapIconExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.MapIconType
    L5_2 = L5_2(L6_2)
  end
  if L5_2 then
    L6_2 = L5_2.IsFollowPropScale
    if L6_2 then
      L6_2 = A0_2._map_icon_data
      L6_2 = L6_2.MapPropDef
      L6_2 = L6_2.Scale
      L6_2 = L6_2.x
      L2_1 = L6_2
      L6_2 = A1_2.transform
      L6_2 = L6_2.sizeDelta
      L6_2 = L6_2.x
      L7_2 = L2_1
      L6_2 = L6_2 * L7_2
      L7_2 = A1_2.transform
      L7_2 = L7_2.sizeDelta
      L7_2 = L7_2.y
      L8_2 = A1_2.transform
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector2
      L10_2 = L6_2
      L11_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.sizeDelta = L9_2
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.get_blackboard
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.query
  L8_2 = "BackgroundSize"
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = A0_2._big_map_data
    L6_2 = L6_2.BackgroundSize
  end
  L7_2 = G
  L7_2 = L7_2.MapUtil
  L7_2 = L7_2.get_icon_local_position
  L8_2 = A0_2._big_map_data
  L9_2 = A0_2._map_icon_data
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = A1_2.transform
  L8_2.localPosition = L7_2
  L8_2 = A0_2._show_type
  L9_2 = MapIconShowType
  L9_2 = L9_2.MappingInfo
  if L8_2 == L9_2 then
    L8_2 = A0_2._map_icon_data
    L8_2 = L8_2.MapPropDef
    if L8_2 ~= nil then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.MiniMapIconExcelTable
      L8_2 = L8_2.GetData
      L9_2 = A0_2._map_icon_data
      L9_2 = L9_2.MapIconType
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = L8_2.IconOrientetionSwitch
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.MiniMapIconOrientationType
        L10_2 = L10_2.Static
        if L9_2 ~= L10_2 then
          L9_2 = A1_2.transform
          L10_2 = CS
          L10_2 = L10_2.RPG
          L10_2 = L10_2.Client
          L10_2 = L10_2.BigMapUtils
          L10_2 = L10_2.GetMapIconRotation
          L11_2 = A0_2._map_icon_data
          L11_2 = L11_2.MapRotation
          L10_2 = L10_2(L11_2)
          L9_2.rotation = L10_2
        end
      end
    end
  end
end
L0_1._setup_icon_img = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L1_1.SafeFind
  L3_2 = A1_2
  L4_2 = "Floor"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1.SafeFind
  L4_2 = A1_2
  L5_2 = "Floor/Up"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1.SafeFind
  L5_2 = A1_2
  L6_2 = "Floor/Down"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._big_map_data
  L5_2 = L5_2.CurMapLayerCount
  if 1 < L5_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.MiniMapIconExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.MapIconType
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2._map_icon_data
    L6_2 = L6_2.MapLayer
    L7_2 = L5_2.IsShowCornerArrow
    if L7_2 then
      L8_2 = L2_2
      L7_2 = L2_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L8_2 = L4_2
      L7_2 = L4_2.SafeSetActive
      L9_2 = A0_2._show_layer
      L9_2 = L6_2 < L9_2
      L7_2(L8_2, L9_2)
      L8_2 = L3_2
      L7_2 = L3_2.SafeSetActive
      L9_2 = A0_2._show_layer
      L9_2 = L6_2 > L9_2
      L7_2(L8_2, L9_2)
      L7_2 = L2_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Quaternion
      L8_2 = L8_2.Euler
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2.rotation = L8_2
    else
      L8_2 = L2_2
      L7_2 = L2_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._setup_icon_layer = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.GraphicCast
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L6_2 = "Button"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._is_icon_can_click
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L2_2.enabled = true
    L3_2.enabled = true
    L5_2 = {}
    L5_2.icon_game_object = A1_2
    L6_2 = A0_2._map_icon_data
    L5_2.map_icon_data = L6_2
    L6_2 = A0_2._show_type
    L5_2.show_type = L6_2
    L7_2 = A0_2
    L6_2 = A0_2._bind_btn_callback
    L8_2 = L2_2
    L9_2 = A0_2._on_icon_btn_click
    L10_2 = L5_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L2_2.enabled = false
    L3_2.enabled = false
  end
end
L0_1._setup_icon_click = L3_1
function L3_1(A0_2, A1_2)
end
L0_1._setup_mapping_trace_tip_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback_func
  if L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A0_2._callback_obj
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_icon_btn_click = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_icon_visible = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._big_map_data
  L1_2 = L1_2.CurMapLayerCount
  if 1 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.MiniMapIconExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._map_icon_data
    L2_2 = L2_2.MapIconType
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = L1_2.IsCrossLayer
      if not L2_2 then
        L2_2 = A0_2._map_icon_data
        L2_2 = L2_2.MapLayer
        L3_2 = A0_2._show_layer
        if L2_2 ~= L3_2 then
          L2_2 = false
          return L2_2
        end
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_icon_visible_by_layer = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_icon_can_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.release_game_object_pool
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
return L0_1
