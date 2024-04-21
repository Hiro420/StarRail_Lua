local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Globals"
L0_1(L1_1)
L0_1 = require
L1_1 = "GlobalVars"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "RspErrorShower"
L1_1 = L1_1(L2_1)
L2_1 = UNITY_EDITOR
if L2_1 then
  L2_1 = CS
  L2_1 = L2_1.RPG
  L2_1 = L2_1.Client
  L2_1 = L2_1.AppUtils
  L2_1 = L2_1.IsWindowsEditor
  if L2_1 then
    L2_1 = require
    L3_1 = "Debug.LuaPanda"
    L2_1 = L2_1(L3_1)
    L3_1 = L2_1.start
    L4_1 = "127.0.0.1"
    L5_1 = 8818
    L3_1(L4_1, L5_1)
    L3_1 = USE_LUA_PROFILER
    if L3_1 == nil then
      L3_1 = CS
      L3_1 = L3_1.UnityEngine
      L3_1 = L3_1.Application
      L3_1 = L3_1.dataPath
      L4_1 = "/../../DevelopTool/EmmyLua/debugger/emmy/windows/x64/emmy_core.dll"
      L3_1 = L3_1 .. L4_1
      L4_1 = print
      L5_1 = string
      L5_1 = L5_1.format
      L6_1 = "--------->>> Start EmmyLua Debugger in [%s]"
      L7_1 = L3_1
      L5_1, L6_1, L7_1 = L5_1(L6_1, L7_1)
      L4_1(L5_1, L6_1, L7_1)
      L4_1 = package
      L5_1 = package
      L5_1 = L5_1.cpath
      L6_1 = ";"
      L7_1 = L3_1
      L5_1 = L5_1 .. L6_1 .. L7_1
      L4_1.cpath = L5_1
      L4_1 = require
      L5_1 = "emmy_core"
      L4_1 = L4_1(L5_1)
      L5_1 = pcall
      function L6_1()
        local L0_2, L1_2, L2_2
        L0_2 = L4_1.tcpListen
        L1_2 = "localhost"
        L2_2 = 9966
        L0_2(L1_2, L2_2)
      end
      L5_1(L6_1)
    end
  end
end
L2_1 = require
L3_1 = "Base.Common.Prequisites"
L2_1(L3_1)
L2_1 = require
L3_1 = "Common.DataPrequisites"
L2_1(L3_1)
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = print
  L1_2 = "Lua Version"
  L2_2 = _VERSION
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = L0_1.ctor
  L0_2()
  L0_2 = L0_1.init
  L0_2()
  L0_2 = L1_1.ctor
  L0_2()
end
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.run_game
  L0_2()
end
RunContext = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.reconnect
  L0_2()
end
Reconnect = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.IsInited
  return L0_2()
end
IsInited = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_NetworkManager
  L0_2 = L0_2.GIHDCLKLGPI
  if L0_2 ~= nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.GlobalVars
    L0_2 = L0_2.s_AccountManager
    L1_2 = L0_2
    L0_2 = L0_2.SetServerId
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_NetworkManager
    L2_2 = L2_2.GIHDCLKLGPI
    L2_2 = L2_2.Name
    L0_2(L1_2, L2_2)
  end
  L0_2 = require
  L1_2 = "Ui.Activity.ActivityPanel.ActivityPanelEnum"
  L0_2(L1_2)
  L0_2 = L0_1.login_complete_context
  L0_2()
end
LoginCompleteContext = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if nil ~= L1_2 then
    L1_2 = L0_1.update
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
UpdateContext = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if nil ~= L1_2 then
    L1_2 = L0_1.late_update
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
LateUpdateContext = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L1_1.dispose
  L0_2()
  L0_2 = nil
  L1_1 = L0_2
  L0_2 = L0_1.dispose
  L0_2()
  L0_2 = nil
  L0_1 = L0_2
end
DisposeContext = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = print
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "HotfixLuaPackage old:[%s],new:[%s]"
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = package
  L2_2 = L2_2.loaded
  L2_2["Framework.LuaReload"] = nil
  L2_2 = package
  L2_2 = L2_2.loaded
  L2_2[A1_2] = nil
  L2_2 = require
  L3_2 = "Framework.LuaReload"
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L4_2 = {}
  L3_2.R = L4_2
  L3_2 = require
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2.__reloading = true
  L4_2 = pcall
  function L5_2()
    local L0_3, L1_3
    L0_3 = require
    L1_3 = A1_2
    return L0_3(L1_3)
  end
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = G
  L6_2.__reloading = false
  L6_2 = G
  L7_2 = {}
  L6_2.R = L7_2
  if L4_2 then
    L6_2 = L2_2.reload_module
    L7_2 = L3_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  return L4_2
end
HotfixLuaPackage = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "HotfixLuaPackage IsNeedReload:[%s]"
  L4_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2, L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = package
  L1_2 = L1_2.loaded
  L1_2["Framework.LuaReload"] = nil
  L1_2 = package
  L1_2 = L1_2.loaded
  L1_2[A0_2] = nil
  L1_2 = require
  L2_2 = "Framework.LuaReload"
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L3_2 = {}
  L2_2.R = L3_2
  L2_2 = G
  L2_2.__reloading = true
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = require
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = G
  L4_2.__reloading = false
  L4_2 = G
  L5_2 = {}
  L4_2.R = L5_2
  L4_2 = false
  if L2_2 then
    L5_2 = L1_2.need_reload
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  return L4_2
end
IsNeedReload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ModuleManager
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.ModuleManager
    L1_2 = L1_2.LuaHotfixModule
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.ModuleManager
      L1_2 = L1_2.LuaHotfixModule
      L2_2 = L1_2
      L1_2 = L1_2.get_ref_count
      L3_2 = A0_2
      return L1_2(L2_2, L3_2)
    end
  end
  L1_2 = -1
  return L1_2
end
GetClassRefCount = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = require
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = L3_2[A1_2]
    if L4_2 then
      L4_2 = L3_2[A1_2]
      return L4_2
    end
  end
  L4_2 = -1
  return L4_2
end
BinderIndexByName = L3_1
L3_1 = L2_1
L3_1()
