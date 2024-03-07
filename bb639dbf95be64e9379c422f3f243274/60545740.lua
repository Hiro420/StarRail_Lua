local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.LightCone.Zoom.LightConeZoomInPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeZoomInPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.03
L2_1 = 500
L3_1 = 1
L4_1 = 50
L5_1 = 0.5
L6_1 = 0.03
L7_1 = 0.04
L8_1 = 0.05
L9_1 = 0.08
L10_1 = 900
L11_1 = 1258
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.move_step = 5.0
  A0_2.move_factor = 30.0
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeZoomInPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L12_1
function L12_1(A0_2, A1_2)
  A0_2._equip_data = A1_2
end
L0_1.init = L12_1
function L12_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_close_callback = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_left_trigger_press
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightTrigger
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_right_trigger_press
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.RightStickUp
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_right_stick_control
        L5_2 = 0
        L6_2 = -1
        L7_2 = A2_2
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.RightStickDown
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_right_stick_control
          L5_2 = 0
          L6_2 = 1
          L7_2 = A2_2
          L3_2(L4_2, L5_2, L6_2, L7_2)
        else
          L3_2 = CS
          L3_2 = L3_2.InControl
          L3_2 = L3_2.InputControlType
          L3_2 = L3_2.RightStickLeft
          L3_2 = #L3_2
          if A1_2 == L3_2 then
            L4_2 = A0_2
            L3_2 = A0_2._on_right_stick_control
            L5_2 = 1
            L6_2 = 0
            L7_2 = A2_2
            L3_2(L4_2, L5_2, L6_2, L7_2)
          else
            L3_2 = CS
            L3_2 = L3_2.InControl
            L3_2 = L3_2.InputControlType
            L3_2 = L3_2.RightStickRight
            L3_2 = #L3_2
            if A1_2 == L3_2 then
              L4_2 = A0_2
              L3_2 = A0_2._on_right_stick_control
              L5_2 = -1
              L6_2 = 0
              L7_2 = A2_2
              L3_2(L4_2, L5_2, L6_2, L7_2)
            end
          end
        end
      end
    end
  end
end
L0_1._on_in_control_press = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickUp
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightStickDown
    L2_2 = #L2_2
    if A1_2 ~= L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.RightStickLeft
      L2_2 = #L2_2
      if A1_2 ~= L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.RightStickRight
        L2_2 = #L2_2
        if A1_2 ~= L2_2 then
          goto lbl_31
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_right_stick_release
  L2_2(L3_2)
  ::lbl_31::
end
L0_1._on_in_control_released = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._zoom_lightcone
  L4_2 = L4_1
  L4_2 = A1_2 * L4_2
  L2_2(L3_2, L4_2)
end
L0_1._on_left_trigger_press = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._zoom_lightcone
  L4_2 = -A1_2
  L5_2 = L4_1
  L4_2 = L4_2 * L5_2
  L2_2(L3_2, L4_2)
end
L0_1._on_right_trigger_press = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L5_1
  if A3_2 > L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_lightcone
    L4_2 = L4_2.transform
    L5_2 = L4_2
    L4_2 = L4_2.GetComponent
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.RectTransform
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = L4_2.anchoredPosition
    L4_2 = L4_2.x
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_lightcone
    L5_2 = L5_2.transform
    L6_2 = L5_2
    L5_2 = L5_2.GetComponent
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.RectTransform
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = L5_2.anchoredPosition
    L5_2 = L5_2.y
    L6_2 = A0_2.move_step
    L7_2 = A0_2.move_factor
    L7_2 = L7_2 * A3_2
    L6_2 = L6_2 + L7_2
    L8_2 = A0_2
    L7_2 = A0_2._set_pos
    L9_2 = A1_2 * -1
    L9_2 = L9_2 * L6_2
    L9_2 = L4_2 + L9_2
    L10_2 = A2_2 * -1
    L10_2 = L10_2 * L6_2
    L10_2 = L5_2 + L10_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._on_right_stick_control = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_lightcone
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransform
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L1_2.anchoredPosition
  L1_2 = L1_2.x
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_lightcone
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L2_2.anchoredPosition
  L2_2 = L2_2.y
  L4_2 = A0_2
  L3_2 = A0_2._set_final_pos
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_right_stick_release = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 127
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rot
  L4_2 = A0_2._rotate
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_rot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_platform
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.native_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SetEvent
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.ticking
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L1_2 = L1_2.zero
  A0_2._pos_setting_velocity = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L1_2 = L1_2.zero
  A0_2._size_changing_velocity = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector3
  L1_2 = L1_2.zero
  A0_2._rot_rolling_velocity = L1_2
  A0_2._is_from_set_size = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_move
  L1_2 = L1_2.MoveStep
  A0_2.move_step = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_move
  L1_2 = L1_2.MoveStepFactor
  A0_2.move_factor = L1_2
end
L0_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._screen_width = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  A0_2._screen_height = L1_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "LightConeZoomInPage.lua : Screen Size: Width: "
  L3_2 = A0_2._screen_width
  L4_2 = " Height : "
  L5_2 = A0_2._screen_height
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2(L2_2)
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.EquipmentRow
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_lightcone
  L5_2 = L1_2.ImagePath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_lightcone
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localEulerAngles = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_lightcone
  L2_2 = L2_2.transform
  L2_2 = L2_2.localEulerAngles
  L2_2 = L2_2.z
  A0_2._rot_angle = L2_2
  L2_2 = L10_1
  A0_2._real_width = L2_2
  L2_2 = L11_1
  A0_2._real_height = L2_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "LightConeZoomInPage.lua : Image RealSize: Width: "
  L4_2 = A0_2._real_width
  L5_2 = " Height : "
  L6_2 = A0_2._real_height
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._calculate_min_size
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_size
  L4_2 = A0_2._min_width
  L5_2 = A0_2._min_height
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_touch_event
  L2_2(L3_2)
end
L0_1._setup_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._real_width
  L2_2 = A0_2._real_height
  L3_2 = L1_2 / L2_2
  A0_2._scale = L3_2
  L3_2 = A0_2._screen_height
  L4_2 = A0_2._scale
  L4_2 = L3_2 * L4_2
  L5_2 = A0_2._screen_width
  if L4_2 > L5_2 then
    L4_2 = A0_2._screen_width
    L5_2 = L4_2 * 1
    L6_2 = A0_2._scale
    L3_2 = L5_2 / L6_2
  end
  A0_2._min_width = L4_2
  A0_2._min_height = L3_2
  L5_2 = G
  L5_2 = L5_2.SuperDebug
  L5_2 = L5_2.LogFormat
  L6_2 = "LightConeZoomInPage.lua : _calculate_min_size(): min_width: "
  L7_2 = A0_2._min_width
  L8_2 = " min_height : "
  L9_2 = A0_2._min_height
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2(L6_2)
end
L0_1._calculate_min_size = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._min_width
  if L3_2 ~= nil then
    L3_2 = A0_2._min_height
    if L3_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L3_2 = A0_2._min_width
  if A1_2 < L3_2 then
    L3_2 = A0_2._min_height
    if A2_2 < L3_2 then
      A1_2 = A0_2._min_width
      A2_2 = A0_2._min_height
    end
  end
  L3_2 = A0_2._real_height
  if A2_2 > L3_2 then
    A2_2 = A0_2._real_height
    L3_2 = A0_2._real_height
    L4_2 = A0_2._scale
    A1_2 = L3_2 * L4_2
  end
  L3_2 = A0_2._real_width
  if A1_2 > L3_2 then
    A1_2 = A0_2._real_width
    L3_2 = A0_2._real_width
    L4_2 = A0_2._scale
    A2_2 = L3_2 / L4_2
  end
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = A0_2._screen_width
  L4_2 = A1_2 - L4_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._screen_width
  L3_2 = L3_2 / L4_2
  L4_2 = L1_1
  if L3_2 < L4_2 and 0 < L3_2 then
    A1_2 = A0_2._screen_width
    L4_2 = A1_2 * 1
    L5_2 = A0_2._scale
    A2_2 = L4_2 / L5_2
  end
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = A0_2._screen_height
  L5_2 = A2_2 - L5_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._screen_height
  L4_2 = L4_2 / L5_2
  L5_2 = L1_1
  if L4_2 < L5_2 and 0 < L4_2 then
    A2_2 = A0_2._screen_height
    L5_2 = A0_2._scale
    A1_2 = A2_2 * L5_2
  end
  L5_2 = A0_2._rot_angle
  if L5_2 == 0 then
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Vector2
    L6_2 = A1_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    A0_2._size_final = L5_2
  else
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Vector2
    L6_2 = A2_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    A0_2._size_final = L5_2
  end
  A0_2._current_width = A1_2
  A0_2._current_height = A2_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_lightcone
  L5_2 = L5_2.transform
  L6_2 = L5_2
  L5_2 = L5_2.GetComponent
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.RectTransform
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L5_2.anchoredPosition
  L5_2 = L5_2.x
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_lightcone
  L6_2 = L6_2.transform
  L7_2 = L6_2
  L6_2 = L6_2.GetComponent
  L8_2 = typeof
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.RectTransform
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L6_2.anchoredPosition
  L6_2 = L6_2.y
  L8_2 = A0_2
  L7_2 = A0_2._set_final_pos
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  A0_2._is_from_set_size = true
end
L0_1._set_size = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._is_dragging = true
  L3_2 = A0_2._screen_width
  L3_2 = L3_2 / 2
  L3_2 = A1_2 + L3_2
  L4_2 = A0_2._screen_height
  L4_2 = L4_2 / 2
  L4_2 = A2_2 + L4_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._current_width
  L7_2 = L7_2 / 2
  L7_2 = L3_2 - L7_2
  L8_2 = A0_2._screen_width
  L8_2 = L8_2 * 0.5
  if not (L7_2 > L8_2) then
    L7_2 = A0_2._current_width
    L7_2 = L7_2 / 2
    L7_2 = L3_2 + L7_2
    L8_2 = A0_2._screen_width
    L8_2 = L8_2 * 0.5
    if not (L7_2 < L8_2) then
      goto lbl_25
    end
  end
  L5_2 = A0_2._current_x
  ::lbl_25::
  L7_2 = A0_2._current_height
  L7_2 = L7_2 / 2
  L7_2 = L4_2 - L7_2
  L8_2 = A0_2._screen_height
  L8_2 = L8_2 * 0.5
  if not (L7_2 > L8_2) then
    L7_2 = A0_2._current_height
    L7_2 = L7_2 / 2
    L7_2 = L4_2 + L7_2
    L8_2 = A0_2._screen_height
    L8_2 = L8_2 * 0.5
    if not (L7_2 < L8_2) then
      goto lbl_40
    end
  end
  L6_2 = A0_2._current_y
  ::lbl_40::
  A0_2._current_x = L5_2
  A0_2._current_y = L6_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector2
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  A0_2._pos_final = L7_2
end
L0_1._set_pos = L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._is_dragging = false
  L3_2 = A1_2
  L4_2 = A2_2
  L5_2 = A0_2._screen_width
  L5_2 = L5_2 / 2
  L5_2 = A1_2 + L5_2
  L6_2 = A0_2._screen_height
  L6_2 = L6_2 / 2
  L6_2 = A2_2 + L6_2
  L7_2 = A0_2._current_width
  L7_2 = L7_2 / 2
  L8_2 = L5_2 - L7_2
  if 0 <= L8_2 then
    L8_2 = L5_2 + L7_2
    L9_2 = A0_2._screen_width
    if L8_2 <= L9_2 then
      L3_2 = 0
  end
  else
    L8_2 = L5_2 - L7_2
    if L8_2 < 0 then
      L8_2 = L5_2 + L7_2
      L9_2 = A0_2._screen_width
      if L8_2 < L9_2 then
        L8_2 = A0_2._screen_width
        L8_2 = L8_2 - L7_2
        L9_2 = L8_2 - L7_2
        if 0 <= L9_2 then
          L9_2 = L8_2 + L7_2
          L10_2 = A0_2._screen_width
          if L9_2 <= L10_2 then
            L3_2 = 0
        end
        else
          L9_2 = A0_2._screen_width
          L9_2 = L9_2 / 2
          L3_2 = L8_2 - L9_2
        end
    end
    else
      L8_2 = L5_2 - L7_2
      if 0 < L8_2 then
        L8_2 = L5_2 + L7_2
        L9_2 = A0_2._screen_width
        if L8_2 > L9_2 then
          L8_2 = L7_2
          L9_2 = L8_2 - L7_2
          if 0 <= L9_2 then
            L9_2 = L8_2 + L7_2
            L10_2 = A0_2._screen_width
            if L9_2 <= L10_2 then
              L3_2 = 0
          end
          else
            L9_2 = A0_2._screen_width
            L9_2 = L9_2 / 2
            L3_2 = L8_2 - L9_2
          end
        end
      end
    end
  end
  L8_2 = A0_2._current_height
  L8_2 = L8_2 / 2
  L9_2 = L6_2 - L8_2
  if 0 <= L9_2 then
    L9_2 = L6_2 + L8_2
    L10_2 = A0_2._screen_height
    if L9_2 <= L10_2 then
      L4_2 = 0
  end
  else
    L9_2 = L6_2 - L8_2
    if L9_2 < 0 then
      L9_2 = L6_2 + L8_2
      L10_2 = A0_2._screen_height
      if L9_2 < L10_2 then
        L9_2 = A0_2._screen_height
        L9_2 = L9_2 - L8_2
        L10_2 = L9_2 - L8_2
        if 0 <= L10_2 then
          L10_2 = L9_2 + L8_2
          L11_2 = A0_2._screen_height
          if L10_2 <= L11_2 then
            L4_2 = 0
        end
        else
          L10_2 = A0_2._screen_height
          L10_2 = L10_2 / 2
          L4_2 = L9_2 - L10_2
        end
    end
    else
      L9_2 = L6_2 - L8_2
      if 0 < L9_2 then
        L9_2 = L6_2 + L8_2
        L10_2 = A0_2._screen_height
        if L9_2 > L10_2 then
          L9_2 = L8_2
          L10_2 = L9_2 - L8_2
          if 0 <= L10_2 then
            L10_2 = L9_2 + L8_2
            L11_2 = A0_2._screen_height
            if L10_2 <= L11_2 then
              L4_2 = 0
          end
          else
            L10_2 = A0_2._screen_height
            L10_2 = L10_2 / 2
            L4_2 = L9_2 - L10_2
          end
        end
      end
    end
  end
  A0_2._current_x = L3_2
  A0_2._current_y = L4_2
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.Vector2
  L10_2 = L3_2
  L11_2 = L4_2
  L9_2 = L9_2(L10_2, L11_2)
  A0_2._pos_final = L9_2
end
L0_1._set_final_pos = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rot_angle
  if L1_2 == 90 then
    L1_2 = L10_1
    A0_2._real_width = L1_2
    L1_2 = L11_1
    A0_2._real_height = L1_2
    A0_2._rot_angle = 0
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector3
    L2_2 = 0
    L3_2 = 0
    L4_2 = 0
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._rot_final = L1_2
  else
    L1_2 = L11_1
    A0_2._real_width = L1_2
    L1_2 = L10_1
    A0_2._real_height = L1_2
    A0_2._rot_angle = 90
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector3
    L2_2 = 0
    L3_2 = 0
    L4_2 = 90
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._rot_final = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._calculate_min_size
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_size
  L3_2 = A0_2._min_width
  L4_2 = A0_2._min_height
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._rotate = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_pinching
  if L2_2 == true then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_lightcone
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L2_2.anchoredPosition
  L2_2 = L2_2.x
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_lightcone
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransform
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L3_2.anchoredPosition
  L3_2 = L3_2.y
  L5_2 = A0_2
  L4_2 = A0_2._set_pos
  L6_2 = A1_2.deltaPosition
  L6_2 = L6_2.x
  L6_2 = L2_2 + L6_2
  L7_2 = A1_2.deltaPosition
  L7_2 = L7_2.y
  L7_2 = L3_2 + L7_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._drag_callback = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_lightcone
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.RectTransform
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L2_2.anchoredPosition
  L2_2 = L2_2.x
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_lightcone
  L3_2 = L3_2.transform
  L4_2 = L3_2
  L3_2 = L3_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.RectTransform
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L3_2.anchoredPosition
  L3_2 = L3_2.y
  L5_2 = A0_2
  L4_2 = A0_2._set_final_pos
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._drag_end_callback = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_pinching = true
  L2_2 = A1_2.deltaPinch
  L2_2 = -L2_2
  L3_2 = L3_1
  L2_2 = L2_2 * L3_2
  L4_2 = A0_2
  L3_2 = A0_2._zoom_lightcone
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._pinch_in_callback = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_pinching = true
  L2_2 = A1_2.deltaPinch
  L3_2 = L3_1
  L2_2 = L2_2 * L3_2
  L4_2 = A0_2
  L3_2 = A0_2._zoom_lightcone
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._pinch_out_callback = L12_1
function L12_1(A0_2, A1_2)
  A0_2._is_pinching = false
end
L0_1._pinch_end_callback = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_pinching = false
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._drag_callback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._drag_end_callback
  L1_2(L2_2, L3_2, L4_2)
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
L0_1._add_touch_event = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0.02
  L2_2 = A0_2._pos_final
  if L2_2 ~= nil then
    L2_2 = A0_2._is_dragging
    if L2_2 == false then
      L1_2 = L7_1
    else
      L2_2 = A0_2._is_dragging
      if L2_2 == true then
        L1_2 = L6_1
      end
    end
    L2_2 = 5000
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_lightcone
    L3_2 = L3_2.transform
    L4_2 = L3_2
    L3_2 = L3_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.RectTransform
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = L3_2.anchoredPosition
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector2
    L4_2 = L4_2.Distance
    L5_2 = L3_2
    L6_2 = A0_2._pos_final
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 <= 1 then
      A0_2._is_from_set_size = false
    end
    L5_2 = A0_2._pos_final
    if L5_2 ~= L3_2 then
      L5_2 = A0_2._is_dragging
      if L5_2 == false then
        L5_2 = A0_2._is_from_set_size
        if not L5_2 then
          L2_2 = L4_2 * 9
        end
      end
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_lightcone
      L5_2 = L5_2.transform
      L6_2 = L5_2
      L5_2 = L5_2.GetComponent
      L7_2 = typeof
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.RectTransform
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector2
      L6_2 = L6_2.SmoothDamp
      L7_2 = L3_2
      L8_2 = A0_2._pos_final
      L9_2 = A0_2._pos_setting_velocity
      L10_2 = L1_2
      L11_2 = L2_2
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L5_2.anchoredPosition = L6_2
    end
  end
  L2_2 = A0_2._size_final
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_lightcone
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.RectTransform
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L2_2.sizeDelta
    L1_2 = L8_1
    L3_2 = A0_2._size_final
    if L3_2 ~= L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_lightcone
      L3_2 = L3_2.transform
      L4_2 = L3_2
      L3_2 = L3_2.GetComponent
      L5_2 = typeof
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.RectTransform
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector2
      L4_2 = L4_2.SmoothDamp
      L5_2 = L2_2
      L6_2 = A0_2._size_final
      L7_2 = A0_2._size_changing_velocity
      L8_2 = L1_2
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.sizeDelta = L4_2
    end
  end
  L2_2 = A0_2._rot_final
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_lightcone
    L2_2 = L2_2.transform
    L2_2 = L2_2.localEulerAngles
    L1_2 = L9_1
    L3_2 = A0_2._rot_final
    if L3_2 ~= L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_lightcone
      L3_2 = L3_2.transform
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector3
      L4_2 = L4_2.SmoothDamp
      L5_2 = L2_2
      L6_2 = A0_2._rot_final
      L7_2 = A0_2._rot_rolling_velocity
      L8_2 = L1_2
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.localEulerAngles = L4_2
    end
  end
end
L0_1.ticking = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L2_2 = A1_2 * L2_2
  L4_2 = A0_2
  L3_2 = A0_2._zoom_lightcone
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_mouse_wheel_roll = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._current_height
  L2_2 = L2_2 + A1_2
  L3_2 = A0_2._scale
  L3_2 = L2_2 * L3_2
  L5_2 = A0_2
  L4_2 = A0_2._set_size
  L6_2 = L3_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._zoom_lightcone = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
  A0_2._equip_data = nil
end
L0_1._on_dispose = L12_1
return L0_1
