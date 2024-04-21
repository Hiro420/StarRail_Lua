local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = class
L1_1 = "ModuleManager"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = {}
L2_1 = "StaminaModule"
L3_1 = "RedDotModule"
L4_1 = "ToastModule"
L5_1 = "MailModule"
L6_1 = "RPGSDKModule"
L7_1 = "ShopModule"
L8_1 = "DailyMissionModule"
L9_1 = "TutorialModule"
L10_1 = "MapModule"
L11_1 = "MessageModule"
L12_1 = "OperationModule"
L13_1 = "LuaHotfixModule"
L14_1 = "ShortCutWheelModule"
L15_1 = "WayPointModule"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L1_1[11] = L12_1
L1_1[12] = L13_1
L1_1[13] = L14_1
L1_1[14] = L15_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1._Inited
  if L0_2 then
    return
  end
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = new
    L6_2 = "Logic."
    L7_2 = L4_2
    L8_2 = "."
    L9_2 = L4_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2 = L5_2(L6_2)
    L0_1[L4_2] = L5_2
  end
  L0_1._Inited = true
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.List
  L0_2 = L0_2(L1_2)
  L0_1._ModuleInitRequestList = L0_2
  L0_1._inited_all_module = false
  L0_1._need_send_request = false
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L0_1[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.InitNotify
    L5_2(L6_2)
  end
  L0_2 = {}
  L1_2 = G
  L1_2 = L1_2.MCoroutineMgr
  L2_2 = L1_2
  L1_2 = L1_2.StartCoroutine
  L3_2 = nil
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = coroutine
    L1_3 = L1_3.yield
    L1_3()
    L1_3 = ipairs
    L2_3 = L1_1
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = L0_1[L5_3]
      L7_3 = L6_3
      L6_3 = L6_3.Init
      L6_3(L7_3)
      L6_3 = G
      L6_3 = L6_3.SuperDebug
      L6_3 = L6_3.LogFormatWithTag
      L7_3 = G
      L7_3 = L7_3.LogTag
      L7_3 = L7_3.UI
      L8_3 = "Module Manager %s init"
      L9_3 = L5_3
      L6_3(L7_3, L8_3, L9_3)
    end
    L0_1._inited_all_module = true
    L1_3 = L0_1._need_send_request
    if L1_3 then
      L1_3 = L0_1.SendModuleInitRequest
      L1_3()
    end
  end
  L5_2 = L0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.Init = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1._inited_all_module
  if L0_2 then
    L0_2 = L0_1._Inited
    if L0_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L0_1[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.Reconnect
    L5_2(L6_2)
  end
end
L0_1.Reconnect = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = delete
    L6_2 = L0_1[L4_2]
    L5_2(L6_2)
    L0_1[L4_2] = nil
  end
end
L0_1.Dispose = L2_1
L2_1 = class
L3_1 = "OneRequest"
L4_1 = nil
L5_1 = L0_1
L2_1 = L2_1(L3_1, L4_1, L5_1)
function L3_1(A0_2)
  local L1_2
  A0_2.CmdID = nil
  A0_2.EventListener = nil
  A0_2.RequestCall = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  if L1_2 ~= nil then
    L1_2 = L0_1._Inited
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = ipairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1[L5_2]
    if L6_2 ~= nil then
      L6_2 = L0_1[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.tick
      L8_2 = A0_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.tick = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1._inited_all_module
  return L0_2
end
L0_1.IsInited = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == nil or A0_2 == 0 then
    return
  end
  L3_2 = L0_1.OneRequest
  L3_2 = L3_2()
  L4_2 = L0_1._ModuleInitRequestList
  L5_2 = L4_2
  L4_2 = L4_2.Add
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.CmdID = L4_2
  L3_2.EventListener = A1_2
  L3_2.RequestCall = A2_2
end
L0_1.RegistModuleInitRequest = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L0_1._inited_all_module
  if not L0_2 then
    L0_1._need_send_request = true
    return
  end
  L0_2 = G
  L0_2 = L0_2.SuperDebug
  L0_2 = L0_2.LogFormatWithTag
  L1_2 = G
  L1_2 = L1_2.LogTag
  L1_2 = L1_2.UI
  L2_2 = "Module Manager SendModuleInitRequest"
  L0_2(L1_2, L2_2)
  L0_2 = L0_1._ModuleInitRequestList
  L1_2 = L0_2
  L0_2 = L0_2.Count
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L2_2 = L0_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1._ModuleInitRequestList
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.RequestCall
    if nil ~= L6_2 then
      L6_2 = L5_2.EventListener
      if nil ~= L6_2 then
        L6_2 = L5_2.RequestCall
        L7_2 = L5_2.EventListener
        L6_2(L7_2)
      else
        L6_2 = L5_2.RequestCall
        L6_2()
      end
    end
  end
  L1_2 = L0_1._ModuleInitRequestList
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1.SendModuleInitRequest = L3_1
return L0_1
