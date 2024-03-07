local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ConstValueUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.IsInt
      if L2_2 then
        goto lbl_19
      end
    end
  end
  L2_2 = 0
  do return L2_2 end
  ::lbl_19::
  L2_2 = L1_2.Value
  L2_2 = L2_2.UintValue
  return L2_2
end
L0_1.get_uint_value = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.IsArray
      if L2_2 then
        goto lbl_19
      end
    end
  end
  L2_2 = {}
  do return L2_2 end
  ::lbl_19::
  L2_2 = L1_2.Value
  L2_2 = L2_2.ArrayValue
  L3_2 = {}
  L4_2 = 0
  L5_2 = L2_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    if L8_2 ~= nil then
      L9_2 = L8_2.IsInt
      if L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L3_2
        L11_2 = L8_2.UintValue
        L9_2(L10_2, L11_2)
      end
    end
  end
  return L3_2
end
L0_1.get_uint_array = L1_1
return L0_1
