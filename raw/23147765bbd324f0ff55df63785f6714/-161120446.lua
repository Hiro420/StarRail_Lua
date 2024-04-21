local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonPuzzleBossHPBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1.hp_hurt = "UI_MakeFilmMainpage_BossHp_Hurt"
L0_1.hp_heal = "UI_MakeFilmMainpage_BossHp_Recover"
L0_1.hp_zero = "UI_MakeFilmMainpage_BossHp_Fadeout"
L1_1 = {}
L1_1.None = 0
L1_1.Hurt = 1
L1_1.Heal = 2
L0_1.HPBarTweenState = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = L0_1.HPBarTweenState
  L1_2 = L1_2.None
  A0_2._tween_state = L1_2
  A0_2._tween_begin_value = 0
  A0_2._tween_end_value = 0
  A0_2._tween_begin_time = 0
  A0_2._tween_front_time = 0
  A0_2._tween_back_time = 0
  A0_2._tween_delay = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_front_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_bg_value
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._tween_end_value = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_boss_hp_bar
  L4_2 = A0_2.hp_zero
  L2_2(L3_2, L4_2)
end
L0_1.setup_init_value = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  L7_2 = A0_2
  L6_2 = A0_2._stop_tween
  L6_2(L7_2)
  A0_2._tween_begin_value = A1_2
  A0_2._tween_end_value = A2_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Time
  L6_2 = L6_2.time
  A0_2._tween_begin_time = L6_2
  A0_2._tween_front_time = A3_2
  A0_2._tween_back_time = A4_2
  A0_2._tween_delay = A5_2
  L7_2 = A0_2
  L6_2 = A0_2._start_tween
  L6_2(L7_2)
end
L0_1.setup_view_with_tween = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_tween
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_boss_hp_bar
  L2_2 = L1_2
  L1_2 = L1_2.PlayQueued
  L3_2 = A0_2.hp_zero
  L1_2(L2_2, L3_2)
end
L0_1.show_hp_zero_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_front_value
  L3_2 = A0_2._tween_begin_value
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_bg_value
  L3_2 = A0_2._tween_begin_value
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tween_begin_value
  L2_2 = A0_2._tween_end_value
  if L1_2 > L2_2 then
    L1_2 = L0_1.HPBarTweenState
    L1_2 = L1_2.Hurt
    A0_2._tween_state = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_boss_hp_bar
    L3_2 = A0_2.hp_heal
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_boss_hp_bar
    L3_2 = A0_2.hp_hurt
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._tween_begin_value
    L2_2 = A0_2._tween_end_value
    if L1_2 < L2_2 then
      L1_2 = L0_1.HPBarTweenState
      L1_2 = L1_2.Heal
      A0_2._tween_state = L1_2
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_boss_hp_bar
      L3_2 = A0_2.hp_heal
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_tick_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._start_tween = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_front_value
  L3_2 = A0_2._tween_end_value
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_bg_value
  L3_2 = A0_2._tween_end_value
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.HPBarTweenState
  L1_2 = L1_2.None
  A0_2._tween_state = L1_2
  A0_2._tween_begin_value = 0
  A0_2._tween_end_value = 0
  A0_2._tween_begin_time = 0
  A0_2._tween_front_time = 0
  A0_2._tween_back_time = 0
  A0_2._tween_delay = 0
end
L0_1._stop_tween = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  A0_2._mono_lua_tick = L1_2
  L1_2 = A0_2._mono_lua_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetLuaCallback
  L3_2 = A0_2._on_custom_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_mono_lua_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mono_lua_tick
  if L2_2 == nil then
    if not A1_2 then
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._init_mono_lua_tick
    L2_2(L3_2)
  end
  L2_2 = A0_2._mono_lua_tick
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_tick_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "BossHP _on_custom_tick"
  L1_2(L2_2)
  L1_2 = A0_2._tween_state
  L2_2 = L0_1.HPBarTweenState
  L2_2 = L2_2.None
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_tick_enable
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L3_2 = A0_2
  L2_2 = A0_2._refresh_anim_state
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tween_begin_time
  L3_2 = A0_2._tween_front_time
  L2_2 = L2_2 + L3_2
  if L1_2 > L2_2 then
    L2_2 = A0_2._tween_begin_time
    L3_2 = A0_2._tween_back_time
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._tween_delay
    L2_2 = L2_2 + L3_2
    if L1_2 > L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._stop_tween
      L2_2(L3_2)
    end
  end
end
L0_1._on_custom_tick = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._tween_state
  L3_2 = L0_1.HPBarTweenState
  L3_2 = L3_2.None
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A0_2._tween_begin_time
  L2_2 = A1_2 - L2_2
  L3_2 = A0_2._tween_state
  L4_2 = L0_1.HPBarTweenState
  L4_2 = L4_2.Hurt
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_front_value
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Mathf
    L5_2 = L5_2.SmoothStep
    L6_2 = A0_2._tween_begin_value
    L7_2 = A0_2._tween_end_value
    L8_2 = A0_2._tween_front_time
    L8_2 = L2_2 / L8_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = A0_2._tween_delay
    if L2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._set_bg_value
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Mathf
      L5_2 = L5_2.SmoothStep
      L6_2 = A0_2._tween_begin_value
      L7_2 = A0_2._tween_end_value
      L8_2 = A0_2._tween_delay
      L8_2 = L2_2 - L8_2
      L9_2 = A0_2._tween_back_time
      L8_2 = L8_2 / L9_2
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
  L3_2 = A0_2._tween_state
  L4_2 = L0_1.HPBarTweenState
  L4_2 = L4_2.Heal
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_bg_value
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.Mathf
    L5_2 = L5_2.SmoothStep
    L6_2 = A0_2._tween_begin_value
    L7_2 = A0_2._tween_end_value
    L8_2 = A0_2._tween_back_time
    L8_2 = L2_2 / L8_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = A0_2._tween_delay
    if L2_2 > L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._set_front_value
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.Mathf
      L5_2 = L5_2.SmoothStep
      L6_2 = A0_2._tween_begin_value
      L7_2 = A0_2._tween_end_value
      L8_2 = A0_2._tween_delay
      L8_2 = L2_2 - L8_2
      L9_2 = A0_2._tween_front_time
      L8_2 = L8_2 / L9_2
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L0_1._refresh_anim_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_boss_hp_bar
  L2_2.fillAmount = A1_2
end
L0_1._set_front_value = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_boss_hp_bar
  L2_2.bgAmount = A1_2
end
L0_1._set_bg_value = L1_1
return L0_1
