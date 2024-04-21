local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherUI3D.UI3DAetherSpiritPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Config/Manikin/AetherSpirit/Manikin_Aether_Spirit_Area_Config.json"
L2_1 = "Config/Manikin/AetherSpirit/Manikin_Aether_Spirit_Positions_Config.json"
L3_1 = {}
L3_1.OverAll = 1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "ManikinArea/AetherSpirit/Manikin_Area_Aether_Spirit.prefab"
  L1_2 = {}
  A0_2._camera_anchors = L1_2
  L1_2 = {}
  A0_2._spirit_anchors = L1_2
  L1_2 = {}
  A0_2._look_anchors = L1_2
  L1_2 = {}
  A0_2._cameras = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigLoader
  L1_2 = L1_2.LoadManikinAreaConfig
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  A0_2._area_config = L1_2
  L1_2 = A0_2.config
  L2_2 = A0_2._area_config
  L2_2 = L2_2.EnviroProfile
  L1_2.environment_profile_path = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigLoader
  L1_2 = L1_2.LoadManikinMonsterPositionsConfig
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  A0_2._spirit_body_size_json_config = L1_2
  L1_2 = {}
  L2_2 = A0_2._spirit_body_size_json_config
  L2_2 = L2_2.Common
  L1_2[0] = L2_2
  L2_2 = A0_2._spirit_body_size_json_config
  L2_2 = L2_2.ShortCommon
  L1_2[1] = L2_2
  L2_2 = A0_2._spirit_body_size_json_config
  L2_2 = L2_2.FloatingCommon
  L1_2[2] = L2_2
  L2_2 = A0_2._spirit_body_size_json_config
  L2_2 = L2_2.FloatingSphere
  L1_2[3] = L2_2
  L2_2 = A0_2._spirit_body_size_json_config
  L2_2 = L2_2.Sphere
  L1_2[4] = L2_2
  A0_2._body_type_position = L1_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._anim_root
  if L3_2 == nil then
    return
  end
  L3_2 = A0_2._anim_root
  L4_2 = L3_2
  L3_2 = L3_2.SetBool
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.trigger_anim_param = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._anim_root
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._anim_root
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_anim_trigger = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_detail_camera_setting
  L1_2(L2_2)
end
L0_1.reset_camera = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_spirit
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cur_spirit
  L3_2 = L2_2
  L2_2 = L2_2.rotate_spirit
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.rotate_spirit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_spirit
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_spirit
  L2_2 = L1_2
  L1_2 = L1_2.reset_rotate
  L1_2(L2_2)
end
L0_1.reset_rotate = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DAetherSpiritPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._spirit_panel = L1_2
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
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_spirit_anchors
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._cur_spirit = nil
  A0_2._spirit_data = nil
  L2_2 = A0_2
  L1_2 = A0_2.dispose_spirit
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Root/VirtualCamera/MonsterDetailFreeLookVC"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkyBoxContainer/UI3D_DataBank_LargeMonsterMask"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_floor = L1_2
end
L0_1._init_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = 0
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._area_config
  L2_2 = L2_2.MainLightDirOffsetX
  L1_2.x = L2_2
  L2_2 = A0_2._area_config
  L2_2 = L2_2.MainLightDirOffsetY
  L1_2.y = L2_2
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_main_light_dir_offset
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cameras
  L3_2 = L3_1.OverAll
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.UI3DCamera
  L7_2 = "Root/VirtualCamera/MonsterDetailFreeLookVC"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.add_camera_state
  L4_2 = A0_2._cameras
  L5_2 = L3_1.OverAll
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.enable_main_light_dir_change
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._init_camera = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_spirit
  L2_2 = L1_2
  L1_2 = L1_2.get_transform
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_spirit
  L3_2 = L2_2
  L2_2 = L2_2.get_body_size
  L2_2 = L2_2(L3_2)
  if L1_2 == nil or L2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.UI3DCameraFreeLookSetting
  L3_2 = L3_2()
  L4_2 = A0_2._spirit_anchors
  L5_2 = A0_2._cur_spirit
  L4_2 = L4_2[L5_2]
  L3_2.Target = L1_2
  L5_2 = L4_2.CameraRoot
  L3_2.RailHead = L5_2
  L5_2 = L4_2.CameraRootSpine
  L3_2.RailTail = L5_2
  L5_2 = A0_2._cameras
  L6_2 = L3_1.OverAll
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2
  L5_2 = L5_2.native_state
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.InitSetting
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L0_1._init_detail_camera_setting = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cameras
  L3_2 = L3_1.OverAll
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cameras
  L3_2 = L3_1.OverAll
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.native_state
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.EnableCameraZoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_free_look_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_floor
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_floor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._spirit_panel
  if L1_2 then
    L1_2 = A0_2._spirit_panel
    L2_2 = L1_2
    L1_2 = L1_2.remove_all_ui3d_spirits
    L1_2(L2_2)
  end
end
L0_1.dispose_spirit = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._spirit_data
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.dispose_spirit
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_spirit
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L0_1.switch_spirit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cameras
  L2_2 = L3_1.OverAll
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.native_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ResetZoom
  L1_2(L2_2)
end
L0_1.reset_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_spirit
  if L2_2 then
    L2_2 = A0_2._cur_spirit
    L3_2 = L2_2
    L2_2 = L2_2.set_entity_visibility
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_spirit_visibility = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._spirit_data = A1_2
  if nil == A1_2 then
    return
  end
  L2_2 = A1_2.ManikinMonsterAvatarModelPath
  L3_2 = A1_2.ManikinMonsterAvatarJsonPath
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.String
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.String
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2 and L4_2
  if not L4_2 then
    return
  end
  L5_2 = A0_2._spirit_panel
  L6_2 = L5_2
  L5_2 = L5_2.create_ui3d_spirit
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = G
  L6_2 = L6_2.ComponentExtensions
  L6_2 = L6_2.SafeFind
  L8_2 = L5_2
  L7_2 = L5_2.get_transform
  L7_2 = L7_2(L8_2)
  L8_2 = "SpiritOffset"
  L9_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L7_2 = L6_2.localScale
    if L7_2 then
      goto lbl_47
    end
  end
  L7_2 = nil
  ::lbl_47::
  L9_2 = L5_2
  L8_2 = L5_2.place_to_anchor
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = L5_2
  L8_2 = L5_2.set_scale
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L5_2
  L8_2 = L5_2.play_anim
  L10_2 = "StandBy"
  L8_2(L9_2, L10_2)
  A0_2._cur_spirit = L5_2
  L8_2 = A0_2._cur_spirit
  L9_2 = L8_2
  L8_2 = L8_2.get_transform
  L8_2 = L8_2(L9_2)
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.Vector3
  L10_2 = L8_2.localEulerAngles
  L10_2 = L10_2.x
  L11_2 = L8_2.localEulerAngles
  L11_2 = L11_2.y
  L12_2 = L8_2.localEulerAngles
  L12_2 = L12_2.z
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector3
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L8_2.localEulerAngles = L10_2
  L11_2 = A0_2
  L10_2 = A0_2._init_detail_camera_setting
  L10_2(L11_2)
  L11_2 = A0_2
  L10_2 = A0_2._refresh_outline_width
  L10_2(L11_2)
  L11_2 = A0_2
  L10_2 = A0_2.enable_floor
  L12_2 = A0_2._cur_spirit
  L13_2 = L12_2
  L12_2 = L12_2.is_enable_floor
  L12_2, L13_2 = L12_2(L13_2)
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = A0_2._cameras
  L11_2 = L3_1.OverAll
  L10_2 = L10_2[L11_2]
  L11_2 = L10_2
  L10_2 = L10_2.active
  L10_2(L11_2)
  L8_2.localEulerAngles = L9_2
end
L0_1._show_spirit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_spirit
  L2_2 = L1_2
  L1_2 = L1_2.get_outline_width
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_spirit
  L3_2 = L2_2
  L2_2 = L2_2.set_outline_width
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_outline_width = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._memorize
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    if A0_3 == nil then
      L1_3 = nil
      return L1_3
    end
    L2_3 = A0_3
    L1_3 = A0_3.get_body_size
    L1_3 = L1_3(L2_3)
    if L1_3 == nil then
      return
    end
    L2_3 = #L1_3
    L3_3 = A0_2._body_type_position
    L3_3 = L3_3[L2_3]
    if L3_3 == nil then
      return
    end
    L4_3 = {}
    L5_3 = pairs
    L6_3 = L3_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L10_3 = A0_2
      L11_3 = L10_3
      L10_3 = L10_3._get_vector_from_MVector3
      L12_3 = L9_3
      L10_3 = L10_3(L11_3, L12_3)
      L4_3[L8_3] = L10_3
    end
    return L4_3
  end
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._spirit_anchors = L1_2
end
L0_1._init_spirit_anchors = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = {}
  L4_2.__mode = "k"
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_2
    L3_3 = A1_3
    L2_3 = L2_3(L3_3)
    if L2_3 ~= nil then
      A0_3[A1_3] = L2_3
    end
    return L2_3
  end
  L4_2.__index = L5_2
  return L2_2(L3_2, L4_2)
end
L0_1._memorize = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = A1_2.x
    L4_2 = A1_2.y
    L5_2 = A1_2.z
    return L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._get_vector_from_MVector3 = L4_1
return L0_1
