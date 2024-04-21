local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UIButtonEventManager"
L0_1 = L0_1(L1_1)
L1_1 = 0
L2_1 = CS
L2_1 = L2_1.UnityEngine
L2_1 = L2_1.Time
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil or A2_2 == nil then
    return
  end
  L4_2 = A0_2.onClick
  L5_2 = L4_2
  L4_2 = L4_2.RemoveAllListeners
  L4_2(L5_2)
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L2_1.frameCount
    L1_3 = L1_1
    if L1_3 == L0_3 then
      return
    end
    L1_1 = L0_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.GlobalVars
    L1_3 = L1_3.s_UIManager
    L2_3 = L1_3
    L1_3 = L1_3.IsUILocked
    L1_3 = L1_3(L2_3)
    if L1_3 then
      return
    end
    L1_3 = L0_1.is_custom_button
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.PostButtonSound
      L1_3(L2_3)
    end
    L1_3 = A2_2
    L2_3 = A1_2
    L3_3 = A3_2
    L1_3(L2_3, L3_3)
  end
  L5_2 = A0_2.onClick
  L6_2 = L5_2
  L5_2 = L5_2.AddListener
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.onClick
  return L5_2
end
L0_1.bind = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsType
  L2_2 = A0_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.IsCsType
    L2_2 = A0_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AnimatorButton
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = G
      L1_2 = L1_2.UtilEngineWrap
      L1_2 = L1_2.IsCsType
      L2_2 = A0_2
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.IntroButton
      L1_2 = L1_2(L2_2, L3_2)
    end
  end
  return L1_2
end
L0_1.is_custom_button = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  if nil == A0_2 then
    return
  end
  L1_2 = A0_2.onClick
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
end
L0_1.unbind = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = G
  L6_2 = L6_2.UtilEngineWrap
  L6_2 = L6_2.IsCsObjectNull
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    return
  end
  L6_2 = G
  L6_2 = L6_2.GameObjectExtensions
  L6_2 = L6_2.RemoveTrigger
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = A5_2
  if A2_2 ~= nil then
    L7_2 = A2_2
    L8_2 = G
    L8_2 = L8_2.GameObjectExtensions
    L8_2 = L8_2.AddTrigger
    L9_2 = A0_2
    L10_2 = CS
    L10_2 = L10_2.UnityEngine
    L10_2 = L10_2.EventSystems
    L10_2 = L10_2.EventTriggerType
    L10_2 = L10_2.PointerDown
    function L11_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L7_2
      L2_3 = A1_2
      L3_3 = A0_3
      L4_3 = L6_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L8_2(L9_2, L10_2, L11_2)
  end
  if A3_2 ~= nil then
    L7_2 = A3_2
    L8_2 = G
    L8_2 = L8_2.GameObjectExtensions
    L8_2 = L8_2.AddTrigger
    L9_2 = A0_2
    L10_2 = CS
    L10_2 = L10_2.UnityEngine
    L10_2 = L10_2.EventSystems
    L10_2 = L10_2.EventTriggerType
    L10_2 = L10_2.PointerUp
    function L11_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L7_2
      L2_3 = A1_2
      L3_3 = A0_3
      L4_3 = L6_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L8_2(L9_2, L10_2, L11_2)
  end
  if A4_2 ~= nil then
    L7_2 = A4_2
    L8_2 = G
    L8_2 = L8_2.GameObjectExtensions
    L8_2 = L8_2.AddTrigger
    L9_2 = A0_2
    L10_2 = CS
    L10_2 = L10_2.UnityEngine
    L10_2 = L10_2.EventSystems
    L10_2 = L10_2.EventTriggerType
    L10_2 = L10_2.PointerExit
    function L11_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L7_2
      L2_3 = A1_2
      L3_3 = A0_3
      L4_3 = L6_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.bind_hold = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
end
L0_1.unbind_hold = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LongPressEvent
  L4_2 = L4_2.Get
  L5_2 = A0_2.gameObject
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.RemoveShortDownClickEvents
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddShortDownClickEvent
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_short_down_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LongPressEvent
  L4_2 = L4_2.Get
  L5_2 = A0_2.gameObject
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.RemoveShortClickEvents
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddShortClickEvent
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_short_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.LongPressEvent
  L6_2 = L6_2.Get
  L7_2 = A0_2.gameObject
  L6_2 = L6_2(L7_2)
  L8_2 = L6_2
  L7_2 = L6_2.RemoveLongClickEvents
  L7_2(L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.AddLongClickEvent
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2, L9_2)
  if A4_2 ~= nil then
    L6_2.TotalTime = A4_2
  end
  if A5_2 ~= nil then
    L6_2.ShortClickTime = A5_2
  end
end
L0_1.bind_long_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LongPressEvent
  L4_2 = L4_2.Get
  L5_2 = A0_2.gameObject
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.RemoveReleaseEvents
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddReleaseEvent
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_release = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LongPressEvent
  L4_2 = L4_2.Get
  L5_2 = A0_2.gameObject
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.RemoveExitEvents
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddExitEvent
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_long_press_exit = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.LongPressEvent
  L7_2 = L7_2.Get
  L8_2 = A0_2.gameObject
  L7_2 = L7_2(L8_2)
  L9_2 = L7_2
  L8_2 = L7_2.RemoveRepeatClickEvents
  L8_2(L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.AddRepeatClickEvent
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A1_2._button_mutex
    if not L0_3 then
      L0_3 = A1_2._owner
      if L0_3 then
        L0_3 = A1_2._owner
        L0_3 = L0_3._button_mutex
      end
    end
    if L0_3 then
      L2_3 = L0_3
      L1_3 = L0_3.Check
      function L3_3()
        local L0_4, L1_4, L2_4
        L0_4 = A2_2
        L1_4 = A1_2
        L2_4 = A3_2
        L0_4(L1_4, L2_4)
      end
      L4_3 = A5_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L8_2(L9_2, L10_2)
  if A4_2 ~= nil then
    L7_2.TotalTime = A4_2
  end
  if A5_2 ~= nil then
    L7_2.RepeatTime = A5_2
  end
  if A6_2 ~= nil then
    L7_2.ShortClickTime = A6_2
  end
end
L0_1.bind_long_press_repeat = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LongPressEvent
  L4_2 = L4_2.Get
  L5_2 = A0_2.gameObject
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.RemoveOverShortClickTimeEvents
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddOverShortClickTime
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A2_2
    L1_3 = A1_2
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_over_short_click_time = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LongPressEvent
  L4_2 = L4_2.Get
  L5_2 = A0_2.gameObject
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.RemovePressingDownEvents
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddPressingDownEvent
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A2_2
    L2_3 = A1_2
    L3_3 = A0_3
    L4_3 = A3_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_pressing_down = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.LongPressEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.ClearAllEvents
  L2_2(L3_2)
end
L0_1.unbind_press = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil or A2_2 == nil then
    return
  end
  L4_2 = A0_2.onValueChanged
  if L4_2 == nil then
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.RemoveAllListeners
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.AddListener
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A2_2
    L2_3 = A1_2
    L3_3 = A0_3
    L4_3 = A3_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1.bind_value_change = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = L1_1
  return L1_2
end
L0_1.get_previous_click_frame = L3_1
return L0_1
