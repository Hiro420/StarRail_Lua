local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Common.StaticClass"
L0_1(L1_1)
L0_1 = require
L1_1 = "xlua.util"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "UtilXLuaWrap"
L1_1 = L1_1(L2_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.print_func_ref_by_csharp
  L0_2()
end
L1_1.print_func_ref_by_csharp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.cs_type_cache
  if L1_2 == nil then
    L1_2 = {}
    L1_1.cs_type_cache = L1_2
  end
  L1_2 = L1_1.cs_type_cache
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    return L1_2
  end
  L2_2 = L1_1.split
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  L4_2 = 1
  L5_2 = CS
  while L5_2 ~= nil and L3_2 >= L4_2 do
    L6_2 = L2_2[L4_2]
    L5_2 = L5_2[L6_2]
    L4_2 = L4_2 + 1
  end
  L6_2 = L1_1.cs_type_cache
  L6_2[A0_2] = L5_2
  return L5_2
end
L1_1.get_cs_class_by_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = string
  L2_2 = L2_2.gmatch
  L3_2 = A0_2
  L4_2 = "[^+.]+"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L1_1.split = L2_1
return L1_1
