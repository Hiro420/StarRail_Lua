local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QuickConsumableFilter"
L2_1 = G
L2_1 = L2_1.CommonFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._quick_consume_type
  if L1_2 == nil then
    L1_2 = {}
    A0_2._quick_consume_type = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueClientExcelTable
    L1_2 = L1_2.GetData
    L2_2 = "Quick_Consumable_Type"
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.Value
    L1_2 = L1_2.ArrayValue
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._quick_consume_type
      L8_2 = L1_2[L5_2]
      L8_2 = L8_2.IntValue
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemConsumeTypeExcelTable
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.index_of_item
    L5_2 = A0_2._quick_consume_type
    L6_2 = L3_2.TypeID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2._create_filter_data
      L6_2 = L3_2.TypeID
      L7_2 = L3_2.FilterName
      L8_2 = L3_2.TypeIconPath
      L9_2 = false
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.GlobalVars
      L10_2 = L10_2.s_ModuleManager
      L10_2 = L10_2.InventoryModule
      L11_2 = L10_2
      L10_2 = L10_2.GetFoodCountByConsumeTypeID
      L12_2 = L3_2.TypeID
      L13_2 = true
      L14_2 = 1
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L5_2 = #L1_2
      L5_2 = L5_2 + 1
      L1_2[L5_2] = L4_2
    end
  end
  return L1_2
end
L0_1._get_all_filter_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_title_text_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1.is_use_color_img = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseBuffDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.ConfigID
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.ConsumeType
  L4_2 = A2_2[L4_2]
  return L4_2
end
L0_1._filter = L1_1
return L0_1
