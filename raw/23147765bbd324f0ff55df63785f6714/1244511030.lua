local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRoomTreeRow"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._rogue_site_data_list
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.List
    L2_2 = L2_2(L3_2)
    A0_2._rogue_site_data_list = L2_2
  end
  L2_2 = A0_2._rogue_site_data_list
  L3_2 = L2_2
  L2_2 = L2_2.Add
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_site_data_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._rogue_site_data_list
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._rogue_site_data_list
  L3_2 = L2_2
  L2_2 = L2_2.Get
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_site_data_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_site_data_list
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2._rogue_site_data_list
  L2_2 = L1_2
  L1_2 = L1_2.Count
  return L1_2(L2_2)
end
L0_1.get_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.get_count
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.get_site_data_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.RoomStatus
      L7_2 = #L7_2
      L8_2 = G
      L8_2 = L8_2.UtilEngineWrap
      L8_2 = L8_2.ConvCsEnumToNum
      L9_2 = CS
      L9_2 = L9_2.NHCLJLJBNAC
      L9_2 = L9_2.MIKAMDENMMJ
      L8_2 = L8_2(L9_2)
      if L7_2 == L8_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.has_rogue_site_data_finish = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2.get_count
  L2_2 = L2_2(L3_2)
  if L2_2 <= 1 then
    L4_2 = A0_2
    L3_2 = A0_2.get_site_data_item
    L5_2 = 0
    return L3_2(L4_2, L5_2)
  else
    L3_2 = nil
    L4_2 = 0
    L5_2 = L2_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L9_2 = A0_2
      L8_2 = A0_2.get_site_data_item
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L8_2.SiteID
      if L9_2 == A1_2 then
        return L8_2
      end
      L9_2 = L8_2.RoomStatus
      L9_2 = #L9_2
      L10_2 = G
      L10_2 = L10_2.UtilEngineWrap
      L10_2 = L10_2.ConvCsEnumToNum
      L11_2 = CS
      L11_2 = L11_2.NHCLJLJBNAC
      L11_2 = L11_2.KANDLKLINNJ
      L10_2 = L10_2(L11_2)
      if L9_2 >= L10_2 then
        L3_2 = L8_2
      end
    end
    return L3_2
  end
end
L0_1.get_show_rogue_site_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.get_count
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = rogueRoomTreeRow
    L8_2 = L7_2
    L7_2 = L7_2.get_site_data_item
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.SiteID
      if L8_2 == A1_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1.has_site = L1_1
return L0_1
