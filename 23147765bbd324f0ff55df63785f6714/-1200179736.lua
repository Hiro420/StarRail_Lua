local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ScrollRectPanel"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Vector2
L2_1 = 0
L3_1 = 1
L1_1 = L1_1(L2_1, L3_1)
L0_1.UPPER_LEFT = L1_1
L0_1.SURPLUS = 1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._View = nil
  A0_2._Padding = nil
  A0_2._Spacing = nil
  A0_2._CellSize = nil
  A0_2._MaxVisibleRow = 0
  A0_2._MaxVisibleColum = 0
  A0_2._ConstraintCount = 0
  A0_2._OnChangeEventListener = nil
  A0_2._OnChange = nil
  A0_2._UserParam = nil
  A0_2._DataCount = 0
  A0_2._OnCreatedItemsDisposeListener = nil
  A0_2._OnCreatedItemsDispose = nil
  A0_2._ItemsTopOrLeftDatas = nil
  A0_2._ItemsBottomOrRightDatas = nil
  A0_2._ItemPosDatas = nil
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._CreatedItems = L1_2
  A0_2._CalcVisibleBeginIndex = -1
  A0_2._CalcVisibleEndIndex = -1
  A0_2._CurrentVisibleBeginIndex = -1
  A0_2._CurrentVisibleEndIndex = -1
  A0_2.Transform = nil
  A0_2._OnValueChangedClosure = nil
  L1_2 = {}
  A0_2._TmpTableVisible = L1_2
  L1_2 = {}
  A0_2._TmpTableInVisible = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.Transform = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoScrollView
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._View = L2_2
  L2_2 = A0_2._View
  L3_2 = L2_2
  L2_2 = L2_2.BindView
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._Init
  L2_2(L3_2)
end
L0_1.bind_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2
  L9_2 = A0_2
  L8_2 = A0_2._CloseAllItems
  L8_2(L9_2)
  A0_2._OnChangeEventListener = A1_2
  A0_2._OnChange = A2_2
  A0_2._UserParam = A3_2
  A0_2._OnCreatedItemsDisposeListener = A6_2
  A0_2._OnCreatedItemsDispose = A7_2
  L9_2 = A0_2
  L8_2 = A0_2._RefreshBasicWhenDataCountChange
  L10_2 = A4_2
  L8_2(L9_2, L10_2)
  if nil ~= A5_2 then
    L8_2 = A0_2._View
    L8_2 = L8_2.ScrollRect
    L8_2.normalizedPosition = A5_2
  end
  L9_2 = A0_2
  L8_2 = A0_2._OnValueChanged
  L10_2 = A0_2._View
  L10_2 = L10_2.ScrollRect
  L10_2 = L10_2.normalizedPosition
  L8_2(L9_2, L10_2)
end
L0_1.SetupView = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._CreatedItems
  if nil ~= L1_2 then
    L1_2 = A0_2._OnCreatedItemsDispose
    if L1_2 ~= nil then
      L1_2 = 0
      L2_2 = A0_2._CreatedItems
      L3_2 = L2_2
      L2_2 = L2_2.Count
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2 - 1
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._OnCreatedItemsDisposeListener
        if nil ~= L5_2 then
          L5_2 = A0_2._OnCreatedItemsDispose
          L6_2 = A0_2._OnCreatedItemsDisposeListener
          L7_2 = A0_2._CreatedItems
          L8_2 = L7_2
          L7_2 = L7_2.Get
          L9_2 = L4_2
          L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
          L5_2(L6_2, L7_2, L8_2, L9_2)
        else
          L5_2 = A0_2._OnCreatedItemsDispose
          L6_2 = A0_2._CreatedItems
          L7_2 = L6_2
          L6_2 = L6_2.Get
          L8_2 = L4_2
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2)
          L5_2(L6_2, L7_2, L8_2, L9_2)
        end
        L5_2 = CS
        L5_2 = L5_2.UnityEngine
        L5_2 = L5_2.Object
        L5_2 = L5_2.Destroy
        L6_2 = A0_2._CreatedItems
        L7_2 = L6_2
        L6_2 = L6_2.Get
        L8_2 = L4_2
        L6_2 = L6_2(L7_2, L8_2)
        L6_2 = L6_2.ItemTrans
        L6_2 = L6_2.gameObject
        L5_2(L6_2)
      end
    else
      L1_2 = 0
      L2_2 = A0_2._CreatedItems
      L3_2 = L2_2
      L2_2 = L2_2.Count
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2 - 1
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._CreatedItems
        L6_2 = L5_2
        L5_2 = L5_2.Get
        L7_2 = L4_2
        L5_2 = L5_2(L6_2, L7_2)
        L5_2 = L5_2.UICodeObject
        if nil ~= L5_2 then
          L7_2 = L5_2
          L6_2 = L5_2.dispose
          L6_2(L7_2)
        end
        L6_2 = CS
        L6_2 = L6_2.UnityEngine
        L6_2 = L6_2.Object
        L6_2 = L6_2.Destroy
        L7_2 = A0_2._CreatedItems
        L8_2 = L7_2
        L7_2 = L7_2.Get
        L9_2 = L4_2
        L7_2 = L7_2(L8_2, L9_2)
        L7_2 = L7_2.ItemTrans
        L7_2 = L7_2.gameObject
        L6_2(L7_2)
      end
    end
    L1_2 = A0_2._CreatedItems
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
    L1_2 = A0_2._CreatedItems
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._CreatedItems
    L1_2(L2_2)
    A0_2._CreatedItems = nil
  end
  A0_2._DataCount = 0
  A0_2._CurrentVisibleBeginIndex = -1
  A0_2._CurrentVisibleEndIndex = -1
  L1_2 = A0_2._View
  if nil ~= L1_2 then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.RemoveCsEventHandle
    L2_2 = A0_2._View
    L2_2 = L2_2.ScrollRect
    L2_2 = L2_2.onValueChanged
    L3_2 = A0_2._OnValueChangedClosure
    L1_2(L2_2, L3_2)
  end
  A0_2._OnValueChangedClosure = nil
  A0_2.Transform = nil
  A0_2._View = nil
end
L0_1.dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._View
    L2_2 = L2_2.ScrollRect
    L3_2 = A0_2._View
    L3_2 = L3_2.Direction
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.MonoScrollView
    L4_2 = L4_2.Dir
    L4_2 = L4_2.Horizontal
    L3_2 = L3_2 == L4_2
    L2_2.horizontal = L3_2
    L2_2 = A0_2._View
    L2_2 = L2_2.ScrollRect
    L3_2 = A0_2._View
    L3_2 = L3_2.Direction
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.MonoScrollView
    L4_2 = L4_2.Dir
    L4_2 = L4_2.Vertical
    L3_2 = L3_2 == L4_2
    L2_2.vertical = L3_2
  else
    L2_2 = A0_2._View
    L2_2 = L2_2.ScrollRect
    L2_2.horizontal = false
    L2_2 = A0_2._View
    L2_2 = L2_2.ScrollRect
    L2_2.vertical = false
  end
end
L0_1.TurnOnMove = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not (A1_2 < 0) then
    L2_2 = A0_2._DataCount
    if not (A1_2 >= L2_2) then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L3_2 = A0_2
  L2_2 = A0_2._IsIndexVisible
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  if not (A1_2 < 0) then
    L2_2 = A0_2._ItemPosDatas
    L3_2 = L2_2
    L2_2 = L2_2.Count
    L2_2 = L2_2(L3_2)
    if not (A1_2 >= L2_2) then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L2_2 = L0_1.UPPER_LEFT
  L3_2 = A0_2._ItemPosDatas
  L4_2 = L3_2
  L3_2 = L3_2.Get
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._View
  L4_2 = L4_2.Content
  L4_2 = L4_2.sizeData
  L5_2 = A0_2._View
  L5_2 = L5_2.Direction
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.MonoScrollView
  L6_2 = L6_2.Dir
  L6_2 = L6_2.Vertical
  if L5_2 == L6_2 then
    L5_2 = L4_2.y
    L6_2 = A0_2._View
    L6_2 = L6_2.ViewportRect
    L6_2 = L6_2.rect
    L6_2 = L6_2.height
    L5_2 = L5_2 - L6_2
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L3_2.y
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 / L5_2
    if 1 < L6_2 then
      L6_2 = 1
    end
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector2
    L8_2 = L2_2.x
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L2_2 = L7_2
  else
    L5_2 = L4_2.x
    L6_2 = A0_2._View
    L6_2 = L6_2.ViewportRect
    L6_2 = L6_2.rect
    L6_2 = L6_2.width
    L5_2 = L5_2 - L6_2
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L3_2.x
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 / L5_2
    if 1 < L6_2 then
      L6_2 = 1
    end
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector2
    L8_2 = L6_2
    L9_2 = L2_2.y
    L7_2 = L7_2(L8_2, L9_2)
    L2_2 = L7_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._OnValueChanged
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L0_1.MoveToIndex = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._InitScrollRect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._InitLayout
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._InitStretchCellSize
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._InitMaxVisibleRowAndColum
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._InitCenterContent
  L1_2(L2_2)
end
L0_1._Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ScrollRect
  L2_2 = A0_2._View
  L2_2 = L2_2.Direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoScrollView
  L3_2 = L3_2.Dir
  L3_2 = L3_2.Horizontal
  L2_2 = L2_2 == L3_2
  L1_2.horizontal = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ScrollRect
  L2_2 = A0_2._View
  L2_2 = L2_2.Direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoScrollView
  L3_2 = L3_2.Dir
  L3_2 = L3_2.Vertical
  L2_2 = L2_2 == L3_2
  L1_2.vertical = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ScrollRect
  L2_2 = A0_2._View
  L2_2 = L2_2.Content
  L1_2.content = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ScrollRect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._OnValueChanged
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  A0_2._OnValueChangedClosure = L1_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.AddCsEventHandle
  L2_2 = A0_2._View
  L2_2 = L2_2.ScrollRect
  L2_2 = L2_2.onValueChanged
  L3_2 = A0_2._OnValueChangedClosure
  L1_2(L2_2, L3_2)
end
L0_1._InitScrollRect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ContentLayout
  L1_2.enabled = false
  L1_2 = A0_2._View
  L1_2 = L1_2.ContentLayout
  L1_2 = L1_2.padding
  A0_2._Padding = L1_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ContentLayout
  L1_2 = L1_2.spacing
  A0_2._Spacing = L1_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ContentLayout
  L1_2 = L1_2.cellSize
  A0_2._CellSize = L1_2
  L1_2 = A0_2._View
  L1_2 = L1_2.Content
  L2_2 = L0_1.UPPER_LEFT
  L1_2.pivot = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.Content
  L2_2 = L0_1.UPPER_LEFT
  L1_2.anchorMax = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.Content
  L2_2 = L0_1.UPPER_LEFT
  L1_2.anchorMin = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.Content
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L2_2 = L2_2.zero
  L1_2.anchoredPosition = L2_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ContentLayout
  L1_2 = L1_2.constraint
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.GridLayoutGroup
  L2_2 = L2_2.Constraint
  L2_2 = L2_2.Flexible
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._View
    L1_2 = L1_2.ContentLayout
    L1_2 = L1_2.constraintCount
    A0_2._ConstraintCount = L1_2
  end
end
L0_1._InitLayout = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._View
  L1_2 = L1_2.Direction
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoScrollView
  L2_2 = L2_2.Dir
  L2_2 = L2_2.Horizontal
  if L1_2 == L2_2 then
    L1_2 = A0_2._View
    L1_2 = L1_2.AutoPivot
    if L1_2 then
      L1_2 = A0_2._DataCount
      L2_2 = A0_2._MaxVisibleRow
      L3_2 = A0_2._MaxVisibleColum
      L4_2 = A0_2.SURPLUS
      L3_2 = L3_2 - L4_2
      L2_2 = L2_2 * L3_2
      if L1_2 < L2_2 then
        L1_2 = A0_2._View
        L1_2 = L1_2.Content
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.Vector2
        L3_2 = 0.5
        L4_2 = A0_2._View
        L4_2 = L4_2.Content
        L4_2 = L4_2.pivot
        L4_2 = L4_2.y
        L2_2 = L2_2(L3_2, L4_2)
        L1_2.pivot = L2_2
    end
  end
  else
    L1_2 = A0_2._View
    L1_2 = L1_2.Content
    L2_2 = A0_2.UPPER_LEFT
    L1_2.pivot = L2_2
  end
end
L0_1._InitAutoPivot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._View
  L1_2 = L1_2.ViewportRect
  L1_2 = L1_2.rect
  L2_2 = L1_2.height
  L3_2 = A0_2._Padding
  L3_2 = L3_2.top
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._Padding
  L3_2 = L3_2.bottom
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._Spacing
  L3_2 = L3_2.y
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._CellSize
  L3_2 = L3_2.y
  L4_2 = A0_2._Spacing
  L4_2 = L4_2.y
  L3_2 = L3_2 + L4_2
  L2_2 = L2_2 / L3_2
  L3_2 = L1_2.width
  L4_2 = A0_2._Padding
  L4_2 = L4_2.left
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._Padding
  L4_2 = L4_2.right
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._Spacing
  L4_2 = L4_2.x
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._CellSize
  L4_2 = L4_2.x
  L5_2 = A0_2._Spacing
  L5_2 = L5_2.x
  L4_2 = L4_2 + L5_2
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2._View
  L4_2 = L4_2.Direction
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoScrollView
  L5_2 = L5_2.Dir
  L5_2 = L5_2.Vertical
  if L4_2 == L5_2 then
    L4_2 = math
    L4_2 = L4_2.ceil
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    A0_2._MaxVisibleRow = L4_2
    L4_2 = A0_2._MaxVisibleRow
    L5_2 = L0_1.SURPLUS
    L4_2 = L4_2 + L5_2
    A0_2._MaxVisibleRow = L4_2
    L4_2 = A0_2._ConstraintCount
    if L4_2 ~= 0 then
      L4_2 = A0_2._ConstraintCount
      A0_2._MaxVisibleColum = L4_2
    else
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      A0_2._MaxVisibleColum = L4_2
    end
  else
    L4_2 = math
    L4_2 = L4_2.ceil
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A0_2._MaxVisibleColum = L4_2
    L4_2 = A0_2._MaxVisibleColum
    L5_2 = L0_1.SURPLUS
    L4_2 = L4_2 + L5_2
    A0_2._MaxVisibleColum = L4_2
    L4_2 = A0_2._ConstraintCount
    if L4_2 ~= 0 then
      L4_2 = A0_2._ConstraintCount
      A0_2._MaxVisibleRow = L4_2
    else
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      A0_2._MaxVisibleRow = L4_2
    end
  end
end
L0_1._InitMaxVisibleRowAndColum = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._View
  L1_2 = L1_2.CenterContent
  if L1_2 then
    L1_2 = A0_2._View
    L1_2 = L1_2.Direction
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonoScrollView
    L2_2 = L2_2.Dir
    L2_2 = L2_2.Horizontal
    if L1_2 == L2_2 then
      L1_2 = math
      L1_2 = L1_2.ceil
      L2_2 = A0_2._View
      L2_2 = L2_2.ViewportRect
      L2_2 = L2_2.rect
      L2_2 = L2_2.height
      L3_2 = A0_2._CellSize
      L3_2 = L3_2.y
      L4_2 = A0_2._MaxVisibleRow
      L3_2 = L3_2 * L4_2
      L4_2 = A0_2._Spacing
      L4_2 = L4_2.y
      L5_2 = A0_2._MaxVisibleRow
      L5_2 = L5_2 - 1
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
      L2_2 = L2_2 - L3_2
      L2_2 = L2_2 * 0.5
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._Padding
      L2_2.top = L1_2
      L2_2 = A0_2._Padding
      L2_2.bottom = L1_2
    else
      L1_2 = math
      L1_2 = L1_2.ceil
      L2_2 = A0_2._View
      L2_2 = L2_2.ViewportRect
      L2_2 = L2_2.rect
      L2_2 = L2_2.width
      L3_2 = A0_2._CellSize
      L3_2 = L3_2.x
      L4_2 = A0_2._MaxVisibleColum
      L3_2 = L3_2 * L4_2
      L4_2 = A0_2._Spacing
      L4_2 = L4_2.x
      L5_2 = A0_2._MaxVisibleColum
      L5_2 = L5_2 - 1
      L4_2 = L4_2 * L5_2
      L3_2 = L3_2 + L4_2
      L2_2 = L2_2 - L3_2
      L2_2 = L2_2 * 0.5
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._Padding
      L2_2.left = L1_2
      L2_2 = A0_2._Padding
      L2_2.right = L1_2
    end
  end
end
L0_1._InitCenterContent = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._View
  L1_2 = L1_2.StretchCellSize
  if L1_2 then
    L1_2 = A0_2._View
    L1_2 = L1_2.Direction
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.MonoScrollView
    L2_2 = L2_2.Dir
    L2_2 = L2_2.Horizontal
    if L1_2 == L2_2 then
      L1_2 = A0_2._CellSize
      L2_2 = A0_2._View
      L2_2 = L2_2.ViewportRect
      L2_2 = L2_2.rect
      L2_2 = L2_2.height
      L3_2 = A0_2._Padding
      L3_2 = L3_2.top
      L2_2 = L2_2 - L3_2
      L3_2 = A0_2._Padding
      L3_2 = L3_2.bottom
      L2_2 = L2_2 - L3_2
      L1_2.y = L2_2
    else
      L1_2 = A0_2._CellSize
      L2_2 = A0_2._View
      L2_2 = L2_2.ViewportRect
      L2_2 = L2_2.rect
      L2_2 = L2_2.width
      L3_2 = A0_2._Padding
      L3_2 = L3_2.left
      L2_2 = L2_2 - L3_2
      L3_2 = A0_2._Padding
      L3_2 = L3_2.right
      L2_2 = L2_2 - L3_2
      L1_2.x = L2_2
    end
  end
end
L0_1._InitStretchCellSize = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._DataCount
  A0_2._DataCount = A1_2
  if A1_2 > L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._InitItemRectDatas
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._InitItemPosDatas
    L3_2(L4_2)
  end
  if A1_2 ~= L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._InitContentSize
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._CheckIfCreatedItemsEnough
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._InitAutoPivot
    L3_2(L4_2)
  end
end
L0_1._RefreshBasicWhenDataCountChange = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._ItemsTopOrLeftDatas = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._ItemsBottomOrRightDatas = L1_2
  L1_2 = 0
  L2_2 = A0_2._DataCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._ItemsTopOrLeftDatas
    L6_2 = L5_2
    L5_2 = L5_2.Add
    L7_2 = 0
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._ItemsBottomOrRightDatas
    L6_2 = L5_2
    L5_2 = L5_2.Add
    L7_2 = 0
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._View
  L1_2 = L1_2.Direction
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoScrollView
  L2_2 = L2_2.Dir
  L2_2 = L2_2.Vertical
  if L1_2 == L2_2 then
    L1_2 = 0
    L2_2 = A0_2._DataCount
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._ItemsTopOrLeftDatas
      L6_2 = L5_2
      L5_2 = L5_2.Set
      L7_2 = L4_2
      L8_2 = math
      L8_2 = L8_2.floor
      L9_2 = A0_2._MaxVisibleColum
      L9_2 = L4_2 / L9_2
      L8_2 = L8_2(L9_2)
      L8_2 = -L8_2
      L9_2 = A0_2._CellSize
      L9_2 = L9_2.y
      L10_2 = A0_2._Spacing
      L10_2 = L10_2.y
      L9_2 = L9_2 + L10_2
      L8_2 = L8_2 * L9_2
      L9_2 = A0_2._Padding
      L9_2 = L9_2.top
      L8_2 = L8_2 - L9_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2._ItemsBottomOrRightDatas
      L6_2 = L5_2
      L5_2 = L5_2.Set
      L7_2 = L4_2
      L8_2 = A0_2._ItemsTopOrLeftDatas
      L9_2 = L8_2
      L8_2 = L8_2.Get
      L10_2 = L4_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = A0_2._CellSize
      L9_2 = L9_2.y
      L8_2 = L8_2 - L9_2
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L1_2 = 0
    L2_2 = A0_2._DataCount
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._ItemsTopOrLeftDatas
      L6_2 = L5_2
      L5_2 = L5_2.Set
      L7_2 = L4_2
      L8_2 = math
      L8_2 = L8_2.floor
      L9_2 = A0_2._MaxVisibleRow
      L9_2 = L4_2 / L9_2
      L8_2 = L8_2(L9_2)
      L9_2 = A0_2._CellSize
      L9_2 = L9_2.x
      L10_2 = A0_2._Spacing
      L10_2 = L10_2.x
      L9_2 = L9_2 + L10_2
      L8_2 = L8_2 * L9_2
      L9_2 = A0_2._Padding
      L9_2 = L9_2.left
      L8_2 = L8_2 + L9_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2._ItemsBottomOrRightDatas
      L6_2 = L5_2
      L5_2 = L5_2.Set
      L7_2 = L4_2
      L8_2 = A0_2._ItemsTopOrLeftDatas
      L9_2 = L8_2
      L8_2 = L8_2.Get
      L10_2 = L4_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = A0_2._CellSize
      L9_2 = L9_2.x
      L8_2 = L8_2 + L9_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1._InitItemRectDatas = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.List
  L1_2 = L1_2(L2_2)
  A0_2._ItemPosDatas = L1_2
  L1_2 = 0
  L2_2 = A0_2._DataCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._ItemPosDatas
    L6_2 = L5_2
    L5_2 = L5_2.Add
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector2
    L8_2 = 0
    L9_2 = 0
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L1_2 = nil
  L2_2 = A0_2._View
  L2_2 = L2_2.Direction
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoScrollView
  L3_2 = L3_2.Dir
  L3_2 = L3_2.Vertical
  if L2_2 == L3_2 then
    L2_2 = 0
    L3_2 = A0_2._DataCount
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._ItemPosDatas
      L7_2 = L6_2
      L6_2 = L6_2.Get
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L1_2 = L6_2
      L6_2 = A0_2._MaxVisibleColum
      L6_2 = L5_2 % L6_2
      L7_2 = A0_2._CellSize
      L7_2 = L7_2.x
      L8_2 = A0_2._Spacing
      L8_2 = L8_2.x
      L7_2 = L7_2 + L8_2
      L6_2 = L6_2 * L7_2
      L7_2 = A0_2._Padding
      L7_2 = L7_2.left
      L6_2 = L6_2 + L7_2
      L1_2.x = L6_2
      L6_2 = math
      L6_2 = L6_2.floor
      L7_2 = A0_2._MaxVisibleColum
      L7_2 = L5_2 / L7_2
      L6_2 = L6_2(L7_2)
      L6_2 = -L6_2
      L7_2 = A0_2._CellSize
      L7_2 = L7_2.y
      L8_2 = A0_2._Spacing
      L8_2 = L8_2.y
      L7_2 = L7_2 + L8_2
      L6_2 = L6_2 * L7_2
      L7_2 = A0_2._Padding
      L7_2 = L7_2.top
      L6_2 = L6_2 - L7_2
      L1_2.y = L6_2
    end
  else
    L2_2 = 0
    L3_2 = A0_2._DataCount
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._ItemPosDatas
      L7_2 = L6_2
      L6_2 = L6_2.Get
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      L1_2 = L6_2
      L6_2 = math
      L6_2 = L6_2.floor
      L7_2 = A0_2._MaxVisibleRow
      L7_2 = L5_2 / L7_2
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2._CellSize
      L7_2 = L7_2.x
      L8_2 = A0_2._Spacing
      L8_2 = L8_2.x
      L7_2 = L7_2 + L8_2
      L6_2 = L6_2 * L7_2
      L7_2 = A0_2._Padding
      L7_2 = L7_2.left
      L6_2 = L6_2 + L7_2
      L1_2.x = L6_2
      L6_2 = A0_2._MaxVisibleRow
      L6_2 = L5_2 % L6_2
      L6_2 = -L6_2
      L7_2 = A0_2._CellSize
      L7_2 = L7_2.y
      L8_2 = A0_2._Spacing
      L8_2 = L8_2.y
      L7_2 = L7_2 + L8_2
      L6_2 = L6_2 * L7_2
      L7_2 = A0_2._Padding
      L7_2 = L7_2.top
      L6_2 = L6_2 - L7_2
      L1_2.y = L6_2
    end
  end
end
L0_1._InitItemPosDatas = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._View
  L1_2 = L1_2.Direction
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoScrollView
  L2_2 = L2_2.Dir
  L2_2 = L2_2.Vertical
  if L1_2 == L2_2 then
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2._DataCount
    L3_2 = A0_2._MaxVisibleColum
    L2_2 = L2_2 / L3_2
    L1_2 = L1_2(L2_2)
    if L1_2 == 0 then
      L2_2 = 0
      if L2_2 then
        goto lbl_37
      end
    end
    L2_2 = A0_2._Padding
    L2_2 = L2_2.top
    L3_2 = A0_2._Padding
    L3_2 = L3_2.bottom
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._CellSize
    L3_2 = L3_2.y
    L4_2 = A0_2._Spacing
    L4_2 = L4_2.y
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 * L1_2
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._Spacing
    L3_2 = L3_2.y
    L2_2 = L2_2 - L3_2
    ::lbl_37::
    L3_2 = A0_2._View
    L3_2 = L3_2.Content
    L4_2 = L3_2
    L3_2 = L3_2.SetSizeWithCurrentAnchors
    L5_2 = G
    L5_2 = L5_2.ImportCsToLua
    L5_2 = L5_2.RectTransform
    L5_2 = L5_2.Axis
    L5_2 = L5_2.Vertical
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L1_2 = math
    L1_2 = L1_2.ceil
    L2_2 = A0_2._DataCount
    L3_2 = A0_2._MaxVisibleRow
    L2_2 = L2_2 / L3_2
    L1_2 = L1_2(L2_2)
    if L1_2 == 0 then
      L2_2 = 0
      if L2_2 then
        goto lbl_74
      end
    end
    L2_2 = A0_2._Padding
    L2_2 = L2_2.left
    L3_2 = A0_2._Padding
    L3_2 = L3_2.right
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._CellSize
    L3_2 = L3_2.x
    L4_2 = A0_2._Spacing
    L4_2 = L4_2.x
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 * L1_2
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2._Spacing
    L3_2 = L3_2.x
    L2_2 = L2_2 - L3_2
    ::lbl_74::
    L3_2 = A0_2._View
    L3_2 = L3_2.Content
    L4_2 = L3_2
    L3_2 = L3_2.SetSizeWithCurrentAnchors
    L5_2 = G
    L5_2 = L5_2.ImportCsToLua
    L5_2 = L5_2.RectTransform
    L5_2 = L5_2.Axis
    L5_2 = L5_2.Horizontal
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._InitContentSize = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._CreatedItems
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._NeedCreateCount
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.ScrollRectPanel
    L8_2 = L8_2.ItemInfo
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._CreatedItems
    L9_2 = L8_2
    L8_2 = L8_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.LuaToCs
    L8_2 = L8_2.Instantiate
    L9_2 = A0_2._View
    L9_2 = L9_2.CellPrefab
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.transform
    L9_2 = L8_2
    L8_2 = L8_2.GetComponent
    L10_2 = typeof
    L11_2 = CS
    L11_2 = L11_2.UnityEngine
    L11_2 = L11_2.RectTransform
    L10_2, L11_2 = L10_2(L11_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.ItemTrans = L8_2
    L8_2 = L7_2.ItemTrans
    L9_2 = L0_1.UPPER_LEFT
    L8_2.pivot = L9_2
    L8_2 = L7_2.ItemTrans
    L9_2 = L0_1.UPPER_LEFT
    L8_2.anchorMax = L9_2
    L8_2 = L7_2.ItemTrans
    L9_2 = L0_1.UPPER_LEFT
    L8_2.anchorMin = L9_2
    L8_2 = A0_2._View
    L8_2 = L8_2.StretchCellSize
    if L8_2 then
      L8_2 = L7_2.ItemTrans
      L9_2 = A0_2._CellSize
      L8_2.sizeDelta = L9_2
    end
    L8_2 = L7_2.ItemTrans
    L9_2 = L8_2
    L8_2 = L8_2.SetParent
    L10_2 = A0_2._View
    L10_2 = L10_2.Content
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._CheckIfCreatedItemsEnough = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._DataCount
  L4_2 = A0_2
  L3_2 = A0_2._MaxVisibleCount
  L3_2, L4_2 = L3_2(L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1._NeedCreateCount = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._MaxVisibleRow
  L2_2 = A0_2._MaxVisibleColum
  L1_2 = L1_2 * L2_2
  return L1_2
end
L0_1._MaxVisibleCount = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._OnChange
  if L2_2 ~= nil then
    L2_2 = A0_2._OnChangeEventListener
    if nil ~= L2_2 then
      L2_2 = A0_2._OnChange
      L3_2 = A0_2._OnChangeEventListener
      L4_2 = A1_2
      L5_2 = A0_2._UserParam
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._OnChange
      L3_2 = A1_2
      L4_2 = A0_2._UserParam
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._OnItemChange = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._CalcVisibleBeginAndEndIndex
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._RefreshItemsWhenVisibleChange
  L2_2(L3_2)
end
L0_1._OnValueChanged = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._DataCount
  if L1_2 == 0 then
    A0_2._CalcVisibleBeginIndex = -1
    A0_2._CalcVisibleEndIndex = -1
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._MaxVisibleCount
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._DataCount
  if L1_2 >= L2_2 then
    L2_2 = A0_2._DataCount
    if 0 < L2_2 then
      A0_2._CalcVisibleBeginIndex = 0
      L2_2 = A0_2._DataCount
      L2_2 = L2_2 - 1
      A0_2._CalcVisibleEndIndex = L2_2
      return
    end
  end
  L2_2 = 0
  L3_2 = A0_2._DataCount
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._IsIndexVisible
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      A0_2._CalcVisibleBeginIndex = L5_2
      break
    end
  end
  L2_2 = A0_2._DataCount
  L2_2 = L2_2 - 1
  L3_2 = A0_2._CalcVisibleBeginIndex
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._IsIndexVisible
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      A0_2._CalcVisibleEndIndex = L5_2
      break
    end
  end
end
L0_1._CalcVisibleBeginAndEndIndex = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._ItemsTopOrLeftDatas
  L3_2 = L2_2
  L2_2 = L2_2.Get
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._ItemsBottomOrRightDatas
  L4_2 = L3_2
  L3_2 = L3_2.Get
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._View
  L4_2 = L4_2.Direction
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.MonoScrollView
  L5_2 = L5_2.Dir
  L5_2 = L5_2.Vertical
  if L4_2 == L5_2 then
    L4_2 = A0_2._View
    L4_2 = L4_2.Content
    L4_2 = L4_2.anchoredPosition
    L4_2 = L4_2.y
    L4_2 = -L4_2
    L5_2 = A0_2._View
    L5_2 = L5_2.ViewportRect
    L5_2 = L5_2.rect
    L5_2 = L5_2.height
    L5_2 = L4_2 - L5_2
    L6_2 = L2_2 > L5_2 and L3_2 < L4_2
    return L6_2
  else
    L4_2 = A0_2._View
    L4_2 = L4_2.Content
    L4_2 = L4_2.anchoredPosition
    L4_2 = L4_2.x
    L4_2 = -L4_2
    L5_2 = A0_2._View
    L5_2 = L5_2.ViewportRect
    L5_2 = L5_2.rect
    L5_2 = L5_2.width
    L5_2 = L4_2 + L5_2
    L6_2 = L3_2 > L4_2 and L2_2 < L5_2
    return L6_2
  end
end
L0_1._IsIndexVisible = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._CurrentVisibleBeginIndex = -1
  A0_2._CurrentVisibleEndIndex = -1
  L1_2 = A0_2._CreatedItems
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.List
    L1_2 = L1_2(L2_2)
    A0_2._CreatedItems = L1_2
  end
  L1_2 = 0
  L2_2 = A0_2._CreatedItems
  L3_2 = L2_2
  L2_2 = L2_2.Count
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._CreatedItems
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2.Index = -1
    L5_2 = G
    L5_2 = L5_2.ComponentExtensions
    L5_2 = L5_2.SafeSetActive
    L6_2 = A0_2._CreatedItems
    L7_2 = L6_2
    L6_2 = L6_2.Get
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2.ItemTrans
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end
L0_1._CloseAllItems = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._DataCount
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._CloseAllItems
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._CurrentVisibleBeginIndex
  if L1_2 == -1 then
    L1_2 = A0_2._CurrentVisibleEndIndex
    if L1_2 == -1 then
      L1_2 = A0_2._CalcVisibleBeginIndex
      A0_2._CurrentVisibleBeginIndex = L1_2
      L1_2 = A0_2._CalcVisibleEndIndex
      A0_2._CurrentVisibleEndIndex = L1_2
      L1_2 = 0
      L2_2 = A0_2._CurrentVisibleBeginIndex
      while true do
        L3_2 = A0_2._CreatedItems
        L4_2 = L3_2
        L3_2 = L3_2.Count
        L3_2 = L3_2(L4_2)
        if not (L1_2 < L3_2) then
          break
        end
        L3_2 = A0_2._CurrentVisibleEndIndex
        if not (L2_2 <= L3_2) then
          break
        end
        L4_2 = A0_2
        L3_2 = A0_2._SetPosition
        L5_2 = L2_2
        L6_2 = A0_2._CreatedItems
        L7_2 = L6_2
        L6_2 = L6_2.Get
        L8_2 = L1_2
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L4_2 = A0_2
        L3_2 = A0_2._OnItemChange
        L5_2 = A0_2._CreatedItems
        L6_2 = L5_2
        L5_2 = L5_2.Get
        L7_2 = L1_2
        L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2, L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L1_2 = L1_2 + 1
        L2_2 = L2_2 + 1
      end
      L3_2 = 0
      L4_2 = A0_2._CreatedItems
      L5_2 = L4_2
      L4_2 = L4_2.Count
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = G
        L7_2 = L7_2.ComponentExtensions
        L7_2 = L7_2.SafeSetActive
        L8_2 = A0_2._CreatedItems
        L9_2 = L8_2
        L8_2 = L8_2.Get
        L10_2 = L6_2
        L8_2 = L8_2(L9_2, L10_2)
        L8_2 = L8_2.ItemTrans
        L9_2 = A0_2._CreatedItems
        L10_2 = L9_2
        L9_2 = L9_2.Get
        L11_2 = L6_2
        L9_2 = L9_2(L10_2, L11_2)
        L9_2 = L9_2.Index
        L9_2 = L9_2 ~= -1
        L7_2(L8_2, L9_2)
      end
      return
    end
  end
  L1_2 = A0_2._CurrentVisibleBeginIndex
  L2_2 = A0_2._CalcVisibleBeginIndex
  if L1_2 == L2_2 then
    L1_2 = A0_2._CurrentVisibleEndIndex
    L2_2 = A0_2._CalcVisibleEndIndex
    if L1_2 == L2_2 then
      return
    end
  end
  L1_2 = A0_2._CreatedItems
  L2_2 = L1_2
  L1_2 = L1_2.Count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._TmpTableVisible
  L3_2 = A0_2._TmpTableInVisible
  L4_2 = 0
  L5_2 = L1_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._CreatedItems
    L9_2 = L8_2
    L8_2 = L8_2.Get
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2.Index
    L10_2 = A0_2._CalcVisibleBeginIndex
    if L9_2 >= L10_2 then
      L9_2 = L8_2.Index
      L10_2 = A0_2._CalcVisibleEndIndex
      if L9_2 <= L10_2 then
        L9_2 = L8_2.Index
        L9_2 = L2_2[L9_2]
        if L9_2 == nil then
          L9_2 = L8_2.Index
          L2_2[L9_2] = L8_2
          L9_2 = L8_2.ItemTrans
          L9_2 = L9_2.gameObject
          L9_2 = L9_2.activeSelf
          if not L9_2 then
            L9_2 = G
            L9_2 = L9_2.ComponentExtensions
            L9_2 = L9_2.SafeSetActive
            L10_2 = L8_2.ItemTrans
            L11_2 = true
            L9_2(L10_2, L11_2)
          end
          L10_2 = A0_2
          L9_2 = A0_2._OnItemChange
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
        else
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L3_2
          L11_2 = #L3_2
          L11_2 = L11_2 + 1
          L12_2 = L8_2
          L9_2(L10_2, L11_2, L12_2)
        end
    end
    else
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L4_2 = A0_2._CalcVisibleBeginIndex
  L5_2 = A0_2._CalcVisibleEndIndex
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    if L8_2 == nil then
      L8_2 = #L3_2
      if L8_2 == 0 then
        L8_2 = G
        L8_2 = L8_2.SuperDebug
        L8_2 = L8_2.LogErrorFormat
        L9_2 = "ERROR #noVisibleTab == 0"
        L8_2(L9_2)
      else
        L8_2 = #L3_2
        L8_2 = L3_2[L8_2]
        L2_2[L7_2] = L8_2
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = L3_2
        L10_2 = #L3_2
        L8_2(L9_2, L10_2)
        L8_2 = L2_2[L7_2]
        L8_2 = L8_2.ItemTrans
        L8_2 = L8_2.gameObject
        L8_2 = L8_2.activeSelf
        if not L8_2 then
          L8_2 = G
          L8_2 = L8_2.ComponentExtensions
          L8_2 = L8_2.SafeSetActive
          L9_2 = L2_2[L7_2]
          L9_2 = L9_2.ItemTrans
          L10_2 = true
          L8_2(L9_2, L10_2)
        end
        L9_2 = A0_2
        L8_2 = A0_2._SetPosition
        L10_2 = L7_2
        L11_2 = L2_2[L7_2]
        L8_2(L9_2, L10_2, L11_2)
        L9_2 = A0_2
        L8_2 = A0_2._OnItemChange
        L10_2 = L2_2[L7_2]
        L8_2(L9_2, L10_2)
      end
    end
  end
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = G
    L8_2 = L8_2.ComponentExtensions
    L8_2 = L8_2.SafeSetActive
    L9_2 = L3_2[L7_2]
    L9_2 = L9_2.ItemTrans
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._CalcVisibleBeginIndex
  L5_2 = A0_2._CalcVisibleEndIndex
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._TmpTableVisible
    L8_2[L7_2] = nil
  end
  L4_2 = A0_2._TmpTableInVisible
  L1_2 = #L4_2
  L4_2 = 1
  L5_2 = L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._TmpTableInVisible
    L8_2[L7_2] = nil
  end
  L4_2 = A0_2._CalcVisibleBeginIndex
  A0_2._CurrentVisibleBeginIndex = L4_2
  L4_2 = A0_2._CalcVisibleEndIndex
  A0_2._CurrentVisibleEndIndex = L4_2
end
L0_1._RefreshItemsWhenVisibleChange = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not (A1_2 < 0) then
    L3_2 = A0_2._ItemPosDatas
    L4_2 = L3_2
    L3_2 = L3_2.Count
    L3_2 = L3_2(L4_2)
    if not (A1_2 >= L3_2) then
      goto lbl_18
    end
  end
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogWarningFormat
  L4_2 = "_SetPosition index is out of array. index is %d, _ItemPosDatas count is %d"
  L5_2 = A1_2
  L6_2 = A0_2._ItemPosDatas
  L7_2 = L6_2
  L6_2 = L6_2.Count
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  do return end
  ::lbl_18::
  A2_2.Index = A1_2
  L3_2 = A0_2._ItemPosDatas
  L4_2 = L3_2
  L3_2 = L3_2.Get
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A2_2.ItemTrans
  L4_2 = L4_2.transform
  L4_2.anchoredPosition = L3_2
end
L0_1._SetPosition = L1_1
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ItemInfo"
L3_1 = nil
L4_1 = L0_1
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
  A0_2.Index = -1
  A0_2.ItemTrans = nil
  A0_2.UICodeObject = nil
end
L1_1.ctor = L2_1
return L0_1
