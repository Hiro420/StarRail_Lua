local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GuideTextPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  A0_2._need_play_fade_out = false
  L1_2 = L1_1.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._anim_cmpt = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2._res_config
  if L4_2 == nil then
    return
  end
  L4_2 = A0_2._res_config
  L4_2 = L4_2.TextPath
  L5_2 = L1_1.SafeGetCmpt
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Text
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.root
  L8_2 = L4_2
  L9_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 ~= nil then
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetTextID
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = L1_1.SafeGetCmpt
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.MonoInControlTip
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.root
  L9_2 = A0_2._res_config
  L9_2 = L9_2.KeyMapPath
  L10_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 ~= nil then
    L7_2 = G
    L7_2 = L7_2.StrExt
    L7_2 = L7_2.IsNullOrEmpty
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.SetInControlTipKey
      L9_2 = A2_2
      L7_2(L8_2, L9_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = A3_2 or L7_2
  if not A3_2 then
    L7_2 = false
  end
  A0_2._need_play_fade_out = L7_2
end
L0_1._show_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._parent_trans
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.adjust_position
  L3_2 = A0_2._parent_trans
  L1_2(L2_2, L3_2)
end
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._res_config = A1_2
  A0_2._parent_trans = A2_2
end
L0_1.set_guide_res_config = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._need_play_fade_out
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = A2_2
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._anim_cmpt
  if L3_2 == nil then
    L3_2 = A1_2
    L4_2 = A2_2
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L1_1.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RPGFadeAnimation
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L6_2 = ""
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 == nil then
    L4_2 = A1_2
    L5_2 = A2_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = L3_2.ExitAnimationClip
  L4_2 = L4_2.name
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RPGAnimationEvent
  L5_2 = L5_2.Get
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.transform
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.AddAnimationEvent
  L8_2 = L4_2
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = A1_2
    L1_3 = A2_2
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._anim_cmpt
  L7_2 = L6_2
  L6_2 = L6_2.Play
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
end
L0_1.try_play_fade_out = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._res_config
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = A0_2._res_config
    L3_2 = L3_2.ContentPath
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L2_2 = A0_2._operation_node
  if L2_2 == nil then
    L2_2 = L1_1.SafeFind
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L4_2 = A0_2._res_config
    L4_2 = L4_2.ContentPath
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._operation_node = L2_2
    L2_2 = A0_2._operation_node
    L2_2 = L2_2.localPosition
    A0_2._cache_pos = L2_2
  else
    L2_2 = A0_2._operation_node
    L3_2 = A0_2._cache_pos
    L2_2.localPosition = L3_2
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._operation_node
  L2_2(L3_2)
  L2_2 = A0_2._operation_node
  L3_2 = L2_2
  L2_2 = L2_2.LuaGetWorldCorners
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.LuaGetLocalCorners
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.InverseTransformPoint
  L6_2 = L2_2[0]
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.InverseTransformPoint
  L7_2 = L2_2[2]
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_2[0]
  L7_2 = L3_2[2]
  L8_2 = 0
  L9_2 = 0
  L10_2 = 10
  L11_2 = L4_2.x
  L12_2 = L6_2.x
  L12_2 = L12_2 + L10_2
  if L11_2 < L12_2 then
    L11_2 = L6_2.x
    L11_2 = L8_2 + L11_2
    L11_2 = L11_2 + L10_2
    L12_2 = L4_2.x
    L8_2 = L11_2 - L12_2
  end
  L11_2 = L5_2.x
  L12_2 = L7_2.x
  L12_2 = L12_2 - L10_2
  if L11_2 > L12_2 then
    L11_2 = L5_2.x
    L12_2 = L7_2.x
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 + L10_2
    L8_2 = L8_2 - L11_2
  end
  L11_2 = L4_2.y
  L12_2 = L6_2.y
  L12_2 = L12_2 + L10_2
  if L11_2 < L12_2 then
    L11_2 = L6_2.y
    L11_2 = L11_2 + L10_2
    L12_2 = L4_2.y
    L11_2 = L11_2 - L12_2
    L9_2 = L9_2 + L11_2
  end
  L11_2 = L5_2.y
  L12_2 = L7_2.y
  L12_2 = L12_2 - L10_2
  if L11_2 > L12_2 then
    L11_2 = L5_2.y
    L12_2 = L7_2.y
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 + L10_2
    L9_2 = L9_2 - L11_2
  end
  L11_2 = A0_2._operation_node
  L11_2 = L11_2.localPosition
  L12_2 = L11_2.x
  L12_2 = L12_2 + L8_2
  L11_2.x = L12_2
  L12_2 = L11_2.y
  L12_2 = L12_2 + L9_2
  L11_2.y = L12_2
  L12_2 = A0_2._operation_node
  L12_2.localPosition = L11_2
end
L0_1.adjust_position = L2_1
return L0_1
