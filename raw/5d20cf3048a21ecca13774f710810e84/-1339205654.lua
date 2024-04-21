local L0_1, L1_1, L2_1, L3_1
L0_1 = class
L1_1 = "NotifyManager"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L0_1._NotifyHandlers = L0_2
  L0_2 = {}
  L0_1._PacketHandlers = L0_2
  L0_2 = {}
  L0_1._EventHandlers = L0_2
  L0_2 = {}
  L0_1._toRemoveCollection = L0_2
  L0_2 = 0
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.Count
  L1_2 = #L1_2
  L1_2 = L1_2 - 1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1._NotifyHandlers
    L5_2 = {}
    L4_2[L3_2] = L5_2
    L4_2 = L0_1._PacketHandlers
    L5_2 = {}
    L4_2[L3_2] = L5_2
  end
end
L0_1.init = L1_1
function L1_1()
  local L0_2, L1_2
  L0_1._NotifyHandlers = nil
  L0_1._PacketHandlers = nil
  L0_1._EventHandlers = nil
end
L0_1.dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = A0_2[A1_2]
  L5_2 = L5_2[A2_2]
  if L5_2 == nil then
    L6_2 = {}
    L5_2 = L6_2
    L6_2 = A0_2[A1_2]
    L6_2[A2_2] = L5_2
  end
  L6_2 = ipairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2[1]
    if L11_2 == A3_2 then
      L11_2 = L10_2[2]
      if L11_2 == A4_2 then
        L11_2 = false
        return L11_2
      end
    end
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = {}
  L9_2 = A3_2
  L10_2 = A4_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L6_2(L7_2, L8_2)
  L6_2 = true
  return L6_2
end
L0_1._add_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = A0_2[A1_2]
  L5_2 = L5_2[A2_2]
  if L5_2 == nil then
    return
  end
  L6_2 = {}
  L7_2 = ipairs
  L8_2 = L5_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2[1]
    if L12_2 == A3_2 then
      L12_2 = L11_2[2]
      if L12_2 == A4_2 then
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L6_2
        L14_2 = L10_2
        L12_2(L13_2, L14_2)
      end
    end
  end
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.remove_list_by_idx_list
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = #L6_2
  L7_2 = 0 < L7_2
  return L7_2
end
L0_1._remove_handler = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L0_1._toRemoveCollection
      L12_2 = #L12_2
      L13_2 = 0
      L14_2 = L12_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = L0_1._toRemoveCollection
        L17_2[L16_2] = nil
      end
      L13_2 = 1
      L14_2 = #L11_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = L11_2[L16_2]
        L18_2 = L17_2[2]
        if L18_2 == A1_2 then
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L0_1._toRemoveCollection
          L20_2 = L16_2
          L18_2(L19_2, L20_2)
        end
      end
      L13_2 = G
      L13_2 = L13_2.Utils
      L13_2 = L13_2.remove_list_by_idx_list
      L14_2 = L11_2
      L15_2 = L0_1._toRemoveCollection
      L13_2(L14_2, L15_2)
    end
  end
end
L0_1._remove_handlers = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A0_2[A1_2]
  L3_2 = L3_2[A2_2]
  if L3_2 == nil then
    return
  end
  L4_2 = {}
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L4_2[5] = L9_2
  L4_2[6] = L10_2
  L4_2[7] = L11_2
  L4_2[8] = L12_2
  L4_2[9] = L13_2
  L4_2[10] = L14_2
  L5_2 = ipairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2[1]
    L11_2 = L9_2[2]
    if L11_2 ~= nil then
      L12_2 = L10_2
      L13_2 = L11_2
      L14_2 = ...
      L12_2(L13_2, L14_2)
    else
      L12_2 = L10_2
      L13_2, L14_2 = ...
      L12_2(L13_2, L14_2)
    end
  end
end
L0_1._invoke_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = assert
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = L0_1._add_handler
  L5_2 = L0_1._NotifyHandlers
  L6_2 = #A0_2
  L7_2 = #A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if L4_2 == true then
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.OnAddLuaNotifyHandler
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.add_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = assert
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = L0_1._remove_handler
  L5_2 = L0_1._NotifyHandlers
  L6_2 = #A0_2
  L7_2 = #A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if L4_2 == true then
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.OnRemoveLuaNotifyHandler
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.remove_notify_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1._invoke_handler
  L4_2 = L0_1._NotifyHandlers
  L5_2 = #A0_2
  L6_2 = #A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.on_notify = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = assert
  L6_2 = A2_2
  L5_2(L6_2)
  L5_2 = G
  L5_2 = L5_2.UtilEngineWrap
  L5_2 = L5_2.ConvCsEnumToNum
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A1_2 = L5_2
  L5_2 = L0_1._add_handler
  L6_2 = L0_1._PacketHandlers
  L7_2 = #A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if L5_2 == true then
    L6_2 = G
    L6_2 = L6_2.CS
    L6_2 = L6_2.NotifyManager
    L6_2 = L6_2.OnAddLuaPacketHandler
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A3_2 or L9_2
    if not A3_2 then
      L9_2 = false
    end
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.add_packet_handler = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = assert
  L5_2 = A2_2
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A1_2 = L4_2
  L4_2 = L0_1._remove_handler
  L5_2 = L0_1._PacketHandlers
  L6_2 = #A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if L4_2 == true then
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyManager
    L5_2 = L5_2.OnRemoveLuaPacketHandler
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.remove_packet_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1._invoke_handler
  L4_2 = L0_1._PacketHandlers
  L5_2 = #A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.on_packet = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._remove_handlers
  L2_2 = L0_1._NotifyHandlers
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L0_1._remove_handlers
  L2_2 = L0_1._PacketHandlers
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.remove_handlers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.Notify
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.notify = L1_1
return L0_1
