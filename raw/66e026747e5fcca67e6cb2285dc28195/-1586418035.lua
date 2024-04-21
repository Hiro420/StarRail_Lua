local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ComponentExtensions"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Vector3
L1_1 = L1_1.one
L2_1 = CS
L2_1 = L2_1.UnityEngine
L2_1 = L2_1.Vector3
L2_1 = L2_1.zero
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if nil == A2_2 then
    A2_2 = true
  end
  if A0_2 == nil then
    if A2_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = L0_1._get_binder_name
      L6_2 = A3_2
      L5_2 = L5_2(L6_2)
      L6_2 = " : SafeFind() component null error."
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  if A1_2 == nil then
    if A2_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = L0_1._get_binder_name
      L6_2 = A3_2
      L5_2 = L5_2(L6_2)
      L6_2 = " : SafeFind() path null error."
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  L4_2 = A0_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.Find
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil and A2_2 then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogErrorFormat
    L6_2 = L0_1._get_binder_name
    L7_2 = A3_2
    L6_2 = L6_2(L7_2)
    L7_2 = " : SafeFind() find path null error. path: "
    L8_2 = A1_2
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
  end
  return L4_2
end
L0_1.SafeFind = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if nil == A3_2 then
    A3_2 = true
  end
  if A1_2 == nil then
    if A3_2 then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = L0_1._get_binder_name
      L7_2 = A4_2
      L6_2 = L6_2(L7_2)
      L7_2 = " : SafeGetCmpt() component null error. path: "
      L8_2 = A2_2
      L6_2 = L6_2 .. L7_2 .. L8_2
      L5_2(L6_2)
    end
    L5_2 = nil
    return L5_2
  end
  L5_2 = nil
  if A2_2 == nil then
    L5_2 = A1_2.transform
  else
    L6_2 = A1_2.transform
    L7_2 = L6_2
    L6_2 = L6_2.Find
    L8_2 = A2_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  if L5_2 == nil then
    if A3_2 then
      L6_2 = G
      L6_2 = L6_2.SuperDebug
      L6_2 = L6_2.LogErrorFormat
      L7_2 = L0_1._get_binder_name
      L8_2 = A4_2
      L7_2 = L7_2(L8_2)
      L8_2 = " : SafeGetCmpt() find path trans null error. path: "
      L9_2 = A2_2 or L9_2
      if A2_2 == nil or not A2_2 then
        L9_2 = "nil"
      end
      L10_2 = " In Node :"
      L11_2 = A1_2.name
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2(L7_2)
    end
    L6_2 = nil
    return L6_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.GetComponent
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 == nil and A3_2 then
    L7_2 = G
    L7_2 = L7_2.SuperDebug
    L7_2 = L7_2.LogErrorFormat
    L8_2 = L0_1._get_binder_name
    L9_2 = A4_2
    L8_2 = L8_2(L9_2)
    L9_2 = " : SafeGetCmpt() find path Type null error. path: "
    L10_2 = A2_2 or L10_2
    if A2_2 == nil or not A2_2 then
      L10_2 = "nil"
    end
    L11_2 = " In Node :"
    L12_2 = A1_2.name
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L7_2(L8_2)
  end
  return L6_2
end
L0_1.SafeGetCmpt = L3_1
function L3_1(A0_2)
  local L1_2
  if A0_2 == nil then
    L1_2 = ""
    return L1_2
  end
  L1_2 = A0_2.__name
  return L1_2
end
L0_1._get_binder_name = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if nil == A2_2 then
    A2_2 = true
  end
  if A1_2 == nil then
    if A2_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = L0_1._get_binder_name
      L6_2 = A3_2
      L5_2 = L5_2(L6_2)
      L6_2 = " : SafeGetCmpt() component null error."
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  L4_2 = A1_2.GetComponent
  L5_2 = A0_2
  return L4_2(L5_2)
end
L0_1.SafeGetCmpt_3 = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if nil == A3_2 then
    A3_2 = true
  end
  if A1_2 == nil then
    if A3_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "SafeAddCmpt() component null error."
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  if A2_2 == nil then
    if A3_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "SafeAddCmpt() path null error."
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  L4_2 = A1_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.Find
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    if A3_2 then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = "SafeAddCmpt() find path trans null error."
      L5_2(L6_2)
    end
    L5_2 = nil
    return L5_2
  end
  L5_2 = L4_2.gameObject
  L6_2 = L5_2
  L5_2 = L5_2.AddComponent
  L7_2 = A0_2
  return L5_2(L6_2, L7_2)
end
L0_1.SafeAddCmpt = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if nil == A3_2 then
    A3_2 = true
  end
  if A1_2 == nil then
    if A3_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "SafeAddCmpt() component null error."
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  if A2_2 == nil then
    if A3_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "SafeAddCmpt() path null error."
      L4_2(L5_2)
    end
    L4_2 = nil
    return L4_2
  end
  L4_2 = A1_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.Find
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    if A3_2 then
      L5_2 = G
      L5_2 = L5_2.SuperDebug
      L5_2 = L5_2.LogErrorFormat
      L6_2 = "SafeAddCmpt() find path trans null error."
      L5_2(L6_2)
    end
    L5_2 = nil
    return L5_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.GetComponent
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == nil then
    L6_2 = L4_2.gameObject
    L7_2 = L6_2
    L6_2 = L6_2.AddComponent
    L8_2 = A0_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  return L5_2
end
L0_1.SafeAddExclusiveCmpt = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if nil == A2_2 then
    A2_2 = true
  end
  if A2_2 and A0_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "SafeSetActive(): component null error!! "
    L3_2(L4_2)
  end
  if A0_2 ~= nil then
    L3_2 = A0_2.gameObject
    L3_2 = L3_2.activeSelf
    if L3_2 ~= A1_2 then
      L3_2 = A0_2.gameObject
      L4_2 = L3_2
      L3_2 = L3_2.SetActive
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.SafeSetActive = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if nil == A2_2 then
    A2_2 = true
  end
  if A2_2 and A0_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "SafeSetActive(): component null error!! "
    L3_2(L4_2)
  end
  if A0_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.SafeSetLightWeightActive
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.SafeSetLightWeightActive = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if nil == A2_2 then
    A2_2 = true
  end
  if A2_2 and A0_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "SafeSetActiveByScale(): component null error!! "
    L3_2(L4_2)
  end
  if A0_2 ~= nil then
    if A1_2 then
      L3_2 = A0_2.transform
      L3_2 = L3_2.localScale
      L4_2 = L1_1
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.transform
        L4_2 = L1_1
        L3_2.localScale = L4_2
    end
    elseif not A1_2 then
      L3_2 = A0_2.transform
      L3_2 = L3_2.localScale
      L4_2 = L2_1
      if L3_2 ~= L4_2 then
        L3_2 = A0_2.transform
        L4_2 = L2_1
        L3_2.localScale = L4_2
      end
    end
  end
end
L0_1.SafeSetActiveByScale = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.localScale
  L2_2 = L1_1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.IsActiveByScale = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    return
  end
  L1_2 = A0_2.transform
  L2_2 = L1_2.childCount
  L3_2 = 0
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Object
    L7_2 = L7_2.Destroy
    L8_2 = L1_2.GetChild
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.gameObject
    L7_2(L8_2)
  end
end
L0_1.DestroyChildren = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    return
  end
  L1_2 = A0_2.transform
  L2_2 = L1_2.childCount
  L3_2 = 0
  L4_2 = L2_2
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
L0_1.DestroyChildrenImmediate = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if nil == A2_2 then
    A2_2 = true
  end
  if nil == A0_2 then
    if A2_2 then
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "SetSliderValue() component null error."
      L3_2(L4_2)
    end
  else
    A0_2.value = A1_2
  end
end
L0_1.SetSliderValue = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A0_2 then
    L3_2 = A0_2
    L2_2 = A0_2.GetComponent
    L4_2 = G
    L4_2 = L4_2.ImportCsToLua
    L4_2 = L4_2.ToggleType
    L2_2 = L2_2(L3_2, L4_2)
    if nil ~= L2_2 then
      L2_2.isOn = A1_2
    end
  end
end
L0_1.SetToggle = L3_1
return L0_1
