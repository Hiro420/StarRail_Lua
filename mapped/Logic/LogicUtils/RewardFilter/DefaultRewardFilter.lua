local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultRewardFilter"
L2_1 = "Logic.LogicUtils.RewardFilter.BaseRewardFilter"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._not_display_item_sub_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Mission_Reward_HideItemSubTypeList"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._not_display_item_sub_type
      L7_2 = G
      L7_2 = L7_2.Utils
      L7_2 = L7_2.enum_from_int_str
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ItemSubType
      L9_2 = L1_2[L5_2]
      L9_2 = L9_2.IntValue
      L7_2 = L7_2(L8_2, L9_2)
      L6_2[L7_2] = true
    end
  end
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = #A1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1._get_item_row_by_item
    L7_2 = A1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._not_display_item_sub_type
    L8_2 = L6_2.ItemSubType
    L7_2 = L7_2[L8_2]
    if L7_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A1_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  return A1_2
end
L0_1.filter_reward_item_table = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 0
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._not_display_item_sub_type
    L7_2 = A1_2[L5_2]
    L7_2 = L7_2.ItemSubType
    L6_2 = L6_2[L7_2]
    if L6_2 ~= nil then
      L7_2 = A1_2
      L6_2 = A1_2.RemoveAt
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  return A1_2
end
L0_1.filter_item_display_data_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "number" then
    L1_2 = A0_2
  else
    L2_2 = A0_2.ConfigID
    L1_2 = L2_2 or L1_2
    if not L2_2 then
      L2_2 = A0_2.ItemID
      L1_2 = L2_2 or L1_2
      if not L2_2 then
        L2_2 = A0_2.id
        L1_2 = L2_2 or L1_2
        if not L2_2 then
          L1_2 = A0_2.ID
        end
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1._get_item_row_by_item = L1_1
return L0_1
