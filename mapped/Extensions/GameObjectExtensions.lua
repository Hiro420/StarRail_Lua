local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "GameObjectExtensions"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if nil == A2_2 then
    A2_2 = true
  end
  if A2_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.Assert
    L4_2 = A0_2 ~= nil
    L5_2 = "SafeSetActive(): GameObject null error!!"
    L3_2(L4_2, L5_2)
  end
  if A0_2 ~= nil then
    L3_2 = A0_2.activeSelf
    if L3_2 ~= A1_2 then
      L4_2 = A0_2
      L3_2 = A0_2.SetActive
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.SafeSetActive = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.ComponentExtensions
  L3_2 = L3_2.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.EventTrigger
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.transform
  L6_2 = ""
  L7_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.ComponentExtensions
    L4_2 = L4_2.SafeAddCmpt
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.EventSystems
    L6_2 = L6_2.EventTrigger
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2.transform
    L7_2 = ""
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
  end
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.EventSystems
  L4_2 = L4_2.EventTrigger
  L4_2 = L4_2.Entry
  L4_2 = L4_2()
  L4_2.eventID = A1_2
  L5_2 = L4_2.callback
  L6_2 = L5_2
  L5_2 = L5_2.AddListener
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.triggers
  L6_2 = L5_2
  L5_2 = L5_2.Add
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.AddTrigger = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.EventSystems
  L4_2 = L4_2.EventTrigger
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.transform
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeAddCmpt
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.EventSystems
    L5_2 = L5_2.EventTrigger
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.transform
    L6_2 = ""
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = pairs
  L4_2 = L2_2.triggers
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.eventID
    if L8_2 == A1_2 then
      L8_2 = L2_2.triggers
      L9_2 = L8_2
      L8_2 = L8_2.RemoveAt
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      return
    end
  end
end
L0_1.RemoveTrigger = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.EventSystems
  L3_2 = L3_2.EventTrigger
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.transform
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if nil ~= L1_2 then
    L2_2 = L1_2.triggers
    L2_2 = L2_2.Clear
    L2_2()
  end
end
L0_1.RemoveAllTrigger = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    return
  end
  L1_2 = A0_2.transform
  L2_2 = L1_2.childCount
  if 0 < L2_2 then
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Object
      L7_2 = L7_2.Destroy
      L9_2 = L1_2
      L8_2 = L1_2.GetChild
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      L8_2 = L8_2.gameObject
      L7_2(L8_2)
    end
  end
end
L0_1.DestroyChildren = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2.transform
  L2_2 = L1_2.childCount
  if 0 < L2_2 then
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = CS
      L7_2 = L7_2.UnityEngine
      L7_2 = L7_2.Object
      L7_2 = L7_2.DestroyImmediate
      L8_2 = L1_2.GetChild
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.gameObject
      L7_2(L8_2)
    end
  end
end
L0_1.DestroyChildrenImmediate = L1_1
return L0_1
