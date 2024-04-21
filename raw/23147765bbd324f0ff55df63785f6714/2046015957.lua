local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UIUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A3_2 == nil then
    L4_2 = true
    A3_2 = L4_2 or A3_2
    if not L4_2 then
    end
  end
  if not A0_2 then
    L4_2 = {}
    A0_2 = L4_2
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = 1
  L7_2 = #A0_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L4_2 = L5_2
    L5_2 = A0_2[L9_2]
    if L5_2 ~= nil then
      if L4_2 ~= nil then
        L10_2 = L4_2.navigation
        L11_2 = CS
        L11_2 = L11_2.UnityEngine
        L11_2 = L11_2.UI
        L11_2 = L11_2.Navigation
        L11_2 = L11_2.Mode
        L11_2 = L11_2.Explicit
        L10_2.mode = L11_2
        L11_2 = L5_2.navigation
        L12_2 = CS
        L12_2 = L12_2.UnityEngine
        L12_2 = L12_2.UI
        L12_2 = L12_2.Navigation
        L12_2 = L12_2.Mode
        L12_2 = L12_2.Explicit
        L11_2.mode = L12_2
        L12_2 = NavigationType
        L12_2 = L12_2.Vertical
        if A1_2 == L12_2 then
          L10_2.selectOnDown = L5_2
          L11_2.selectOnUp = L4_2
          if A2_2 then
            L11_2.selectOnDown = nil
          end
        else
          L12_2 = NavigationType
          L12_2 = L12_2.Horizontal
          if A1_2 == L12_2 then
            L10_2.selectOnRight = L5_2
            L11_2.selectOnLeft = L4_2
            if A2_2 then
              L11_2.selectOnRight = nil
            end
          end
        end
        L4_2.navigation = L10_2
        L5_2.navigation = L11_2
      else
        L10_2 = L5_2.navigation
        L11_2 = CS
        L11_2 = L11_2.UnityEngine
        L11_2 = L11_2.UI
        L11_2 = L11_2.Navigation
        L11_2 = L11_2.Mode
        L11_2 = L11_2.Explicit
        L10_2.mode = L11_2
        if A3_2 then
          L10_2.selectOnUp = nil
          L10_2.selectOnLeft = nil
        end
        L5_2.navigation = L10_2
      end
    end
  end
  L6_2 = #A0_2
  if L6_2 == 1 then
    L5_2 = A0_2[1]
    L6_2 = L5_2.navigation
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Navigation
    L7_2 = L7_2.Mode
    L7_2 = L7_2.Explicit
    L6_2.mode = L7_2
    L6_2.selectOnUp = nil
    L6_2.selectOnDown = nil
    L6_2.selectOnLeft = nil
    L6_2.selectOnRight = nil
    L5_2.navigation = L6_2
  end
end
L0_1.setup_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = A0_2.navigation
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Navigation
  L4_2 = L4_2.Mode
  L4_2 = L4_2.Explicit
  L3_2.mode = L4_2
  L4_2 = A1_2.navigation
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Navigation
  L5_2 = L5_2.Mode
  L5_2 = L5_2.Explicit
  L4_2.mode = L5_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  if A2_2 == L5_2 then
    L3_2.selectOnDown = A1_2
    L4_2.selectOnUp = A0_2
  else
    L5_2 = NavigationType
    L5_2 = L5_2.Horizontal
    if A2_2 == L5_2 then
      L3_2.selectOnRight = A1_2
      L4_2.selectOnLeft = A0_2
    end
  end
  A0_2.navigation = L3_2
  A1_2.navigation = L4_2
end
L0_1.setup_btn_navigation = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.Utils
  L0_2 = L0_2.is_gamepad_input
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.GlobalVars
    L0_2 = L0_2.s_AudioManager
    L1_2 = L0_2
    L0_2 = L0_2.PostEvent
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.UINavigationSoundEvent
    L0_2(L1_2, L2_2)
  end
end
L0_1.play_navigation_audio = L1_1
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Vector3
L2_1 = 9999
L3_1 = 9999
L4_1 = 0
L1_1 = L1_1(L2_1, L3_1, L4_1)
L0_1._very_far_pos = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.SuperScrollView
  L1_2 = L1_2.PosVisibleTool
  L1_2 = L1_2.IsInvisible
  L2_2 = A0_2.transform
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  return L1_2
end
L0_1.is_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 ~= nil then
    L1_2 = #A0_2
    if L1_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = #A0_2
  L2_2 = 1
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1.setup_navigation_between_two_line
    L7_2 = A0_2[L5_2]
    L8_2 = L5_2 + 1
    L8_2 = A0_2[L8_2]
    L6_2(L7_2, L8_2)
    L5_2 = L5_2 + 1
  end
end
L0_1.setup_multi_line_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil and A1_2 ~= nil then
    L2_2 = #A0_2
    if L2_2 ~= 0 then
      L2_2 = #A1_2
      if L2_2 ~= 0 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2[1]
  L3_2 = L2_2.navigation
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Navigation
  L4_2 = L4_2.Mode
  L4_2 = L4_2.Explicit
  L3_2.mode = L4_2
  L3_2 = A1_2[1]
  L4_2 = L3_2.navigation
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Navigation
  L5_2 = L5_2.Mode
  L5_2 = L5_2.Explicit
  L4_2.mode = L5_2
  L4_2 = ipairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.navigation
    L9_2.selectOnDown = L3_2
    L8_2.navigation = L9_2
  end
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.navigation
    L9_2.selectOnUp = L2_2
    L8_2.navigation = L9_2
  end
end
L0_1.setup_navigation_between_two_line = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = G
  L0_2 = L0_2.CS
  L0_2 = L0_2.EventSystem
  L0_2 = L0_2.current
  L0_2 = L0_2.currentSelectedGameObject
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L2_2 = L2_2(L3_2)
  L3_2 = L0_2.transform
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.ClearAnimationState
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.try_clear_selected_object_animator_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    A1_2 = true
  end
  L2_2 = A0_2.childCount
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2.GetChild
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2.gameObject
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_children_visible = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L2_2 = A0_2.materialForRendering
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetEnvironmentSystem
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.GetFrameCaptureManager
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.ReleaseCaptureFrame
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.FrameCaptureManager
  L6_2 = L6_2.CaptureUsage
  L6_2 = L6_2.TurnPage
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.CaptureFrame
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.CustomRP
  L6_2 = L6_2.FrameCapture
  L6_2 = L6_2.CaptureType
  L6_2 = L6_2.Game_UI
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.FrameCaptureManager
  L7_2 = L7_2.CaptureUsage
  L7_2 = L7_2.TurnPage
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.CustomRP
  L8_2 = L8_2.FrameCapture
  L8_2 = L8_2.CaptureFeature
  L8_2 = L8_2.Immediate
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.CoroutineUtils
  L4_2 = L4_2.InvokeNextFrame
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    if not L0_3 then
      return
    end
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.CustomRP
    L0_3 = L0_3.FrameCapture
    L1_3 = L0_3
    L0_3 = L0_3.GetTarget
    L0_3 = L0_3(L1_3)
    A0_2.texture = L0_3
    L1_3 = A1_2
    if L1_3 then
      L1_3 = A1_2
      L1_3()
    end
  end
  L4_2(L5_2)
end
L0_1.set_screen_shot = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.GetEnvironmentSystem
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetFrameCaptureManager
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.ReleaseCaptureFrame
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.FrameCaptureManager
  L4_2 = L4_2.CaptureUsage
  L4_2 = L4_2.TurnPage
  L2_2(L3_2, L4_2)
end
L0_1.release_screen_shot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L6_2 then
        L6_2.IsShowTipBySelected = A1_2
      end
    end
  else
    A0_2.IsShowTipBySelected = A1_2
  end
end
L0_1.setup_in_control_tip_enable = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.is_item_within_viewport = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.pivot
  L1_2 = L1_2.x
  L1_2 = 0.5 - L1_2
  L2_2 = A0_2.pivot
  L2_2 = L2_2.y
  L2_2 = 0.5 - L2_2
  L3_2 = A0_2.rect
  L3_2 = L3_2.width
  L4_2 = A0_2.rect
  L4_2 = L4_2.height
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = A0_2.x
  L7_2 = L1_2 * L3_2
  L6_2 = L6_2 + L7_2
  L7_2 = A0_2.y
  L8_2 = L2_2 * L4_2
  L7_2 = L7_2 + L8_2
  L8_2 = A0_2.z
  return L5_2(L6_2, L7_2, L8_2)
end
L0_1._get_item_center_local_pos = L1_1
return L0_1
