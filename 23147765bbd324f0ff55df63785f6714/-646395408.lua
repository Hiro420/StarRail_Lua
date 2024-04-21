local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Config/Manikin/Monster/Manikin_Monster_Positions_Config.json"
L2_1 = {}
L2_1.OverAll = 1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "ManikinArea/Manikin_Area_Monster.prefab"
  L1_2 = {}
  A0_2._camera_anchors = L1_2
  L1_2 = {}
  A0_2._monster_anchors = L1_2
  L1_2 = {}
  A0_2._look_anchors = L1_2
  L1_2 = {}
  A0_2._cameras = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigLoader
  L1_2 = L1_2.LoadManikinMonsterPositionsConfig
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  A0_2._monster_body_size_json_config = L1_2
  L1_2 = {}
  L2_2 = A0_2._monster_body_size_json_config
  L2_2 = L2_2.Common
  L1_2[0] = L2_2
  L2_2 = A0_2._monster_body_size_json_config
  L2_2 = L2_2.ShortCommon
  L1_2[1] = L2_2
  L2_2 = A0_2._monster_body_size_json_config
  L2_2 = L2_2.FloatingCommon
  L1_2[2] = L2_2
  L2_2 = A0_2._monster_body_size_json_config
  L2_2 = L2_2.FloatingSphere
  L1_2[3] = L2_2
  L2_2 = A0_2._monster_body_size_json_config
  L2_2 = L2_2.Sphere
  L1_2[4] = L2_2
  A0_2._body_type_position = L1_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
L0_1.trigger_anim_param = L3_1
function L3_1(A0_2, A1_2)
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
L0_1.set_anim_trigger = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DMonsterPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._monster_panel = L1_2
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
  L1_2 = A0_2._init_monster_anchors
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._cur_monster = nil
  A0_2._cached_monster_row = nil
  L2_2 = A0_2
  L1_2 = A0_2.dispose_monster
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
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
L0_1._init_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cameras
  L2_2 = L2_1.OverAll
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/MonsterDetailFreeLookVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L2_1.OverAll
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.enable_main_light_dir_change
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_camera = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_transform
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_monster
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
  L4_2 = A0_2._monster_anchors
  L5_2 = A0_2._cur_monster
  L4_2 = L4_2[L5_2]
  L3_2.Target = L1_2
  L5_2 = L4_2.CameraRoot
  L3_2.RailHead = L5_2
  L5_2 = L4_2.CameraRootSpine
  L3_2.RailTail = L5_2
  L5_2 = A0_2._cameras
  L6_2 = L2_1.OverAll
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2
  L5_2 = L5_2.native_state
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.InitSetting
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L0_1._init_detail_camera_setting = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cameras
  L3_2 = L2_1.OverAll
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cameras
  L3_2 = L2_1.OverAll
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.native_state
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.EnableCameraZoom
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_free_look_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_floor
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_floor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._monster_panel
  if L1_2 then
    L1_2 = A0_2._monster_panel
    L2_2 = L1_2
    L1_2 = L1_2.remove_all_ui3d_monsters
    L1_2(L2_2)
  end
end
L0_1.dispose_monster = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cached_monster_row
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.dispose_monster
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_monster
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L0_1.switch_monster = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cameras
  L2_2 = L2_1.OverAll
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.native_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ResetZoom
  L1_2(L2_2)
end
L0_1.reset_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_monster
  if L2_2 then
    L2_2 = A0_2._cur_monster
    L3_2 = L2_2
    L2_2 = L2_2.set_entity_visibility
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_monster_visibility = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._cached_monster_row = A1_2
  if nil == A1_2 then
    return
  end
  L2_2 = A1_2.ManikinPrefabPath
  L3_2 = A1_2.ManikinConfigPath
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
  L5_2 = A0_2._monster_panel
  L6_2 = L5_2
  L5_2 = L5_2.create_ui3d_monster
  L7_2 = A1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = G
  L6_2 = L6_2.ComponentExtensions
  L6_2 = L6_2.SafeFind
  L8_2 = L5_2
  L7_2 = L5_2.get_transform
  L7_2 = L7_2(L8_2)
  L8_2 = "ArchiveOffset"
  L9_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L7_2 = L6_2.localScale
    if L7_2 then
      goto lbl_48
    end
  end
  L7_2 = nil
  ::lbl_48::
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
  A0_2._cur_monster = L5_2
  L9_2 = A0_2
  L8_2 = A0_2._init_detail_camera_setting
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._refresh_outline_width
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.enable_floor
  L10_2 = A0_2._cur_monster
  L11_2 = L10_2
  L10_2 = L10_2.is_enable_floor
  L10_2, L11_2 = L10_2(L11_2)
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._cameras
  L9_2 = L2_1.OverAll
  L8_2 = L8_2[L9_2]
  L9_2 = L8_2
  L8_2 = L8_2.active
  L8_2(L9_2)
end
L0_1._show_monster = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_monster
  L2_2 = L1_2
  L1_2 = L1_2.get_outline_width
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_monster
  L3_2 = L2_2
  L2_2 = L2_2.set_outline_width
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_outline_width = L3_1
function L3_1(A0_2)
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
  A0_2._monster_anchors = L1_2
end
L0_1._init_monster_anchors = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._memorize = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._get_vector_from_MVector3 = L3_1
return L0_1
