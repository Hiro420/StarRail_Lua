local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleSingleBtnLineItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 15
L2_1 = 2000.0
L3_1 = -10000.0
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = #A1_2
  if L2_2 <= 0 then
    return
  end
  A0_2._line_table = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer
  L3_2 = L2_2
  L2_2 = L2_2.SetMaterialInstance
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer
  L2_2 = L2_2.useBezierCurve
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.line_renderer
    L2_2.useBezierCurve = false
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_whole_line
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = A0_2._line_table
  L3_2 = #L3_2
  L4_2 = 1
  while L3_2 >= L4_2 do
    L5_2 = A0_2._line_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.IsBezier
    if not L6_2 then
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.Vector2
      L7_2 = L5_2.p1
      L7_2 = L7_2.x
      L8_2 = L5_2.p1
      L8_2 = L8_2.y
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L6_2 = 1
      L7_2 = L1_1
      L7_2 = L7_2 + 1
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = CS
        L10_2 = L10_2.UnityEngine
        L10_2 = L10_2.Vector2
        L11_2 = 0
        L12_2 = 0
        L10_2 = L10_2(L11_2, L12_2)
        pos = L10_2
        L11_2 = L1_2
        L10_2 = L1_2.Add
        L12_2 = pos
        L10_2(L11_2, L12_2)
      end
      L6_2 = L4_2 - 1
      L5_2.StartIndex = L6_2
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L2_2
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L4_2 = L4_2 + 1
    end
    L4_2 = L4_2 + 1
  end
  L5_2 = A0_2._line_table
  L6_2 = A0_2._line_table
  L6_2 = #L6_2
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector2
  L7_2 = L5_2.p2
  L7_2 = L7_2.x
  L8_2 = L5_2.p2
  L8_2 = L8_2.y
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L1_2
  L7_2 = L1_2.Add
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.line_renderer
  L8_2 = L7_2
  L7_2 = L7_2.SetLinePoints
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = #L2_2
  if 0 < L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.line_renderer
    L7_2 = L7_2.curves
    L9_2 = L7_2
    L8_2 = L7_2.Clear
    L8_2(L9_2)
    L8_2 = 1
    L9_2 = #L2_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L2_2[L11_2]
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.Client
      L13_2 = L13_2.UILineRenderer
      L13_2 = L13_2.Curve
      L13_2 = L13_2()
      L14_2 = CS
      L14_2 = L14_2.UnityEngine
      L14_2 = L14_2.Vector2
      L15_2 = L12_2.p1
      L15_2 = L15_2.x
      L16_2 = L12_2.p1
      L16_2 = L16_2.y
      L14_2 = L14_2(L15_2, L16_2)
      L13_2.startPoint = L14_2
      L14_2 = CS
      L14_2 = L14_2.UnityEngine
      L14_2 = L14_2.Vector2
      L15_2 = L12_2.p2
      L15_2 = L15_2.x
      L16_2 = L12_2.p2
      L16_2 = L16_2.y
      L14_2 = L14_2(L15_2, L16_2)
      L13_2.endPoint = L14_2
      L14_2 = CS
      L14_2 = L14_2.UnityEngine
      L14_2 = L14_2.Vector2
      L15_2 = 0
      L16_2 = 0
      L14_2 = L14_2(L15_2, L16_2)
      L13_2.startTangentLength = L14_2
      L14_2 = CS
      L14_2 = L14_2.UnityEngine
      L14_2 = L14_2.Vector2
      L15_2 = 180
      L16_2 = L12_2.CurveLength
      L14_2 = L14_2(L15_2, L16_2)
      L13_2.endTangentLength = L14_2
      L14_2 = L12_2.StartIndex
      L13_2.startIndex = L14_2
      L14_2 = L1_1
      L13_2.segments = L14_2
      L15_2 = L7_2
      L14_2 = L7_2.Add
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L8_2 = A0_2._binder
    L8_2 = L8_2.line_renderer
    L9_2 = L8_2
    L8_2 = L8_2.UpdateBezierCurves
    L8_2(L9_2)
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.line_renderer
  L8_2 = L7_2
  L7_2 = L7_2.SetRectTransformSizeDelta
  L9_2 = true
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._setup_tile
  L7_2(L8_2)
end
L0_1._setup_whole_line = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.line_renderer
      L0_3 = L0_3.Length
      L1_3 = A0_2._binder
      L1_3 = L1_3.line_renderer
      L1_3 = L1_3.materialForRendering
      L3_3 = L1_3
      L2_3 = L1_3.GetVector
      L4_3 = "_MainTex_ST"
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L2_3.x
      L4_3 = L2_3.y
      L5_3 = 1000 / L3_3
      L2_1 = L5_3
      L6_3 = L1_3
      L5_3 = L1_3.SetVector
      L7_3 = "_MainTex_ST"
      L8_3 = CS
      L8_3 = L8_3.UnityEngine
      L8_3 = L8_3.Vector4
      L9_3 = L2_1
      L9_3 = L0_3 / L9_3
      L10_3 = L4_3
      L11_3 = 0
      L12_3 = 0
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
      L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L6_3 = L1_3
      L5_3 = L1_3.GetVector
      L7_3 = "_MainSpeed"
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = L5_3.x
      L6_3 = 1000 / L6_3
      L3_1 = L6_3
      L7_3 = L1_3
      L6_3 = L1_3.SetVector
      L8_3 = "_MainSpeed"
      L9_3 = CS
      L9_3 = L9_3.UnityEngine
      L9_3 = L9_3.Vector4
      L10_3 = L3_1
      L10_3 = L0_3 / L10_3
      L11_3 = L5_3.y
      L12_3 = L5_3.z
      L13_3 = L5_3.w
      L9_3, L10_3, L11_3, L12_3, L13_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_tile = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = 0
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L2_2 = L4_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = 180
  L6_2 = A1_2.CurveLength
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.line_renderer
  L4_2.startTangentLength = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.line_renderer
  L4_2.endTangentLength = L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.line_renderer
  L5_2 = L4_2
  L4_2 = L4_2.GenerateBezierCurve
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector2
  L7_2 = A1_2.p1
  L7_2 = L7_2.x
  L8_2 = A1_2.p1
  L8_2 = L8_2.y
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector2
  L8_2 = A1_2.p2
  L8_2 = L8_2.x
  L9_2 = A1_2.p2
  L9_2 = L9_2.y
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.line_renderer
  L8_2 = L8_2.startTangentLength
  L9_2 = A0_2._binder
  L9_2 = L9_2.line_renderer
  L9_2 = L9_2.endTangentLength
  L10_2 = A0_2._binder
  L10_2 = L10_2.line_renderer
  L10_2 = L10_2.curveSegments
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._setup_bezier = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  A0_2._point_list = L2_2
  L2_2 = A0_2._point_list
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = A1_2.p1
  L5_2 = L5_2.x
  L6_2 = A1_2.p1
  L6_2 = L6_2.y
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._point_list
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = A1_2.p2
  L5_2 = L5_2.x
  L6_2 = A1_2.p2
  L6_2 = L6_2.y
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.line_renderer
  L3_2 = L2_2
  L2_2 = L2_2.SetLinePoints
  L4_2 = A0_2._point_list
  L2_2(L3_2, L4_2)
end
L0_1._setup_line = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_click_btn = L4_1
return L0_1
