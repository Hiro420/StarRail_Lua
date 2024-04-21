local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SceneObjClickHintDotPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.2
L2_1 = "MiniGameClickAreaHint_FadeIn"
L3_1 = "MiniGameClickAreaHint_FadeOut"
L4_1 = "FadeIn"
L5_1 = "FadeOut"
L6_1 = "Loop"
L7_1 = "Hover"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.UIAdaptiveDeviceType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.UIAdaptiveDeviceType
  L2_2 = L2_2.PC
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L1_2 = L1_2.transform
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L3_2 = L1_1
    L4_2 = L1_1
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2.localScale = L2_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_out_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_hovered
  if L2_2 ~= nil then
    L2_2 = A0_2._is_hovered
    if A1_2 == L2_2 then
      return
    end
  end
  A0_2._is_hovered = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_active_status
  L2_2(L3_2)
end
L0_1.set_hovered = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_selected = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_is_active
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.set_selected = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._is_show = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_is_active
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.set_show = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_MainCamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = A1_2.position
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._screen_pos = L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.ScreenPointToLocalPointInRectangle
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L4_2 = L4_2.parent
  L5_2 = A0_2._screen_pos
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UICamera
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = L4_2.x
  L8_2 = L4_2.y
  L9_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.localPosition = L6_2
end
L0_1.update_position = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._screen_pos
  return L1_2
end
L0_1.get_screen_position = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_show
  if L1_2 then
    L1_2 = A0_2._is_selected
    L1_2 = not L1_2
  end
  return L1_2
end
L0_1.is_hint_active = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_hint_active
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._is_active_internal
  if L3_2 ~= nil then
    L3_2 = A0_2._is_active_internal
    if L2_2 == L3_2 then
      return
    end
  end
  A0_2._is_active_internal = L2_2
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = A0_2._is_active_internal
    L3_2(L4_2, L5_2)
    if A1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = L7_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.ResetTrigger
      L5_2 = L6_1
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.animator
      L4_2 = L3_2
      L3_2 = L3_2.SetTrigger
      L5_2 = L4_1
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._refresh_active_status
      L3_2(L4_2)
    end
  elseif A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = L7_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = A0_2._is_active_internal
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_is_active = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_active_internal
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_hovered
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = L7_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_active_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_active_status
  L1_2(L2_2)
end
L0_1._on_fade_in_anim_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = A0_2._is_active_internal
  L1_2(L2_2, L3_2)
end
L0_1._on_fade_out_anim_end = L8_1
return L0_1
