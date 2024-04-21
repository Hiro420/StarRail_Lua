local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.SuperDebug"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UtilEngineWrap"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  if nil ~= A0_2 then
    L4_2 = A0_2
    L3_2 = A0_2.GetComponent
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  return L2_2
end
L0_1.GetComponent = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  if nil ~= A0_2 then
    L4_2 = L0_1.FindFromParent
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L0_1.GetComponent
    L6_2 = L4_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2
  end
  return L3_2
end
L0_1.GetComponentByPath = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.GameObject
  L1_2 = L1_2.Find
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  return L1_2
end
L0_1.FindFromRoot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.Find
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.FindFromParent = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil ~= A0_2 then
    L5_2 = A0_2
    L4_2 = A0_2.GetInstanceID
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.EventRegister
    L5_2 = L5_2.TouchEventRegister
    L6_2 = L5_2
    L5_2 = L5_2.AddEventHandle
    L7_2 = L4_2
    L8_2 = G
    L8_2 = L8_2.EventRegisterType
    L8_2 = L8_2.BtnClick
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = L5_2
    L6_2 = L5_2.GetUserData
    L6_2 = L6_2(L7_2)
    if nil == L6_2 then
      function L6_2()
        local L0_3, L1_3, L2_3
        L0_3 = L5_2
        L1_3 = L0_3
        L0_3 = L0_3.DispatchEvent
        L2_3 = nil
        L0_3(L1_3, L2_3)
      end
      L8_2 = L5_2
      L7_2 = L5_2.SetUserData
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2.onClick
      L8_2 = L7_2
      L7_2 = L7_2.AddListener
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.AddBtnClickHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if nil ~= A0_2 then
    L5_2 = A0_2
    L4_2 = A0_2.GetInstanceID
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.EventRegister
    L5_2 = L5_2.TouchEventRegister
    L6_2 = L5_2
    L5_2 = L5_2.RemoveEventHandle
    L7_2 = L4_2
    L8_2 = G
    L8_2 = L8_2.EventRegisterType
    L8_2 = L8_2.BtnClick
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = A3_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if nil ~= L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.HasEventHandle
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = A0_2.onClick
        L7_2 = L6_2
        L6_2 = L6_2.RemoveListener
        L9_2 = L5_2
        L8_2 = L5_2.GetUserData
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        L7_2 = L5_2
        L6_2 = L5_2.Dispose
        L6_2(L7_2)
        L6_2 = G
        L6_2 = L6_2.delete
        L7_2 = L5_2
        L6_2(L7_2)
        L5_2 = nil
      end
    end
  end
end
L0_1.RemoveBtnClickHandle = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = L0_1.FindFromParent
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if nil ~= L5_2 then
    L6_2 = L0_1.GetComponent
    L7_2 = L5_2
    L8_2 = L0_1.GetButtonType
    L8_2, L9_2, L10_2, L11_2 = L8_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    if nil ~= L6_2 then
      L7_2 = L0_1.AddBtnClickHandle
      L8_2 = L6_2
      L9_2 = A2_2
      L10_2 = A3_2
      L11_2 = A4_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L0_1.AddBtnClickHandleByPath = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = L0_1.FindFromParent
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if nil ~= L5_2 then
    L6_2 = L0_1.GetComponent
    L7_2 = L5_2
    L8_2 = L0_1.GetButtonType
    L8_2, L9_2, L10_2, L11_2 = L8_2()
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    if nil ~= L6_2 then
      L7_2 = L0_1.RemoveBtnClickHandle
      L8_2 = L6_2
      L9_2 = A2_2
      L10_2 = A3_2
      L11_2 = A4_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L0_1.RemoveBtnClickHandleByPath = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if nil ~= A0_2 then
    L4_2 = L0_1.GetComponent
    L5_2 = A0_2
    L6_2 = L0_1.GetButtonType
    L6_2, L7_2, L8_2, L9_2 = L6_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if nil ~= L4_2 then
      L5_2 = L0_1.AddBtnClickHandle
      L6_2 = L4_2
      L7_2 = A1_2
      L8_2 = A2_2
      L9_2 = A3_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L0_1.AddBtnClickHandleByTransform = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if nil ~= A0_2 then
    L4_2 = L0_1.GetComponent
    L5_2 = A0_2
    L6_2 = L0_1.GetButtonType
    L6_2, L7_2, L8_2, L9_2 = L6_2()
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if nil ~= L4_2 then
      L5_2 = L0_1.RemoveBtnClickHandle
      L6_2 = L4_2
      L7_2 = A1_2
      L8_2 = A2_2
      L9_2 = A3_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L0_1.RemoveBtnClickHandleByTransform = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  if nil ~= A0_2 then
    L1_2 = A0_2.activeSelf
  end
  return L1_2
end
L0_1.IsActiveSelf = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Assert
  L3_2 = nil ~= A0_2
  L4_2 = "go is null"
  L2_2(L3_2, L4_2)
  if nil ~= A0_2 then
    L2_2 = L0_1.IsActiveSelf
    L2_2 = L2_2()
    if L2_2 ~= A1_2 then
      L3_2 = A0_2
      L2_2 = A0_2.SetActive
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.SetActive = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Assert
  L4_2 = nil ~= A0_2
  L5_2 = "parentTransform is null"
  L3_2(L4_2, L5_2)
  L3_2 = L0_1.FindFromRoot
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  childTransform = L3_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.Assert
  L4_2 = childTransform
  L4_2 = nil ~= L4_2
  L5_2 = "childTransform is null"
  L3_2(L4_2, L5_2)
  L3_2 = L0_1.SetActive
  L4_2 = childTransform
  L4_2 = L4_2.gameObject
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.SetActiveByPath = L1_1
function L1_1(A0_2, A1_2)
  A0_2.sprite = A1_2
end
L0_1.SetImageSprite = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = typeof
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Sprite
  return L0_2(L1_2)
end
L0_1.GetSpriteType = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = typeof
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.Image
  return L0_2(L1_2)
end
L0_1.GetImageType = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = typeof
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.Button
  return L0_2(L1_2)
end
L0_1.GetButtonType = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = typeof
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.Text
  return L0_2(L1_2)
end
L0_1.GetTextType = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = typeof
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.GameObject
  return L0_2(L1_2)
end
L0_1.GetGameObjectType = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "Lua Version"
  L2_2 = _VERSION
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "package.path"
  L2_2 = package
  L2_2 = L2_2.path
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "package.cpath"
  L2_2 = package
  L2_2 = L2_2.cpath
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L0_1.SystemInfo = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if nil == A2_2 then
    A2_2 = true
  end
  L4_2 = A1_2
  L3_2 = A1_2.SetParent
  L5_2 = A0_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.SetParent = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.tostring = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = tonumber
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.tonumber = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = nil == A0_2 or "" == A0_2
  return L1_2
end
L0_1.IsStrEmpty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  if A0_2 == nil then
    L1_2 = true
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.IsNull
  L1_2 = L1_2(L2_2)
  return L1_2
end
L0_1.IsCsObjectNull = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.GetType
  L2_2 = L2_2(L3_2)
  L3_2 = typeof
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1.IsCsType = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.AddListener
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.AddCsEventHandle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.RemoveListener
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.RemoveCsEventHandle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.GetHashCode
  return L1_2(L2_2)
end
L0_1.ConvCsEnumToNum = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.LuaToCs
  L0_2 = L0_2.FullGc
  L0_2()
end
L0_1.GcCollect = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.LuaToCs
  L0_2 = L0_2.GetLuaMemroy
  L0_2 = L0_2()
  return L0_2
end
L0_1.GetMemorySize = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = nil == A0_2 or "" == A0_2
  return L1_2
end
L0_1.IsNullOrEmpty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = getmetatable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.__name
  return L2_2
end
L0_1.GetCsObjectTypeName = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.IsNotNull
  L1_2 = nil ~= A0_2 and L1_2
  return L1_2
end
L0_1.IsUnityObjectNotNull = L1_1
return L0_1
