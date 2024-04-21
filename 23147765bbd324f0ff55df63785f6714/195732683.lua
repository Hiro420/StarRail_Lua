local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = "RogueNousStoryLine_FadeIn"
L1_1 = "RogueNousStoryLine_FadeIn_Dark"
L2_1 = "RogueNousStoryLine_Hint"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "RogueNousStoryLinePanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.line_renderers
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._init_line_renderer_with_end_point
    L9_2 = L6_2
    L10_2 = A1_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer_root
  L3_2 = L2_2
  L2_2 = L2_2.SetHandleProgress
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer_root
  L3_2 = L2_2
  L2_2 = L2_2.ForceMeshUpdate
  L2_2(L3_2)
end
L3_1.set_fill_percent = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer_root
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2.fillColor = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer_root
  L3_2 = L2_2
  L2_2 = L2_2.ForceMeshUpdate
  L2_2(L3_2)
end
L3_1.set_fill_color = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer_root
  L2_2 = L2_2.fillColor
  L2_2.a = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.line_renderer_root
  L3_2.fillColor = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.line_renderer_root
  L4_2 = L3_2
  L3_2 = L3_2.ForceMeshUpdate
  L3_2(L4_2)
end
L3_1.set_line_alpha = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A1_2
  L3_2 = A1_2.SetMaterialInstance
  L3_2(L4_2)
  L3_2 = A1_2.curves
  L3_2 = L3_2[0]
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = A2_2[1]
  L6_2 = A2_2[2]
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.endPoint = L4_2
  L5_2 = A1_2
  L4_2 = A1_2.GenerateBezierCurve
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.SetRectTransformSizeDelta
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.ForceMeshUpdate
  L4_2(L5_2)
end
L3_1._init_line_renderer_with_end_point = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.animation
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
end
L3_1.play_normal_fade_in_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L3_1.play_highlight_fade_in_anim = L4_1
return L3_1
