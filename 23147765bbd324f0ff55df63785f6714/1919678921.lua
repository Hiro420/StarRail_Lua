local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UIDragManager"
L0_1 = L0_1(L1_1)
L1_1 = {}
L0_1.DragData = L1_1
L0_1.EndDragActionOwner = nil
L0_1.EndDragAction = nil
L0_1.DragGo = nil
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.RemoveTrigger
  L6_2 = A1_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.BeginDrag
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.AddTrigger
  L6_2 = A1_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.BeginDrag
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_1.StartDrag
    L2_3 = A0_2
    L1_3(L2_3)
    L1_3 = A3_2
    L2_3 = A2_2
    L3_3 = A4_2
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.RemoveTrigger
  L6_2 = A1_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.EndDrag
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.AddTrigger
  L6_2 = A1_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.EndDrag
  L8_2 = L0_1.EndDrag
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.BindDrag = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.GameObjectExtensions
    L1_2 = L1_2.RemoveTrigger
    L2_2 = A0_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.EventSystems
    L3_2 = L3_2.EventTriggerType
    L3_2 = L3_2.BeginDrag
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.GameObjectExtensions
    L1_2 = L1_2.RemoveTrigger
    L2_2 = A0_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.EventSystems
    L3_2 = L3_2.EventTriggerType
    L3_2 = L3_2.EndDrag
    L1_2(L2_2, L3_2)
  end
end
L0_1.UnBindDrag = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "pang: UIDragManager StartDrag"
  L1_2(L2_2)
  L1_2 = L0_1.DragGo
  if L1_2 ~= nil then
    L1_2 = L0_1.EndDrag
    L1_2()
  end
  L0_1.DragGo = A0_2
  L1_2 = G
  L1_2 = L1_2.GameObjectExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Input
  L2_2 = L2_2.mousePosition
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Input
  L3_2 = L3_2.mousePosition
  L3_2 = L3_2.y
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.RectTransformUtility
  L2_2 = L2_2.ScreenPointToLocalPointInRectangle
  L3_2 = L0_1.DragGo
  L3_2 = L3_2.transform
  L3_2 = L3_2.parent
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = nil
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "pang: \232\142\183\229\143\150\229\157\144\230\160\135\229\164\177\232\180\165"
    L4_2(L5_2)
  end
  L4_2 = L0_1.DragGo
  L4_2 = L4_2.transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1.StartDrag = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1.DragGo
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Input
  L2_2 = L2_2.mousePosition
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Input
  L3_2 = L3_2.mousePosition
  L3_2 = L3_2.y
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.RectTransformUtility
  L2_2 = L2_2.ScreenPointToLocalPointInRectangle
  L3_2 = L0_1.DragGo
  L3_2 = L3_2.transform
  L3_2 = L3_2.parent
  L4_2 = L1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_UICamera
  L6_2 = nil
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "pang: \232\142\183\229\143\150\229\157\144\230\160\135\229\164\177\232\180\165"
    L4_2(L5_2)
  end
  L4_2 = L0_1.DragGo
  L4_2 = L4_2.transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L0_1.tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "pang: UIDragManager EndDrag"
  L1_2(L2_2)
  L1_2 = L0_1.DragGo
  if L1_2 == nil then
    return
  end
  L1_2 = L0_1.EndDragAction
  if L1_2 ~= nil then
    L1_2 = L0_1.EndDragActionOwner
    if L1_2 ~= nil then
      L1_2 = L0_1.EndDragAction
      L2_2 = L0_1.EndDragActionOwner
      L1_2(L2_2)
      L0_1.EndDragAction = nil
      L0_1.EndDragActionOwner = nil
    end
  end
  L1_2 = G
  L1_2 = L1_2.GameObjectExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = L0_1.DragGo
  L3_2 = false
  L1_2(L2_2, L3_2)
  L0_1.DragGo = nil
  L1_2 = {}
  L0_1.DragData = L1_2
end
L0_1.EndDrag = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = L0_1.DragGo
  L0_2 = L0_2 ~= nil
  return L0_2
end
L0_1.IsInDrag = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = G
  L4_2 = L4_2.GameObjectExtensions
  L4_2 = L4_2.RemoveTrigger
  L5_2 = A0_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.EventTriggerType
  L6_2 = L6_2.Drop
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.GameObjectExtensions
  L4_2 = L4_2.AddTrigger
  L5_2 = A0_2
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.EventTriggerType
  L6_2 = L6_2.Drop
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A2_2
    L2_3 = A1_2
    L3_3 = A3_2
    L1_3(L2_3, L3_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.BindDrop = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.GameObjectExtensions
    L1_2 = L1_2.RemoveTrigger
    L2_2 = A0_2
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.EventSystems
    L3_2 = L3_2.EventTriggerType
    L3_2 = L3_2.Drop
    L1_2(L2_2, L3_2)
  end
end
L0_1.UnBindDrop = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.RemoveTrigger
  L6_2 = A0_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.PointerEnter
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.AddTrigger
  L6_2 = A0_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.PointerEnter
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A2_2
    L2_3 = A1_2
    L3_3 = A4_2
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.RemoveTrigger
  L6_2 = A0_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.PointerExit
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.GameObjectExtensions
  L5_2 = L5_2.AddTrigger
  L6_2 = A0_2
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.EventSystems
  L7_2 = L7_2.EventTriggerType
  L7_2 = L7_2.PointerExit
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A3_2
    L2_3 = A1_2
    L3_3 = A4_2
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.BindPointerEnterAndExit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.GameObjectExtensions
  L1_2 = L1_2.RemoveTrigger
  L2_2 = A0_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.EventSystems
  L3_2 = L3_2.EventTriggerType
  L3_2 = L3_2.PointerEnter
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.GameObjectExtensions
  L1_2 = L1_2.RemoveTrigger
  L2_2 = A0_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.EventSystems
  L3_2 = L3_2.EventTriggerType
  L3_2 = L3_2.PointerExit
  L1_2(L2_2, L3_2)
end
L0_1.UnBindPointerEnterAndExit = L1_1
return L0_1
