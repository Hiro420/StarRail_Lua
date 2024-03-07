local L0_1, L1_1, L2_1, L3_1
L0_1 = "RogueNousCurrentValue_Hint"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueNousValueCurBuoyPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueNous_NousValueMoveTime"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._anim_duration = L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_value
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._value = A1_2
end
L1_1.set_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = A1_2
  L5_2 = L2_2.anchoredPosition
  L5_2 = L5_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.anchoredPosition = L3_2
  A0_2._position = A1_2
end
L1_1.set_position = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_recommended
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_is_in_recommended_seg = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._anim_end_callback = A3_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.Promises
  L5_2 = L5_2.Promise
  L5_2 = L5_2.All
  L7_2 = A0_2
  L6_2 = A0_2._play_move_anim
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._play_num_inc_anim
  L9_2 = A2_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.ThenLuaAction
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_end
    L0_3(L1_3)
  end
  L6_2(L7_2, L8_2)
  if A4_2 then
    L7_2 = A0_2
    L6_2 = A0_2.show_full_screen_block
    L8_2 = A0_2._anim_duration
    L6_2(L7_2, L8_2)
  end
end
L1_1.play_move_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Promises
  L2_2 = L2_2.Promise
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L4_2 = A0_2._binder
  L4_2 = L4_2.move_anim
  L5_2 = L4_2
  L4_2 = L4_2.PlayAtCurPos
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector2
  L7_2 = L3_2.anchoredPosition
  L7_2 = L7_2.x
  L7_2 = A1_2 - L7_2
  L8_2 = 0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._anim_duration
  function L8_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.Resolve
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2._position = A1_2
  return L2_2
end
L1_1._play_move_anim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Promises
  L2_2 = L2_2.Promise
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.num_inc_anim
  L4_2 = A0_2._value
  L3_2.StartValue = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.num_inc_anim
  L3_2.EndValue = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.num_inc_anim
  L4_2 = A0_2._anim_duration
  L3_2.Duration = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.num_inc_anim
  L4_2 = L3_2
  L3_2 = L3_2.Play
  function L5_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.Resolve
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
  A0_2._value = A1_2
  return L2_2
end
L1_1._play_num_inc_anim = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._anim_end_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._anim_end_callback
    L1_2()
  end
end
L1_1._on_anim_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L1_1.play_hint_animation = L2_1
return L1_1
