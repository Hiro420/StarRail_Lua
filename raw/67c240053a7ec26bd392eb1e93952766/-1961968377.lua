local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.UtilXLuaWrap"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.SuperDebug"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.LogTag"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "CsToLua"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = A1_2
  L4_2 = ...
  return L2_2(L3_2, L4_2)
end
L0_1.AsyncShowLuaPage = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = A1_2
  L4_2 = ...
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.get_native
  return L3_2(L4_2)
end
L0_1.SyncShowLuaPage = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.Default
  L3_2 = "%s"
  L4_2 = "CSGc start"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UtilXLuaWrap
  L1_2 = L1_2.print_func_ref_by_csharp
  L1_2()
end
L0_1.CSGc = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.on_notify
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.Notify = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.on_packet
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.NotifyPacket = L1_1
return L0_1
