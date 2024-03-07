local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DLightConePanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UI/UI3D/LightCone/Prefabs/LightCone.prefab"
L2_1 = false
L3_1 = 20
function L4_1(A0_2, A1_2)
  A0_2._owner = A1_2
  A0_2._empty_texture_path = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._is_custom = false
  A0_2._origin_rotY = 0
  A0_2._gyro_velocity = 0
  A0_2._current_gyro_rot = 180
  A0_2._is_locate_by_camera = false
  A0_2.is_force_hide = false
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  A0_2._empty_texture_path = A1_2
end
L0_1.set_empty_texture_path = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._custom_pos = A1_2
  A0_2._custom_eul = A2_2
  A0_2._is_locate_by_camera = false
end
L0_1.set_custom_pos = L4_1
function L4_1(A0_2, A1_2)
  A0_2._origin_rotY = A1_2
end
L0_1.set_origin_rotY = L4_1
function L4_1(A0_2, A1_2)
  A0_2._avatar_entity = A1_2
end
L0_1.set_target_avatar_entity = L4_1
function L4_1(A0_2, A1_2)
  A0_2._parent_root = A1_2
end
L0_1.set_parent_root = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._is_locate_by_camera = true
end
L0_1.set_is_locate_by_camera = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_locate_by_camera
  return L1_2
end
L0_1.get_is_locate_by_camera = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_lightcone_pos
  L1_2(L2_2)
end
L0_1.force_set_pos = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._parent_root
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._lightcone
  if L2_2 == nil then
    A0_2._lightcone = 1
    L3_2 = A0_2
    L2_2 = A0_2.async_load_prefab
    L4_2 = L1_1
    function L5_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      A0_2._lightcone = A1_3
      L2_3 = A0_2._lightcone
      L2_3 = L2_3.transform
      L3_3 = L2_3
      L2_3 = L2_3.SetParent
      L4_3 = A0_2._parent_root
      L2_3(L3_3, L4_3)
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.setup_lightcone
      L4_3 = A1_2
      L5_3 = true
      L2_3(L3_3, L4_3, L5_3)
    end
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_lightcone
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_lightcone = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._lightcone
  if L3_2 ~= nil then
    L3_2 = A0_2._lightcone
    if L3_2 ~= 1 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2._custom_pos
  if L3_2 ~= nil then
    L3_2 = A0_2._custom_eul
    if L3_2 ~= nil then
      A0_2._is_custom = true
    end
  end
  L3_2 = A0_2._lightcone
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2.is_force_hide = false
  L3_2 = A0_2._lightcone
  L3_2 = L3_2.transform
  L5_2 = L3_2
  L4_2 = L3_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.LightCone3D
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._lightcone_material_cmpt = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.set_color_type
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.LightCone3DColorType
  L6_2 = L6_2.Cold
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.Find
  L6_2 = "Iridescence_Ground"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L3_2
  L5_2 = L3_2.Find
  L7_2 = "Iridescence_LensFlare"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.SafeSetActive
  L8_2 = A1_2 ~= nil
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.SafeSetActive
  L8_2 = A1_2 ~= nil
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._lightcone_material_cmpt
  L7_2 = L6_2
  L6_2 = L6_2.SetLightCone
  L8_2 = A1_2
  L9_2 = L2_1
  L10_2 = A0_2._empty_texture_path
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.is_pc_or_ps_or_mobile_gamepad_mode
  L6_2 = L6_2()
  if not L6_2 then
    L6_2 = A0_2._lightcone_material_cmpt
    L7_2 = L6_2
    L6_2 = L6_2.SetGyroEvent
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GyroManager
      L0_3 = L0_3.Instance
      L0_3 = L0_3.Gravity
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.set_lightcone_rot
      L3_3 = L0_3.x
      L3_3 = -1 * L3_3
      L1_3(L2_3, L3_3)
    end
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._lightcone_need_to_hide
  if L6_2 then
    A0_2._lightcone_need_to_hide = false
    L6_2 = A0_2._lightcone
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  if A2_2 ~= true then
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2._set_lightcone_pos
  L6_2(L7_2)
end
L0_1.setup_lightcone = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._lightcone_material_cmpt
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._lightcone_material_cmpt
  L3_2 = L2_2
  L2_2 = L2_2.SetColorType
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_color_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._lightcone
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._lightcone
  if L1_2 == 1 then
    A0_2._lightcone_need_to_hide = true
    return
  end
  L1_2 = A0_2._lightcone
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_lightcone = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._lightcone
  if L1_2 ~= nil then
    L1_2 = A0_2._lightcone
    if L1_2 ~= 1 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._lightcone_material_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.destroy_object
  L3_2 = A0_2._lightcone
  L1_2(L2_2, L3_2)
  A0_2._lightcone = nil
end
L0_1.dispose_lightcone = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._lightcone
  if L2_2 ~= nil then
    L2_2 = A0_2._lightcone
    if L2_2 ~= 1 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._lightcone
  L3_2 = L2_2.transform
  L3_2 = L3_2.localEulerAngles
  L3_2 = L3_2.x
  L4_2 = L2_2.transform
  L4_2 = L4_2.localEulerAngles
  L4_2 = L4_2.y
  L5_2 = L2_2.transform
  L5_2 = L5_2.localEulerAngles
  L5_2 = L5_2.z
  L6_2 = 0.03
  L7_2 = L6_2 * A1_2
  L7_2 = L4_2 + L7_2
  L9_2 = A0_2
  L8_2 = A0_2._adjust_rotate_by_angle_limit
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L8_2
  L8_2 = L2_2.transform
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.Vector3
  L10_2 = L3_2
  L11_2 = L7_2
  L12_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.localEulerAngles = L9_2
end
L0_1.swipe_lightcone = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2._lightcone
  if L2_2 ~= nil then
    L2_2 = A0_2._lightcone
    if L2_2 ~= 1 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._lightcone
  L3_2 = L2_2.transform
  L3_2 = L3_2.localEulerAngles
  L3_2 = L3_2.x
  L4_2 = L2_2.transform
  L4_2 = L4_2.localEulerAngles
  L4_2 = L4_2.z
  L6_2 = A0_2
  L5_2 = A0_2._get_original_rotY
  L5_2 = L5_2(L6_2)
  L6_2 = L3_1
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.LightCone3D
  L7_2 = L7_2.GyroMaxRotX
  L6_2 = L6_2 / L7_2
  L7_2 = L5_2 + 180
  L8_2 = A1_2 * L6_2
  L8_2 = L7_2 + L8_2
  L10_2 = A0_2
  L9_2 = A0_2._adjust_rotate_by_angle_limit
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Mathf
  L10_2 = L10_2.SmoothDamp
  L11_2 = A0_2._current_gyro_rot
  L12_2 = L9_2
  L13_2 = A0_2._gyro_velocity
  L14_2 = CS
  L14_2 = L14_2.RPG
  L14_2 = L14_2.Client
  L14_2 = L14_2.LightCone3D
  L14_2 = L14_2.SmoothTime
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  A0_2._current_gyro_rot = L10_2
  L10_2 = L2_2.transform
  L11_2 = CS
  L11_2 = L11_2.UnityEngine
  L11_2 = L11_2.Vector3
  L12_2 = L3_2
  L13_2 = A0_2._current_gyro_rot
  L14_2 = L4_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.localEulerAngles = L11_2
end
L0_1.set_lightcone_rot = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_original_rotY
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 + 180
  L4_2 = L3_1
  L4_2 = L3_2 + L4_2
  if A1_2 > L4_2 then
    L4_2 = L3_1
    A1_2 = L3_2 + L4_2
  else
    L4_2 = L3_1
    L4_2 = L3_2 - L4_2
    if A1_2 < L4_2 then
      L4_2 = L3_1
      A1_2 = L3_2 - L4_2
    end
  end
  return A1_2
end
L0_1._adjust_rotate_by_angle_limit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._is_custom
  if L2_2 then
    L1_2 = A0_2._origin_rotY
  else
    L2_2 = A0_2._avatar_entity
    L3_2 = L2_2.UnityGO
    L3_2 = L3_2.transform
    L3_2 = L3_2.localEulerAngles
    L1_2 = L3_2.y
  end
  if 180 <= L1_2 then
    L1_2 = L1_2 - 360
  end
  return L1_2
end
L0_1._get_original_rotY = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.RaycastByMouseOrTouch
  L4_2 = "UI3D"
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsObjectNull
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = A0_2._lightcone
  if L4_2 ~= nil then
    L4_2 = A0_2._lightcone
    if L4_2 ~= 1 then
      goto lbl_28
    end
  end
  do return end
  ::lbl_28::
  L4_2 = A1_2
  L5_2 = A2_2
  L4_2(L5_2)
end
L0_1.simple_tap_lightcone = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lightcone
  if L1_2 ~= nil then
    L1_2 = A0_2._lightcone
    if L1_2 ~= 1 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._is_custom
  if L1_2 then
    L1_2 = A0_2._lightcone
    L1_2 = L1_2.transform
    L2_2 = A0_2._custom_pos
    L1_2.localPosition = L2_2
    L1_2 = A0_2._lightcone
    L1_2 = L1_2.transform
    L2_2 = A0_2._custom_eul
    L1_2.localEulerAngles = L2_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._set_pos_by_avatar_entity
    L1_2(L2_2)
  end
end
L0_1._set_lightcone_pos = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = A0_2._avatar_entity
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_entity
  L2_2 = A0_2._lightcone
  L3_2 = L1_2.UnityGO
  L3_2 = L3_2.transform
  L3_2 = L3_2.localEulerAngles
  L3_2 = L3_2.x
  L4_2 = L1_2.UnityGO
  L4_2 = L4_2.transform
  L4_2 = L4_2.localEulerAngles
  L4_2 = L4_2.y
  L5_2 = L1_2.UnityGO
  L5_2 = L5_2.transform
  L5_2 = L5_2.localEulerAngles
  L5_2 = L5_2.z
  L6_2 = L2_2.transform
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector3
  L8_2 = 1 * L3_2
  L9_2 = 1 * L4_2
  L9_2 = L9_2 + 180
  L10_2 = 1 * L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.localEulerAngles = L7_2
  L6_2 = 1.5
  L7_2 = -0.15
  L8_2 = 1.4
  L9_2 = L1_2.UnityGO
  L9_2 = L9_2.transform
  L9_2 = L9_2.localPosition
  L9_2 = L9_2.x
  L10_2 = L1_2.UnityGO
  L10_2 = L10_2.transform
  L10_2 = L10_2.localPosition
  L10_2 = L10_2.y
  L11_2 = L1_2.UnityGO
  L11_2 = L11_2.transform
  L11_2 = L11_2.localPosition
  L11_2 = L11_2.z
  L12_2 = CS
  L12_2 = L12_2.RPG
  L12_2 = L12_2.MMathf
  L12_2 = L12_2.Sin
  L13_2 = CS
  L13_2 = L13_2.RPG
  L13_2 = L13_2.MMathf
  L13_2 = L13_2.PI
  L13_2 = L13_2 * L4_2
  L13_2 = L13_2 / 180
  L12_2 = L12_2(L13_2)
  L13_2 = CS
  L13_2 = L13_2.RPG
  L13_2 = L13_2.MMathf
  L13_2 = L13_2.Cos
  L14_2 = CS
  L14_2 = L14_2.RPG
  L14_2 = L14_2.MMathf
  L14_2 = L14_2.PI
  L14_2 = L14_2 * L4_2
  L14_2 = L14_2 / 180
  L13_2 = L13_2(L14_2)
  L14_2 = -1 * L6_2
  L14_2 = L14_2 * L12_2
  L14_2 = L9_2 + L14_2
  L15_2 = -1 * L6_2
  L15_2 = L15_2 * L13_2
  L15_2 = L11_2 + L15_2
  L16_2 = -1 * L7_2
  L16_2 = L16_2 * L13_2
  L16_2 = L14_2 + L16_2
  L17_2 = -1 * L7_2
  L17_2 = L17_2 * L12_2
  L17_2 = L15_2 - L17_2
  L18_2 = L2_2.transform
  L19_2 = CS
  L19_2 = L19_2.UnityEngine
  L19_2 = L19_2.Vector3
  L20_2 = L16_2
  L21_2 = L10_2 + L8_2
  L22_2 = L17_2
  L19_2 = L19_2(L20_2, L21_2, L22_2)
  L18_2.localPosition = L19_2
end
L0_1._set_pos_by_avatar_entity = L4_1
return L0_1
