local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "GuideUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.EventSystems
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TutorialSupportModule
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1.copy_node_position
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A2_2.CopyAnchorAndSale
  if L3_2 then
    L3_2 = L0_1.copy_pivot_and_scale
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2.Text
    L6_2 = L6_2 == nil
    L7_2 = A2_2.UseOriginRatio
    L8_2 = A2_2.Scale
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1.sync_2d_node = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.Set2DObjectWith3DTransform
  L5_2 = A0_2
  L6_2 = A2_2.UseOriginRatio
  L6_2 = L6_2 == true
  L7_2 = A2_2.Text
  L7_2 = L7_2 == nil
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L0_1._apply_offset_and_scale
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A2_2.Scale
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.sync_3d_node = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1._copy_btn_onClicks
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1._copy_event_trigger
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1._copy_localized_text
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.copy_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.copy_node_position
  L2_2 = A0_2.oriNode
  L3_2 = A0_2.showNode
  L4_2 = A0_2.offset
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1.copy_pivot_and_scale
  L2_2 = A0_2.oriNode
  L3_2 = A0_2.showNode
  L4_2 = A0_2.should_scale
  L5_2 = A0_2.use_origin_ratio
  L6_2 = A0_2.scale
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.do_follow_2d_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.use_origin_ratio
  if not L1_2 then
    L1_2 = false
  end
  L2_2 = A0_2.should_scale
  if not L2_2 then
    L2_2 = false
  end
  L3_2 = A0_2.showNode
  L4_2 = L3_2
  L3_2 = L3_2.Set2DObjectWith3DTransform
  L5_2 = A0_2.oriNode
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L0_1._apply_offset_and_scale
  L4_2 = A0_2.oriNode
  L5_2 = A0_2.showNode
  L6_2 = A0_2.offset
  L7_2 = A0_2.scale
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.do_follow_3d_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.localScale
  L2_2 = A0_2.parent
  L2_2 = L2_2.parent
  while true do
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIRoot
    if L2_2 == L3_2 then
      break
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UI3DRoot
    if L2_2 == L3_2 then
      break
    end
    A0_2 = A0_2.parent
    L3_2 = L1_2.x
    L4_2 = A0_2.localScale
    L4_2 = L4_2.x
    L3_2 = L3_2 * L4_2
    L1_2.x = L3_2
    L3_2 = L1_2.y
    L4_2 = A0_2.localScale
    L4_2 = L4_2.y
    L3_2 = L3_2 * L4_2
    L1_2.y = L3_2
    L3_2 = A0_2.parent
    L2_2 = L3_2.parent
  end
  return L1_2
end
L0_1.get_true_scale = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A1_2 = A1_2 + 0.001
  A2_2 = A2_2 + 0.001
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeSize
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.set_node_size = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2.GetComponentsInChildren
  L3_2 = typeof
  L4_2 = L1_1.EventTrigger
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2.Length
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = L1_1.PointerEventData
    L9_2 = L1_1.EventSystem
    L9_2 = L9_2.current
    L8_2 = L8_2(L9_2)
    L9_2 = L1_1.ExecuteEvents
    L9_2 = L9_2.ExecuteExit
    L10_2 = L7_2.gameObject
    L11_2 = L8_2
    L12_2 = L1_1.ExecuteEvents
    L12_2 = L12_2.pointerExitHandler
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1.trigger_exit_event = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNodeScreenPoint
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2[0]
  L4_2 = L2_2[1]
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetNodeScreenPoint
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L2_2 = L5_2
  L5_2 = L2_2[0]
  L6_2 = L2_2[1]
  L7_2 = L3_2 - L5_2
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.GlobalVars
  L8_2 = L8_2.s_PageCanvas
  L8_2 = L8_2.scaleFactor
  L7_2 = L7_2 / L8_2
  L8_2 = L4_2 - L6_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.GlobalVars
  L9_2 = L9_2.s_PageCanvas
  L9_2 = L9_2.scaleFactor
  L8_2 = L8_2 / L9_2
  L9_2 = L7_2
  L10_2 = L8_2
  return L9_2, L10_2
end
L0_1.get_node_delta_size = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsObjectNull
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A0_2.position
    A1_2.position = L3_2
  end
  L3_2 = A1_2.localPosition
  if A2_2 ~= nil then
    L4_2 = L3_2.x
    L5_2 = A2_2.OffsetX
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L4_2 = L3_2.y
    L5_2 = A2_2.OffsetY
    L4_2 = L4_2 + L5_2
    L3_2.y = L4_2
  end
  A1_2.localPosition = L3_2
end
L0_1.copy_node_position = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2.position
    A1_2.position = L2_2
  end
  L2_2 = A0_2.pivot
  L3_2 = A0_2.sizeDelta
  L4_2 = L3_2.x
  L5_2 = L2_2.x
  L5_2 = 0.5 - L5_2
  L4_2 = L4_2 * L5_2
  L5_2 = L3_2.y
  L6_2 = L2_2.y
  L6_2 = 0.5 - L6_2
  L5_2 = L5_2 * L6_2
  L6_2 = A1_2.localPosition
  L7_2 = L6_2.x
  L7_2 = L7_2 + L4_2
  L6_2.x = L7_2
  L7_2 = L6_2.y
  L7_2 = L7_2 + L5_2
  L6_2.y = L7_2
  A1_2.localPosition = L6_2
end
L0_1.copy_node_center_position = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.Set2DObjectWith3DTransform
  L4_2 = A0_2
  L5_2 = true
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.copy_3d_node_position_and_size = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.Set2DObjectWith3DTransform
  L4_2 = A0_2
  L5_2 = true
  L6_2 = false
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.copy_3d_node_position = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.Set2DObjectWith3DTransform
  L4_2 = A0_2
  L5_2 = true
  L6_2 = true
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.copy_3d_node_size = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 then
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = A0_2.rect
    L4_2 = L4_2.width
    L5_2 = A1_2.rect
    L5_2 = L5_2.width
    L4_2 = L4_2 / L5_2
    L5_2 = A0_2.rect
    L5_2 = L5_2.height
    L6_2 = A1_2.rect
    L6_2 = L6_2.height
    L5_2 = L5_2 / L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector2
    L5_2 = A1_2.rect
    L5_2 = L5_2.width
    L5_2 = L5_2 * L3_2
    L6_2 = A1_2.rect
    L6_2 = L6_2.height
    L6_2 = L6_2 * L3_2
    L4_2 = L4_2(L5_2, L6_2)
    A1_2.sizeDelta = L4_2
  else
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector2
    L4_2 = A0_2.rect
    L4_2 = L4_2.width
    L5_2 = A0_2.rect
    L5_2 = L5_2.height
    L3_2 = L3_2(L4_2, L5_2)
    A1_2.sizeDelta = L3_2
  end
end
L0_1.copy_2d_node_size = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A2_2 then
    L5_2 = G
    L5_2 = L5_2.UtilEngineWrap
    L5_2 = L5_2.IsCsObjectNull
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L5_2 = A0_2.pivot
  A1_2.pivot = L5_2
  L5_2 = L0_1.copy_2d_node_size
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L0_1.get_true_scale
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  A1_2.localScale = L5_2
  L5_2 = L0_1.apply_extra_scale
  L6_2 = A1_2
  L7_2 = A4_2
  L5_2(L6_2, L7_2)
end
L0_1.copy_pivot_and_scale = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.IsChildOf
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIRoot
  return L1_2(L2_2, L3_2)
end
L0_1.is_2d_ui_node = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2.localPosition
  L5_2 = L4_2.x
  L6_2 = A2_2.OffsetX
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L4_2.y
  L6_2 = A2_2.OffsetY
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  A1_2.localPosition = L4_2
  if A3_2 ~= nil then
    L5_2 = A0_2.localScale
    A1_2.localScale = L5_2
    L5_2 = L0_1.apply_extra_scale
    L6_2 = A1_2
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._apply_offset_and_scale = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.MathUtils
    L2_2 = L2_2.float_equal
    L3_2 = A1_2
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = A0_2
  L2_2 = A0_2.SetCenterPivot
  L2_2(L3_2)
  L2_2 = A0_2.localScale
  L2_2 = L2_2 * A1_2
  A0_2.localScale = L2_2
end
L0_1.apply_extra_scale = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.GetComponent
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.GetButtonType
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if L2_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.GetComponent
    L5_2 = G
    L5_2 = L5_2.UtilEngineWrap
    L5_2 = L5_2.GetButtonType
    L5_2, L6_2, L7_2 = L5_2()
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    function L4_2()
      local L0_3, L1_3
      L0_3 = L2_2.onClick
      L1_3 = L0_3
      L0_3 = L0_3.Invoke
      L0_3(L1_3)
    end
    L5_2 = L3_2.onClick
    L6_2 = L5_2
    L5_2 = L5_2.AddListener
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._copy_btn_onClicks = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.GetComponent
  L4_2 = typeof
  L5_2 = L1_1.EventTrigger
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.GetComponent
    L5_2 = typeof
    L6_2 = L1_1.EventTrigger
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2.triggers
    L3_2.triggers = L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.LongPressEvent
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L3_2
  if L2_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.LongPressEvent
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = L2_2.OnShortClickCount
    if 0 < L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AddShortClickEvent
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2.OnShortClick
        L1_3 = L0_3
        L0_3 = L0_3.Invoke
        L0_3(L1_3)
      end
      L4_2(L5_2, L6_2)
    end
    L4_2 = L2_2.OnShortDownClickCount
    if 0 < L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AddShortDownClickEvent
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2.OnShortDownClick
        L1_3 = L0_3
        L0_3 = L0_3.Invoke
        L0_3(L1_3)
      end
      L4_2(L5_2, L6_2)
    end
    L4_2 = L2_2.OnLongClickCount
    if 0 < L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AddLongClickEvent
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2.OnLongClick
        L1_3 = L0_3
        L0_3 = L0_3.Invoke
        L0_3(L1_3)
      end
      L4_2(L5_2, L6_2)
    end
    L4_2 = L2_2.OnRepeatClickCount
    if 0 < L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AddRepeatClickEvent
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2.OnRepeatClick
        L1_3 = L0_3
        L0_3 = L0_3.Invoke
        L0_3(L1_3)
      end
      L4_2(L5_2, L6_2)
    end
    L4_2 = L2_2.OnReleaseCount
    if 0 < L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AddReleaseEvent
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2.OnRelease
        L1_3 = L0_3
        L0_3 = L0_3.Invoke
        L0_3(L1_3)
      end
      L4_2(L5_2, L6_2)
    end
    L4_2 = L2_2.OnExitCount
    if 0 < L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.AddExitEvent
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2.OnExit
        L1_3 = L0_3
        L0_3 = L0_3.Invoke
        L0_3(L1_3)
      end
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._copy_event_trigger = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2.GetComponentsInChildren
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.LocalizedText
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetComponentsInChildren
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.LocalizedText
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2.Length
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    L10_2 = L3_2[L8_2]
    L12_2 = L10_2
    L11_2 = L10_2.SetCustomizedText
    L13_2 = L9_2.text
    L11_2(L12_2, L13_2)
  end
end
L0_1._copy_localized_text = L3_1
return L0_1
