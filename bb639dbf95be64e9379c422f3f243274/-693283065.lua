local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.RelicType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicRecommendPropertyPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = nil
  L4_2 = A1_2.PropertyDataDict
  L5_2 = L4_2
  L4_2 = L4_2.ContainsKey
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = A1_2.PropertyDataDict
    L5_2 = L5_2[A2_2]
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = {}
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_info_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_info_list
    L7_2 = L7_2[L5_2]
    L9_2 = L7_2
    L8_2 = L7_2.safe_set_active
    L10_2 = L6_2 ~= nil
    L8_2(L9_2, L10_2)
    if L6_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.setup_view
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
end
L1_1._refresh = L2_1
return L1_1
