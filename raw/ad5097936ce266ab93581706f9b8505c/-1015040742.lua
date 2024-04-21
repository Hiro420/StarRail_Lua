local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = A0_2._filter_by_recently_login
  L1_2.recently = L2_2
  L2_2 = A0_2._filter_by_str_match
  L1_2.dev = L2_2
  L2_2 = A0_2._filter_by_str_match
  L1_2.rel = L2_2
  L2_2 = A0_2._filter_by_str_match
  L1_2.sf = L2_2
  A0_2._filter_func_map = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._name = A1_2
  L2_2 = A0_2._filter_func_map
  L2_2 = L2_2[A1_2]
  A0_2._filter_func = L2_2
  L2_2 = A1_2
  L3_2 = "_"
  L2_2 = L2_2 .. L3_2
  A0_2._pattern = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._filter_func
  if L2_2 == nil then
    return A1_2
  end
  L2_2 = A0_2._filter_func
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = L7_2.Name
    L10_2 = 1
    L11_2 = string
    L11_2 = L11_2.len
    L12_2 = A0_2._pattern
    L11_2, L12_2 = L11_2(L12_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = A0_2._pattern
    if L8_2 == L9_2 then
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L2_2[L8_2] = L7_2
    end
  end
  return L2_2
end
L0_1._filter_by_str_match = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.SelectedServer
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DevDataUtils
  L3_2 = L3_2.RecentlyLoginServerNameList
  L4_2 = {}
  L5_2 = L2_2
  L4_2[1] = L5_2
  L5_2 = 0
  L6_2 = L3_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2._find_server_data_by_name
    L11_2 = A1_2
    L12_2 = L3_2[L8_2]
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if L9_2 ~= nil and L9_2 ~= L2_2 then
      L10_2 = #L4_2
      L10_2 = L10_2 + 1
      L4_2[L10_2] = L9_2
    end
  end
  return L4_2
end
L0_1._filter_by_recently_login = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Name
    if L8_2 == A2_2 then
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._find_server_data_by_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._name
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
return L0_1
