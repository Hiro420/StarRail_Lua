local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1
L0_1 = true
L1_1 = 1
L2_1 = nil
L3_1 = 2
L4_1 = 0.005
L5_1 = "3.1.0"
L6_1 = {}
LuaPanda = L6_1
L6_1 = LuaPanda
L7_1 = {}
L6_1.tools = L7_1
L6_1.curStackId = 0
L8_1 = nil
L9_1 = {}
L9_1.DISCONNECT_HOOK = 0
L9_1.LITE_HOOK = 1
L9_1.MID_HOOK = 2
L9_1.ALL_HOOK = 3
L10_1 = {}
L10_1.DISCONNECT = 0
L10_1.WAIT_CMD = 1
L10_1.STOP_ON_ENTRY = 2
L10_1.RUN = 3
L10_1.STEPOVER = 4
L10_1.STEPIN = 5
L10_1.STEPOUT = 6
L10_1.STEPOVER_STOP = 7
L10_1.STEPIN_STOP = 8
L10_1.STEPOUT_STOP = 9
L10_1.HIT_BREAKPOINT = 10
L11_1 = "|*|"
L12_1 = 86400
L13_1 = nil
L14_1 = nil
L15_1 = {}
L6_1.breaks = L15_1
L16_1 = ""
L17_1 = ""
L18_1 = ""
L19_1 = ""
L20_1 = ""
L21_1 = {}
L22_1 = {}
L23_1 = false
L24_1 = ""
L25_1 = nil
L26_1 = nil
L27_1 = nil
L28_1 = nil
L29_1 = nil
L30_1 = nil
L31_1 = nil
L32_1 = 1
L33_1 = 1
L34_1 = {}
L35_1 = ""
L36_1 = true
L37_1 = {}
L38_1 = {}
L39_1 = false
L40_1 = false
L41_1 = "launch.json\230\150\135\228\187\182\231\154\132\233\133\141\231\189\174\233\161\185useCHook\232\162\171\232\174\190\231\189\174\228\184\186false."
L42_1 = ""
L43_1 = ""
L44_1 = ""
L45_1 = false
L46_1 = nil
L47_1 = nil
L48_1 = false
L49_1 = 0
L50_1 = 0
L51_1 = 3
L52_1 = 0
L53_1 = nil
L54_1 = nil
L55_1 = 0
L56_1 = nil
L57_1 = 0
L58_1 = {}
L59_1 = false
L60_1 = _VERSION
if L60_1 == "Lua 5.1" then
  L53_1 = loadstring
else
  L53_1 = load
end
L60_1 = setmetatable
L61_1 = {}
L62_1 = {}
function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L6_1.getWatchedVariable
  L3_2 = A1_2
  L4_2 = _G
  L4_2 = L4_2.LuaPanda
  L4_2 = L4_2.curStackId
  L5_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end
L62_1.__index = L63_1
function L63_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L6_1.setVariableValue
  L4_2 = A1_2
  L5_2 = _G
  L5_2 = L5_2.LuaPanda
  L5_2 = L5_2.curStackId
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L62_1.__newindex = L63_1
L60_1 = L60_1(L61_1, L62_1)
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = tostring
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = "127.0.0.1"
  end
  L2_2 = L2_2(L3_2)
  A0_2 = L2_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2 or A1_2
  if not L2_2 then
    A1_2 = 8818
  end
  L2_2 = L6_1.printToConsole
  L3_2 = "Debugger start. connect host:"
  L4_2 = A0_2
  L5_2 = " port:"
  L6_2 = tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = L27_1
  if L2_2 ~= nil then
    L2_2 = L6_1.printToConsole
    L3_2 = "[Warning] \232\176\131\232\175\149\229\153\168\229\183\178\231\187\143\229\144\175\229\138\168\239\188\140\232\175\183\228\184\141\232\166\129\229\134\141\230\172\161\232\176\131\231\148\168start()"
    L4_2 = 1
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L6_1.changeRunState
  L3_2 = L10_1.DISCONNECT
  L2_2(L3_2)
  L2_2 = L6_1.reGetSock
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = L6_1.printToConsole
    L3_2 = "[Error] Start debugger but get Socket fail , please install luasocket!"
    L4_2 = 2
    L2_2(L3_2, L4_2)
    return
  end
  L25_1 = A0_2
  L26_1 = A1_2
  L2_2 = L27_1
  if L2_2 then
    L2_2 = L27_1
    L3_2 = L2_2
    L2_2 = L2_2.connect
    L4_2 = L25_1
    L5_2 = L26_1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  if L2_2 ~= nil then
    L3_2 = L6_1.printToConsole
    L4_2 = "first connect success!"
    L3_2(L4_2)
    L3_2 = L6_1.connectSuccess
    L3_2()
  else
    L3_2 = L6_1.printToConsole
    L4_2 = "first connect failed!"
    L3_2(L4_2)
    L3_2 = L6_1.changeHookState
    L4_2 = L9_1.DISCONNECT_HOOK
    L3_2(L4_2)
  end
end
L6_1.start = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = L6_1.changeRunState
  L1_2 = L10_1.WAIT_CMD
  L0_2(L1_2)
  L0_2 = L6_1.printToConsole
  L1_2 = "connectSuccess"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = L6_1.debugger_wait_msg
  L0_2 = L0_2()
  L1_2 = L19_1
  if L1_2 == "" then
    L1_2 = debug
    L1_2 = L1_2.getinfo
    L2_2 = 1
    L3_2 = "S"
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L5_2 == "source" then
        L19_1 = L6_2
        L7_2 = L6_1.printToVSCode
        L8_2 = "DebuggerFileName:"
        L9_2 = tostring
        L10_2 = L19_1
        L9_2 = L9_2(L10_2)
        L8_2 = L8_2 .. L9_2
        L7_2(L8_2)
        L7_2 = L30_1
        if L7_2 ~= nil then
          L7_2 = L30_1.sync_debugger_path
          L8_2 = L19_1
          L7_2(L8_2)
        end
      end
    end
  end
  L1_2 = L20_1
  if L1_2 == "" then
    L1_2 = L7_1.getFileSource
    L1_2 = L1_2()
    L20_1 = L1_2
    L1_2 = L30_1
    if L1_2 ~= nil then
      L1_2 = L30_1.sync_tools_path
      L2_2 = L20_1
      L1_2(L2_2)
    end
  end
  if L0_2 == false then
    L1_2 = L6_1.printToVSCode
    L2_2 = "[debugger error]\229\136\157\229\167\139\229\140\150\230\156\170\229\174\140\230\136\144, \229\187\186\231\171\139\232\191\158\230\142\165\228\189\134\230\142\165\230\148\182\229\136\157\229\167\139\229\140\150\230\182\136\230\129\175\229\164\177\232\180\165\227\128\130\232\175\183\230\155\180\230\141\162\231\171\175\229\143\163\233\135\141\232\175\149"
    L3_2 = 2
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L6_1.printToVSCode
  L2_2 = "debugger init success"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = L6_1.changeHookState
  L2_2 = L9_1.ALL_HOOK
  L1_2(L2_2)
  L1_2 = L30_1
  if L1_2 == nil then
    L1_2 = L54_1
    if L1_2 == nil then
      L1_2 = type
      L2_2 = coroutine
      L2_2 = L2_2.create
      L1_2 = L1_2(L2_2)
      if L1_2 == "function" then
        L1_2 = L6_1.printToConsole
        L2_2 = "change coroutine.create"
        L1_2(L2_2)
        L1_2 = coroutine
        L1_2 = L1_2.create
        L54_1 = L1_2
        L1_2 = coroutine
        function L2_2(...)
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = L54_1
          L1_3, L2_3, L3_3 = ...
          L0_3 = L0_3(L1_3, L2_3, L3_3)
          L1_3 = table
          L1_3 = L1_3.insert
          L2_3 = L38_1
          L3_3 = L0_3
          L1_3(L2_3, L3_3)
          L1_3 = L6_1.changeCoroutineHookState
          L1_3()
          return L0_3
        end
        L1_2.create = L2_2
    end
    else
      L1_2 = L6_1.printToConsole
      L2_2 = "restart coroutine"
      L1_2(L2_2)
      L1_2 = L6_1.changeCoroutineHookState
      L1_2()
    end
  end
end
L6_1.connectSuccess = L61_1
function L61_1()
  local L0_2, L1_2
  L0_2 = nil
  L28_1 = L0_2
  L0_2 = nil
  L29_1 = L0_2
  L0_2 = {}
  L15_1 = L0_2
  L0_2 = {}
  L58_1 = L0_2
  L0_2 = L15_1
  L6_1.breaks = L0_2
  L0_2 = L30_1
  if L0_2 ~= nil then
    L0_2 = L30_1.sync_breakpoints
    L0_2()
    L0_2 = L30_1.clear_pathcache
    L0_2()
  end
end
L6_1.clearData = L61_1
function L61_1()
  local L0_2, L1_2, L2_2
  L0_2 = L6_1.printToConsole
  L1_2 = "Debugger disconnect"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = L6_1.clearData
  L0_2()
  L0_2 = L6_1.changeHookState
  L1_2 = L9_1.DISCONNECT_HOOK
  L0_2(L1_2)
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L55_1 = L0_2
  L0_2 = L6_1.changeRunState
  L1_2 = L10_1.DISCONNECT
  L0_2(L1_2)
  L0_2 = L27_1
  if L0_2 ~= nil then
    L0_2 = L27_1
    L1_2 = L0_2
    L0_2 = L0_2.close
    L0_2(L1_2)
  end
  L0_2 = L26_1
  if L0_2 ~= nil then
    L0_2 = L25_1
    if L0_2 ~= nil then
      goto lbl_34
    end
  end
  L0_2 = L6_1.printToConsole
  L1_2 = "[Warning] User call LuaPanda.disconnect() before set debug ip & port, please call LuaPanda.start() first!"
  L2_2 = 2
  L0_2(L1_2, L2_2)
  do return end
  ::lbl_34::
  L0_2 = L6_1.reGetSock
  L0_2()
end
L6_1.disconnect = L61_1
function L61_1()
  local L0_2, L1_2
  L0_2 = L15_1
  return L0_2
end
L6_1.getBreaks = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L6_1.getSpecificFunctionStackLevel
  L1_2 = L21_1.func
  L0_2 = L0_2(L1_2)
  L1_2 = type
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "number" then
    L0_2 = 2
  end
  L1_2 = L21_1.source
  if L1_2 == nil then
    L2_2 = L30_1
    if L2_2 ~= nil then
      L2_2 = L6_1.getPath
      L3_2 = tostring
      L4_2 = L30_1.get_last_source
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L1_2 = L2_2
    end
  end
  L2_2 = debug
  L2_2 = L2_2.getinfo
  L3_2 = L0_2
  L4_2 = "S"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = "cwd:      "
  L4_2 = L18_1
  L5_2 = [[

getinfo:  ]]
  L6_2 = L2_2.source
  L7_2 = [[

format:   ]]
  L8_2 = tostring
  L9_2 = L1_2
  L8_2 = L8_2(L9_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  return L3_2
end
L6_1.getCWD = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = ""
  L2_2 = jit
  if L2_2 then
    L2_2 = jit
    L2_2 = L2_2.version
    if L2_2 then
      L2_2 = ","
      L3_2 = tostring
      L4_2 = jit
      L4_2 = L4_2.version
      L3_2 = L3_2(L4_2)
      L1_2 = L2_2 .. L3_2
    end
  end
  L2_2 = #L0_2
  L2_2 = L2_2 + 1
  L3_2 = "Lua Ver:"
  L4_2 = _VERSION
  L5_2 = L1_2
  L6_2 = " | adapterVer:"
  L7_2 = tostring
  L8_2 = L31_1
  L7_2 = L7_2(L8_2)
  L8_2 = " | Debugger Ver:"
  L9_2 = tostring
  L10_2 = L5_1
  L9_2 = L9_2(L10_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L0_2[L2_2] = L3_2
  L2_2 = ""
  L3_2 = L30_1
  if L3_2 ~= nil then
    L3_2 = L30_1.sync_getLibVersion
    L3_2, L4_2 = L3_2()
    if L4_2 ~= nil then
      L5_2 = tostring
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      L6_2 = " for "
      L7_2 = tostring
      L8_2 = math
      L8_2 = L8_2.ceil
      L9_2 = L4_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L5_2 = L5_2 .. L6_2 .. L7_2
      if L5_2 then
        goto lbl_55
      end
    end
    L5_2 = tostring
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    ::lbl_55::
    L6_2 = #L0_2
    L6_2 = L6_2 + 1
    L7_2 = " | hookLib Ver:"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L0_2[L6_2] = L7_2
    L6_2 = L2_2
    L7_2 = "\232\175\180\230\152\142: \229\183\178\229\138\160\232\189\189 libpdebug \229\186\147."
    L2_2 = L6_2 .. L7_2
  else
    L3_2 = L2_2
    L4_2 = "\232\175\180\230\152\142: \230\156\170\232\131\189\229\138\160\232\189\189 libpdebug \229\186\147\227\128\130\229\142\159\229\155\160\232\175\183\228\189\191\231\148\168 LuaPanda.doctor() \230\159\165\231\156\139"
    L2_2 = L3_2 .. L4_2
  end
  L3_2 = false
  L4_2 = type
  L5_2 = L52_1
  L4_2 = L4_2(L5_2)
  if L4_2 == "number" then
    L4_2 = L52_1
    if L4_2 == 1 then
      L3_2 = true
    end
  end
  L4_2 = #L0_2
  L4_2 = L4_2 + 1
  L5_2 = " | supportREPL:"
  L6_2 = tostring
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L0_2[L4_2] = L5_2
  L4_2 = #L0_2
  L4_2 = L4_2 + 1
  L5_2 = " | useBase64EncodeString:"
  L6_2 = tostring
  L7_2 = L40_1
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L0_2[L4_2] = L5_2
  L4_2 = #L0_2
  L4_2 = L4_2 + 1
  L5_2 = " | codeEnv:"
  L6_2 = tostring
  L7_2 = L28_1
  L6_2 = L6_2(L7_2)
  L7_2 = "\n"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L0_2[L4_2] = L5_2
  L4_2 = #L0_2
  L4_2 = L4_2 + 1
  L0_2[L4_2] = L2_2
  L4_2 = L42_1
  if L4_2 ~= nil then
    L4_2 = L42_1
    if L4_2 ~= "" then
      L4_2 = #L0_2
      L4_2 = L4_2 + 1
      L5_2 = "\n"
      L6_2 = L42_1
      L5_2 = L5_2 .. L6_2
      L0_2[L4_2] = L5_2
    end
  end
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = L0_2
  return L4_2(L5_2)
end
L6_1.getBaseInfo = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = {}
  L1_2 = L5_1
  L2_2 = L31_1
  if L1_2 ~= L2_2 then
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L2_2 = "\n- \229\187\186\232\174\174\230\155\180\230\150\176\231\137\136\230\156\172\nLuaPanda VSCode\230\143\146\228\187\182\231\137\136\230\156\172\230\152\175"
    L3_2 = L31_1
    L4_2 = ", LuaPanda.lua\230\150\135\228\187\182\231\137\136\230\156\172\230\152\175"
    L5_2 = L5_1
    L6_2 = "\227\128\130\229\187\186\232\174\174\230\163\128\230\159\165\229\185\182\230\155\180\230\150\176\229\136\176\230\156\128\230\150\176\231\137\136\230\156\172\227\128\130"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2
    L0_2[L1_2] = L2_2
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L0_2[L1_2] = "\n\230\155\180\230\150\176\230\150\185\229\188\143   : https://github.com/Tencent/LuaPanda/blob/master/Docs/Manual/update.md"
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L0_2[L1_2] = "\nRelease\231\137\136\230\156\172: https://github.com/Tencent/LuaPanda/releases"
  end
  L1_2 = L30_1
  if L1_2 == nil then
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L0_2[L1_2] = "\n\n- libpdebug \229\186\147\230\178\161\230\156\137\229\138\160\232\189\189\n"
    L1_2 = L47_1
    if L1_2 then
      L1_2 = L59_1
      if L1_2 == true then
        L1_2 = #L0_2
        L1_2 = L1_2 + 1
        L2_2 = "\231\148\168\230\136\183\228\189\191\231\148\168 LuaPanda.lua \228\184\173 clibPath \229\143\152\233\135\143\230\140\135\229\174\154\228\186\134 plibdebug \231\154\132\228\189\141\231\189\174: "
        L3_2 = L29_1
        L2_2 = L2_2 .. L3_2
        L0_2[L1_2] = L2_2
        L1_2 = L6_1.tryRequireClib
        L2_2 = "libpdebug"
        L3_2 = L29_1
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = #L0_2
          L1_2 = L1_2 + 1
          L0_2[L1_2] = "\n\229\188\149\231\148\168\230\136\144\229\138\159"
        else
          L1_2 = #L0_2
          L1_2 = L1_2 + 1
          L2_2 = "\n\229\188\149\231\148\168\233\148\153\232\175\175:"
          L3_2 = L41_1
          L2_2 = L2_2 .. L3_2
          L0_2[L1_2] = L2_2
        end
      else
        L1_2 = nil
        L2_2 = nil
        L3_2 = L28_1
        if L3_2 == "Darwin" then
          L1_2 = "/?.so;"
          L2_2 = "mac"
        else
          L3_2 = L28_1
          if L3_2 == "Linux" then
            L1_2 = "/?.so;"
            L2_2 = "linux"
          else
            L1_2 = "/?.dll;"
            L2_2 = "win"
          end
        end
        L3_2 = nil
        L4_2 = _VERSION
        if L4_2 == "Lua 5.1" then
          L3_2 = "501"
        else
          L3_2 = "503"
        end
        L4_2 = L29_1
        L5_2 = L2_2
        L6_2 = "/x86/"
        L7_2 = L3_2
        L8_2 = L1_2
        L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
        L5_2 = L29_1
        L6_2 = L2_2
        L7_2 = "/x86_64/"
        L8_2 = L3_2
        L9_2 = L1_2
        L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
        L6_2 = #L0_2
        L6_2 = L6_2 + 1
        L7_2 = "\229\176\157\232\175\149\229\188\149\231\148\168x64\229\186\147: "
        L8_2 = L5_2
        L7_2 = L7_2 .. L8_2
        L0_2[L6_2] = L7_2
        L6_2 = L6_1.tryRequireClib
        L7_2 = "libpdebug"
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L6_2 = #L0_2
          L6_2 = L6_2 + 1
          L0_2[L6_2] = "\n\229\188\149\231\148\168\230\136\144\229\138\159"
        else
          L6_2 = #L0_2
          L6_2 = L6_2 + 1
          L7_2 = "\n\229\188\149\231\148\168\233\148\153\232\175\175:"
          L8_2 = L41_1
          L7_2 = L7_2 .. L8_2
          L0_2[L6_2] = L7_2
          L6_2 = #L0_2
          L6_2 = L6_2 + 1
          L7_2 = "\n\229\176\157\232\175\149\229\188\149\231\148\168x86\229\186\147: "
          L8_2 = L4_2
          L7_2 = L7_2 .. L8_2
          L0_2[L6_2] = L7_2
          L6_2 = L6_1.tryRequireClib
          L7_2 = "libpdebug"
          L8_2 = L4_2
          L6_2 = L6_2(L7_2, L8_2)
          if L6_2 then
            L6_2 = #L0_2
            L6_2 = L6_2 + 1
            L0_2[L6_2] = "\n\229\188\149\231\148\168\230\136\144\229\138\159"
          else
            L6_2 = #L0_2
            L6_2 = L6_2 + 1
            L7_2 = "\n\229\188\149\231\148\168\233\148\153\232\175\175:"
            L8_2 = L41_1
            L7_2 = L7_2 .. L8_2
            L0_2[L6_2] = L7_2
          end
        end
      end
    else
      L1_2 = #L0_2
      L1_2 = L1_2 + 1
      L2_2 = "\229\142\159\229\155\160\230\152\175"
      L3_2 = L41_1
      L2_2 = L2_2 .. L3_2
      L0_2[L1_2] = L2_2
    end
  end
  L1_2 = L35_1
  L2_2 = L30_1
  if L2_2 ~= nil then
    L2_2 = L6_1.getPath
    L3_2 = tostring
    L4_2 = L30_1.get_last_source
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L1_2 = L2_2
  end
  L2_2 = L48_1
  if not L2_2 and L1_2 and L1_2 ~= "" then
    L2_2 = L6_1.fileExists
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = #L0_2
      L3_2 = L3_2 + 1
      L0_2[L3_2] = "\n\n- \232\183\175\229\190\132\229\173\152\229\156\168\233\151\174\233\162\152\n"
      L3_2 = L6_1.stringSplit
      L4_2 = L1_2
      L5_2 = "/"
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = false
      L5_2 = pairs
      L6_2 = L6_1.getBreaks
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = string
        L10_2 = L10_2.find
        L11_2 = L8_2
        L12_2 = #L3_2
        L12_2 = L3_2[L12_2]
        L13_2 = 1
        L14_2 = true
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        if L10_2 then
          L4_2 = true
          L10_2 = #L0_2
          L10_2 = L10_2 + 1
          L11_2 = L6_1.getCWD
          L11_2 = L11_2()
          L0_2[L10_2] = L11_2
          L10_2 = #L0_2
          L10_2 = L10_2 + 1
          L11_2 = [[

filepath: ]]
          L12_2 = L8_2
          L11_2 = L11_2 .. L12_2
          L0_2[L10_2] = L11_2
          L10_2 = L45_1
          if L10_2 then
            L10_2 = #L0_2
            L10_2 = L10_2 + 1
            L0_2[L10_2] = "\n\232\175\180\230\152\142:\228\187\142lua\232\153\154\230\139\159\230\156\186\232\142\183\229\143\150\229\136\176\231\154\132\230\152\175\231\187\157\229\175\185\232\183\175\229\190\132\239\188\140format\228\189\191\231\148\168getinfo\232\183\175\229\190\132\227\128\130"
          else
            L10_2 = #L0_2
            L10_2 = L10_2 + 1
            L0_2[L10_2] = "\n\232\175\180\230\152\142:\228\187\142lua\232\153\154\230\139\159\230\156\186\232\142\183\229\143\150\229\136\176\231\154\132\230\152\175\231\155\184\229\175\185\232\183\175\229\190\132\239\188\140\232\176\131\232\175\149\229\153\168\232\191\144\232\161\140\228\190\157\232\181\150\231\154\132\231\187\157\229\175\185\232\183\175\229\190\132(format)\230\152\175\230\157\165\230\186\144\228\186\142cwd+getinfo\230\139\188\230\142\165\227\128\130"
          end
          L10_2 = #L0_2
          L10_2 = L10_2 + 1
          L0_2[L10_2] = "\nfilepath\230\152\175VSCode\233\128\154\232\191\135\232\142\183\229\143\150\229\136\176\231\154\132\230\150\135\228\187\182\230\173\163\231\161\174\232\183\175\229\190\132 , \229\175\185\230\175\148format\229\146\140filepath\239\188\140\232\176\131\230\149\180launch.json\228\184\173CWD\239\188\140\230\136\150\230\148\185\229\143\152VSCode\230\137\147\229\188\128\230\150\135\228\187\182\229\164\185\231\154\132\228\189\141\231\189\174\227\128\130\228\189\191format\229\146\140filepath\228\184\128\232\135\180\229\141\179\229\143\175\227\128\130\n\229\166\130\230\158\156format\229\146\140filepath\232\183\175\229\190\132\228\187\133\229\164\167\229\176\143\229\134\153\228\184\141\228\184\128\232\135\180\239\188\140\232\174\190\231\189\174launch.json\228\184\173 pathCaseSensitivity:false \229\143\175\229\191\189\231\149\165\232\183\175\229\190\132\229\164\167\229\176\143\229\134\153"
        end
      end
      if L4_2 == false then
        L5_2 = #L0_2
        L5_2 = L5_2 + 1
        L6_2 = "\n\230\137\190\228\184\141\229\136\176\230\150\135\228\187\182:"
        L7_2 = L1_2
        L8_2 = ", \232\175\183\230\163\128\230\159\165\232\183\175\229\190\132\230\152\175\229\144\166\230\173\163\231\161\174\227\128\130\n\230\136\150\232\128\133\229\156\168VSCode\230\150\135\228\187\182"
        L9_2 = #L3_2
        L9_2 = L3_2[L9_2]
        L10_2 = "\228\184\173\230\137\147\228\184\128\228\184\170\230\150\173\231\130\185\229\144\142\239\188\140\229\134\141\230\137\167\232\161\140\228\184\128\230\172\161doctor\229\145\189\228\187\164\239\188\140\230\159\165\231\156\139\232\183\175\229\190\132\229\136\134\230\158\144\231\187\147\230\158\156\227\128\130"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
        L0_2[L5_2] = L6_2
      end
    end
  end
  L2_2 = L32_1
  if not (L2_2 < 1) then
    L2_2 = L3_1
    if not (L2_2 < 1) then
      goto lbl_255
    end
  end
  L2_2 = #L0_2
  L2_2 = L2_2 + 1
  L0_2[L2_2] = "\n\n- \230\151\165\229\191\151\231\173\137\231\186\167\n"
  L2_2 = L32_1
  if L2_2 < 1 then
    L2_2 = #L0_2
    L2_2 = L2_2 + 1
    L3_2 = "\229\189\147\229\137\141\230\151\165\229\191\151\231\173\137\231\186\167\230\152\175"
    L4_2 = L32_1
    L5_2 = ", \228\188\154\228\186\167\231\148\159\229\164\167\233\135\143\230\151\165\229\191\151\239\188\140\233\153\141\228\189\142\232\176\131\232\175\149\233\128\159\229\186\166\227\128\130\229\187\186\232\174\174\232\176\131\230\149\180launch.json\228\184\173logLevel:1"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L0_2[L2_2] = L3_2
  end
  L2_2 = L3_1
  if L2_2 < 1 then
    L2_2 = #L0_2
    L2_2 = L2_2 + 1
    L3_2 = "\229\189\147\229\137\141console\230\151\165\229\191\151\231\173\137\231\186\167\230\152\175"
    L4_2 = L3_1
    L5_2 = ", \232\191\135\228\189\142\231\154\132\230\151\165\229\191\151\231\173\137\231\186\167\228\188\154\233\153\141\228\189\142\232\176\131\232\175\149\233\128\159\229\186\166\239\188\140\229\187\186\232\174\174\232\176\131\230\149\180LuaPanda.lua\230\150\135\228\187\182\229\164\180\233\131\168consoleLogLevel=2"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L0_2[L2_2] = L3_2
  end
  ::lbl_255::
  L2_2 = #L0_2
  if L2_2 == 0 then
    L2_2 = #L0_2
    L2_2 = L2_2 + 1
    L0_2[L2_2] = "\230\156\170\230\163\128\230\181\139\229\135\186\233\151\174\233\162\152"
  end
  L2_2 = table
  L2_2 = L2_2.concat
  L3_2 = L0_2
  return L2_2(L3_2)
end
L6_1.doctor = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = A0_2
  L3_2 = "r"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = io
    L2_2 = L2_2.close
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = true
    return L2_2
  else
    L2_2 = false
    return L2_2
  end
end
L6_1.fileExists = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L0_2[L1_2] = [[

- Base Info: 
]]
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L6_1.getBaseInfo
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L0_2[L1_2] = [[


- User Setting: 
]]
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "stopOnEntry:"
  L3_2 = tostring
  L4_2 = L46_1
  L3_2 = L3_2(L4_2)
  L4_2 = " | "
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "logLevel:"
  L3_2 = L32_1
  L4_2 = " | "
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "consoleLogLevel:"
  L3_2 = L3_1
  L4_2 = " | "
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "pathCaseSensitivity:"
  L3_2 = tostring
  L4_2 = L36_1
  L3_2 = L3_2(L4_2)
  L4_2 = " | "
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "attachMode:"
  L3_2 = tostring
  L4_2 = L0_1
  L3_2 = L3_2(L4_2)
  L4_2 = " | "
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "autoPathMode:"
  L3_2 = tostring
  L4_2 = L48_1
  L3_2 = L3_2(L4_2)
  L4_2 = " | "
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = L47_1
  if L1_2 then
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L0_2[L1_2] = "useCHook:true"
  else
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L0_2[L1_2] = "useCHook:false"
  end
  L1_2 = L32_1
  if L1_2 ~= 0 then
    L1_2 = L3_1
    if L1_2 ~= 0 then
      goto lbl_82
    end
  end
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L0_2[L1_2] = "\n\232\175\180\230\152\142:\230\151\165\229\191\151\231\173\137\231\186\167\232\191\135\228\189\142\239\188\140\228\188\154\229\189\177\229\147\141\230\137\167\232\161\140\230\149\136\231\142\135\227\128\130\232\175\183\232\176\131\230\149\180logLevel\229\146\140consoleLogLevel\229\128\188 >= 1"
  ::lbl_82::
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L0_2[L1_2] = [[


- Path Info: 
]]
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "clibPath: "
  L3_2 = tostring
  L4_2 = L29_1
  L3_2 = L3_2(L4_2)
  L4_2 = "\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = "debugger: "
  L3_2 = L6_1.getPath
  L4_2 = L19_1
  L3_2 = L3_2(L4_2)
  L4_2 = "\n"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L0_2[L1_2] = L2_2
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L6_1.getCWD
  L2_2 = L2_2()
  L0_2[L1_2] = L2_2
  L1_2 = L48_1
  if not L1_2 then
    L1_2 = L45_1
    if L1_2 then
      L1_2 = #L0_2
      L1_2 = L1_2 + 1
      L2_2 = "\n\232\175\180\230\152\142:\228\187\142lua\232\153\154\230\139\159\230\156\186\232\142\183\229\143\150\229\136\176\231\154\132\230\152\175\231\187\157\229\175\185\232\183\175\229\190\132\239\188\140format\228\189\191\231\148\168getinfo\232\183\175\229\190\132\227\128\130"
      L3_2 = L44_1
      L2_2 = L2_2 .. L3_2
      L0_2[L1_2] = L2_2
    else
      L1_2 = #L0_2
      L1_2 = L1_2 + 1
      L2_2 = "\n\232\175\180\230\152\142:\228\187\142lua\232\153\154\230\139\159\230\156\186\232\142\183\229\143\150\229\136\176\231\154\132\232\183\175\229\190\132(getinfo)\230\152\175\231\155\184\229\175\185\232\183\175\229\190\132\239\188\140\232\176\131\232\175\149\229\153\168\232\191\144\232\161\140\228\190\157\232\181\150\231\154\132\231\187\157\229\175\185\232\183\175\229\190\132(format)\230\152\175\230\157\165\230\186\144\228\186\142cwd+getinfo\230\139\188\230\142\165\227\128\130\229\166\130format\232\183\175\229\190\132\233\148\153\232\175\175\232\175\183\229\176\157\232\175\149\232\176\131\230\149\180cwd\230\136\150\230\148\185\229\143\152VSCode\230\137\147\229\188\128\230\150\135\228\187\182\229\164\185\231\154\132\228\189\141\231\189\174\227\128\130\228\185\159\229\143\175\228\187\165\229\156\168format\229\175\185\229\186\148\231\154\132\230\150\135\228\187\182\228\184\139\230\137\147\228\184\128\228\184\170\230\150\173\231\130\185\239\188\140\232\176\131\230\149\180\231\155\180\229\136\176format\229\146\140Breaks Info\228\184\173\230\150\173\231\130\185\232\183\175\229\190\132\229\174\140\229\133\168\228\184\128\232\135\180\227\128\130"
      L3_2 = L44_1
      L2_2 = L2_2 .. L3_2
      L0_2[L1_2] = L2_2
    end
  else
    L1_2 = #L0_2
    L1_2 = L1_2 + 1
    L0_2[L1_2] = "\n\232\175\180\230\152\142:\229\183\178\229\188\128\229\144\175autoPathMode\232\135\170\229\138\168\232\183\175\229\190\132\230\168\161\229\188\143\239\188\140\232\176\131\232\175\149\229\153\168\228\188\154\230\160\185\230\141\174getinfo\232\142\183\229\190\151\231\154\132\230\150\135\228\187\182\229\144\141\232\135\170\229\138\168\230\159\165\230\137\190\230\150\135\228\187\182\228\189\141\231\189\174\239\188\140\232\175\183\231\161\174\228\191\157VSCode\230\137\147\229\188\128\231\154\132\229\183\165\231\168\139\228\184\173\228\184\141\229\173\152\229\156\168\229\144\140\229\144\141lua\230\150\135\228\187\182\227\128\130"
  end
  L1_2 = L43_1
  if L1_2 ~= nil then
    L1_2 = L43_1
    if L1_2 ~= "" then
      L1_2 = #L0_2
      L1_2 = L1_2 + 1
      L2_2 = "\n"
      L3_2 = L43_1
      L2_2 = L2_2 .. L3_2
      L0_2[L1_2] = L2_2
    end
  end
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L0_2[L1_2] = [[


- Breaks Info: 
]]
  L1_2 = #L0_2
  L1_2 = L1_2 + 1
  L2_2 = L6_1.serializeTable
  L3_2 = L6_1.getBreaks
  L3_2 = L3_2()
  L4_2 = "breaks"
  L2_2 = L2_2(L3_2, L4_2)
  L0_2[L1_2] = L2_2
  L1_2 = table
  L1_2 = L1_2.concat
  L2_2 = L0_2
  return L1_2(L2_2)
end
L6_1.getInfo = L61_1
function L61_1()
  local L0_2, L1_2
  L0_2 = L56_1
  return L0_2
end
L6_1.isInMain = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L6_1.printToVSCode
  L3_2 = "tryRequireClib search : ["
  L4_2 = A0_2
  L5_2 = "] in "
  L6_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = package
  L2_2 = L2_2.cpath
  L3_2 = package
  L4_2 = package
  L4_2 = L4_2.cpath
  L5_2 = ";"
  L6_2 = A1_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2.cpath = L4_2
  L3_2 = L6_1.printToVSCode
  L4_2 = "package.cpath:"
  L5_2 = package
  L5_2 = L5_2.cpath
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = pcall
  function L4_2()
    local L0_3, L1_3
    L0_3 = require
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    L30_1 = L0_3
  end
  L3_2, L4_2 = L3_2(L4_2)
  if L3_2 then
    L5_2 = type
    L6_2 = L30_1
    L5_2 = L5_2(L6_2)
    if L5_2 == "table" then
      L5_2 = L6_1.getTableMemberNum
      L6_2 = L30_1
      L5_2 = L5_2(L6_2)
      if 0 < L5_2 then
        L5_2 = L6_1.printToVSCode
        L6_2 = "tryRequireClib success : ["
        L7_2 = A0_2
        L8_2 = "] in "
        L9_2 = A1_2
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
        L5_2(L6_2)
        L5_2 = package
        L5_2.cpath = L2_2
        L5_2 = true
        return L5_2
    end
    else
      L5_2 = "tryRequireClib fail : require success, but member function num <= 0; ["
      L6_2 = A0_2
      L7_2 = "] in "
      L8_2 = A1_2
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L41_1 = L5_2
      L5_2 = L6_1.printToVSCode
      L6_2 = L41_1
      L5_2(L6_2)
      L5_2 = nil
      L30_1 = L5_2
      L5_2 = package
      L5_2.cpath = L2_2
      L5_2 = false
      return L5_2
    end
  else
    L41_1 = L4_2
    L5_2 = L6_1.printToVSCode
    L6_2 = "[Require clib error]: "
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L7_2 = 0
    L5_2(L6_2, L7_2)
  end
  L5_2 = package
  L5_2.cpath = L2_2
  L5_2 = false
  return L5_2
end
L6_1.tryRequireClib = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = string
  L3_2 = L3_2.reverse
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = string
  L4_2 = L4_2.find
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = 1
  L8_2 = A2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L5_2 == nil then
    L6_2 = nil
    return L6_2
  end
  L6_2 = string
  L6_2 = L6_2.len
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 - L5_2
  L6_2 = L6_2 + 1
  return L6_2
end
L6_1.revFindString = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L6_1.revFindString
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L4_2 = string
  L4_2 = L4_2.sub
  L5_2 = A0_2
  L6_2 = L3_2 + 1
  L7_2 = A0_2.length
  return L4_2(L5_2, L6_2, L7_2)
end
L6_1.revSubString = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = A0_2
  L5_2 = "[^"
  L6_2 = A1_2
  L7_2 = "]+"
  L5_2 = L5_2 .. L6_2 .. L7_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = table
    L1_3 = L1_3.insert
    L2_3 = L2_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L6_1.stringSplit = L61_1
function L61_1(A0_2)
  local L1_2, L2_2
  if A0_2 ~= nil and A0_2 ~= "0" then
    L1_2 = tostring
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L16_1 = L1_2
  end
end
L6_1.setCallbackId = L61_1
function L61_1()
  local L0_2, L1_2
  L0_2 = L16_1
  if L0_2 == nil then
    L0_2 = "0"
    L16_1 = L0_2
  end
  L0_2 = L16_1
  L1_2 = "0"
  L16_1 = L1_2
  return L0_2
end
L6_1.getCallbackId = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "^%s*(.-)%s*$"
  L4_2 = "%1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
L6_1.trim = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= "table" then
    L2_2 = L6_1.printToVSCode
    L3_2 = "[debugger Error] getTableMemberNum get "
    L4_2 = tostring
    L5_2 = type
    L6_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2 .. L4_2
    L4_2 = 2
    L2_2(L3_2, L4_2)
    return L1_2
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L6_1.getTableMemberNum = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = {}
  L2_2.cmd = A0_2
  L2_2.callbackId = A1_2
  L3_2 = {}
  L2_2.info = L3_2
  return L2_2
end
L6_1.getMsgTable = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1.serializeTable
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L6_1.serializeTable = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    A2_2 = 0
  end
  if not A1_2 then
    A1_2 = 0
  end
  L3_2 = L13_1
  L4_2 = L10_1.DISCONNECT
  if L3_2 ~= L4_2 then
    L3_2 = L32_1
    if not (A1_2 < L3_2) then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L3_2 = {}
  L3_2.callbackId = "0"
  if A2_2 == 0 then
    L3_2.cmd = "log"
  else
    L3_2.cmd = "tip"
  end
  L4_2 = {}
  L3_2.info = L4_2
  L4_2 = L3_2.info
  L5_2 = tostring
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.logInfo = L5_2
  L4_2 = L6_1.sendMsg
  L5_2 = L3_2
  L4_2(L5_2)
end
L6_1.printToVSCode = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = L3_1
  if A1_2 < L2_2 then
    return
  end
  L2_2 = print
  L3_2 = "[LuaPanda] "
  L4_2 = tostring
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L6_1.printToConsole = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == "" or A0_2 == nil then
    L1_2 = ""
    return L1_2
  end
  L1_2 = L36_1
  if L1_2 == false then
    L1_2 = string
    L1_2 = L1_2.lower
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  end
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "\\"
  L4_2 = "/"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = L6_1.stringSplit
  L2_2 = A0_2
  L3_2 = "/"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == "." then
    else
      if L7_2 == ".." then
        L8_2 = #L2_2
        if 1 <= L8_2 then
          L8_2 = #L2_2
          L8_2 = L2_2[L8_2]
          L9_2 = L8_2
          L8_2 = L8_2.sub
          L10_2 = 2
          L11_2 = 2
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          if L8_2 ~= ":" then
            L8_2 = table
            L8_2 = L8_2.remove
            L9_2 = L2_2
            L8_2(L9_2)
        end
      end
      else
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  L5_2 = "/"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.sub
  L6_2 = 1
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 == "/" then
    L4_2 = "/"
    L5_2 = L3_2
    L3_2 = L4_2 .. L5_2
  end
  L4_2 = L28_1
  if "Windows_NT" == L4_2 then
    L4_2 = L39_1
    if L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.gsub
      L6_2 = "^%a:"
      L7_2 = string
      L7_2 = L7_2.upper
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L4_2
      L4_2 = "\232\183\175\229\190\132\228\184\173Windows\231\155\152\231\172\166\229\183\178\232\189\172\228\184\186\229\164\167\229\134\153\227\128\130"
      L44_1 = L4_2
    else
      L5_2 = L3_2
      L4_2 = L3_2.gsub
      L6_2 = "^%a:"
      L7_2 = string
      L7_2 = L7_2.lower
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L4_2
      L4_2 = "\232\183\175\229\190\132\228\184\173Windows\231\155\152\231\172\166\229\183\178\232\189\172\228\184\186\229\176\143\229\134\153\227\128\130"
      L44_1 = L4_2
    end
  end
  return L3_2
end
L6_1.genUnifiedPath = L61_1
function L61_1(A0_2)
  local L1_2
  if A0_2 == nil then
    L1_2 = L58_1
    return L1_2
  end
  L1_2 = L58_1[A0_2]
  return L1_2
end
L6_1.getCacheFormatPath = L61_1
function L61_1(A0_2, A1_2)
  L58_1[A0_2] = A1_2
end
L6_1.setCacheFormatPath = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = collectgarbage
  L1_2 = "count"
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L1_2.callbackId = "0"
  L1_2.cmd = "refreshLuaMemory"
  L2_2 = {}
  L1_2.info = L2_2
  L2_2 = L1_2.info
  L3_2 = tostring
  L4_2 = L0_2
  L3_2 = L3_2(L4_2)
  L2_2.memInfo = L3_2
  L2_2 = L6_1.sendMsg
  L3_2 = L1_2
  L2_2(L3_2)
end
L6_1.sendLuaMemory = L61_1
function L61_1()
  local L0_2, L1_2, L2_2
  L0_2 = L27_1
  if L0_2 ~= nil then
    L0_2 = pcall
    function L1_2()
      local L0_3, L1_3
      L0_3 = L27_1
      L1_3 = L0_3
      L0_3 = L0_3.close
      L0_3(L1_3)
    end
    L0_2(L1_2)
  end
  L0_2 = lua_extension
  if L0_2 then
    L0_2 = lua_extension
    L0_2 = L0_2.luasocket
    if L0_2 then
      L0_2 = lua_extension
      L0_2 = L0_2.luasocket
      L0_2 = L0_2()
      L0_2 = L0_2.tcp
      L0_2 = L0_2()
    end
  end
  L27_1 = L0_2
  L0_2 = L27_1
  if L0_2 == nil then
    L0_2 = pcall
    function L1_2()
      local L0_3, L1_3
      L0_3 = require
      L1_3 = "socket.core"
      L0_3 = L0_3(L1_3)
      L0_3 = L0_3.tcp
      L0_3 = L0_3()
      L27_1 = L0_3
    end
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L6_1.printToConsole
      L1_2 = "reGetSock success"
      L0_2(L1_2)
      L0_2 = L27_1
      L1_2 = L0_2
      L0_2 = L0_2.settimeout
      L2_2 = L4_1
      L0_2(L1_2, L2_2)
    else
      L0_2 = L2_1
      if L0_2 then
        L0_2 = pcall
        function L1_2()
          local L0_3, L1_3
          L0_3 = L2_1
          L0_3 = L0_3()
          L27_1 = L0_3
        end
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = L6_1.printToConsole
          L1_2 = "reGetSock custom success"
          L0_2(L1_2)
          L0_2 = L27_1
          L1_2 = L0_2
          L0_2 = L0_2.settimeout
          L2_2 = L4_1
          L0_2(L1_2, L2_2)
      end
      else
        L0_2 = L6_1.printToConsole
        L1_2 = "[Error] reGetSock fail"
        L2_2 = 2
        L0_2(L1_2, L2_2)
        L0_2 = false
        return L0_2
      end
    end
  else
    L0_2 = L6_1.printToConsole
    L1_2 = "reGetSock ue4 success"
    L0_2(L1_2)
    L0_2 = L27_1
    L1_2 = L0_2
    L0_2 = L0_2.settimeout
    L2_2 = L4_1
    L0_2(L1_2, L2_2)
  end
  L0_2 = true
  return L0_2
end
L6_1.reGetSock = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L14_1
  L1_2 = L9_1.DISCONNECT_HOOK
  if L0_2 == L1_2 then
    L0_2 = os
    L0_2 = L0_2.time
    L0_2 = L0_2()
    L1_2 = L55_1
    L0_2 = L0_2 - L1_2
    L1_2 = L1_1
    if L0_2 < L1_2 then
      L0_2 = L6_1.printToConsole
      L1_2 = "Reconnect time less than 1s"
      L0_2(L1_2)
      L0_2 = L6_1.printToConsole
      L1_2 = "os.time:"
      L2_2 = os
      L2_2 = L2_2.time
      L2_2 = L2_2()
      L3_2 = " | stopConnectTime:"
      L4_2 = L55_1
      L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
      L0_2(L1_2)
      L0_2 = 1
      return L0_2
    end
    L0_2 = L27_1
    if L0_2 == nil then
      L0_2 = L6_1.reGetSock
      L0_2()
    end
    L0_2 = L27_1
    L1_2 = L0_2
    L0_2 = L0_2.connect
    L2_2 = L25_1
    L3_2 = L26_1
    L0_2, L1_2 = L0_2(L1_2, L2_2, L3_2)
    if L0_2 == 1 or L1_2 == "already connected" then
      L2_2 = L6_1.printToConsole
      L3_2 = "reconnect success"
      L2_2(L3_2)
      L2_2 = L6_1.connectSuccess
      L2_2()
    else
      L2_2 = L6_1.printToConsole
      L3_2 = "reconnect failed . retCode:"
      L4_2 = tostring
      L5_2 = L0_2
      L4_2 = L4_2(L5_2)
      L5_2 = "  status:"
      L6_2 = L1_2
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
      L2_2(L3_2)
      L2_2 = os
      L2_2 = L2_2.time
      L2_2 = L2_2()
      L55_1 = L2_2
    end
    L2_2 = 1
    return L2_2
  end
  L0_2 = 0
  return L0_2
end
L6_1.reConnect = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L40_1
  if L1_2 then
    L1_2 = A0_2.info
    if L1_2 ~= nil then
      L1_2 = ipairs
      L2_2 = A0_2.info
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L5_2.type
        if L6_2 == "string" then
          L6_2 = L7_1.base64encode
          L7_2 = L5_2.value
          L6_2 = L6_2(L7_2)
          L5_2.value = L6_2
        end
      end
    end
  end
  L1_2 = L8_1.encode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L13_1
  L3_2 = L10_1.DISCONNECT
  if L2_2 == L3_2 then
    L2_2 = L6_1.printToConsole
    L3_2 = "[debugger error] disconnect but want sendMsg:"
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L4_2 = 2
    L2_2(L3_2, L4_2)
    L2_2 = L6_1.disconnect
    L2_2()
    return
  end
  L2_2 = nil
  L3_2 = nil
  L4_2 = pcall
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L27_1
    L1_3 = L0_3
    L0_3 = L0_3.send
    L2_3 = L1_2
    L3_3 = L11_1
    L4_3 = "\n"
    L2_3 = L2_3 .. L3_3 .. L4_3
    L0_3, L1_3 = L0_3(L1_3, L2_3)
    L3_2 = L1_3
    L2_2 = L0_3
  end
  L4_2 = L4_2(L5_2)
  if L4_2 and L2_2 == nil and L3_2 == "closed" then
    L4_2 = L6_1.disconnect
    L4_2()
  end
end
L6_1.sendMsg = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L6_1.printToVSCode
  L2_2 = "debugger get:"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = L8_1.decode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = L6_1.printToVSCode
    L3_2 = "[error] Json is error"
    L4_2 = 2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_2.callbackId
  if L2_2 ~= "0" then
    L2_2 = L6_1.setCallbackId
    L3_2 = L1_2.callbackId
    L2_2(L3_2)
  end
  L2_2 = L1_2.cmd
  if L2_2 == "continue" then
    L2_2 = L6_1.changeRunState
    L3_2 = L10_1.RUN
    L2_2(L3_2)
    L2_2 = L6_1.getMsgTable
    L3_2 = "continue"
    L4_2 = L6_1.getCallbackId
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L3_2 = L6_1.sendMsg
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L2_2 = L1_2.cmd
    if L2_2 == "stopOnStep" then
      L2_2 = L6_1.changeRunState
      L3_2 = L10_1.STEPOVER
      L2_2(L3_2)
      L2_2 = L6_1.getMsgTable
      L3_2 = "stopOnStep"
      L4_2 = L6_1.getCallbackId
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L3_2 = L6_1.sendMsg
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = L6_1.changeHookState
      L4_2 = L9_1.ALL_HOOK
      L3_2(L4_2)
    else
      L2_2 = L1_2.cmd
      if L2_2 == "stopOnStepIn" then
        L2_2 = L6_1.changeRunState
        L3_2 = L10_1.STEPIN
        L2_2(L3_2)
        L2_2 = L6_1.getMsgTable
        L3_2 = "stopOnStepIn"
        L4_2 = L6_1.getCallbackId
        L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L3_2 = L6_1.sendMsg
        L4_2 = L2_2
        L3_2(L4_2)
        L3_2 = L6_1.changeHookState
        L4_2 = L9_1.ALL_HOOK
        L3_2(L4_2)
      else
        L2_2 = L1_2.cmd
        if L2_2 == "stopOnStepOut" then
          L2_2 = L6_1.changeRunState
          L3_2 = L10_1.STEPOUT
          L2_2(L3_2)
          L2_2 = L6_1.getMsgTable
          L3_2 = "stopOnStepOut"
          L4_2 = L6_1.getCallbackId
          L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L3_2 = L6_1.sendMsg
          L4_2 = L2_2
          L3_2(L4_2)
          L3_2 = L6_1.changeHookState
          L4_2 = L9_1.ALL_HOOK
          L3_2(L4_2)
        else
          L2_2 = L1_2.cmd
          if L2_2 == "setBreakPoint" then
            L2_2 = L6_1.printToVSCode
            L3_2 = "dataTable.cmd == setBreakPoint"
            L2_2(L3_2)
            L2_2 = L1_2.info
            L2_2 = L2_2.path
            L3_2 = L6_1.genUnifiedPath
            L4_2 = L2_2
            L3_2 = L3_2(L4_2)
            L2_2 = L3_2
            L3_2 = L48_1
            if L3_2 then
              L3_2 = L6_1.getFilenameFromPath
              L4_2 = L2_2
              L3_2 = L3_2(L4_2)
              L2_2 = L3_2
            end
            L3_2 = L6_1.printToVSCode
            L4_2 = "setBreakPoint path:"
            L5_2 = tostring
            L6_2 = L2_2
            L5_2 = L5_2(L6_2)
            L4_2 = L4_2 .. L5_2
            L3_2(L4_2)
            L3_2 = L1_2.info
            L3_2 = L3_2.bks
            L15_1[L2_2] = L3_2
            L3_2 = pairs
            L4_2 = L15_1
            L3_2, L4_2, L5_2 = L3_2(L4_2)
            for L6_2, L7_2 in L3_2, L4_2, L5_2 do
              L8_2 = next
              L9_2 = L7_2
              L8_2 = L8_2(L9_2)
              if L8_2 == nil then
                L15_1[L6_2] = nil
              end
            end
            L3_2 = L30_1
            if L3_2 ~= nil then
              L3_2 = L30_1.sync_breakpoints
              L3_2()
            end
            L3_2 = L13_1
            L4_2 = L10_1.WAIT_CMD
            if L3_2 ~= L4_2 then
              L3_2 = L30_1
              if L3_2 == nil then
                L3_2 = L6_1.checkHasBreakpoint
                L4_2 = L35_1
                L3_2, L4_2 = L3_2(L4_2)
                if L3_2 == false then
                  if L4_2 == true then
                    L5_2 = L6_1.changeHookState
                    L6_2 = L9_1.MID_HOOK
                    L5_2(L6_2)
                  else
                    L5_2 = L6_1.changeHookState
                    L6_2 = L9_1.LITE_HOOK
                    L5_2(L6_2)
                  end
                else
                  L5_2 = L6_1.changeHookState
                  L6_2 = L9_1.ALL_HOOK
                  L5_2(L6_2)
                end
              end
            else
              L3_2 = L6_1.getMsgTable
              L4_2 = "setBreakPoint"
              L5_2 = L6_1.getCallbackId
              L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
              L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
              L4_2 = L6_1.sendMsg
              L5_2 = L3_2
              L4_2(L5_2)
              return
            end
            L3_2 = L6_1.getMsgTable
            L4_2 = "setBreakPoint"
            L5_2 = L6_1.getCallbackId
            L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
            L4_2 = L6_1.sendMsg
            L5_2 = L3_2
            L4_2(L5_2)
            L4_2 = L6_1.printToVSCode
            L5_2 = "LuaPanda.getInfo()\n"
            L6_2 = L6_1.getInfo
            L6_2 = L6_2()
            L5_2 = L5_2 .. L6_2
            L4_2(L5_2)
            L4_2 = L6_1.debugger_wait_msg
            L4_2()
          else
            L2_2 = L1_2.cmd
            if L2_2 == "setVariable" then
              L2_2 = L13_1
              L3_2 = L10_1.STOP_ON_ENTRY
              if L2_2 ~= L3_2 then
                L2_2 = L13_1
                L3_2 = L10_1.HIT_BREAKPOINT
                if L2_2 ~= L3_2 then
                  L2_2 = L13_1
                  L3_2 = L10_1.STEPOVER_STOP
                  if L2_2 ~= L3_2 then
                    L2_2 = L13_1
                    L3_2 = L10_1.STEPIN_STOP
                    if L2_2 ~= L3_2 then
                      L2_2 = L13_1
                      L3_2 = L10_1.STEPOUT_STOP
                    end
                  end
                end
              end
              if L2_2 == L3_2 then
                L2_2 = L6_1.getMsgTable
                L3_2 = "setVariable"
                L4_2 = L6_1.getCallbackId
                L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
                L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                L3_2 = tonumber
                L4_2 = L1_2.info
                L4_2 = L4_2.varRef
                L3_2 = L3_2(L4_2)
                L4_2 = tostring
                L5_2 = L1_2.info
                L5_2 = L5_2.newValue
                L4_2 = L4_2(L5_2)
                L5_2 = true
                L6_2 = tostring
                L7_2 = L1_2.info
                L7_2 = L7_2.varName
                L6_2 = L6_2(L7_2)
                L7_2 = string
                L7_2 = L7_2.sub
                L8_2 = L4_2
                L9_2 = 1
                L10_2 = 1
                L7_2 = L7_2(L8_2, L9_2, L10_2)
                L8_2 = string
                L8_2 = L8_2.sub
                L9_2 = L4_2
                L10_2 = -1
                L11_2 = -1
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                if L7_2 == L8_2 and (L7_2 == "'" or L7_2 == "\"") then
                  L9_2 = string
                  L9_2 = L9_2.sub
                  L10_2 = L4_2
                  L11_2 = 2
                  L12_2 = -2
                  L9_2 = L9_2(L10_2, L11_2, L12_2)
                  L4_2 = L9_2
                  L5_2 = false
                end
                if L4_2 == "nil" and L5_2 == true then
                  L4_2 = nil
                  L5_2 = false
                elseif L4_2 == "true" and L5_2 == true then
                  L4_2 = true
                  L5_2 = false
                elseif L4_2 == "false" and L5_2 == true then
                  L4_2 = false
                  L5_2 = false
                else
                  L9_2 = tonumber
                  L10_2 = L4_2
                  L9_2 = L9_2(L10_2)
                  if L9_2 and L5_2 == true then
                    L9_2 = tonumber
                    L10_2 = L4_2
                    L9_2 = L9_2(L10_2)
                    L4_2 = L9_2
                    L5_2 = false
                  end
                end
                L9_2 = L1_2.info
                L9_2 = L9_2.stackId
                if L9_2 ~= nil then
                  L9_2 = tonumber
                  L10_2 = L1_2.info
                  L10_2 = L10_2.stackId
                  L9_2 = L9_2(L10_2)
                  if L9_2 ~= nil then
                    L9_2 = tonumber
                    L10_2 = L1_2.info
                    L10_2 = L10_2.stackId
                    L9_2 = L9_2(L10_2)
                    if 1 < L9_2 then
                      L9_2 = tonumber
                      L10_2 = L1_2.info
                      L10_2 = L10_2.stackId
                      L9_2 = L9_2(L10_2)
                      L6_1.curStackId = L9_2
                  end
                end
                else
                  L9_2 = L6_1.printToVSCode
                  L10_2 = "\230\156\170\232\131\189\232\142\183\229\143\150\229\136\176\229\160\134\230\160\136\229\177\130\231\186\167\239\188\140\233\187\152\232\174\164\228\189\191\231\148\168 this.curStackId;"
                  L9_2(L10_2)
                end
                if L3_2 < 10000 then
                  L9_2 = L6_1.createSetValueRetTable
                  L10_2 = L6_2
                  L11_2 = L4_2
                  L12_2 = L5_2
                  L13_2 = L6_1.curStackId
                  L14_2 = L34_1[L3_2]
                  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
                  L2_2.info = L9_2
                else
                  L9_2 = nil
                  if 10000 <= L3_2 and L3_2 < 20000 then
                    L9_2 = "local"
                  elseif 20000 <= L3_2 and L3_2 < 30000 then
                    L9_2 = "global"
                  elseif 30000 <= L3_2 then
                    L9_2 = "upvalue"
                  end
                  L10_2 = L6_1.createSetValueRetTable
                  L11_2 = L6_2
                  L12_2 = L4_2
                  L13_2 = L5_2
                  L14_2 = L6_1.curStackId
                  L15_2 = nil
                  L16_2 = L9_2
                  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                  L2_2.info = L10_2
                end
                L9_2 = L6_1.sendMsg
                L10_2 = L2_2
                L9_2(L10_2)
                L9_2 = L6_1.debugger_wait_msg
                L9_2()
              end
            else
              L2_2 = L1_2.cmd
              if L2_2 == "getVariable" then
                L2_2 = L13_1
                L3_2 = L10_1.STOP_ON_ENTRY
                if L2_2 ~= L3_2 then
                  L2_2 = L13_1
                  L3_2 = L10_1.HIT_BREAKPOINT
                  if L2_2 ~= L3_2 then
                    L2_2 = L13_1
                    L3_2 = L10_1.STEPOVER_STOP
                    if L2_2 ~= L3_2 then
                      L2_2 = L13_1
                      L3_2 = L10_1.STEPIN_STOP
                      if L2_2 ~= L3_2 then
                        L2_2 = L13_1
                        L3_2 = L10_1.STEPOUT_STOP
                        if L2_2 ~= L3_2 then
                          goto lbl_907
                        end
                      end
                    end
                  end
                end
                L2_2 = L6_1.getMsgTable
                L3_2 = "getVariable"
                L4_2 = L6_1.getCallbackId
                L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
                L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                L3_2 = tonumber
                L4_2 = L1_2.info
                L4_2 = L4_2.varRef
                L3_2 = L3_2(L4_2)
                if L3_2 < 10000 then
                  L4_2 = L6_1.getVariableRef
                  L5_2 = L1_2.info
                  L5_2 = L5_2.varRef
                  L6_2 = true
                  L4_2 = L4_2(L5_2, L6_2)
                  L2_2.info = L4_2
                elseif 10000 <= L3_2 and L3_2 < 20000 then
                  L4_2 = L1_2.info
                  L4_2 = L4_2.stackId
                  if L4_2 == nil then
                    goto lbl_523
                  end
                  L4_2 = tonumber
                  L5_2 = L1_2.info
                  L5_2 = L5_2.stackId
                  L4_2 = L4_2(L5_2)
                  if not (1 < L4_2) then
                    goto lbl_523
                  end
                  L4_2 = tonumber
                  L5_2 = L1_2.info
                  L5_2 = L5_2.stackId
                  L4_2 = L4_2(L5_2)
                  L6_1.curStackId = L4_2
                  L4_2 = type
                  L5_2 = L6_1.curStackId
                  L5_2 = L5_2 - 1
                  L5_2 = L22_1[L5_2]
                  L4_2 = L4_2(L5_2)
                  if L4_2 == "table" then
                    L4_2 = type
                    L5_2 = L6_1.curStackId
                    L5_2 = L5_2 - 1
                    L5_2 = L22_1[L5_2]
                    L5_2 = L5_2.func
                    L4_2 = L4_2(L5_2)
                    if L4_2 == "function" then
                      goto lbl_447
                    end
                  end
                  L4_2 = "getVariable getLocal currentCallStack "
                  L5_2 = L6_1.curStackId
                  L5_2 = L5_2 - 1
                  L6_2 = " Error\n"
                  L7_2 = L6_1.serializeTable
                  L8_2 = L22_1
                  L9_2 = "currentCallStack"
                  L7_2 = L7_2(L8_2, L9_2)
                  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
                  L5_2 = L6_1.printToVSCode
                  L6_2 = L4_2
                  L7_2 = 2
                  L5_2(L6_2, L7_2)
                  L5_2 = {}
                  L2_2.info = L5_2
                  goto lbl_523
                  ::lbl_447::
                  L4_2 = L6_1.getSpecificFunctionStackLevel
                  L5_2 = L6_1.curStackId
                  L5_2 = L5_2 - 1
                  L5_2 = L22_1[L5_2]
                  L5_2 = L5_2.func
                  L4_2 = L4_2(L5_2)
                  L5_2 = L6_1.getVariable
                  L6_2 = L4_2
                  L7_2 = true
                  L5_2 = L5_2(L6_2, L7_2)
                  L2_2.info = L5_2
                elseif 20000 <= L3_2 and L3_2 < 30000 then
                  L4_2 = L6_1.getGlobalVariable
                  L4_2 = L4_2()
                  L2_2.info = L4_2
                elseif 30000 <= L3_2 then
                  L4_2 = L1_2.info
                  L4_2 = L4_2.stackId
                  if L4_2 ~= nil then
                    L4_2 = tonumber
                    L5_2 = L1_2.info
                    L5_2 = L5_2.stackId
                    L4_2 = L4_2(L5_2)
                    if 1 < L4_2 then
                      L4_2 = tonumber
                      L5_2 = L1_2.info
                      L5_2 = L5_2.stackId
                      L4_2 = L4_2(L5_2)
                      L6_1.curStackId = L4_2
                      L4_2 = type
                      L5_2 = L6_1.curStackId
                      L5_2 = L5_2 - 1
                      L5_2 = L22_1[L5_2]
                      L4_2 = L4_2(L5_2)
                      if L4_2 == "table" then
                        L4_2 = type
                        L5_2 = L6_1.curStackId
                        L5_2 = L5_2 - 1
                        L5_2 = L22_1[L5_2]
                        L5_2 = L5_2.func
                        L4_2 = L4_2(L5_2)
                        if L4_2 == "function" then
                          goto lbl_515
                        end
                      end
                      L4_2 = "getVariable getUpvalue currentCallStack "
                      L5_2 = L6_1.curStackId
                      L5_2 = L5_2 - 1
                      L6_2 = " Error\n"
                      L7_2 = L6_1.serializeTable
                      L8_2 = L22_1
                      L9_2 = "currentCallStack"
                      L7_2 = L7_2(L8_2, L9_2)
                      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
                      L5_2 = L6_1.printToVSCode
                      L6_2 = L4_2
                      L7_2 = 2
                      L5_2(L6_2, L7_2)
                      L5_2 = {}
                      L2_2.info = L5_2
                      goto lbl_523
                      ::lbl_515::
                      L4_2 = L6_1.getUpValueVariable
                      L5_2 = L6_1.curStackId
                      L5_2 = L5_2 - 1
                      L5_2 = L22_1[L5_2]
                      L5_2 = L5_2.func
                      L6_2 = true
                      L4_2 = L4_2(L5_2, L6_2)
                      L2_2.info = L4_2
                    end
                  end
                end
                ::lbl_523::
                L4_2 = L6_1.sendMsg
                L5_2 = L2_2
                L4_2(L5_2)
                L4_2 = L6_1.debugger_wait_msg
                L4_2()
              else
                L2_2 = L1_2.cmd
                if L2_2 == "initSuccess" then
                  L2_2 = L1_2.info
                  L2_2 = L2_2.isNeedB64EncodeStr
                  if L2_2 == "true" then
                    L2_2 = true
                    L40_1 = L2_2
                  else
                    L2_2 = false
                    L40_1 = L2_2
                  end
                  L2_2 = L1_2.info
                  L2_2 = L2_2.luaFileExtension
                  L17_1 = L2_2
                  L2_2 = L1_2.info
                  L2_2 = L2_2.TempFilePath
                  L4_2 = L2_2
                  L3_2 = L2_2.sub
                  L5_2 = -1
                  L6_2 = -1
                  L3_2 = L3_2(L4_2, L5_2, L6_2)
                  if L3_2 ~= "\\" then
                    L4_2 = L2_2
                    L3_2 = L2_2.sub
                    L5_2 = -1
                    L6_2 = -1
                    L3_2 = L3_2(L4_2, L5_2, L6_2)
                    if L3_2 ~= "/" then
                      goto lbl_563
                    end
                  end
                  L4_2 = L2_2
                  L3_2 = L2_2.sub
                  L5_2 = 1
                  L6_2 = -2
                  L3_2 = L3_2(L4_2, L5_2, L6_2)
                  L2_2 = L3_2
                  ::lbl_563::
                  L24_1 = L2_2
                  L3_2 = L6_1.genUnifiedPath
                  L4_2 = L1_2.info
                  L4_2 = L4_2.cwd
                  L3_2 = L3_2(L4_2)
                  L18_1 = L3_2
                  L3_2 = tonumber
                  L4_2 = L1_2.info
                  L4_2 = L4_2.logLevel
                  L3_2 = L3_2(L4_2)
                  if not L3_2 then
                    L3_2 = 1
                  end
                  L32_1 = L3_2
                  L3_2 = L1_2.info
                  L3_2 = L3_2.autoPathMode
                  if L3_2 == "true" then
                    L3_2 = true
                    L48_1 = L3_2
                  else
                    L3_2 = false
                    L48_1 = L3_2
                  end
                  L3_2 = L1_2.info
                  L3_2 = L3_2.pathCaseSensitivity
                  if L3_2 == "true" then
                    L3_2 = true
                    L36_1 = L3_2
                  else
                    L3_2 = false
                    L36_1 = L3_2
                  end
                  L3_2 = L28_1
                  if nil == L3_2 then
                    L3_2 = type
                    L4_2 = L1_2.info
                    L4_2 = L4_2.OSType
                    L3_2 = L3_2(L4_2)
                    if L3_2 == "string" then
                      L3_2 = L1_2.info
                      L3_2 = L3_2.OSType
                      L28_1 = L3_2
                    else
                      L3_2 = "Windows_NT"
                      L28_1 = L3_2
                      L3_2 = "\230\156\170\232\131\189\230\163\128\230\181\139\229\135\186OSType, \229\143\175\232\131\189\230\152\175node os\229\186\147\230\156\170\232\131\189\229\138\160\232\189\189\239\188\140\231\179\187\231\187\159\228\189\191\231\148\168\233\187\152\232\174\164\232\174\190\231\189\174Windows_NT"
                      L42_1 = L3_2
                    end
                  else
                  end
                  L3_2 = false
                  L59_1 = L3_2
                  L3_2 = L29_1
                  if nil == L3_2 then
                    L3_2 = type
                    L4_2 = L1_2.info
                    L4_2 = L4_2.clibPath
                    L3_2 = L3_2(L4_2)
                    if L3_2 == "string" then
                      L3_2 = L1_2.info
                      L3_2 = L3_2.clibPath
                      L29_1 = L3_2
                    else
                      L3_2 = ""
                      L29_1 = L3_2
                      L3_2 = "\230\156\170\232\131\189\230\173\163\231\161\174\232\142\183\229\143\150libpdebug\229\186\147\230\137\128\229\156\168\228\189\141\231\189\174, \229\143\175\232\131\189\230\151\160\230\179\149\229\138\160\232\189\189libpdebug\229\186\147\227\128\130"
                      L43_1 = L3_2
                    end
                  else
                    L3_2 = true
                    L59_1 = L3_2
                  end
                  L3_2 = tostring
                  L4_2 = L1_2.info
                  L4_2 = L4_2.useCHook
                  L3_2 = L3_2(L4_2)
                  if L3_2 == "true" then
                    L3_2 = true
                    L47_1 = L3_2
                    L3_2 = L59_1
                    if L3_2 == true then
                      L3_2 = luapanda_chook
                      if L3_2 ~= nil then
                        L3_2 = luapanda_chook
                        L30_1 = L3_2
                      else
                        L3_2 = L6_1.tryRequireClib
                        L4_2 = "libpdebug"
                        L5_2 = L29_1
                        L3_2 = L3_2(L4_2, L5_2)
                        if not L3_2 then
                          L3_2 = L6_1.printToVSCode
                          L4_2 = "Require clib failed, use Lua to continue debug, use LuaPanda.doctor() for more information."
                          L5_2 = 1
                          L3_2(L4_2, L5_2)
                        end
                      end
                    else
                      L3_2 = nil
                      L4_2 = nil
                      L5_2 = L28_1
                      if L5_2 == "Darwin" then
                        L3_2 = "/?.so;"
                        L4_2 = "mac"
                      else
                        L5_2 = L28_1
                        if L5_2 == "Linux" then
                          L3_2 = "/?.so;"
                          L4_2 = "linux"
                        else
                          L3_2 = "/?.dll;"
                          L4_2 = "win"
                        end
                      end
                      L5_2 = nil
                      L6_2 = _VERSION
                      if L6_2 == "Lua 5.1" then
                        L5_2 = "501"
                      else
                        L5_2 = "503"
                      end
                      L6_2 = L29_1
                      L7_2 = L4_2
                      L8_2 = "/x86/"
                      L9_2 = L5_2
                      L10_2 = L3_2
                      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
                      L7_2 = L29_1
                      L8_2 = L4_2
                      L9_2 = "/x86_64/"
                      L10_2 = L5_2
                      L11_2 = L3_2
                      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
                      L8_2 = luapanda_chook
                      if L8_2 ~= nil then
                        L8_2 = luapanda_chook
                        L30_1 = L8_2
                      else
                        L8_2 = L6_1.tryRequireClib
                        L9_2 = "libpdebug"
                        L10_2 = L7_2
                        L8_2 = L8_2(L9_2, L10_2)
                        if not L8_2 then
                          L8_2 = L6_1.tryRequireClib
                          L9_2 = "libpdebug"
                          L10_2 = L6_2
                          L8_2 = L8_2(L9_2, L10_2)
                          if not L8_2 then
                            L8_2 = L6_1.printToVSCode
                            L9_2 = "Require clib failed, use Lua to continue debug, use LuaPanda.doctor() for more information."
                            L10_2 = 1
                            L8_2(L9_2, L10_2)
                          end
                        end
                      end
                    end
                  else
                    L3_2 = false
                    L47_1 = L3_2
                  end
                  L3_2 = tostring
                  L4_2 = L1_2.info
                  L4_2 = L4_2.adapterVersion
                  L3_2 = L3_2(L4_2)
                  L31_1 = L3_2
                  L3_2 = L6_1.getMsgTable
                  L4_2 = "initSuccess"
                  L5_2 = L6_1.getCallbackId
                  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
                  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                  L4_2 = 0
                  L5_2 = L30_1
                  if L5_2 ~= nil then
                    L4_2 = 1
                    L5_2 = L30_1.sync_config
                    L6_2 = L32_1
                    L7_2 = L36_1
                    if L7_2 then
                      L7_2 = 1
                      if L7_2 then
                        goto lbl_746
                      end
                    end
                    L7_2 = 0
                    ::lbl_746::
                    L5_2(L6_2, L7_2)
                    L5_2 = L30_1.sync_tempfile_path
                    L6_2 = L24_1
                    L5_2(L6_2)
                    L5_2 = L30_1.sync_cwd
                    L6_2 = L18_1
                    L5_2(L6_2)
                    L5_2 = L30_1.sync_file_ext
                    L6_2 = L17_1
                    L5_2(L6_2)
                  end
                  L5_2 = 0
                  L52_1 = L5_2
                  L5_2 = L53_1
                  if L5_2 ~= nil then
                    L5_2 = type
                    L6_2 = L53_1
                    L5_2 = L5_2(L6_2)
                    if L5_2 == "function" then
                      L5_2 = pcall
                      L6_2 = L53_1
                      L7_2 = "return 0"
                      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2(L7_2)
                      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                      if L5_2 then
                        L5_2 = 1
                        L52_1 = L5_2
                      end
                    end
                  end
                  L5_2 = {}
                  L6_2 = tostring
                  L7_2 = L5_1
                  L6_2 = L6_2(L7_2)
                  L5_2.debuggerVer = L6_2
                  L6_2 = tostring
                  L7_2 = L4_2
                  L6_2 = L6_2(L7_2)
                  L5_2.UseHookLib = L6_2
                  L6_2 = tostring
                  L7_2 = L52_1
                  L6_2 = L6_2(L7_2)
                  L5_2.UseLoadstring = L6_2
                  L6_2 = tostring
                  L7_2 = L40_1
                  L6_2 = L6_2(L7_2)
                  L5_2.isNeedB64EncodeStr = L6_2
                  L3_2.info = L5_2
                  L6_2 = L6_1.sendMsg
                  L7_2 = L3_2
                  L6_2(L7_2)
                  L6_2 = L1_2.info
                  L6_2 = L6_2.stopOnEntry
                  L46_1 = L6_2
                  L6_2 = L1_2.info
                  L6_2 = L6_2.stopOnEntry
                  if L6_2 == "true" then
                    L6_2 = L6_1.changeRunState
                    L7_2 = L10_1.STOP_ON_ENTRY
                    L6_2(L7_2)
                  else
                    L6_2 = L6_1.debugger_wait_msg
                    L7_2 = 1
                    L6_2(L7_2)
                    L6_2 = L6_1.changeRunState
                    L7_2 = L10_1.RUN
                    L6_2(L7_2)
                  end
                else
                  L2_2 = L1_2.cmd
                  if L2_2 == "getWatchedVariable" then
                    L2_2 = L6_1.getMsgTable
                    L3_2 = "getWatchedVariable"
                    L4_2 = L6_1.getCallbackId
                    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
                    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                    L3_2 = tonumber
                    L4_2 = L1_2.info
                    L4_2 = L4_2.stackId
                    L3_2 = L3_2(L4_2)
                    L4_2 = L52_1
                    if L4_2 == 1 then
                      L6_1.curStackId = L3_2
                      L4_2 = L6_1.processWatchedExp
                      L5_2 = L1_2.info
                      L4_2 = L4_2(L5_2)
                      L2_2.info = L4_2
                      L5_2 = L6_1.sendMsg
                      L6_2 = L2_2
                      L5_2(L6_2)
                      L5_2 = L6_1.debugger_wait_msg
                      L5_2()
                      return
                    else
                      L4_2 = L6_1.getWatchedVariable
                      L5_2 = L1_2.info
                      L5_2 = L5_2.varName
                      L6_2 = L3_2
                      L7_2 = true
                      L4_2 = L4_2(L5_2, L6_2, L7_2)
                      if L4_2 ~= nil then
                        L2_2.info = L4_2
                      end
                      L5_2 = L6_1.sendMsg
                      L6_2 = L2_2
                      L5_2(L6_2)
                      L5_2 = L6_1.debugger_wait_msg
                      L5_2()
                    end
                  else
                    L2_2 = L1_2.cmd
                    if L2_2 == "stopRun" then
                      L2_2 = L6_1.getMsgTable
                      L3_2 = "stopRun"
                      L4_2 = L6_1.getCallbackId
                      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
                      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                      L3_2 = L6_1.sendMsg
                      L4_2 = L2_2
                      L3_2(L4_2)
                      L3_2 = L6_1.disconnect
                      L3_2()
                    else
                      L2_2 = L1_2.cmd
                      if "LuaGarbageCollect" == L2_2 then
                        L2_2 = L6_1.printToVSCode
                        L3_2 = "collect garbage!"
                        L2_2(L3_2)
                        L2_2 = collectgarbage
                        L3_2 = "collect"
                        L2_2(L3_2)
                        L2_2 = L6_1.sendLuaMemory
                        L2_2()
                        L2_2 = L6_1.debugger_wait_msg
                        L2_2()
                      else
                        L2_2 = L1_2.cmd
                        if "runREPLExpression" == L2_2 then
                          L2_2 = tonumber
                          L3_2 = L1_2.info
                          L3_2 = L3_2.stackId
                          L2_2 = L2_2(L3_2)
                          L6_1.curStackId = L2_2
                          L2_2 = L6_1.processExp
                          L3_2 = L1_2.info
                          L2_2 = L2_2(L3_2)
                          L3_2 = L6_1.getMsgTable
                          L4_2 = "runREPLExpression"
                          L5_2 = L6_1.getCallbackId
                          L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
                          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
                          L3_2.info = L2_2
                          L4_2 = L6_1.sendMsg
                          L5_2 = L3_2
                          L4_2(L5_2)
                          L4_2 = L6_1.debugger_wait_msg
                          L4_2()
                        else
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_907::
end
L6_1.dataProcess = L61_1
function L61_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = nil
  L7_2 = nil
  if A2_2 == false then
    L8_2 = {}
    L7_2 = L8_2
    L8_2 = {}
    L8_2.variablesReference = 0
    L8_2.value = A1_2
    L8_2.name = A0_2
    L9_2 = type
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    L8_2.type = L9_2
    L7_2[1] = L8_2
  else
    L8_2 = L6_1.getWatchedVariable
    L9_2 = tostring
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    L10_2 = A3_2
    L11_2 = true
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  end
  if L7_2 ~= nil then
    L8_2 = nil
    L9_2 = L7_2[1]
    L9_2 = L9_2.value
    if A2_2 == true then
      L10_2 = tonumber
      L11_2 = L7_2[1]
      L11_2 = L11_2.variablesReference
      L10_2 = L10_2(L11_2)
      if 0 < L10_2 then
        L10_2 = tonumber
        L11_2 = L7_2[1]
        L11_2 = L11_2.variablesReference
        L10_2 = L10_2(L11_2)
        L8_2 = L34_1[L10_2]
      else
        L10_2 = L7_2[1]
        L10_2 = L10_2.type
        if L10_2 == "number" then
          L10_2 = tonumber
          L11_2 = L7_2[1]
          L11_2 = L11_2.value
          L10_2 = L10_2(L11_2)
          L8_2 = L10_2
        end
        L10_2 = L7_2[1]
        L10_2 = L10_2.type
        if L10_2 == "string" then
          L10_2 = tostring
          L11_2 = L7_2[1]
          L11_2 = L11_2.value
          L10_2 = L10_2(L11_2)
          L8_2 = L10_2
          L10_2 = string
          L10_2 = L10_2.sub
          L11_2 = L8_2
          L12_2 = 1
          L13_2 = 1
          L10_2 = L10_2(L11_2, L12_2, L13_2)
          L11_2 = string
          L11_2 = L11_2.sub
          L12_2 = L8_2
          L13_2 = -1
          L14_2 = -1
          L11_2 = L11_2(L12_2, L13_2, L14_2)
          if L10_2 == L11_2 and (L10_2 == "'" or L10_2 == "\"") then
            L12_2 = string
            L12_2 = L12_2.sub
            L13_2 = L8_2
            L14_2 = 2
            L15_2 = -2
            L12_2 = L12_2(L13_2, L14_2, L15_2)
            L8_2 = L12_2
            L9_2 = L8_2
          end
        end
        L10_2 = L7_2[1]
        L10_2 = L10_2.type
        if L10_2 == "boolean" then
          L10_2 = L7_2[1]
          L10_2 = L10_2.value
          if L10_2 == "true" then
            L8_2 = true
          else
            L8_2 = false
          end
        end
        L10_2 = L7_2[1]
        L10_2 = L10_2.type
        if L10_2 == "nil" then
          L8_2 = nil
        end
      end
    else
      L10_2 = L7_2[1]
      L8_2 = L10_2.value
    end
    L10_2 = nil
    L11_2 = type
    L12_2 = A4_2
    L11_2 = L11_2(L12_2)
    L12_2 = table
    if L11_2 ~= L12_2 then
      L11_2 = L6_1.setVariableValue
      L12_2 = A0_2
      L13_2 = A3_2
      L14_2 = L8_2
      L15_2 = A5_2
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L10_2 = L11_2
    else
      A4_2[A0_2] = L8_2
      L10_2 = true
    end
    L11_2 = L7_2[1]
    L11_2 = L11_2.type
    if L11_2 == "string" then
      L11_2 = "\""
      L12_2 = L9_2
      L13_2 = "\""
      L9_2 = L11_2 .. L12_2 .. L13_2
    end
    if L10_2 ~= false and L10_2 ~= nil then
      L11_2 = "\229\143\152\233\135\143 "
      L12_2 = A0_2
      L13_2 = " \232\181\139\229\128\188\230\136\144\229\138\159"
      L11_2 = L11_2 .. L12_2 .. L13_2
      L12_2 = {}
      L12_2.success = "true"
      L13_2 = L7_2[1]
      L13_2 = L13_2.name
      L12_2.name = L13_2
      L13_2 = L7_2[1]
      L13_2 = L13_2.type
      L12_2.type = L13_2
      L12_2.value = L9_2
      L13_2 = tostring
      L14_2 = L7_2[1]
      L14_2 = L14_2.variablesReference
      L13_2 = L13_2(L14_2)
      L12_2.variablesReference = L13_2
      L12_2.tip = L11_2
      L6_2 = L12_2
    else
      L11_2 = {}
      L11_2.success = "false"
      L12_2 = type
      L13_2 = L8_2
      L12_2 = L12_2(L13_2)
      L11_2.type = L12_2
      L11_2.value = L9_2
      L11_2.tip = "\230\137\190\228\184\141\229\136\176\232\166\129\232\174\190\231\189\174\231\154\132\229\143\152\233\135\143"
      L6_2 = L11_2
    end
  else
    L8_2 = {}
    L8_2.success = "false"
    L8_2.type = nil
    L8_2.value = nil
    L8_2.tip = "\232\190\147\229\133\165\231\154\132\229\128\188\230\151\160\230\132\143\228\185\137"
    L6_2 = L8_2
  end
  return L6_2
end
L6_1.createSetValueRetTable = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    A0_2 = L12_1
  end
  L1_2 = L27_1
  L2_2 = L1_2
  L1_2 = L1_2.settimeout
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L37_1
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = L37_1[1]
    L2_2 = table
    L2_2 = L2_2.remove
    L3_2 = L37_1
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = L6_1.dataProcess
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = true
    return L2_2
  end
  L1_2 = L13_1
  L2_2 = L10_1.DISCONNECT
  if L1_2 == L2_2 then
    L1_2 = L6_1.disconnect
    L1_2()
    L1_2 = false
    return L1_2
  end
  L1_2 = L27_1
  if L1_2 == nil then
    L1_2 = L6_1.printToConsole
    L2_2 = "[debugger error]\230\142\165\230\148\182\228\191\161\230\129\175\229\164\177\232\180\165  |  reason: socket == nil"
    L3_2 = 2
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L27_1
  L2_2 = L1_2
  L1_2 = L1_2.receive
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 == nil then
    if L2_2 == "closed" then
      L3_2 = L6_1.printToConsole
      L4_2 = "[debugger error]\230\142\165\230\148\182\228\191\161\230\129\175\229\164\177\232\180\165  |  reason:"
      L5_2 = L2_2
      L4_2 = L4_2 .. L5_2
      L5_2 = 2
      L3_2(L4_2, L5_2)
      L3_2 = L6_1.disconnect
      L3_2()
    end
    L3_2 = false
    return L3_2
  else
    L3_2 = string
    L3_2 = L3_2.sub
    L4_2 = L1_2
    L5_2 = 1
    L6_2 = L11_1
    L7_2 = L6_2
    L6_2 = L6_2.len
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 + 1
    L6_2 = -1 * L6_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = string
    L4_2 = L4_2.find
    L5_2 = L3_2
    L6_2 = L11_1
    L7_2 = 1
    L8_2 = true
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if L4_2 == nil then
      L5_2 = L6_1.dataProcess
      L6_2 = L3_2
      L5_2(L6_2)
    else
      repeat
        L5_2 = string
        L5_2 = L5_2.sub
        L6_2 = L3_2
        L7_2 = 1
        L8_2 = L4_2 - 1
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = L37_1
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
        L6_2 = string
        L6_2 = L6_2.sub
        L7_2 = L3_2
        L8_2 = L11_1
        L9_2 = L8_2
        L8_2 = L8_2.len
        L8_2 = L8_2(L9_2)
        L8_2 = L4_2 + L8_2
        L9_2 = -1
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = string
        L7_2 = L7_2.find
        L8_2 = L6_2
        L9_2 = L11_1
        L10_2 = 1
        L11_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L4_2 = L7_2
      until not L4_2
      L5_2 = L6_1.receiveMessage
      L5_2()
    end
    L5_2 = true
    return L5_2
  end
end
L6_1.receiveMessage = L61_1
function L61_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    A0_2 = L12_1
  end
  L1_2 = L13_1
  L2_2 = L10_1.WAIT_CMD
  if L1_2 == L2_2 then
    L1_2 = L6_1.receiveMessage
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    return L1_2
  end
  L1_2 = L13_1
  L2_2 = L10_1.STEPOVER
  if L1_2 ~= L2_2 then
    L1_2 = L13_1
    L2_2 = L10_1.STEPIN
    if L1_2 ~= L2_2 then
      L1_2 = L13_1
      L2_2 = L10_1.STEPOUT
      if L1_2 ~= L2_2 then
        L1_2 = L13_1
        L2_2 = L10_1.RUN
        if L1_2 ~= L2_2 then
          goto lbl_32
        end
      end
    end
  end
  L1_2 = L6_1.receiveMessage
  L2_2 = 0
  L1_2(L2_2)
  do return end
  ::lbl_32::
  L1_2 = L13_1
  L2_2 = L10_1.STEPOVER_STOP
  if L1_2 ~= L2_2 then
    L1_2 = L13_1
    L2_2 = L10_1.STEPIN_STOP
    if L1_2 ~= L2_2 then
      L1_2 = L13_1
      L2_2 = L10_1.STEPOUT_STOP
      if L1_2 ~= L2_2 then
        L1_2 = L13_1
        L2_2 = L10_1.HIT_BREAKPOINT
        if L1_2 ~= L2_2 then
          L1_2 = L13_1
          L2_2 = L10_1.STOP_ON_ENTRY
          if L1_2 ~= L2_2 then
            goto lbl_58
          end
        end
      end
    end
  end
  L1_2 = L6_1.sendLuaMemory
  L1_2()
  L1_2 = L6_1.receiveMessage
  L2_2 = L12_1
  L1_2(L2_2)
  do return end
  ::lbl_58::
end
L6_1.debugger_wait_msg = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = L30_1
  if L2_2 ~= nil then
    L1_2 = A0_2 or L1_2
    if not A0_2 then
      L1_2 = L51_1
    end
  else
    L1_2 = A0_2 or L1_2
    if not A0_2 then
      L2_2 = L6_1.getSpecificFunctionStackLevel
      L3_2 = L21_1.func
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  L2_2 = {}
  L3_2 = 0
  repeat
    L4_2 = debug
    L4_2 = L4_2.getinfo
    L5_2 = L1_2
    L6_2 = "SlLnf"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      break
    end
    L5_2 = L4_2.source
    if L5_2 == "=[C]" then
      break
    end
    L5_2 = {}
    L6_2 = L6_1.getPath
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2.file = L6_2
    L5_2.name = "\230\150\135\228\187\182\229\144\141"
    L6_2 = tostring
    L7_2 = L4_2.currentline
    L6_2 = L6_2(L7_2)
    L5_2.line = L6_2
    L6_2 = L1_2 - 3
    L7_2 = L30_1
    if L7_2 ~= nil then
      L6_2 = L6_2 + 2
    end
    L7_2 = tostring
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L5_2.index = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = {}
    L8_2 = L5_2.file
    L7_2.name = L8_2
    L8_2 = L5_2.line
    L7_2.line = L8_2
    L8_2 = L4_2.func
    L7_2.func = L8_2
    L7_2.realLy = L1_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L22_1
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L3_2 == 0 then
      L3_2 = L1_2
    end
    L1_2 = L1_2 + 1
  until L4_2 == nil
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L6_1.getStackTable = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L1_2 = A0_2.source
  end
  L2_2 = L6_1.getCacheFormatPath
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 == "string" then
      return L2_2
    end
  end
  L3_2 = L1_2
  L4_2 = L17_1
  if L4_2 ~= "" then
    L4_2 = string
    L4_2 = L4_2.find
    L5_2 = L17_1
    L6_2 = "%%%d"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = string
      L4_2 = L4_2.gsub
      L5_2 = L1_2
      L6_2 = "%.[%w%.]+$"
      L7_2 = L17_1
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L1_2 = L4_2
    else
      L4_2 = string
      L4_2 = L4_2.gsub
      L5_2 = L1_2
      L6_2 = "%.[%w%.]+$"
      L7_2 = ""
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L1_2 = L4_2
      L4_2 = L1_2
      L5_2 = "."
      L6_2 = L17_1
      L1_2 = L4_2 .. L5_2 .. L6_2
    end
  end
  L5_2 = L1_2
  L4_2 = L1_2.sub
  L6_2 = 1
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 == "@" then
    L5_2 = L1_2
    L4_2 = L1_2.sub
    L6_2 = 2
    L4_2 = L4_2(L5_2, L6_2)
    L1_2 = L4_2
  end
  L4_2 = L48_1
  if not L4_2 then
    L5_2 = L1_2
    L4_2 = L1_2.sub
    L6_2 = 1
    L7_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 ~= "/" then
      L5_2 = L1_2
      L4_2 = L1_2.sub
      L6_2 = 1
      L7_2 = 2
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = L4_2
      L4_2 = L4_2.match
      L6_2 = "^%a:"
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        goto lbl_80
      end
    end
    L4_2 = true
    L45_1 = L4_2
    goto lbl_98
    ::lbl_80::
    L4_2 = false
    L45_1 = L4_2
    L4_2 = L18_1
    if L4_2 ~= "" then
      L4_2 = string
      L4_2 = L4_2.find
      L5_2 = L1_2
      L6_2 = L18_1
      L7_2 = 1
      L8_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      if L4_2 == nil then
        L5_2 = L18_1
        L6_2 = "/"
        L7_2 = L1_2
        L1_2 = L5_2 .. L6_2 .. L7_2
      end
    end
  end
  ::lbl_98::
  L4_2 = L6_1.genUnifiedPath
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L1_2 = L4_2
  L4_2 = L48_1
  if L4_2 then
    L4_2 = L6_1.getFilenameFromPath
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L1_2 = L4_2
  end
  L4_2 = L6_1.setCacheFormatPath
  L5_2 = L3_2
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  return L1_2
end
L6_1.getPath = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = ""
    return L1_2
  end
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "([^/]*)$"
  return L1_2(L2_2, L3_2)
end
L6_1.getFilenameFromPath = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 2
  repeat
    L1_2 = debug
    L1_2 = L1_2.getinfo
    L2_2 = L0_2
    L3_2 = "S"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.source
      L3_2 = L19_1
      L2_2 = L2_2 == L3_2
      if L2_2 == false then
        L3_2 = L0_2 - 1
        return L3_2
      end
    end
    L0_2 = L0_2 + 1
  until not L1_2
  L1_2 = 0
  return L1_2
end
L6_1.getCurrentFunctionStackLevel = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 2
  repeat
    L2_2 = debug
    L2_2 = L2_2.getinfo
    L3_2 = L1_2
    L4_2 = "f"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.func
      if L3_2 == A0_2 then
        L3_2 = L1_2 - 1
        return L3_2
      end
    end
    L1_2 = L1_2 + 1
  until not L2_2
  L2_2 = 0
  return L2_2
end
L6_1.getSpecificFunctionStackLevel = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = debug
  L1_2 = L1_2.getinfo
  L2_2 = A0_2
  L3_2 = "S"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L6_1.genUnifiedPath
  L3_2 = L1_2.source
  L2_2 = L2_2(L3_2)
  L1_2.source = L2_2
  if L1_2 ~= nil then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L5_2 == "what" then
        if L6_2 == "C" then
          L7_2 = false
          return L7_2
        else
          L7_2 = true
          return L7_2
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L6_1.checkCurrentLayerisLua = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = tostring
  L2_2 = A0_2.currentline
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.source
  L3_2 = false
  L4_2 = L15_1[L2_2]
  if L4_2 then
    L3_2 = true
  end
  if L3_2 then
    L4_2 = ipairs
    L5_2 = L15_1[L2_2]
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = tostring
      L10_2 = L8_2.line
      L9_2 = L9_2(L10_2)
      L10_2 = tostring
      L11_2 = L1_2
      L10_2 = L10_2(L11_2)
      if L9_2 == L10_2 then
        L9_2 = L8_2.type
        if L9_2 == "0" then
          L9_2 = L6_1.IsMeetCondition
          L10_2 = L8_2.condition
          L9_2 = L9_2(L10_2)
          return L9_2
        else
          L9_2 = L8_2.type
          if L9_2 == "1" then
            L9_2 = L6_1.printToVSCode
            L10_2 = "[log point output]: "
            L11_2 = L8_2.logMessage
            L10_2 = L10_2 .. L11_2
            L11_2 = 1
            L9_2(L10_2, L11_2)
          else
            L9_2 = true
            return L9_2
          end
        end
      end
    end
  end
  L4_2 = false
  return L4_2
end
L6_1.isHitBreakpoint = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L22_1 = L1_2
  L1_2 = {}
  L34_1 = L1_2
  L1_2 = 1
  L33_1 = L1_2
  L1_2 = L6_1.getStackTable
  L1_2()
  L6_1.curStackId = 2
  L1_2 = {}
  L1_2.varName = A0_2
  L2_2 = L6_1.processWatchedExp
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = false
  function L4_2()
    local L0_3, L1_3
    L0_3 = L2_2[1]
    L0_3 = L0_3.isSuccess
    if L0_3 == "true" then
      L0_3 = L2_2[1]
      L0_3 = L0_3.value
      if L0_3 ~= "nil" then
        L0_3 = L2_2[1]
        L0_3 = L0_3.value
        if L0_3 ~= "false" then
          goto lbl_20
        end
        L0_3 = L2_2[1]
        L0_3 = L0_3.type
        if L0_3 ~= "boolean" then
          goto lbl_20
        end
      end
      L0_3 = false
      L3_2 = L0_3
      goto lbl_25
      ::lbl_20::
      L0_3 = true
      L3_2 = L0_3
    else
      L0_3 = false
      L3_2 = L0_3
    end
    ::lbl_25::
  end
  L5_2 = xpcall
  L6_2 = L4_2
  function L7_2()
    local L0_3, L1_3
    L0_3 = false
    L3_2 = L0_3
  end
  L5_2(L6_2, L7_2)
  return L3_2
end
L6_1.IsMeetCondition = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L6_1.printToConsole
  L1_2 = "BP()"
  L0_2(L1_2)
  L0_2 = L30_1
  if L0_2 == nil then
    L0_2 = L14_1
    L1_2 = L9_1.DISCONNECT_HOOK
    if L0_2 == L1_2 then
      L0_2 = L6_1.printToConsole
      L1_2 = "BP() but NO HOOK"
      L0_2(L1_2)
      return
    end
    L0_2 = coroutine
    L0_2 = L0_2.running
    L0_2, L1_2 = L0_2()
    L2_2 = _VERSION
    if L2_2 == "Lua 5.1" then
      if L0_2 == nil then
        L1_2 = true
      else
        L1_2 = false
      end
    end
    if L1_2 == true then
      L2_2 = L6_1.printToConsole
      L3_2 = "BP() in main"
      L2_2(L3_2)
    else
      L2_2 = L6_1.printToConsole
      L3_2 = "BP() in coroutine"
      L2_2(L3_2)
      L2_2 = debug
      L2_2 = L2_2.sethook
      L3_2 = L0_2
      L4_2 = L6_1.debug_hook
      L5_2 = "lrc"
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = true
    L23_1 = L2_2
  else
    L0_2 = L30_1.get_libhook_state
    L0_2 = L0_2()
    L1_2 = L9_1.DISCONNECT_HOOK
    if L0_2 == L1_2 then
      L0_2 = L6_1.printToConsole
      L1_2 = "BP() but NO C HOOK"
      L0_2(L1_2)
      return
    end
    L0_2 = L30_1.sync_bp_hit
    L1_2 = 1
    L0_2(L1_2)
  end
  L0_2 = L6_1.changeHookState
  L1_2 = L9_1.ALL_HOOK
  L0_2(L1_2)
  L0_2 = true
  return L0_2
end
L6_1.BP = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = next
  L3_2 = L15_1
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L1_2 = false
  else
    L1_2 = true
  end
  if A0_2 ~= nil then
    L2_2 = L15_1[A0_2]
    L2_2 = L2_2 ~= nil
    L3_2 = L1_2
    return L2_2, L3_2
  else
    return L1_2
  end
end
L6_1.checkHasBreakpoint = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L15_1[A2_2]
  if L3_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = tonumber
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  if A0_2 >= A1_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = L15_1[A2_2]
  L3_2 = #L3_2
  if L3_2 <= 0 then
    L3_2 = false
    return L3_2
  else
    L3_2 = ipairs
    L4_2 = L15_1[A2_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = tonumber
      L9_2 = L7_2.line
      L8_2 = L8_2(L9_2)
      if A0_2 < L8_2 then
        L8_2 = tonumber
        L9_2 = L7_2.line
        L8_2 = L8_2(L9_2)
        if A1_2 >= L8_2 then
          L8_2 = true
          return L8_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L6_1.checkfuncHasBreakpoint = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L6_1.reConnect
  L2_2 = L2_2()
  if L2_2 == 1 then
    return
  end
  L2_2 = L32_1
  if L2_2 == 0 then
    L2_2 = {}
    L3_2 = "-----enter debug_hook-----\n"
    L4_2 = "event:"
    L5_2 = A0_2
    L6_2 = "  line:"
    L7_2 = tostring
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L8_2 = " currentHookState:"
    L9_2 = L14_1
    L10_2 = " currentRunState:"
    L11_2 = L13_1
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
    L2_2[7] = L9_2
    L2_2[8] = L10_2
    L2_2[9] = L11_2
    L3_2 = table
    L3_2 = L3_2.concat
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L6_1.printToVSCode
    L5_2 = L3_2
    L4_2(L5_2)
  end
  L2_2 = L14_1
  L3_2 = L9_1.LITE_HOOK
  if L2_2 == L3_2 then
    L2_2 = os
    L2_2 = L2_2.time
    L2_2 = L2_2()
    L3_2 = L57_1
    L3_2 = L2_2 - L3_2
    if 1 < L3_2 then
      L3_2 = L6_1.debugger_wait_msg
      L4_2 = 0
      L3_2(L4_2)
      L57_1 = L2_2
    end
    return
  end
  L2_2 = nil
  L3_2 = coroutine
  L3_2 = L3_2.running
  L3_2, L4_2 = L3_2()
  L5_2 = _VERSION
  if L5_2 == "Lua 5.1" then
    if L3_2 == nil then
      L4_2 = true
    else
      L4_2 = false
    end
  end
  L56_1 = L4_2
  if L4_2 == true then
    L5_2 = debug
    L5_2 = L5_2.getinfo
    L6_2 = 2
    L7_2 = "Slf"
    L5_2 = L5_2(L6_2, L7_2)
    L2_2 = L5_2
  else
    L5_2 = debug
    L5_2 = L5_2.getinfo
    L6_2 = L3_2
    L7_2 = 2
    L8_2 = "Slf"
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L2_2 = L5_2
  end
  L2_2.event = A0_2
  L5_2 = L6_1.real_hook_process
  L6_2 = L2_2
  L5_2(L6_2)
end
L6_1.debug_hook = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = false
  L2_2 = A0_2.event
  L3_2 = A0_2.source
  L4_2 = L19_1
  L3_2 = L3_2 == L4_2
  if L3_2 == true then
    return
  end
  L4_2 = L13_1
  L5_2 = L10_1.RUN
  if L4_2 ~= L5_2 then
    L4_2 = L13_1
    L5_2 = L10_1.STEPOVER
    if L4_2 ~= L5_2 then
      L4_2 = L13_1
      L5_2 = L10_1.STEPIN
      if L4_2 ~= L5_2 then
        L4_2 = L13_1
        L5_2 = L10_1.STEPOUT
        if L4_2 ~= L5_2 then
          goto lbl_43
        end
      end
    end
  end
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L5_2 = L57_1
  L5_2 = L4_2 - L5_2
  if 1 < L5_2 then
    L5_2 = L6_1.debugger_wait_msg
    L6_2 = 0
    L5_2(L6_2)
    L57_1 = L4_2
  end
  ::lbl_43::
  L4_2 = A0_2.source
  if L4_2 == "=[C]" then
    L4_2 = L6_1.printToVSCode
    L5_2 = "current method is C"
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2.source
  if L4_2 == "temp buffer" then
    L4_2 = L6_1.printToVSCode
    L5_2 = "current method is in temp buffer"
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2.source
  if L4_2 == "chunk" then
    L4_2 = L6_1.printToVSCode
    L5_2 = "current method is in chunk"
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2.short_src
  L5_2 = L4_2
  L4_2 = L4_2.match
  L6_2 = "%[string \""
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2.source
    L5_2 = L4_2
    L4_2 = L4_2.match
    L6_2 = [=[
[
;=]]=]
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = L6_1.printToVSCode
      L5_2 = "hook jump Code String!"
      L4_2(L5_2)
      L1_2 = true
    end
  end
  if L1_2 == false then
    L4_2 = L6_1.getPath
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    A0_2.source = L4_2
  end
  L4_2 = L21_1.currentline
  L5_2 = A0_2.currentline
  if L4_2 == L5_2 then
    L4_2 = L21_1.source
    L5_2 = A0_2.source
    if L4_2 == L5_2 then
      L4_2 = L21_1.func
      L5_2 = A0_2.func
      if L4_2 == L5_2 then
        L4_2 = L21_1.event
        if L4_2 == L2_2 then
          L4_2 = L6_1.printToVSCode
          L5_2 = "run twice"
          L4_2(L5_2)
        end
      end
    end
  end
  if L1_2 == false then
    L21_1 = A0_2
    L21_1.event = L2_2
    L4_2 = A0_2.source
    L35_1 = L4_2
  end
  L4_2 = L32_1
  if L4_2 == 0 and L1_2 == false then
    L4_2 = {}
    L5_2 = "[lua hook] event:"
    L6_2 = tostring
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L7_2 = " currentRunState:"
    L8_2 = tostring
    L9_2 = L13_1
    L8_2 = L8_2(L9_2)
    L9_2 = " currentHookState:"
    L10_2 = tostring
    L11_2 = L14_1
    L10_2 = L10_2(L11_2)
    L11_2 = " jumpFlag:"
    L12_2 = tostring
    L13_2 = L1_2
    L12_2, L13_2 = L12_2(L13_2)
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L4_2[5] = L9_2
    L4_2[6] = L10_2
    L4_2[7] = L11_2
    L4_2[8] = L12_2
    L4_2[9] = L13_2
    L5_2 = pairs
    L6_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = tostring
      L13_2 = L8_2
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = ":"
      L10_2(L11_2, L12_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = tostring
      L13_2 = L9_2
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = " "
      L10_2(L11_2, L12_2)
    end
    L5_2 = table
    L5_2 = L5_2.concat
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = L6_1.printToVSCode
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L4_2 = false
  L5_2 = tostring
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 == "line" and L1_2 == false then
    L5_2 = L13_1
    L6_2 = L10_1.RUN
    if L5_2 ~= L6_2 then
      L5_2 = L13_1
      L6_2 = L10_1.STEPOVER
      if L5_2 ~= L6_2 then
        L5_2 = L13_1
        L6_2 = L10_1.STEPIN
        if L5_2 ~= L6_2 then
          L5_2 = L13_1
          L6_2 = L10_1.STEPOUT
          if L5_2 ~= L6_2 then
            goto lbl_217
          end
        end
      end
    end
    L5_2 = L6_1.isHitBreakpoint
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2 or L4_2
    if not L5_2 then
      L4_2 = L23_1
    end
    if L4_2 == true then
      L5_2 = L6_1.printToVSCode
      L6_2 = " + HitBreakpoint true"
      L5_2(L6_2)
      L5_2 = false
      L23_1 = L5_2
      L5_2 = 0
      L49_1 = L5_2
      L5_2 = 0
      L50_1 = L5_2
      L5_2 = L6_1.changeRunState
      L6_2 = L10_1.HIT_BREAKPOINT
      L5_2(L6_2)
      L5_2 = L6_1.SendMsgWithStack
      L6_2 = "stopOnBreakpoint"
      L5_2(L6_2)
    end
  end
  ::lbl_217::
  if L4_2 == true then
    return
  end
  L5_2 = L13_1
  L6_2 = L10_1.STEPOVER
  if L5_2 == L6_2 then
    if L2_2 == "line" then
      L5_2 = L49_1
      if L5_2 <= 0 and L1_2 == false then
        L5_2 = 0
        L49_1 = L5_2
        L5_2 = L6_1.changeRunState
        L6_2 = L10_1.STEPOVER_STOP
        L5_2(L6_2)
        L5_2 = L6_1.SendMsgWithStack
        L6_2 = "stopOnStep"
        L5_2(L6_2)
    end
    elseif L2_2 == "return" or L2_2 == "tail return" then
      L5_2 = L49_1
      if L5_2 ~= 0 then
        L5_2 = L49_1
        L5_2 = L5_2 - 1
        L49_1 = L5_2
      end
    elseif L2_2 == "call" then
      L5_2 = L49_1
      L5_2 = L5_2 + 1
      L49_1 = L5_2
    end
  else
    L5_2 = L13_1
    L6_2 = L10_1.STOP_ON_ENTRY
    if L5_2 == L6_2 then
      if L2_2 == "line" and L1_2 == false then
        L5_2 = L6_1.SendMsgWithStack
        L6_2 = "stopOnEntry"
        L5_2(L6_2)
      end
    else
      L5_2 = L13_1
      L6_2 = L10_1.STEPIN
      if L5_2 == L6_2 then
        if L2_2 == "line" and L1_2 == false then
          L5_2 = L6_1.changeRunState
          L6_2 = L10_1.STEPIN_STOP
          L5_2(L6_2)
          L5_2 = L6_1.SendMsgWithStack
          L6_2 = "stopOnStepIn"
          L5_2(L6_2)
        end
      else
        L5_2 = L13_1
        L6_2 = L10_1.STEPOUT
        if L5_2 == L6_2 then
          if L1_2 == false then
            L5_2 = L50_1
            if L5_2 <= -1 then
              L5_2 = 0
              L50_1 = L5_2
              L5_2 = L6_1.changeRunState
              L6_2 = L10_1.STEPOUT_STOP
              L5_2(L6_2)
              L5_2 = L6_1.SendMsgWithStack
              L6_2 = "stopOnStepOut"
              L5_2(L6_2)
            end
          end
          if L2_2 == "return" or L2_2 == "tail return" then
            L5_2 = L50_1
            L5_2 = L5_2 - 1
            L50_1 = L5_2
          elseif L2_2 == "call" then
            L5_2 = L50_1
            L5_2 = L5_2 + 1
            L50_1 = L5_2
          end
        end
      end
    end
  end
  L5_2 = L30_1
  if L5_2 == nil then
    L5_2 = L13_1
    L6_2 = L10_1.RUN
    if L5_2 == L6_2 and L1_2 == false then
      L5_2 = L14_1
      L6_2 = L9_1.DISCONNECT_HOOK
      if L5_2 ~= L6_2 then
        L5_2 = L6_1.checkHasBreakpoint
        L6_2 = L35_1
        L5_2, L6_2 = L5_2(L6_2)
        if L5_2 == false then
          if L6_2 == true then
            L7_2 = L6_1.changeHookState
            L8_2 = L9_1.MID_HOOK
            L7_2(L8_2)
          else
            L7_2 = L6_1.changeHookState
            L8_2 = L9_1.LITE_HOOK
            L7_2(L8_2)
          end
        else
          L7_2 = L6_1.checkfuncHasBreakpoint
          L8_2 = L21_1.linedefined
          L9_2 = L21_1.lastlinedefined
          L10_2 = L35_1
          L7_2 = L7_2(L8_2, L9_2, L10_2)
          if L7_2 then
            L8_2 = L6_1.changeHookState
            L9_2 = L9_1.ALL_HOOK
            L8_2(L9_2)
          else
            L8_2 = L6_1.changeHookState
            L9_2 = L9_1.MID_HOOK
            L8_2(L9_2)
          end
        end
        if L2_2 == "return" or L2_2 == "tail return" then
          L7_2 = L14_1
          L8_2 = L9_1.MID_HOOK
          if L7_2 == L8_2 then
            L7_2 = L6_1.changeHookState
            L8_2 = L9_1.ALL_HOOK
            L7_2(L8_2)
          end
        end
      end
    end
  end
end
L6_1.real_hook_process = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1.getMsgTable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L6_1.getStackTable
  L3_2, L4_2 = L3_2()
  L2_2 = L4_2
  L1_2.stack = L3_2
  if L2_2 ~= 0 then
    L3_2 = debug
    L3_2 = L3_2.getinfo
    L4_2 = L2_2 - 1
    L5_2 = "f"
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2.func
    L21_1.func = L3_2
  end
  L3_2 = L6_1.sendMsg
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = L6_1.debugger_wait_msg
  L3_2()
end
L6_1.SendMsgWithStack = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L30_1
  if L1_2 == nil then
    L1_2 = L14_1
    if L1_2 == A0_2 then
      return
    end
  end
  L1_2 = L6_1.printToConsole
  L2_2 = "change hook state :"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = L9_1.DISCONNECT_HOOK
  if A0_2 ~= L1_2 then
    L1_2 = L6_1.printToVSCode
    L2_2 = "change hook state : "
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
  L14_1 = A0_2
  L1_2 = L9_1.DISCONNECT_HOOK
  if A0_2 == L1_2 then
    L1_2 = L0_1
    if L1_2 == true then
      L1_2 = L30_1
      if L1_2 then
        L1_2 = L30_1.lua_set_hookstate
        L2_2 = L9_1.DISCONNECT_HOOK
        L1_2(L2_2)
      else
        L1_2 = debug
        L1_2 = L1_2.sethook
        L2_2 = L6_1.debug_hook
        L3_2 = "r"
        L4_2 = 1000000
        L1_2(L2_2, L3_2, L4_2)
      end
    else
      L1_2 = L30_1
      if L1_2 then
        L1_2 = L30_1.endHook
        L1_2()
      else
        L1_2 = debug
        L1_2 = L1_2.sethook
        L1_2()
      end
    end
  else
    L1_2 = L9_1.LITE_HOOK
    if A0_2 == L1_2 then
      L1_2 = L30_1
      if L1_2 then
        L1_2 = L30_1.lua_set_hookstate
        L2_2 = L9_1.LITE_HOOK
        L1_2(L2_2)
      else
        L1_2 = debug
        L1_2 = L1_2.sethook
        L2_2 = L6_1.debug_hook
        L3_2 = "r"
        L1_2(L2_2, L3_2)
      end
    else
      L1_2 = L9_1.MID_HOOK
      if A0_2 == L1_2 then
        L1_2 = L30_1
        if L1_2 then
          L1_2 = L30_1.lua_set_hookstate
          L2_2 = L9_1.MID_HOOK
          L1_2(L2_2)
        else
          L1_2 = debug
          L1_2 = L1_2.sethook
          L2_2 = L6_1.debug_hook
          L3_2 = "rc"
          L1_2(L2_2, L3_2)
        end
      else
        L1_2 = L9_1.ALL_HOOK
        if A0_2 == L1_2 then
          L1_2 = L30_1
          if L1_2 then
            L1_2 = L30_1.lua_set_hookstate
            L2_2 = L9_1.ALL_HOOK
            L1_2(L2_2)
          else
            L1_2 = debug
            L1_2 = L1_2.sethook
            L2_2 = L6_1.debug_hook
            L3_2 = "lrc"
            L1_2(L2_2, L3_2)
          end
        end
      end
    end
  end
  L1_2 = L30_1
  if L1_2 == nil then
    L1_2 = L6_1.changeCoroutineHookState
    L1_2()
  end
end
L6_1.changeHookState = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  if A1_2 == 1 then
    L2_2 = "libc"
  else
    L2_2 = "lua"
  end
  L3_2 = L6_1.printToConsole
  L4_2 = "changeRunState :"
  L5_2 = A0_2
  L6_2 = " | from:"
  L7_2 = L2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
  L3_2 = L10_1.DISCONNECT
  if A0_2 ~= L3_2 then
    L3_2 = L10_1.WAIT_CMD
    if A0_2 ~= L3_2 then
      L3_2 = L6_1.printToVSCode
      L4_2 = "changeRunState :"
      L5_2 = A0_2
      L6_2 = " | from:"
      L7_2 = L2_2
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
      L3_2(L4_2)
    end
  end
  L3_2 = L30_1
  if L3_2 ~= nil and A1_2 ~= 1 then
    L3_2 = L30_1.lua_set_runstate
    L4_2 = A0_2
    L3_2(L4_2)
  end
  L13_1 = A0_2
  L3_2 = {}
  L22_1 = L3_2
  L3_2 = {}
  L34_1 = L3_2
  L3_2 = 1
  L33_1 = L3_2
end
L6_1.changeRunState = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    A0_2 = L14_1
  end
  L1_2 = L6_1.printToConsole
  L2_2 = "change [Coroutine] HookState: "
  L3_2 = tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L38_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = coroutine
    L6_2 = L6_2.status
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 == "dead" then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = L38_1
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = L9_1.DISCONNECT_HOOK
      if A0_2 == L6_2 then
        L6_2 = L0_1
        if L6_2 == true then
          L6_2 = debug
          L6_2 = L6_2.sethook
          L7_2 = L5_2
          L8_2 = L6_1.debug_hook
          L9_2 = "r"
          L10_2 = 1000000
          L6_2(L7_2, L8_2, L9_2, L10_2)
        else
          L6_2 = debug
          L6_2 = L6_2.sethook
          L7_2 = L5_2
          L8_2 = L6_1.debug_hook
          L9_2 = ""
          L6_2(L7_2, L8_2, L9_2)
        end
      else
        L6_2 = L9_1.LITE_HOOK
        if A0_2 == L6_2 then
          L6_2 = debug
          L6_2 = L6_2.sethook
          L7_2 = L5_2
          L8_2 = L6_1.debug_hook
          L9_2 = "r"
          L6_2(L7_2, L8_2, L9_2)
        else
          L6_2 = L9_1.MID_HOOK
          if A0_2 == L6_2 then
            L6_2 = debug
            L6_2 = L6_2.sethook
            L7_2 = L5_2
            L8_2 = L6_1.debug_hook
            L9_2 = "rc"
            L6_2(L7_2, L8_2, L9_2)
          else
            L6_2 = L9_1.ALL_HOOK
            if A0_2 == L6_2 then
              L6_2 = debug
              L6_2 = L6_2.sethook
              L7_2 = L5_2
              L8_2 = L6_1.debug_hook
              L9_2 = "lrc"
              L6_2(L7_2, L8_2, L9_2)
            end
          end
        end
      end
    end
  end
end
L6_1.changeCoroutineHookState = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L6_1.getTableMemberNum
  L1_2 = L60_1
  L0_2 = L0_2(L1_2)
  if 0 < L0_2 then
    L0_2 = setmetatable
    L1_2 = {}
    L2_2 = getmetatable
    L3_2 = L60_1
    L2_2, L3_2 = L2_2(L3_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L60_1 = L0_2
  end
end
L6_1.clearEnv = L61_1
function L61_1()
  local L0_2, L1_2
  L0_2 = L60_1
  return L0_2
end
L6_1.showEnv = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 == "table" then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = 2
  L3_2 = A1_2
  L4_2 = false
  repeat
    L5_2 = A0_2[L2_2]
    if L5_2 ~= nil then
      L5_2 = nil
      L6_2 = xpcall
      function L7_2()
        local L0_3, L1_3
        L0_3 = tonumber
        L1_3 = L2_2
        L1_3 = A0_2[L1_3]
        L0_3 = L0_3(L1_3)
        L0_3 = L3_2[L0_3]
        L5_2 = L0_3
      end
      function L8_2()
        local L0_3, L1_3
        L0_3 = nil
        L5_2 = L0_3
      end
      L6_2(L7_2, L8_2)
      if L5_2 == nil then
        L6_2 = xpcall
        function L7_2()
          local L0_3, L1_3
          L0_3 = tostring
          L1_3 = L2_2
          L1_3 = A0_2[L1_3]
          L0_3 = L0_3(L1_3)
          L0_3 = L3_2[L0_3]
          L3_2 = L0_3
        end
        function L8_2()
          local L0_3, L1_3
          L0_3 = nil
          L3_2 = L0_3
        end
        L6_2(L7_2, L8_2)
      else
        L3_2 = L5_2
      end
      L2_2 = L2_2 + 1
      if L3_2 == nil then
        L6_2 = nil
        return L6_2
      end
    else
      L4_2 = true
    end
  until L4_2 == true
  return L3_2
end
L6_1.findTableVar = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L2_2.name = A0_2
  L3_2 = tostring
  L4_2 = type
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.type = L3_2
  L3_2 = xpcall
  function L4_2()
    local L0_3, L1_3
    L0_3 = tostring
    L1_3 = A1_2
    L0_3 = L0_3(L1_3)
    L2_2.value = L0_3
  end
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = tostring
    L1_3 = type
    L2_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3)
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = " [value can't trans to string]"
    L0_3 = L0_3 .. L1_3
    L2_2.value = L0_3
  end
  L3_2(L4_2, L5_2)
  L2_2.variablesReference = "0"
  L3_2 = L2_2.type
  if L3_2 ~= "table" then
    L3_2 = L2_2.type
    if L3_2 ~= "function" then
      L3_2 = L2_2.type
      if L3_2 ~= "userdata" then
        goto lbl_42
      end
    end
  end
  L3_2 = L33_1
  L2_2.variablesReference = L3_2
  L3_2 = L33_1
  L34_1[L3_2] = A1_2
  L3_2 = L33_1
  L3_2 = L3_2 + 1
  L33_1 = L3_2
  L3_2 = L2_2.type
  if L3_2 == "table" then
    L3_2 = L6_1.getTableMemberNum
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L5_2 = " Members "
    L6_2 = L2_2.value
    L4_2 = L4_2 .. L5_2 .. L6_2
    L2_2.value = L4_2
    goto lbl_50
    ::lbl_42::
    L3_2 = L2_2.type
    if L3_2 == "string" then
      L3_2 = "\""
      L4_2 = A1_2
      L5_2 = "\""
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2.value = L3_2
    end
  end
  ::lbl_50::
  return L2_2
end
L6_1.createWatchedVariableInfo = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _G
  L2_2[A0_2] = A1_2
  L2_2 = L6_1.printToVSCode
  L3_2 = "[setVariable success] \229\183\178\232\174\190\231\189\174  _G."
  L4_2 = A0_2
  L5_2 = " = "
  L6_2 = tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = true
  return L2_2
end
L6_1.setGlobal = L61_1
function L61_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = false
  L5_2 = L6_1.getUpValueVariable
  L6_2 = A2_2 - 1
  L6_2 = L22_1[L6_2]
  L6_2 = L6_2.func
  L7_2 = true
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.name
    if L11_2 == A0_2 then
      L11_2 = #A3_2
      if 0 < L11_2 then
        L11_2 = type
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L11_2 == "table" then
          L11_2 = L6_1.findTableVar
          L12_2 = A3_2
          L13_2 = L10_2.variablesReference
          L13_2 = L34_1[L13_2]
          L11_2 = L11_2(L12_2, L13_2)
          if L11_2 ~= nil then
            L12_2 = debug
            L12_2 = L12_2.setupvalue
            L13_2 = A2_2 - 1
            L13_2 = L22_1[L13_2]
            L13_2 = L13_2.func
            L14_2 = L9_2
            L15_2 = A1_2
            L12_2 = L12_2(L13_2, L14_2, L15_2)
            if L12_2 == A0_2 then
              L13_2 = L6_1.printToConsole
              L14_2 = "[setVariable success1] \229\183\178\232\174\190\231\189\174 upvalue "
              L15_2 = A0_2
              L16_2 = " = "
              L17_2 = tostring
              L18_2 = A1_2
              L17_2 = L17_2(L18_2)
              L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
              L13_2(L14_2)
              L4_2 = true
            else
              L13_2 = L6_1.printToConsole
              L14_2 = "[setVariable error1] \230\156\170\232\131\189\232\174\190\231\189\174 upvalue "
              L15_2 = A0_2
              L16_2 = " = "
              L17_2 = tostring
              L18_2 = A1_2
              L17_2 = L17_2(L18_2)
              L18_2 = " , \232\191\148\229\155\158\231\187\147\230\158\156: "
              L19_2 = tostring
              L20_2 = L12_2
              L19_2 = L19_2(L20_2)
              L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
              L13_2(L14_2)
            end
            return L4_2
          end
      end
      else
        L11_2 = debug
        L11_2 = L11_2.setupvalue
        L12_2 = A2_2 - 1
        L12_2 = L22_1[L12_2]
        L12_2 = L12_2.func
        L13_2 = L9_2
        L14_2 = A1_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        if L11_2 == A0_2 then
          L12_2 = L6_1.printToConsole
          L13_2 = "[setVariable success] \229\183\178\232\174\190\231\189\174 upvalue "
          L14_2 = A0_2
          L15_2 = " = "
          L16_2 = tostring
          L17_2 = A1_2
          L16_2 = L16_2(L17_2)
          L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
          L12_2(L13_2)
          L4_2 = true
        else
          L12_2 = L6_1.printToConsole
          L13_2 = "[setVariable error] \230\156\170\232\131\189\232\174\190\231\189\174 upvalue "
          L14_2 = A0_2
          L15_2 = " = "
          L16_2 = tostring
          L17_2 = A1_2
          L16_2 = L16_2(L17_2)
          L17_2 = " , \232\191\148\229\155\158\231\187\147\230\158\156: "
          L18_2 = tostring
          L19_2 = L11_2
          L18_2 = L18_2(L19_2)
          L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
          L12_2(L13_2)
        end
        return L4_2
      end
    end
  end
  return L4_2
end
L6_1.setUpvalue = L61_1
function L61_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L4_2 = tonumber
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2 - 2
    if L5_2 then
      goto lbl_10
    end
  end
  L5_2 = 0
  ::lbl_10::
  L6_2 = L6_1.getVariable
  L7_2 = nil
  L8_2 = true
  L9_2 = L5_2
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = false
  L9_2 = ipairs
  L10_2 = L6_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L13_2.name
    if L14_2 == A0_2 then
      L14_2 = #A2_2
      if 0 < L14_2 then
        L14_2 = type
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        if L14_2 == "table" then
          L14_2 = L6_1.findTableVar
          L15_2 = A2_2
          L16_2 = L13_2.variablesReference
          L16_2 = L34_1[L16_2]
          L14_2 = L14_2(L15_2, L16_2)
          if L14_2 ~= nil then
            L15_2 = debug
            L15_2 = L15_2.setlocal
            L16_2 = L7_2
            L17_2 = L6_2[L12_2]
            L17_2 = L17_2.index
            L18_2 = A1_2
            L15_2 = L15_2(L16_2, L17_2, L18_2)
            if L15_2 == A0_2 then
              L16_2 = L6_1.printToConsole
              L17_2 = "[setVariable success1] \229\183\178\232\174\190\231\189\174 local "
              L18_2 = A0_2
              L19_2 = " = "
              L20_2 = tostring
              L21_2 = A1_2
              L20_2 = L20_2(L21_2)
              L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2
              L16_2(L17_2)
              L8_2 = true
            else
              L16_2 = L6_1.printToConsole
              L17_2 = "[setVariable error1] \230\156\170\232\131\189\232\174\190\231\189\174 local "
              L18_2 = A0_2
              L19_2 = " = "
              L20_2 = tostring
              L21_2 = A1_2
              L20_2 = L20_2(L21_2)
              L21_2 = " , \232\191\148\229\155\158\231\187\147\230\158\156: "
              L22_2 = tostring
              L23_2 = L15_2
              L22_2 = L22_2(L23_2)
              L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2 .. L22_2
              L16_2(L17_2)
            end
            return L8_2
          end
      end
      else
        L14_2 = debug
        L14_2 = L14_2.setlocal
        L15_2 = L7_2
        L16_2 = L6_2[L12_2]
        L16_2 = L16_2.index
        L17_2 = A1_2
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        if L14_2 == A0_2 then
          L15_2 = L6_1.printToConsole
          L16_2 = "[setVariable success] \229\183\178\232\174\190\231\189\174 local "
          L17_2 = A0_2
          L18_2 = " = "
          L19_2 = tostring
          L20_2 = A1_2
          L19_2 = L19_2(L20_2)
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
          L15_2(L16_2)
          L8_2 = true
        else
          L15_2 = L6_1.printToConsole
          L16_2 = "[setVariable error] \230\156\170\232\131\189\232\174\190\231\189\174 local "
          L17_2 = A0_2
          L18_2 = " = "
          L19_2 = tostring
          L20_2 = A1_2
          L19_2 = L19_2(L20_2)
          L20_2 = " , \232\191\148\229\155\158\231\187\147\230\158\156: "
          L21_2 = tostring
          L22_2 = L14_2
          L21_2 = L21_2(L22_2)
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
          L15_2(L16_2)
        end
        return L8_2
      end
    end
  end
  return L8_2
end
L6_1.setLocal = L61_1
function L61_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = L6_1.printToConsole
  L5_2 = "setVariableValue | varName:"
  L6_2 = tostring
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = " stackId:"
  L8_2 = tostring
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L9_2 = " newValue:"
  L10_2 = tostring
  L11_2 = A2_2
  L10_2 = L10_2(L11_2)
  L11_2 = " limit:"
  L12_2 = tostring
  L13_2 = A3_2
  L12_2 = L12_2(L13_2)
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
  L4_2(L5_2)
  L4_2 = tostring
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L4_2 = tostring
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "" then
      goto lbl_40
    end
  end
  L4_2 = L6_1.printToConsole
  L5_2 = "[setVariable Error] \232\162\171\232\181\139\229\128\188\231\154\132\229\143\152\233\135\143\229\144\141\228\184\186\231\169\186"
  L6_2 = 2
  L4_2(L5_2, L6_2)
  L4_2 = L6_1.printToVSCode
  L5_2 = "[setVariable Error] \232\162\171\232\181\139\229\128\188\231\154\132\229\143\152\233\135\143\229\144\141\228\184\186\231\169\186"
  L6_2 = 2
  L4_2(L5_2, L6_2)
  L4_2 = false
  do return L4_2 end
  ::lbl_40::
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2.match
  L7_2 = "%."
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = L6_1.stringSplit
    L6_2 = A0_2
    L7_2 = "%."
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 == "table" then
      L5_2 = #L4_2
      if not (L5_2 < 1) then
        goto lbl_61
      end
    end
    L5_2 = false
    do return L5_2 end
    ::lbl_61::
    A0_2 = L4_2[1]
  end
  if A3_2 == "local" then
    L5_2 = L6_1.setLocal
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = L4_2
    L9_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    return L5_2
  elseif A3_2 == "upvalue" then
    L5_2 = L6_1.setUpvalue
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = A1_2
    L9_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    return L5_2
  elseif A3_2 == "global" then
    L5_2 = L6_1.setGlobal
    L6_2 = A0_2
    L7_2 = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    return L5_2
  else
    L5_2 = L6_1.setLocal
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = L4_2
    L9_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    if not L5_2 then
      L5_2 = L6_1.setUpvalue
      L6_2 = A0_2
      L7_2 = A2_2
      L8_2 = A1_2
      L9_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if not L5_2 then
        L5_2 = L6_1.setGlobal
        L6_2 = A0_2
        L7_2 = A2_2
        L5_2 = L5_2(L6_2, L7_2)
      end
    end
    L6_2 = L6_1.printToConsole
    L7_2 = "set Value res :"
    L8_2 = tostring
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 .. L8_2
    L6_2(L7_2)
    return L5_2
  end
end
L6_1.setVariableValue = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L3_2 = L6_1.printToConsole
  L4_2 = "getWatchedVariable | varName:"
  L5_2 = tostring
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = " stackId:"
  L7_2 = tostring
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = " isFormatVariable:"
  L9_2 = tostring
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  L3_2 = tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L3_2 = tostring
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 ~= "" then
      goto lbl_28
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_28::
  L3_2 = type
  L4_2 = A1_2 - 1
  L4_2 = L22_1[L4_2]
  L3_2 = L3_2(L4_2)
  if L3_2 == "table" then
    L3_2 = type
    L4_2 = A1_2 - 1
    L4_2 = L22_1[L4_2]
    L4_2 = L4_2.func
    L3_2 = L3_2(L4_2)
    if L3_2 == "function" then
      goto lbl_55
    end
  end
  L3_2 = "getWatchedVariable currentCallStack "
  L4_2 = A1_2 - 1
  L5_2 = " Error\n"
  L6_2 = L6_1.serializeTable
  L7_2 = L22_1
  L8_2 = "currentCallStack"
  L6_2 = L6_2(L7_2, L8_2)
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L4_2 = L6_1.printToVSCode
  L5_2 = L3_2
  L6_2 = 2
  L4_2(L5_2, L6_2)
  L4_2 = nil
  do return L4_2 end
  ::lbl_55::
  L3_2 = A0_2
  L4_2 = {}
  L6_2 = A0_2
  L5_2 = A0_2.match
  L7_2 = "%."
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = L6_1.stringSplit
    L6_2 = A0_2
    L7_2 = "%."
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
    L5_2 = type
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 == "table" then
      L5_2 = #L4_2
      if not (L5_2 < 1) then
        goto lbl_77
      end
    end
    L5_2 = nil
    do return L5_2 end
    ::lbl_77::
    A0_2 = L4_2[1]
  end
  L5_2 = {}
  L6_2 = L6_1.getSpecificFunctionStackLevel
  L7_2 = A1_2 - 1
  L7_2 = L22_1[L7_2]
  L7_2 = L7_2.func
  L6_2 = L6_2(L7_2)
  L7_2 = L6_1.getVariable
  L8_2 = L6_2
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L6_1.getUpValueVariable
  L9_2 = A1_2 - 1
  L9_2 = L22_1[L9_2]
  L9_2 = L9_2.func
  L10_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = {}
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L9_2
  L12_2 = L7_2
  L10_2(L11_2, L12_2)
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L9_2
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L10_2 = ipairs
  L11_2 = L9_2
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = ipairs
    L16_2 = L14_2
    L15_2, L16_2, L17_2 = L15_2(L16_2)
    for L18_2, L19_2 in L15_2, L16_2, L17_2 do
      L20_2 = L19_2.name
      if L20_2 == A0_2 then
        L20_2 = #L4_2
        if 0 < L20_2 then
          L20_2 = type
          L21_2 = L19_2
          L20_2 = L20_2(L21_2)
          if L20_2 == "table" then
            L20_2 = L6_1.findTableVar
            L21_2 = L4_2
            L22_2 = L19_2.variablesReference
            L22_2 = L34_1[L22_2]
            L20_2 = L20_2(L21_2, L22_2)
            if L20_2 ~= nil then
              if A2_2 then
                L21_2 = L6_1.createWatchedVariableInfo
                L22_2 = L3_2
                L23_2 = L20_2
                L21_2 = L21_2(L22_2, L23_2)
                L22_2 = table
                L22_2 = L22_2.insert
                L23_2 = L5_2
                L24_2 = L21_2
                L22_2(L23_2, L24_2)
                return L5_2
              else
                L21_2 = L20_2.value
                return L21_2
              end
            end
        end
        elseif A2_2 then
          L20_2 = table
          L20_2 = L20_2.insert
          L21_2 = L5_2
          L22_2 = L19_2
          L20_2(L21_2, L22_2)
          return L5_2
        else
          L20_2 = L19_2.value
          return L20_2
        end
      end
    end
  end
  L10_2 = _G
  L10_2 = L10_2[A0_2]
  if L10_2 ~= nil then
    L10_2 = #L4_2
    if 0 < L10_2 then
      L10_2 = type
      L11_2 = _G
      L11_2 = L11_2[A0_2]
      L10_2 = L10_2(L11_2)
      if L10_2 == "table" then
        L10_2 = L6_1.findTableVar
        L11_2 = L4_2
        L12_2 = _G
        L12_2 = L12_2[A0_2]
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 ~= nil then
          if A2_2 then
            L11_2 = L6_1.createWatchedVariableInfo
            L12_2 = L3_2
            L13_2 = L10_2
            L11_2 = L11_2(L12_2, L13_2)
            L12_2 = table
            L12_2 = L12_2.insert
            L13_2 = L5_2
            L14_2 = L11_2
            L12_2(L13_2, L14_2)
            return L5_2
          else
            return L10_2
          end
        end
    end
    elseif A2_2 then
      L10_2 = L6_1.createWatchedVariableInfo
      L11_2 = A0_2
      L12_2 = _G
      L12_2 = L12_2[A0_2]
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L5_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
      return L5_2
    else
      L10_2 = _G
      L10_2 = L10_2[A0_2]
      return L10_2
    end
  end
  L10_2 = L6_1.printToConsole
  L11_2 = "getWatchedVariable not find variable"
  L10_2(L11_2)
  L10_2 = nil
  return L10_2
end
L6_1.getWatchedVariable = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = tostring
  L4_2 = type
  L5_2 = L34_1[L1_2]
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L3_2 == "table" then
    L3_2 = pairs
    L4_2 = L34_1[L1_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = {}
      L9_2 = type
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      if L9_2 == "string" then
        L9_2 = "\""
        L10_2 = tostring
        L11_2 = L6_2
        L10_2 = L10_2(L11_2)
        L11_2 = "\""
        L9_2 = L9_2 .. L10_2 .. L11_2
        L8_2.name = L9_2
      else
        L9_2 = tostring
        L10_2 = L6_2
        L9_2 = L9_2(L10_2)
        L8_2.name = L9_2
      end
      L9_2 = tostring
      L10_2 = type
      L11_2 = L7_2
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L8_2.type = L9_2
      L9_2 = xpcall
      function L10_2()
        local L0_3, L1_3
        L0_3 = tostring
        L1_3 = L7_2
        L0_3 = L0_3(L1_3)
        L8_2.value = L0_3
      end
      function L11_2()
        local L0_3, L1_3, L2_3
        L0_3 = tostring
        L1_3 = type
        L2_3 = L7_2
        L1_3, L2_3 = L1_3(L2_3)
        L0_3 = L0_3(L1_3, L2_3)
        L1_3 = " [value can't trans to string]"
        L0_3 = L0_3 .. L1_3
        L8_2.value = L0_3
      end
      L9_2(L10_2, L11_2)
      L8_2.variablesReference = "0"
      L9_2 = L8_2.type
      if L9_2 ~= "table" then
        L9_2 = L8_2.type
        if L9_2 ~= "function" then
          L9_2 = L8_2.type
          if L9_2 ~= "userdata" then
            goto lbl_76
          end
        end
      end
      L9_2 = L33_1
      L8_2.variablesReference = L9_2
      L9_2 = L33_1
      L34_1[L9_2] = L7_2
      L9_2 = L33_1
      L9_2 = L9_2 + 1
      L33_1 = L9_2
      L9_2 = L8_2.type
      if L9_2 == "table" then
        L9_2 = L6_1.getTableMemberNum
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2
        L11_2 = " Members "
        L12_2 = L8_2.value
        if not L12_2 then
          L12_2 = ""
        end
        L10_2 = L10_2 .. L11_2 .. L12_2
        L8_2.value = L10_2
        goto lbl_84
        ::lbl_76::
        L9_2 = L8_2.type
        if L9_2 == "string" then
          L9_2 = "\""
          L10_2 = L7_2
          L11_2 = "\""
          L9_2 = L9_2 .. L10_2 .. L11_2
          L8_2.value = L9_2
        end
      end
      ::lbl_84::
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
    L3_2 = getmetatable
    L4_2 = L34_1[L1_2]
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = type
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 == "table" then
        L4_2 = {}
        L4_2.name = "_Metatable_"
        L5_2 = tostring
        L6_2 = type
        L7_2 = L3_2
        L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L4_2.type = L5_2
        L5_2 = xpcall
        function L6_2()
          local L0_3, L1_3, L2_3
          L0_3 = "\229\133\131\232\161\168 "
          L1_3 = tostring
          L2_3 = L3_2
          L1_3 = L1_3(L2_3)
          L0_3 = L0_3 .. L1_3
          L4_2.value = L0_3
        end
        function L7_2()
          local L0_3, L1_3
          L4_2.value = "\229\133\131\232\161\168 [value can't trans to string]"
        end
        L5_2(L6_2, L7_2)
        L5_2 = L33_1
        L4_2.variablesReference = L5_2
        L5_2 = L33_1
        L34_1[L5_2] = L3_2
        L5_2 = L33_1
        L5_2 = L5_2 + 1
        L33_1 = L5_2
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = L2_2
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
      end
    end
  else
    L3_2 = tostring
    L4_2 = type
    L5_2 = L34_1[L1_2]
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    if L3_2 == "function" then
      L3_2 = L6_1.getUpValueVariable
      L4_2 = L34_1[L1_2]
      L5_2 = true
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    else
      L3_2 = tostring
      L4_2 = type
      L5_2 = L34_1[L1_2]
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      if L3_2 == "userdata" then
        L3_2 = getmetatable
        L4_2 = L34_1[L1_2]
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L4_2 = type
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          if L4_2 == "table" then
            L4_2 = {}
            L4_2.name = "_Metatable_"
            L5_2 = tostring
            L6_2 = type
            L7_2 = L3_2
            L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
            L4_2.type = L5_2
            L5_2 = xpcall
            function L6_2()
              local L0_3, L1_3, L2_3
              L0_3 = "\229\133\131\232\161\168 "
              L1_3 = tostring
              L2_3 = L3_2
              L1_3 = L1_3(L2_3)
              L0_3 = L0_3 .. L1_3
              L4_2.value = L0_3
            end
            function L7_2()
              local L0_3, L1_3
              L4_2.value = "\229\133\131\232\161\168 [value can't trans to string]"
            end
            L5_2(L6_2, L7_2)
            L5_2 = L33_1
            L4_2.variablesReference = L5_2
            L5_2 = L33_1
            L34_1[L5_2] = L3_2
            L5_2 = L33_1
            L5_2 = L5_2 + 1
            L33_1 = L5_2
            L5_2 = table
            L5_2 = L5_2.insert
            L6_2 = L2_2
            L7_2 = L4_2
            L5_2(L6_2, L7_2)
            L5_2 = L3_2.__pairs
            if L5_2 ~= nil then
              L5_2 = type
              L6_2 = L3_2.__pairs
              L5_2 = L5_2(L6_2)
              if L5_2 == "function" then
                L5_2 = pairs
                L6_2 = L34_1[L1_2]
                L5_2, L6_2, L7_2 = L5_2(L6_2)
                for L8_2, L9_2 in L5_2, L6_2, L7_2 do
                  L10_2 = {}
                  L11_2 = tostring
                  L12_2 = L8_2
                  L11_2 = L11_2(L12_2)
                  L10_2.name = L11_2
                  L11_2 = tostring
                  L12_2 = type
                  L13_2 = L9_2
                  L12_2, L13_2, L14_2 = L12_2(L13_2)
                  L11_2 = L11_2(L12_2, L13_2, L14_2)
                  L10_2.type = L11_2
                  L11_2 = xpcall
                  function L12_2()
                    local L0_3, L1_3
                    L0_3 = tostring
                    L1_3 = L9_2
                    L0_3 = L0_3(L1_3)
                    L10_2.value = L0_3
                  end
                  function L13_2()
                    local L0_3, L1_3, L2_3
                    L0_3 = tostring
                    L1_3 = type
                    L2_3 = L9_2
                    L1_3, L2_3 = L1_3(L2_3)
                    L0_3 = L0_3(L1_3, L2_3)
                    L1_3 = " [value can't trans to string]"
                    L0_3 = L0_3 .. L1_3
                    L10_2.value = L0_3
                  end
                  L11_2(L12_2, L13_2)
                  L10_2.variablesReference = "0"
                  L11_2 = L10_2.type
                  if L11_2 ~= "table" then
                    L11_2 = L10_2.type
                    if L11_2 ~= "function" then
                      L11_2 = L10_2.type
                      if L11_2 ~= "userdata" then
                        goto lbl_243
                      end
                    end
                  end
                  L11_2 = L33_1
                  L10_2.variablesReference = L11_2
                  L11_2 = L33_1
                  L34_1[L11_2] = L9_2
                  L11_2 = L33_1
                  L11_2 = L11_2 + 1
                  L33_1 = L11_2
                  L11_2 = L10_2.type
                  if L11_2 == "table" then
                    L11_2 = L6_1.getTableMemberNum
                    L12_2 = L9_2
                    L11_2 = L11_2(L12_2)
                    L12_2 = L11_2
                    L13_2 = " Members "
                    L14_2 = L10_2.value
                    if not L14_2 then
                      L14_2 = ""
                    end
                    L12_2 = L12_2 .. L13_2 .. L14_2
                    L10_2.value = L12_2
                    goto lbl_251
                    ::lbl_243::
                    L11_2 = L10_2.type
                    if L11_2 == "string" then
                      L11_2 = "\""
                      L12_2 = L9_2
                      L13_2 = "\""
                      L11_2 = L11_2 .. L12_2 .. L13_2
                      L10_2.value = L11_2
                    end
                  end
                  ::lbl_251::
                  L11_2 = table
                  L11_2 = L11_2.insert
                  L12_2 = L2_2
                  L13_2 = L10_2
                  L11_2(L12_2, L13_2)
                end
              end
            end
          end
        end
      end
    end
  end
  return L2_2
end
L6_1.getVariableRef = L61_1
function L61_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = _G
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2.name = L7_2
    L7_2 = tostring
    L8_2 = type
    L9_2 = L5_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.type = L7_2
    L7_2 = xpcall
    function L8_2()
      local L0_3, L1_3
      L0_3 = tostring
      L1_3 = L5_2
      L0_3 = L0_3(L1_3)
      L6_2.value = L0_3
    end
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = tostring
      L1_3 = type
      L2_3 = L5_2
      L1_3, L2_3 = L1_3(L2_3)
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = " [value can't trans to string]"
      L0_3 = L0_3 .. L1_3
      L6_2.value = L0_3
    end
    L7_2(L8_2, L9_2)
    L6_2.variablesReference = "0"
    L7_2 = L6_2.type
    if L7_2 ~= "table" then
      L7_2 = L6_2.type
      if L7_2 ~= "function" then
        L7_2 = L6_2.type
        if L7_2 ~= "userdata" then
          goto lbl_53
        end
      end
    end
    L7_2 = L33_1
    L6_2.variablesReference = L7_2
    L7_2 = L33_1
    L34_1[L7_2] = L5_2
    L7_2 = L33_1
    L7_2 = L7_2 + 1
    L33_1 = L7_2
    L7_2 = L6_2.type
    if L7_2 == "table" then
      L7_2 = L6_1.getTableMemberNum
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L9_2 = " Members "
      L10_2 = L6_2.value
      if not L10_2 then
        L10_2 = ""
      end
      L8_2 = L8_2 .. L9_2 .. L10_2
      L6_2.value = L8_2
      goto lbl_61
      ::lbl_53::
      L7_2 = L6_2.type
      if L7_2 == "string" then
        L7_2 = "\""
        L8_2 = L5_2
        L9_2 = "\""
        L7_2 = L7_2 .. L8_2 .. L9_2
        L6_2.value = L7_2
      end
    end
    ::lbl_61::
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
L6_1.getGlobalVariable = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = true
  if A1_2 == true then
    L2_2 = false
  end
  if not A0_2 then
    A0_2 = L21_1.func
  end
  L3_2 = {}
  if A0_2 == nil then
    return L3_2
  end
  L4_2 = 1
  repeat
    L5_2 = debug
    L5_2 = L5_2.getupvalue
    L6_2 = A0_2
    L7_2 = L4_2
    L5_2, L6_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L7_2 = {}
      L7_2.name = L5_2
      L8_2 = tostring
      L9_2 = type
      L10_2 = L6_2
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.type = L8_2
      L7_2.variablesReference = "0"
      if L2_2 == false then
        L8_2 = xpcall
        function L9_2()
          local L0_3, L1_3
          L0_3 = tostring
          L1_3 = L6_2
          L0_3 = L0_3(L1_3)
          L7_2.value = L0_3
        end
        function L10_2()
          local L0_3, L1_3, L2_3
          L0_3 = tostring
          L1_3 = type
          L2_3 = L6_2
          L1_3, L2_3 = L1_3(L2_3)
          L0_3 = L0_3(L1_3, L2_3)
          L1_3 = " [value can't trans to string]"
          L0_3 = L0_3 .. L1_3
          L7_2.value = L0_3
        end
        L8_2(L9_2, L10_2)
        L8_2 = L7_2.type
        if L8_2 ~= "table" then
          L8_2 = L7_2.type
          if L8_2 ~= "function" then
            L8_2 = L7_2.type
            if L8_2 ~= "userdata" then
              goto lbl_66
            end
          end
        end
        L8_2 = L33_1
        L7_2.variablesReference = L8_2
        L8_2 = L33_1
        L34_1[L8_2] = L6_2
        L8_2 = L33_1
        L8_2 = L8_2 + 1
        L33_1 = L8_2
        L8_2 = L7_2.type
        if L8_2 == "table" then
          L8_2 = L6_1.getTableMemberNum
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          L9_2 = L8_2
          L10_2 = " Members "
          L11_2 = L7_2.value
          if not L11_2 then
            L11_2 = ""
          end
          L9_2 = L9_2 .. L10_2 .. L11_2
          L7_2.value = L9_2
          goto lbl_76
          ::lbl_66::
          L8_2 = L7_2.type
          if L8_2 == "string" then
            L8_2 = "\""
            L9_2 = L6_2
            L10_2 = "\""
            L8_2 = L8_2 .. L9_2 .. L10_2
            L7_2.value = L8_2
          end
        end
      else
        L7_2.value = L6_2
      end
      ::lbl_76::
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L3_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L4_2 = L4_2 + 1
    end
  until not L5_2
  return L3_2
end
L6_1.getUpValueVariable = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = true
  if A1_2 == true then
    L3_2 = false
  end
  L4_2 = 0
  if A0_2 ~= nil then
    L5_2 = type
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    if L5_2 == "number" then
      L4_2 = A0_2 + 1
  end
  else
    L5_2 = L6_1.getSpecificFunctionStackLevel
    L6_2 = L21_1.func
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  if L4_2 == 0 then
    L5_2 = L6_1.printToVSCode
    L6_2 = "[error]\232\142\183\229\143\150\229\177\130\230\172\161\229\164\177\232\180\165\239\188\129"
    L7_2 = 2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = {}
  L6_2 = L4_2
  L7_2 = 1
  L8_2 = type
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  if L8_2 == "number" then
    L6_2 = L6_2 + A2_2
  end
  repeat
    L8_2 = debug
    L8_2 = L8_2.getlocal
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    if L8_2 == nil then
      goto lbl_122
    end
    L10_2 = tostring
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if "(*temporary)" ~= L10_2 then
      L10_2 = {}
      L10_2.name = L8_2
      L11_2 = tostring
      L12_2 = type
      L13_2 = L9_2
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L10_2.type = L11_2
      L10_2.variablesReference = "0"
      L10_2.index = L7_2
      if L3_2 == false then
        L11_2 = xpcall
        function L12_2()
          local L0_3, L1_3
          L0_3 = tostring
          L1_3 = L9_2
          L0_3 = L0_3(L1_3)
          L10_2.value = L0_3
        end
        function L13_2()
          local L0_3, L1_3, L2_3
          L0_3 = tostring
          L1_3 = type
          L2_3 = L9_2
          L1_3, L2_3 = L1_3(L2_3)
          L0_3 = L0_3(L1_3, L2_3)
          L1_3 = " [value can't trans to string]"
          L0_3 = L0_3 .. L1_3
          L10_2.value = L0_3
        end
        L11_2(L12_2, L13_2)
        L11_2 = L10_2.type
        if L11_2 ~= "table" then
          L11_2 = L10_2.type
          if L11_2 ~= "function" then
            L11_2 = L10_2.type
            if L11_2 ~= "userdata" then
              goto lbl_94
            end
          end
        end
        L11_2 = L33_1
        L10_2.variablesReference = L11_2
        L11_2 = L33_1
        L34_1[L11_2] = L9_2
        L11_2 = L33_1
        L11_2 = L11_2 + 1
        L33_1 = L11_2
        L11_2 = L10_2.type
        if L11_2 == "table" then
          L11_2 = L6_1.getTableMemberNum
          L12_2 = L9_2
          L11_2 = L11_2(L12_2)
          L12_2 = L11_2
          L13_2 = " Members "
          L14_2 = L10_2.value
          if not L14_2 then
            L14_2 = ""
          end
          L12_2 = L12_2 .. L13_2 .. L14_2
          L10_2.value = L12_2
          goto lbl_104
          ::lbl_94::
          L11_2 = L10_2.type
          if L11_2 == "string" then
            L11_2 = "\""
            L12_2 = L9_2
            L13_2 = "\""
            L11_2 = L11_2 .. L12_2 .. L13_2
            L10_2.value = L11_2
          end
        end
      else
        L10_2.value = L9_2
      end
      ::lbl_104::
      L11_2 = L6_1.checkSameNameVar
      L12_2 = L5_2
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 ~= 0 then
        L5_2[L11_2] = L10_2
      else
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L5_2
        L14_2 = L10_2
        L12_2(L13_2, L14_2)
      end
    end
    L7_2 = L7_2 + 1
  until L8_2 == nil
  ::lbl_122::
  L8_2 = L5_2
  L9_2 = L6_2 - 1
  return L8_2, L9_2
end
L6_1.getVariable = L61_1
function L61_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    L8_2 = A1_2.name
    if L7_2 == L8_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L6_1.checkSameNameVar = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = nil
  L2_2 = {}
  L2_2.isSuccess = "true"
  if A0_2 ~= nil then
    L3_2 = L6_1.trim
    L4_2 = tostring
    L5_2 = A0_2.Expression
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = false
    if L4_2 == false then
      L6_2 = L3_2
      L5_2 = L3_2.find
      L7_2 = "p "
      L8_2 = 1
      L9_2 = true
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      if L5_2 == 1 then
        L6_2 = L3_2
        L5_2 = L3_2.sub
        L7_2 = 3
        L5_2 = L5_2(L6_2, L7_2)
        L3_2 = L5_2
      end
      L5_2 = "return "
      L6_2 = L3_2
      L5_2 = L5_2 .. L6_2
      L6_2 = L53_1
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = L53_1
        L7_2 = L3_2
        L6_2 = L6_2(L7_2)
      end
      L7_2 = type
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 == "function" then
        L7_2 = _VERSION
        if L7_2 == "Lua 5.1" then
          L7_2 = setfenv
          L8_2 = L6_2
          L9_2 = L60_1
          L7_2(L8_2, L9_2)
        else
          L7_2 = debug
          L7_2 = L7_2.setupvalue
          L8_2 = L6_2
          L9_2 = 1
          L10_2 = L60_1
          L7_2(L8_2, L9_2, L10_2)
        end
        L7_2 = xpcall
        function L8_2()
          local L0_3, L1_3
          L0_3 = L6_2
          L0_3 = L0_3()
          L1_2 = L0_3
        end
        function L9_2()
          local L0_3, L1_3
          L0_3 = "\232\190\147\229\133\165\233\148\153\232\175\175\230\140\135\228\187\164\227\128\130\n + \232\175\183\230\163\128\230\159\165\230\140\135\228\187\164\230\152\175\229\144\166\230\173\163\231\161\174\n + \230\140\135\228\187\164\228\187\133\232\131\189\229\156\168[\230\154\130\229\129\156\229\156\168\230\150\173\231\130\185\230\151\182]\232\190\147\229\133\165, \232\175\183\228\184\141\232\166\129\229\156\168\231\168\139\229\186\143\230\140\129\231\187\173\232\191\144\232\161\140\230\151\182\232\190\147\229\133\165"
          L1_2 = L0_3
          L2_2.isSuccess = false
        end
        L7_2(L8_2, L9_2)
      else
        L1_2 = "\230\140\135\228\187\164\230\137\167\232\161\140\233\148\153\232\175\175\227\128\130\n + \232\175\183\230\163\128\230\159\165\230\140\135\228\187\164\230\152\175\229\144\166\230\173\163\231\161\174\n + \229\143\175\228\187\165\231\155\180\230\142\165\232\190\147\229\133\165\232\161\168\232\190\190\229\188\143\239\188\140\230\137\167\232\161\140\229\135\189\230\149\176\230\136\150\229\143\152\233\135\143\229\144\141\239\188\140\229\185\182\232\167\130\229\175\159\230\137\167\232\161\140\231\187\147\230\158\156"
        L2_2.isSuccess = false
      end
    end
  end
  L2_2.name = "Exp"
  L3_2 = tostring
  L4_2 = type
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2.type = L3_2
  L3_2 = xpcall
  function L4_2()
    local L0_3, L1_3
    L0_3 = tostring
    L1_3 = L1_2
    L0_3 = L0_3(L1_3)
    L2_2.value = L0_3
  end
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = tostring
    L2_3 = type
    L3_3 = L1_2
    L2_3, L3_3 = L2_3(L3_3)
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = " [value can't trans to string] "
    L3_3 = A0_3
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_2.value = L1_3
    L2_2.isSuccess = false
  end
  L3_2(L4_2, L5_2)
  L2_2.variablesReference = "0"
  L3_2 = L2_2.type
  if L3_2 ~= "table" then
    L3_2 = L2_2.type
    if L3_2 ~= "function" then
      L3_2 = L2_2.type
      if L3_2 ~= "userdata" then
        goto lbl_103
      end
    end
  end
  L3_2 = L33_1
  L34_1[L3_2] = L1_2
  L3_2 = L33_1
  L2_2.variablesReference = L3_2
  L3_2 = L33_1
  L3_2 = L3_2 + 1
  L33_1 = L3_2
  L3_2 = L2_2.type
  if L3_2 == "table" then
    L3_2 = L6_1.getTableMemberNum
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L5_2 = " Members "
    L6_2 = L2_2.value
    L4_2 = L4_2 .. L5_2 .. L6_2
    L2_2.value = L4_2
    goto lbl_111
    ::lbl_103::
    L3_2 = L2_2.type
    if L3_2 == "string" then
      L3_2 = "\""
      L4_2 = L1_2
      L5_2 = "\""
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2.value = L3_2
    end
  end
  ::lbl_111::
  L3_2 = L6_1.clearEnv
  L3_2()
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  return L3_2
end
L6_1.processExp = L61_1
function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = "return "
  L3_2 = tostring
  L4_2 = A0_2.varName
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L3_2 = L6_1.printToConsole
  L4_2 = "processWatchedExp | expression: "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = L53_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L4_2.isSuccess = "true"
  L5_2 = type
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if L5_2 == "function" then
    L5_2 = _VERSION
    if L5_2 == "Lua 5.1" then
      L5_2 = setfenv
      L6_2 = L3_2
      L7_2 = L60_1
      L5_2(L6_2, L7_2)
    else
      L5_2 = debug
      L5_2 = L5_2.setupvalue
      L6_2 = L3_2
      L7_2 = 1
      L8_2 = L60_1
      L5_2(L6_2, L7_2, L8_2)
    end
    L5_2 = xpcall
    function L6_2()
      local L0_3, L1_3
      L0_3 = L3_2
      L0_3 = L0_3()
      L1_2 = L0_3
    end
    function L7_2()
      local L0_3, L1_3
      L0_3 = "\232\190\147\229\133\165\228\186\134\233\148\153\232\175\175\231\154\132\229\143\152\233\135\143\228\191\161\230\129\175"
      L1_2 = L0_3
      L4_2.isSuccess = "false"
    end
    L5_2(L6_2, L7_2)
  else
    L1_2 = "\230\156\170\232\131\189\230\137\190\229\136\176\229\143\152\233\135\143\231\154\132\229\128\188"
    L4_2.isSuccess = "false"
  end
  L5_2 = A0_2.varName
  L4_2.name = L5_2
  L5_2 = tostring
  L6_2 = type
  L7_2 = L1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.type = L5_2
  L5_2 = xpcall
  function L6_2()
    local L0_3, L1_3
    L0_3 = tostring
    L1_3 = L1_2
    L0_3 = L0_3(L1_3)
    L4_2.value = L0_3
  end
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = tostring
    L1_3 = type
    L2_3 = L1_2
    L1_3, L2_3 = L1_3(L2_3)
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = " [value can't trans to string]"
    L0_3 = L0_3 .. L1_3
    L4_2.value = L0_3
    L4_2.isSuccess = "false"
  end
  L5_2(L6_2, L7_2)
  L4_2.variablesReference = "0"
  L5_2 = L4_2.type
  if L5_2 ~= "table" then
    L5_2 = L4_2.type
    if L5_2 ~= "function" then
      L5_2 = L4_2.type
      if L5_2 ~= "userdata" then
        goto lbl_84
      end
    end
  end
  L5_2 = L33_1
  L34_1[L5_2] = L1_2
  L5_2 = L33_1
  L4_2.variablesReference = L5_2
  L5_2 = L33_1
  L5_2 = L5_2 + 1
  L33_1 = L5_2
  L5_2 = L4_2.type
  if L5_2 == "table" then
    L5_2 = L6_1.getTableMemberNum
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L7_2 = " Members "
    L8_2 = L4_2.value
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2.value = L6_2
    goto lbl_92
    ::lbl_84::
    L5_2 = L4_2.type
    if L5_2 == "string" then
      L5_2 = "\""
      L6_2 = L1_2
      L7_2 = "\""
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2.value = L5_2
    end
  end
  ::lbl_92::
  L5_2 = {}
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  return L5_2
end
L6_1.processWatchedExp = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = debug
  L0_2 = L0_2.getinfo
  L1_2 = 1
  L2_2 = "S"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L4_2 == "source" then
      return L5_2
    end
  end
end
L7_1.getFileSource = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L7_1.show
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = print
  L5_2 = L3_2
  L4_2(L5_2)
end
L7_1.printTable = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L7_1.show
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
L7_1.serializeTable = L61_1
function L61_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = nil
  L4_2 = nil
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = next
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3 == nil
    return L1_3
  end
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = tostring
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = type
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L2_3 == "function" then
      L2_3 = debug
      L2_3 = L2_3.getinfo
      L3_3 = A0_3
      L4_3 = "S"
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = L2_3.what
      if L3_3 == "C" then
        L3_3 = string
        L3_3 = L3_3.format
        L4_3 = "%q"
        L5_3 = L1_3
        L6_3 = ", C function"
        L5_3 = L5_3 .. L6_3
        return L3_3(L4_3, L5_3)
      else
        L3_3 = string
        L3_3 = L3_3.format
        L4_3 = "%q"
        L5_3 = L1_3
        L6_3 = ", defined in ("
        L7_3 = L2_3.linedefined
        L8_3 = "-"
        L9_3 = L2_3.lastlinedefined
        L10_3 = ")"
        L11_3 = L2_3.source
        L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3 .. L11_3
        return L3_3(L4_3, L5_3)
      end
    else
      L2_3 = type
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      if L2_3 ~= "number" then
        L2_3 = type
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        if L2_3 ~= "boolean" then
          goto lbl_52
        end
      end
      do return L1_3 end
      goto lbl_58
      ::lbl_52::
      L2_3 = string
      L2_3 = L2_3.format
      L3_3 = "%q"
      L4_3 = L1_3
      return L2_3(L3_3, L4_3)
    end
    ::lbl_58::
  end
  function L7_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    if not A2_3 then
      A2_3 = ""
    end
    if not A3_3 then
      L5_3 = {}
      A3_3 = L5_3
    end
    if not A4_3 then
      A4_3 = A1_3
    end
    L5_3 = L3_2
    L6_3 = A2_3
    L7_3 = A4_3
    L5_3 = L5_3 .. L6_3 .. L7_3
    L3_2 = L5_3
    L5_3 = type
    L6_3 = A0_3
    L5_3 = L5_3(L6_3)
    if L5_3 ~= "table" then
      L5_3 = L3_2
      L6_3 = " = "
      L7_3 = L6_2
      L8_3 = A0_3
      L7_3 = L7_3(L8_3)
      L8_3 = ";\n"
      L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
      L3_2 = L5_3
    else
      L5_3 = A3_3[A0_3]
      if L5_3 then
        L5_3 = L3_2
        L6_3 = " = {}; -- "
        L7_3 = A3_3[A0_3]
        L8_3 = " (self reference)\n"
        L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3
        L3_2 = L5_3
        L5_3 = L4_2
        L6_3 = A1_3
        L7_3 = " = "
        L8_3 = A3_3[A0_3]
        L9_3 = ";\n"
        L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
        L4_2 = L5_3
      else
        A3_3[A0_3] = A1_3
        L5_3 = L5_2
        L6_3 = A0_3
        L5_3 = L5_3(L6_3)
        if L5_3 then
          L5_3 = L3_2
          L6_3 = " = {};\n"
          L5_3 = L5_3 .. L6_3
          L3_2 = L5_3
        else
          L5_3 = L3_2
          L6_3 = " = {\n"
          L5_3 = L5_3 .. L6_3
          L3_2 = L5_3
          L5_3 = pairs
          L6_3 = A0_3
          L5_3, L6_3, L7_3 = L5_3(L6_3)
          for L8_3, L9_3 in L5_3, L6_3, L7_3 do
            L10_3 = L6_2
            L11_3 = L8_3
            L10_3 = L10_3(L11_3)
            L8_3 = L10_3
            L10_3 = string
            L10_3 = L10_3.format
            L11_3 = "%s[%s]"
            L12_3 = A1_3
            L13_3 = L8_3
            L10_3 = L10_3(L11_3, L12_3, L13_3)
            L11_3 = string
            L11_3 = L11_3.format
            L12_3 = "[%s]"
            L13_3 = L8_3
            L11_3 = L11_3(L12_3, L13_3)
            A4_3 = L11_3
            L11_3 = L7_2
            L12_3 = L9_3
            L13_3 = L10_3
            L14_3 = A2_3
            L15_3 = "   "
            L14_3 = L14_3 .. L15_3
            L15_3 = A3_3
            L16_3 = A4_3
            L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
          end
          L5_3 = L3_2
          L6_3 = A2_3
          L7_3 = "};\n"
          L5_3 = L5_3 .. L6_3 .. L7_3
          L3_2 = L5_3
        end
      end
    end
  end
  if not A1_2 then
    A1_2 = "PRINT_Table"
  end
  L8_2 = type
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if L8_2 ~= "table" then
    L8_2 = A1_2
    L9_2 = " = "
    L10_2 = L6_2
    L11_2 = A0_2
    L10_2 = L10_2(L11_2)
    L8_2 = L8_2 .. L9_2 .. L10_2
    return L8_2
  end
  L8_2 = ""
  L4_2 = ""
  L3_2 = L8_2
  L8_2 = L7_2
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L3_2
  L9_2 = L4_2
  L8_2 = L8_2 .. L9_2
  return L8_2
end
L7_1.show = L61_1
function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = require
  L1_2 = "math"
  L0_2 = L0_2(L1_2)
  L1_2 = require
  L2_2 = "string"
  L1_2 = L1_2(L2_2)
  L2_2 = require
  L3_2 = "table"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L3_2.EMPTY_ARRAY = L5_2
  L5_2 = {}
  L3_2.EMPTY_OBJECT = L5_2
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    if A0_3 == nil then
      L1_3 = "null"
      return L1_3
    end
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 == "string" then
      L2_3 = "\""
      L3_3 = L4_2.encodeString
      L4_3 = A0_3
      L3_3 = L3_3(L4_3)
      L4_3 = "\""
      L2_3 = L2_3 .. L3_3 .. L4_3
      return L2_3
    end
    if L1_3 == "number" or L1_3 == "boolean" then
      L2_3 = tostring
      L3_3 = A0_3
      return L2_3(L3_3)
    end
    if L1_3 == "table" then
      L2_3 = {}
      L3_3 = L13_2
      L4_3 = A0_3
      L3_3, L4_3 = L3_3(L4_3)
      if L3_3 then
        L5_3 = 1
        L6_3 = L4_3
        L7_3 = 1
        for L8_3 = L5_3, L6_3, L7_3 do
          L9_3 = L2_2.insert
          L10_3 = L2_3
          L11_3 = L3_2.encode
          L12_3 = A0_3[L8_3]
          L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L11_3(L12_3)
          L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
        end
      else
        L5_3 = pairs
        L6_3 = A0_3
        L5_3, L6_3, L7_3 = L5_3(L6_3)
        for L8_3, L9_3 in L5_3, L6_3, L7_3 do
          L10_3 = L14_2
          L11_3 = L8_3
          L10_3 = L10_3(L11_3)
          if L10_3 then
            L10_3 = L14_2
            L11_3 = L9_3
            L10_3 = L10_3(L11_3)
            if L10_3 then
              L10_3 = L2_2.insert
              L11_3 = L2_3
              L12_3 = "\""
              L13_3 = L4_2.encodeString
              L14_3 = L8_3
              L13_3 = L13_3(L14_3)
              L14_3 = "\":"
              L15_3 = L3_2.encode
              L16_3 = L9_3
              L15_3 = L15_3(L16_3)
              L12_3 = L12_3 .. L13_3 .. L14_3 .. L15_3
              L10_3(L11_3, L12_3)
            end
          end
        end
      end
      if L3_3 then
        L5_3 = "["
        L6_3 = L2_2.concat
        L7_3 = L2_3
        L8_3 = ","
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = "]"
        L5_3 = L5_3 .. L6_3 .. L7_3
        return L5_3
      else
        L5_3 = "{"
        L6_3 = L2_2.concat
        L7_3 = L2_3
        L8_3 = ","
        L6_3 = L6_3(L7_3, L8_3)
        L7_3 = "}"
        L5_3 = L5_3 .. L6_3 .. L7_3
        return L5_3
      end
    end
    if L1_3 == "function" then
      L2_3 = L3_2.null
      if A0_3 == L2_3 then
        L2_3 = "null"
        return L2_3
      end
    end
    L2_3 = assert
    L3_3 = false
    L4_3 = "encode attempt to encode unsupported type "
    L5_3 = L1_3
    L6_3 = ":"
    L7_3 = tostring
    L8_3 = A0_3
    L7_3 = L7_3(L8_3)
    L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
    L2_3(L3_3, L4_3)
  end
  L3_2.encode = L15_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A1_3 or not A1_3 then
      A1_3 = 1
    end
    L2_3 = L11_2
    L3_3 = A0_3
    L4_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3)
    A1_3 = L2_3
    L2_3 = assert
    L3_3 = L1_2.len
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L3_3 = A1_3 <= L3_3
    L4_3 = "Unterminated JSON encoded object found at position in ["
    L5_3 = A0_3
    L6_3 = "]"
    L4_3 = L4_3 .. L5_3 .. L6_3
    L2_3(L3_3, L4_3)
    L2_3 = L1_2.sub
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    if L2_3 == "{" then
      L3_3 = L9_2
      L4_3 = A0_3
      L5_3 = A1_3
      return L3_3(L4_3, L5_3)
    end
    if L2_3 == "[" then
      L3_3 = L5_2
      L4_3 = A0_3
      L5_3 = A1_3
      return L3_3(L4_3, L5_3)
    end
    L3_3 = L1_2.find
    L4_3 = "+-0123456789.e"
    L5_3 = L2_3
    L6_3 = 1
    L7_3 = true
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    if L3_3 then
      L3_3 = L8_2
      L4_3 = A0_3
      L5_3 = A1_3
      return L3_3(L4_3, L5_3)
    end
    if L2_3 == "\"" or L2_3 == "'" then
      L3_3 = L10_2
      L4_3 = A0_3
      L5_3 = A1_3
      return L3_3(L4_3, L5_3)
    end
    L3_3 = L1_2.sub
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A1_3 + 1
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    if L3_3 == "/*" then
      L3_3 = L3_2.decode
      L4_3 = A0_3
      L5_3 = L6_2
      L6_3 = A0_3
      L7_3 = A1_3
      L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
      return L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L3_3 = L7_2
    L4_3 = A0_3
    L5_3 = A1_3
    return L3_3(L4_3, L5_3)
  end
  L3_2.decode = L15_2
  function L15_2()
    local L0_3, L1_3
    L0_3 = L3_2.null
    return L0_3
  end
  L3_2.null = L15_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = {}
    L3_3 = L1_2.len
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L4_3 = assert
    L5_3 = L1_2.sub
    L6_3 = A0_3
    L7_3 = A1_3
    L8_3 = A1_3
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L5_3 = L5_3 == "["
    L6_3 = "decode_scanArray called but array does not start at position "
    L7_3 = A1_3
    L8_3 = " in string:\n"
    L9_3 = A0_3
    L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
    L4_3(L5_3, L6_3)
    A1_3 = A1_3 + 1
    L4_3 = 1
    repeat
      L5_3 = L11_2
      L6_3 = A0_3
      L7_3 = A1_3
      L5_3 = L5_3(L6_3, L7_3)
      A1_3 = L5_3
      L5_3 = assert
      L6_3 = L3_3 >= A1_3
      L7_3 = "JSON String ended unexpectedly scanning array."
      L5_3(L6_3, L7_3)
      L5_3 = L1_2.sub
      L6_3 = A0_3
      L7_3 = A1_3
      L8_3 = A1_3
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      if L5_3 == "]" then
        L6_3 = L2_3
        L7_3 = A1_3 + 1
        return L6_3, L7_3
      end
      if L5_3 == "," then
        L6_3 = L11_2
        L7_3 = A0_3
        L8_3 = A1_3 + 1
        L6_3 = L6_3(L7_3, L8_3)
        A1_3 = L6_3
      end
      L6_3 = assert
      L7_3 = L3_3 >= A1_3
      L8_3 = "JSON String ended unexpectedly scanning array."
      L6_3(L7_3, L8_3)
      L6_3 = nil
      L7_3 = L3_2.decode
      L8_3 = A0_3
      L9_3 = A1_3
      L7_3, L8_3 = L7_3(L8_3, L9_3)
      A1_3 = L8_3
      L6_3 = L7_3
      L2_3[L4_3] = L6_3
      L4_3 = L4_3 + 1
      L7_3 = false
    until L7_3
  end
  L5_2 = L15_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = assert
    L3_3 = L1_2.sub
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A1_3 + 1
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L3_3 = L3_3 == "/*"
    L4_3 = "decode_scanComment called but comment does not start at position "
    L5_3 = A1_3
    L4_3 = L4_3 .. L5_3
    L2_3(L3_3, L4_3)
    L2_3 = L1_2.find
    L3_3 = A0_3
    L4_3 = "*/"
    L5_3 = A1_3 + 2
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = assert
    L4_3 = L2_3 ~= nil
    L5_3 = "Unterminated comment in string at "
    L6_3 = A1_3
    L5_3 = L5_3 .. L6_3
    L3_3(L4_3, L5_3)
    L3_3 = L2_3 + 2
    return L3_3
  end
  L6_2 = L15_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L2_3 = {}
    L2_3["true"] = true
    L2_3["false"] = false
    L2_3.null = nil
    L3_3 = {}
    L4_3 = "true"
    L5_3 = "false"
    L6_3 = "null"
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L4_3 = pairs
    L5_3 = L3_3
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L9_3 = L1_2.sub
      L10_3 = A0_3
      L11_3 = A1_3
      L12_3 = L1_2.len
      L13_3 = L8_3
      L12_3 = L12_3(L13_3)
      L12_3 = A1_3 + L12_3
      L12_3 = L12_3 - 1
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      if L9_3 == L8_3 then
        L9_3 = L2_3[L8_3]
        L10_3 = L1_2.len
        L11_3 = L8_3
        L10_3 = L10_3(L11_3)
        L10_3 = A1_3 + L10_3
        return L9_3, L10_3
      end
    end
    L4_3 = assert
    L5_3 = nil
    L6_3 = "Failed to scan constant from string "
    L7_3 = A0_3
    L8_3 = " at starting position "
    L9_3 = A1_3
    L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3
    L4_3(L5_3, L6_3)
  end
  L7_2 = L15_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = A1_3 + 1
    L3_3 = L1_2.len
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L4_3 = "+-0123456789.e"
    while true do
      L5_3 = L1_2.find
      L6_3 = L4_3
      L7_3 = L1_2.sub
      L8_3 = A0_3
      L9_3 = L2_3
      L10_3 = L2_3
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      L8_3 = 1
      L9_3 = true
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      if not (L5_3 and L2_3 <= L3_3) then
        break
      end
      L2_3 = L2_3 + 1
    end
    L5_3 = L1_2.sub
    L6_3 = A0_3
    L7_3 = A1_3
    L8_3 = L2_3 - 1
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = L5_3
    L7_3 = L2_3
    return L6_3, L7_3
  end
  L8_2 = L15_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = {}
    L3_3 = L1_2.len
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L4_3 = nil
    L5_3 = nil
    L6_3 = assert
    L7_3 = L1_2.sub
    L8_3 = A0_3
    L9_3 = A1_3
    L10_3 = A1_3
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L7_3 = L7_3 == "{"
    L8_3 = "decode_scanObject called but object does not start at position "
    L9_3 = A1_3
    L10_3 = " in string:\n"
    L11_3 = A0_3
    L8_3 = L8_3 .. L9_3 .. L10_3 .. L11_3
    L6_3(L7_3, L8_3)
    A1_3 = A1_3 + 1
    repeat
      L6_3 = L11_2
      L7_3 = A0_3
      L8_3 = A1_3
      L6_3 = L6_3(L7_3, L8_3)
      A1_3 = L6_3
      L6_3 = assert
      L7_3 = L3_3 >= A1_3
      L8_3 = "JSON string ended unexpectedly while scanning object."
      L6_3(L7_3, L8_3)
      L6_3 = L1_2.sub
      L7_3 = A0_3
      L8_3 = A1_3
      L9_3 = A1_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if L6_3 == "}" then
        L7_3 = L2_3
        L8_3 = A1_3 + 1
        return L7_3, L8_3
      end
      if L6_3 == "," then
        L7_3 = L11_2
        L8_3 = A0_3
        L9_3 = A1_3 + 1
        L7_3 = L7_3(L8_3, L9_3)
        A1_3 = L7_3
      end
      L7_3 = assert
      L8_3 = L3_3 >= A1_3
      L9_3 = "JSON string ended unexpectedly scanning object."
      L7_3(L8_3, L9_3)
      L7_3 = L3_2.decode
      L8_3 = A0_3
      L9_3 = A1_3
      L7_3, L8_3 = L7_3(L8_3, L9_3)
      A1_3 = L8_3
      L4_3 = L7_3
      L7_3 = assert
      L8_3 = L3_3 >= A1_3
      L9_3 = "JSON string ended unexpectedly searching for value of key "
      L10_3 = L4_3
      L9_3 = L9_3 .. L10_3
      L7_3(L8_3, L9_3)
      L7_3 = L11_2
      L8_3 = A0_3
      L9_3 = A1_3
      L7_3 = L7_3(L8_3, L9_3)
      A1_3 = L7_3
      L7_3 = assert
      L8_3 = L3_3 >= A1_3
      L9_3 = "JSON string ended unexpectedly searching for value of key "
      L10_3 = L4_3
      L9_3 = L9_3 .. L10_3
      L7_3(L8_3, L9_3)
      L7_3 = assert
      L8_3 = L1_2.sub
      L9_3 = A0_3
      L10_3 = A1_3
      L11_3 = A1_3
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L8_3 = L8_3 == ":"
      L9_3 = "JSON object key-value assignment mal-formed at "
      L10_3 = A1_3
      L9_3 = L9_3 .. L10_3
      L7_3(L8_3, L9_3)
      L7_3 = L11_2
      L8_3 = A0_3
      L9_3 = A1_3 + 1
      L7_3 = L7_3(L8_3, L9_3)
      A1_3 = L7_3
      L7_3 = assert
      L8_3 = L3_3 >= A1_3
      L9_3 = "JSON string ended unexpectedly searching for value of key "
      L10_3 = L4_3
      L9_3 = L9_3 .. L10_3
      L7_3(L8_3, L9_3)
      L7_3 = L3_2.decode
      L8_3 = A0_3
      L9_3 = A1_3
      L7_3, L8_3 = L7_3(L8_3, L9_3)
      A1_3 = L8_3
      L5_3 = L7_3
      L2_3[L4_3] = L5_3
      L7_3 = false
    until L7_3
  end
  L9_2 = L15_2
  L15_2 = {}
  L15_2["\\t"] = "\t"
  L15_2["\\f"] = "\f"
  L15_2["\\r"] = "\r"
  L15_2["\\n"] = "\n"
  L15_2["\\b"] = "\b"
  L16_2 = setmetatable
  L17_2 = L15_2
  L18_2 = {}
  function L19_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L1_2.sub
    L3_3 = A1_3
    L4_3 = 2
    return L2_3(L3_3, L4_3)
  end
  L18_2.__index = L19_2
  L16_2(L17_2, L18_2)
  function L16_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3
    L2_3 = assert
    L3_3 = A1_3
    L4_3 = "decode_scanString(..) called without start position"
    L2_3(L3_3, L4_3)
    L2_3 = L1_2.sub
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = assert
    L4_3 = L2_3 == "\"" or L2_3 == "'"
    L5_3 = "decode_scanString called for a non-string"
    L3_3(L4_3, L5_3)
    L3_3 = {}
    L4_3 = A1_3
    L5_3 = A1_3
    while true do
      L6_3 = L1_2.find
      L7_3 = A0_3
      L8_3 = L2_3
      L9_3 = L5_3 + 1
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L7_3 = L5_3 + 1
      if L6_3 == L7_3 then
        break
      end
      L6_3 = L5_3
      L7_3 = L1_2.find
      L8_3 = A0_3
      L9_3 = "\\."
      L10_3 = L5_3 + 1
      L7_3, L8_3 = L7_3(L8_3, L9_3, L10_3)
      L5_3 = L8_3
      L4_3 = L7_3
      L7_3 = L1_2.find
      L8_3 = A0_3
      L9_3 = L2_3
      L10_3 = L6_3 + 1
      L7_3, L8_3 = L7_3(L8_3, L9_3, L10_3)
      if not L4_3 or L4_3 > L7_3 then
        L9_3 = L7_3
        L5_3 = L8_3 - 1
        L4_3 = L9_3
      end
      L9_3 = L2_2.insert
      L10_3 = L3_3
      L11_3 = L1_2.sub
      L12_3 = A0_3
      L13_3 = L6_3 + 1
      L14_3 = L4_3 - 1
      L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L11_3(L12_3, L13_3, L14_3)
      L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
      L9_3 = L1_2.sub
      L10_3 = A0_3
      L11_3 = L4_3
      L12_3 = L5_3
      L9_3 = L9_3(L10_3, L11_3, L12_3)
      if L9_3 == "\\u" then
        L9_3 = L1_2.sub
        L10_3 = A0_3
        L11_3 = L5_3 + 1
        L12_3 = L5_3 + 4
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L5_3 = L5_3 + 4
        L10_3 = tonumber
        L11_3 = L9_3
        L12_3 = 16
        L10_3 = L10_3(L11_3, L12_3)
        L11_3 = assert
        L12_3 = L10_3
        L13_3 = "String decoding failed: bad Unicode escape "
        L14_3 = L9_3
        L15_3 = " at position "
        L16_3 = L4_3
        L17_3 = " : "
        L18_3 = L5_3
        L13_3 = L13_3 .. L14_3 .. L15_3 .. L16_3 .. L17_3 .. L18_3
        L11_3(L12_3, L13_3)
        L11_3 = nil
        if L10_3 < 128 then
          L12_3 = L1_2.char
          L13_3 = L10_3 % 128
          L12_3 = L12_3(L13_3)
          L11_3 = L12_3
        elseif L10_3 < 2048 then
          L12_3 = L1_2.char
          L13_3 = L0_2.floor
          L14_3 = L10_3 / 64
          L13_3 = L13_3(L14_3)
          L13_3 = L13_3 % 32
          L13_3 = 192 + L13_3
          L14_3 = L10_3 % 64
          L14_3 = 128 + L14_3
          L12_3 = L12_3(L13_3, L14_3)
          L11_3 = L12_3
        else
          L12_3 = L1_2.char
          L13_3 = L0_2.floor
          L14_3 = L10_3 / 4096
          L13_3 = L13_3(L14_3)
          L13_3 = L13_3 % 16
          L13_3 = 224 + L13_3
          L14_3 = L0_2.floor
          L15_3 = L10_3 / 64
          L14_3 = L14_3(L15_3)
          L14_3 = L14_3 % 64
          L14_3 = 128 + L14_3
          L15_3 = L10_3 % 64
          L15_3 = 128 + L15_3
          L12_3 = L12_3(L13_3, L14_3, L15_3)
          L11_3 = L12_3
        end
        L12_3 = L2_2.insert
        L13_3 = L3_3
        L14_3 = L11_3
        L12_3(L13_3, L14_3)
      else
        L9_3 = L2_2.insert
        L10_3 = L3_3
        L11_3 = L1_2.sub
        L12_3 = A0_3
        L13_3 = L4_3
        L14_3 = L5_3
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L11_3 = L15_2[L11_3]
        L9_3(L10_3, L11_3)
      end
    end
    L6_3 = L2_2.insert
    L7_3 = L3_3
    L8_3 = L1_2.sub
    L9_3 = L5_3
    L10_3 = L5_3 + 1
    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3 = L8_3(L9_3, L10_3)
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3)
    L6_3 = assert
    L7_3 = L1_2.find
    L8_3 = A0_3
    L9_3 = L2_3
    L10_3 = L5_3 + 1
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L8_3 = "String decoding failed: missing closing "
    L9_3 = L2_3
    L10_3 = " at position "
    L11_3 = L5_3
    L12_3 = "(for string at position "
    L13_3 = A1_3
    L14_3 = ")"
    L8_3 = L8_3 .. L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3
    L6_3(L7_3, L8_3)
    L6_3 = L2_2.concat
    L7_3 = L3_3
    L8_3 = ""
    L6_3 = L6_3(L7_3, L8_3)
    L7_3 = L5_3 + 2
    return L6_3, L7_3
  end
  L10_2 = L16_2
  function L16_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = " \n\r\t"
    L3_3 = L1_2.len
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    while true do
      L4_3 = L1_2.find
      L5_3 = L2_3
      L6_3 = L1_2.sub
      L7_3 = A0_3
      L8_3 = A1_3
      L9_3 = A1_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L7_3 = 1
      L8_3 = true
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
      if not (L4_3 and A1_3 <= L3_3) then
        break
      end
      A1_3 = A1_3 + 1
    end
    return A1_3
  end
  L11_2 = L16_2
  L16_2 = {}
  L16_2["\""] = "\\\""
  L16_2["\\"] = "\\\\"
  L16_2["/"] = "\\/"
  L16_2["\b"] = "\\b"
  L16_2["\f"] = "\\f"
  L16_2["\n"] = "\\n"
  L16_2["\r"] = "\\r"
  L16_2["\t"] = "\\t"
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = tostring
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L3_3 = L1_3
    L2_3 = L1_3.gsub
    L4_3 = "."
    function L5_3(A0_4)
      local L1_4
      L1_4 = L16_2[A0_4]
      return L1_4
    end
    return L2_3(L3_3, L4_3, L5_3)
  end
  L4_2.encodeString = L17_2
  function L17_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = L3_2.EMPTY_ARRAY
    if A0_3 == L1_3 then
      L1_3 = true
      L2_3 = 0
      return L1_3, L2_3
    end
    L1_3 = L3_2.EMPTY_OBJECT
    if A0_3 == L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = 0
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = type
      L8_3 = L5_3
      L7_3 = L7_3(L8_3)
      if L7_3 == "number" then
        L7_3 = L0_2.floor
        L8_3 = L5_3
        L7_3 = L7_3(L8_3)
        if L7_3 == L5_3 and 1 <= L5_3 then
          L7_3 = L14_2
          L8_3 = L6_3
          L7_3 = L7_3(L8_3)
          if not L7_3 then
            L7_3 = false
            return L7_3
          end
          L7_3 = L0_2.max
          L8_3 = L1_3
          L9_3 = L5_3
          L7_3 = L7_3(L8_3, L9_3)
          L1_3 = L7_3
      end
      elseif L5_3 == "n" then
        L7_3 = A0_3.n
        if not L7_3 then
          L7_3 = #A0_3
        end
        if L6_3 ~= L7_3 then
          L7_3 = false
          return L7_3
        end
      else
        L7_3 = L14_2
        L8_3 = L6_3
        L7_3 = L7_3(L8_3)
        if L7_3 then
          L7_3 = false
          return L7_3
        end
      end
    end
    L2_3 = true
    L3_3 = L1_3
    return L2_3, L3_3
  end
  L13_2 = L17_2
  function L17_2(A0_3)
    local L1_3, L2_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3 == "string" or L1_3 == "boolean" or L1_3 == "number" or L1_3 == "nil" or L1_3 == "table"
    return L2_3
  end
  L14_2 = L17_2
  return L3_2
end
L7_1.createJson = L61_1
L61_1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
function L62_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "."
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = ""
    L3_3 = A0_3
    L2_3 = A0_3.byte
    L2_3 = L2_3(L3_3)
    L3_3 = 8
    L4_3 = 1
    L5_3 = -1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L1_3
      L8_3 = 2 ^ L6_3
      L8_3 = L2_3 % L8_3
      L9_3 = L6_3 - 1
      L9_3 = 2 ^ L9_3
      L9_3 = L2_3 % L9_3
      L8_3 = L8_3 - L9_3
      if 0 < L8_3 then
        L8_3 = "1"
        if L8_3 then
          goto lbl_21
        end
      end
      L8_3 = "0"
      ::lbl_21::
      L1_3 = L7_3 .. L8_3
    end
    return L1_3
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = "0000"
  L1_2 = L1_2 .. L2_2
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%d%d%d?%d?%d?%d?"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = #A0_3
    if L1_3 < 6 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = 0
    L2_3 = 1
    L3_3 = 6
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L7_3 = A0_3
      L6_3 = A0_3.sub
      L8_3 = L5_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if L6_3 == "1" then
        L6_3 = 6 - L5_3
        L6_3 = 2 ^ L6_3
        if L6_3 then
          goto lbl_22
        end
      end
      L6_3 = 0
      ::lbl_22::
      L1_3 = L1_3 + L6_3
    end
    L2_3 = L61_1
    L3_3 = L2_3
    L2_3 = L2_3.sub
    L4_3 = L1_3 + 1
    L5_3 = L1_3 + 1
    return L2_3(L3_3, L4_3, L5_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = ""
  L4_2 = "=="
  L5_2 = "="
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = #A0_2
  L3_2 = L3_2 % 3
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L7_1.base64encode = L62_1
function L62_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "[^"
  L4_2 = L61_1
  L5_2 = "=]"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "."
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    if A0_3 == "=" then
      L1_3 = ""
      return L1_3
    end
    L1_3 = ""
    L2_3 = L61_1
    L3_3 = L2_3
    L2_3 = L2_3.find
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = L2_3 - 1
    L3_3 = 6
    L4_3 = 1
    L5_3 = -1
    for L6_3 = L3_3, L4_3, L5_3 do
      L7_3 = L1_3
      L8_3 = 2 ^ L6_3
      L8_3 = L2_3 % L8_3
      L9_3 = L6_3 - 1
      L9_3 = 2 ^ L9_3
      L9_3 = L2_3 % L9_3
      L8_3 = L8_3 - L9_3
      if 0 < L8_3 then
        L8_3 = "1"
        if L8_3 then
          goto lbl_28
        end
      end
      L8_3 = "0"
      ::lbl_28::
      L1_3 = L7_3 .. L8_3
    end
    return L1_3
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.gsub
  L3_2 = "%d%d%d?%d?%d?%d?%d?%d?"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = #A0_3
    if L1_3 ~= 8 then
      L1_3 = ""
      return L1_3
    end
    L1_3 = 0
    L2_3 = 1
    L3_3 = 8
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L7_3 = A0_3
      L6_3 = A0_3.sub
      L8_3 = L5_3
      L9_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if L6_3 == "1" then
        L6_3 = 8 - L5_3
        L6_3 = 2 ^ L6_3
        if L6_3 then
          goto lbl_22
        end
      end
      L6_3 = 0
      ::lbl_22::
      L1_3 = L1_3 + L6_3
    end
    L2_3 = string
    L2_3 = L2_3.char
    L3_3 = L1_3
    return L2_3(L3_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
L7_1.base64decode = L62_1
L62_1 = L7_1.createJson
L62_1 = L62_1()
L8_1 = L62_1
L62_1 = L6_1.printToConsole
L63_1 = "load LuaPanda success"
L64_1 = 1
L62_1(L63_1, L64_1)
return L6_1
