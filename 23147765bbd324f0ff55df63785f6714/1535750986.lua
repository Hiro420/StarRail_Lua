local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UIUtils.UIFrameCaptureUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DCaptureFrameTransferPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_frame_texture
  L1_2(L2_2)
  A0_2._transfer_anim = nil
  A0_2._mesh_render = nil
  A0_2._fade_out_ani_name = nil
  A0_2._fade_in_ani_name = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Animation
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._transfer_anim = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.MeshRenderer
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._mesh_render = L4_2
  A0_2._dis_transform_z = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MonoLuaCallbackTick
  L4_2 = L4_2.Get
  L5_2 = A0_2._mesh_render
  L5_2 = L5_2.gameObject
  L4_2 = L4_2(L5_2)
  A0_2._mono_lua_callback = L4_2
  L4_2 = A0_2._mono_lua_callback
  L5_2 = L4_2
  L4_2 = L4_2.SetLuaCallback
  L6_2 = A0_2._tick_for_reset_transform
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.init_cmpt = L1_1
function L1_1(A0_2, A1_2)
  A0_2._fade_out_ani_name = A1_2
end
L0_1.set_fade_out_anim_name = L1_1
function L1_1(A0_2, A1_2)
  A0_2._fade_in_ani_name = A1_2
end
L0_1.set_fade_in_anim_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.clear_frame_texture
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_frame_texture
  L1_2(L2_2)
end
L0_1.show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._fade_out_ani_name
  if L1_2 ~= nil then
    L1_2 = A0_2._transfer_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = A0_2._fade_out_ani_name
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_fade_out = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._fade_in_ani_name
  if L1_2 ~= nil then
    L1_2 = A0_2._transfer_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = A0_2._fade_in_ani_name
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.get_camera
    L2_2 = L2_2(L3_2)
    A1_2 = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.reset_mesh_transform
  L4_2 = A1_2.transform
  L4_2 = L4_2.localPosition
  L5_2 = A1_2.transform
  L5_2 = L5_2.rotation
  L6_2 = A1_2.fieldOfView
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.reset_mesh_transform_by_camera = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_mesh_transform_by_camera
  L1_2(L2_2)
end
L0_1._tick_for_reset_transform = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2._mesh_render
  if L4_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.UtilEngineWrap
    L4_2 = L4_2.IsCsObjectNull
    L5_2 = A0_2._mesh_render
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = A0_2._mesh_render
  L4_2 = L4_2.transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L9_2 = A0_2._dis_transform_z
  L8_2 = L8_2 - L9_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
  L4_2 = A0_2._mesh_render
  L4_2 = L4_2.transform
  L4_2.rotation = A2_2
  L4_2 = A0_2._dis_transform_z
  L4_2 = 2 * L4_2
  L5_2 = math
  L5_2 = L5_2.tan
  L6_2 = A3_2 / 360
  L7_2 = math
  L7_2 = L7_2.pi
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Screen
  L5_2 = L5_2.width
  L5_2 = L4_2 * L5_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Screen
  L6_2 = L6_2.height
  L5_2 = L5_2 / L6_2
  L6_2 = A0_2._mesh_render
  L6_2 = L6_2.transform
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector3
  L8_2 = L5_2
  L9_2 = L4_2
  L10_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.localScale = L7_2
end
L0_1.reset_mesh_transform = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.CustomRP
    L4_2 = L4_2.FrameCapture
    L4_2 = L4_2.CaptureType
    A1_2 = L4_2.Game_UI
  end
  if not A2_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.FrameCaptureManager
    L4_2 = L4_2.CaptureUsage
    A2_2 = L4_2.None
  end
  if not A3_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.CustomRP
    L4_2 = L4_2.FrameCapture
    L4_2 = L4_2.CaptureFeature
    A3_2 = L4_2.None
  end
  L4_2 = G
  L4_2 = L4_2.UIFrameCaptureUtils
  L4_2 = L4_2.capture
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.capture_frame = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mesh_render
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.IsCsObjectNull
    L2_2 = A0_2._mesh_render
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._mesh_render
  L1_2 = L1_2.material
  L2_2 = L1_2
  L1_2 = L1_2.SetTexture
  L3_2 = "_MainTex"
  L4_2 = G
  L4_2 = L4_2.UIFrameCaptureUtils
  L4_2 = L4_2.get_capture_result
  L4_2 = L4_2()
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh_frame_texture = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mesh_render
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.IsCsObjectNull
    L2_2 = A0_2._mesh_render
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._mesh_render
  L1_2 = L1_2.material
  L2_2 = L1_2
  L1_2 = L1_2.SetTexture
  L3_2 = "_MainTex"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.clear_frame_texture = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.mesh_render_foreground
  L2_2 = L2_2.transform
  L2_2 = L2_2.localScale
  L3_2 = A0_2.mesh_render_foreground
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = L2_2.y
  L5_2 = L5_2 * A1_2
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localScale = L4_2
end
L0_1._adjust_foreground_aspect_ratio = L1_1
return L0_1
