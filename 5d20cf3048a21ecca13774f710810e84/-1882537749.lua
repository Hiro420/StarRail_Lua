local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LuaHotfixModule"
L2_1 = "Logic.BaseModule"
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._lua_ref = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LuaFileClearAndRequire
  L4_2 = L0_1._on_clear_and_require
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.InitNotify = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.LuaHotfix
  L5_2 = "LuaHotfixManager _on_clear_and_require {0}"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = package
  L3_2 = L3_2.loaded
  L3_2[L2_2] = nil
  L3_2 = require
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_clear_and_require = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._lua_ref
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L2_2 = A0_2._lua_ref
    L2_2[A1_2] = 0
  end
  L2_2 = A0_2._lua_ref
  L3_2 = A0_2._lua_ref
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2 + 1
  L2_2[A1_2] = L3_2
end
L0_1.add_ref = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 ~= nil then
    L2_2 = A0_2._lua_ref
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  L2_2 = -1
  do return L2_2 end
  ::lbl_9::
  L2_2 = A0_2._lua_ref
  L2_2 = L2_2[A1_2]
  return L2_2
end
L0_1.get_ref_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._lua_ref
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._lua_ref
  L3_2 = A0_2._lua_ref
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2 - 1
  L2_2[A1_2] = L3_2
  L2_2 = A0_2._lua_ref
  L2_2 = L2_2[A1_2]
  if L2_2 <= 0 then
    L2_2 = A0_2._lua_ref
    L2_2[A1_2] = 0
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.LuaFileRefClear
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.remove_ref = L1_1
return L0_1
