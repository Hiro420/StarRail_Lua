local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardLinePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if L2_2 ~= 1 then
      goto lbl_10
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_10::
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._point_list
  if L2_2 == nil then
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
  else
    L2_2 = A0_2._point_list
    L3_2 = L2_2
    L2_2 = L2_2.Clear
    L2_2(L3_2)
  end
  L2_2 = #A1_2
  L3_2 = A1_2[1]
  L4_2 = L3_2
  L3_2 = L3_2.get_root_transform
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.localPosition
  L5_2 = ipairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    if L8_2 == 1 then
      L10_2 = A0_2._point_list
      L11_2 = L10_2
      L10_2 = L10_2.Add
      L12_2 = CS
      L12_2 = L12_2.UnityEngine
      L12_2 = L12_2.Vector2
      L12_2 = L12_2.zero
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.show_history_dot
      L12_2 = true
      L10_2(L11_2, L12_2)
    else
      L11_2 = L9_2
      L10_2 = L9_2.get_root_transform
      L10_2 = L10_2(L11_2)
      L11_2 = L10_2.localPosition
      L12_2 = L11_2.x
      L13_2 = L4_2.x
      L12_2 = L12_2 - L13_2
      L13_2 = L11_2.y
      L14_2 = L4_2.y
      L13_2 = L13_2 - L14_2
      L14_2 = A0_2._point_list
      L15_2 = L14_2
      L14_2 = L14_2.Add
      L16_2 = CS
      L16_2 = L16_2.UnityEngine
      L16_2 = L16_2.Vector2
      L17_2 = L12_2
      L18_2 = L13_2
      L16_2, L17_2, L18_2 = L16_2(L17_2, L18_2)
      L14_2(L15_2, L16_2, L17_2, L18_2)
      L15_2 = L9_2
      L14_2 = L9_2.show_history_dot
      L16_2 = L8_2 ~= L2_2
      L14_2(L15_2, L16_2)
    end
    L11_2 = L9_2
    L10_2 = L9_2.set_detail_enable
    L12_2 = true
    L10_2(L11_2, L12_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.line_renderer
  L6_2 = L5_2
  L5_2 = L5_2.SetProgress
  L7_2 = 1.0
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.line_renderer
  L6_2 = L5_2
  L5_2 = L5_2.SetLinePoints
  L7_2 = A0_2._point_list
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node
  L6_2 = A1_2[1]
  L7_2 = L6_2
  L6_2 = L6_2.get_history_dot_transform
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.position
  L5_2.position = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node
  L6_2 = L5_2
  L5_2 = L5_2.SetAsLastSibling
  L5_2(L6_2)
  L5_2 = A1_2[L2_2]
  L6_2 = L5_2
  L5_2 = L5_2.get_root_transform
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.SetAsLastSibling
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
return L0_1
