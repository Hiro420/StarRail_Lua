local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "RewardUtils"
L0_1 = L0_1(L1_1)
L1_1 = 2
L2_1 = 22
L3_1 = 252
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.Length
  if not L3_2 then
    L3_2 = A0_2.Count
  end
  L4_2 = 0
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L0_1.CreateRewardItemTable
    L9_2 = A0_2[L7_2]
    L8_2 = L8_2(L9_2)
    if not L8_2 then
      L8_2 = {}
    end
    L9_2 = ipairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L2_2[L13_2]
      if L14_2 == nil then
        L2_2[L13_2] = 1
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L1_2
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  L4_2 = L0_1._merge_item_if_player_max_level
  L5_2 = L1_2
  return L4_2(L5_2)
end
L0_1.get_reward_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.get_items_by_item_config_list
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.sort_reward_item
  L3_2 = L1_2
  L2_2(L3_2)
  return L1_2
end
L0_1.get_sorted_items_by_item_config_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.Length
  if not L3_2 then
    L3_2 = A0_2.Count
  end
  L4_2 = 0
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2[L7_2]
    L9_2 = L0_1._MakeOneRewardItem
    L10_2 = L8_2.ItemID
    L11_2 = L8_2.ItemNum
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.ItemID
    L10_2 = L2_2[L10_2]
    if L10_2 == nil then
      L10_2 = L9_2.ItemID
      L2_2[L10_2] = L9_2
    else
      L10_2 = L9_2.ItemID
      L10_2 = L2_2[L10_2]
      L11_2 = L9_2.ItemID
      L11_2 = L2_2[L11_2]
      L11_2 = L11_2.Count
      L12_2 = L9_2.Count
      L11_2 = L11_2 + L12_2
      L10_2.Count = L11_2
    end
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = L0_1._merge_item_if_player_max_level
  L5_2 = L1_2
  return L4_2(L5_2)
end
L0_1.get_items_by_item_config_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.get_reward_items
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.sort_reward_item
  L3_2 = L1_2
  L2_2(L3_2)
  return L1_2
end
L0_1.get_sorted_reward_items = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 ~= nil then
    L2_2 = #A0_2
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = {}
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.Utils
    L8_2 = L8_2.index_of_item
    L9_2 = A1_2
    L10_2 = L7_2.ItemID
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = nil ~= L8_2
    if not L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
L0_1.remove_reward_items = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = 1
  L5_2 = #A0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2[L7_2]
    L9_2 = L0_1._get_item_row_by_item
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.ItemSubType
    if L10_2 == A1_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    else
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = #L3_2
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = 1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
  return L2_2
end
L0_1.resort_reward_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = L0_1._get_item_row_by_item
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = L0_1._get_item_row_by_item
    L4_3 = A1_3
    L3_3 = L3_3(L4_3)
    L4_3 = L0_1.get_sort_id_by_item_id
    L5_3 = L2_3.ID
    L4_3 = L4_3(L5_3)
    L5_3 = L0_1.get_sort_id_by_item_id
    L6_3 = L3_3.ID
    L5_3 = L5_3(L6_3)
    L6_3 = L0_1._get_item_is_extra
    L7_3 = A0_3
    L6_3 = L6_3(L7_3)
    L7_3 = L0_1._get_item_is_extra
    L8_3 = A1_3
    L7_3 = L7_3(L8_3)
    L8_3 = L0_1._item_has_count
    L9_3 = A0_3
    L8_3 = L8_3(L9_3)
    L9_3 = L0_1._item_has_count
    L10_3 = A1_3
    L9_3 = L9_3(L10_3)
    if L8_3 ~= L9_3 then
      return L8_3
    end
    if L6_3 ~= L7_3 then
      return L6_3
    end
    if L4_3 ~= L5_3 then
      L10_3 = L4_3 < L5_3
      return L10_3
    end
    L10_3 = L2_3.Rarity
    L10_3 = #L10_3
    L11_3 = L3_3.Rarity
    L11_3 = #L11_3
    if L10_3 ~= L11_3 then
      L10_3 = L2_3.Rarity
      L10_3 = #L10_3
      L11_3 = L3_3.Rarity
      L11_3 = #L11_3
      L10_3 = L10_3 > L11_3
      return L10_3
    end
    L10_3 = L2_3.ID
    L11_3 = L3_3.ID
    L10_3 = L10_3 < L11_3
    return L10_3
  end
  L1_2(L2_2, L3_2)
end
L0_1.sort_reward_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "userdata" then
    L1_2 = A0_2.ExtraInfo
    L1_2 = L1_2 ~= nil
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L0_1._get_item_is_from_multiple_drop = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "table" then
    L1_2 = A0_2.isExtra
    if not L1_2 then
      L1_2 = false
    end
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L0_1._get_item_is_extra = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "number" then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.Count
  if L1_2 ~= nil then
    L1_2 = A0_2.Count
  end
  L1_2 = L1_2 ~= 0
  return L1_2
end
L0_1._item_has_count = L4_1
function L4_1(A0_2)
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
L0_1._get_item_row_by_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Player_Max_Level"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PlayerExp_Scoin_ConvertRate"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.PlayerModule
  L3_2 = L3_2.PlayerData
  L3_2 = L3_2.Level
  if L1_2 <= L3_2 then
    L3_2 = nil
    L4_2 = nil
    L5_2 = pairs
    L6_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = L9_2.ItemID
      L11_2 = L1_1
      if L10_2 == L11_2 then
        L4_2 = L8_2
      else
        L10_2 = L9_2.ItemID
        L11_2 = L2_1
        if L10_2 == L11_2 then
          L3_2 = L8_2
        end
      end
    end
    if L3_2 ~= nil then
      L5_2 = nil
      if L4_2 ~= nil then
        L6_2 = A0_2[L4_2]
        L6_2 = L6_2.Count
        if L6_2 ~= 0 then
          L6_2 = A0_2[L4_2]
          L7_2 = A0_2[L4_2]
          L7_2 = L7_2.Count
          L8_2 = A0_2[L3_2]
          L8_2 = L8_2.Count
          L8_2 = L8_2 * L2_2
          L7_2 = L7_2 + L8_2
          L6_2.Count = L7_2
        end
      else
        L6_2 = L0_1._MakeOneRewardItem
        L7_2 = L1_1
        L8_2 = A0_2[L3_2]
        L8_2 = L8_2.Count
        L8_2 = L8_2 * L2_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      end
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2
      L8_2 = L3_2
      L6_2(L7_2, L8_2)
      if L5_2 ~= nil then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  return A0_2
end
L0_1._merge_item_if_player_max_level = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemDisplaySortExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.SortID
    return L2_2
  end
  L2_2 = L0_1._default_sort_id
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ConstValueClientExcelTable
    L2_2 = L2_2.GetData
    L3_2 = "ItemDefaultSortID"
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Value
    L2_2 = L2_2.IntValue
    L0_1._default_sort_id = L2_2
  end
  L2_2 = L0_1._default_sort_id
  return L2_2
end
L0_1.get_sort_id_by_item_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1.CreateRewardItemTable
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ItemID
    if L8_2 == A1_2 then
      L8_2 = L7_2.Count
      return L8_2
    end
  end
  L3_2 = 0
  return L3_2
end
L0_1.get_item_count = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L0_1.CreateRewardItemTable
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L0_1._get_item_row_by_item
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.ItemSubType
    if L10_2 == A1_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
  end
  return L3_2
end
L0_1.get_reward_items_of_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RewardExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return L1_2
  end
  L3_2 = L2_2.Hcoin
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = G
    L4_2 = L4_2.UtilEngineWrap
    L4_2 = L4_2.ConvCsEnumToNum
    L5_2 = CS
    L5_2 = L5_2.HGGDPEHMDBH
    L5_2 = L5_2.PPIMKNOOAML
    L4_2 = L4_2(L5_2)
    L5_2 = L2_2.Hcoin
    L6_2 = 0
    L7_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L2_2.ItemID_1
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = L2_2.ItemID_1
    L5_2 = L2_2.Count_1
    L6_2 = L2_2.Level_1
    L7_2 = L2_2.Rank_1
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L2_2.ItemID_2
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = L2_2.ItemID_2
    L5_2 = L2_2.Count_2
    L6_2 = L2_2.Level_2
    L7_2 = L2_2.Rank_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L2_2.ItemID_3
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = L2_2.ItemID_3
    L5_2 = L2_2.Count_3
    L6_2 = L2_2.Level_3
    L7_2 = L2_2.Rank_3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L2_2.ItemID_4
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = L2_2.ItemID_4
    L5_2 = L2_2.Count_4
    L6_2 = L2_2.Level_4
    L7_2 = L2_2.Rank_4
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L2_2.ItemID_5
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = L2_2.ItemID_5
    L5_2 = L2_2.Count_5
    L6_2 = L2_2.Level_5
    L7_2 = L2_2.Rank_5
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L2_2.ItemID_6
  if L3_2 ~= 0 then
    L3_2 = L0_1._MakeOneRewardItem
    L4_2 = L2_2.ItemID_6
    L5_2 = L2_2.Count_6
    L6_2 = L2_2.Level_6
    L7_2 = L2_2.Rank_6
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L1_2
    L6_2 = #L1_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = L0_1._merge_item_if_player_max_level
  L4_2 = L1_2
  return L3_2(L4_2)
end
L0_1.CreateRewardItemTable = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.ItemID
      L8_3 = A1_3.ItemID
      if L7_3 == L8_3 then
        L7_3 = L6_3.Level
        L8_3 = A1_3.Level
        if L7_3 == L8_3 then
          L7_3 = L6_3.Rank
          L8_3 = A1_3.Rank
          if L7_3 == L8_3 then
            L7_3 = L6_3.Count
            L8_3 = A1_3.Count
            L7_3 = L7_3 + L8_3
            L6_3.Count = L7_3
            return
          end
        end
      end
    end
    L2_3 = table
    L2_3 = L2_3.insert
    L3_3 = A0_3
    L4_3 = #A0_3
    L4_3 = L4_3 + 1
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RewardExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == nil then
      return L1_2
    end
    L9_2 = L8_2.Hcoin
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = G
      L10_2 = L10_2.UtilEngineWrap
      L10_2 = L10_2.ConvCsEnumToNum
      L11_2 = CS
      L11_2 = L11_2.HGGDPEHMDBH
      L11_2 = L11_2.PPIMKNOOAML
      L10_2 = L10_2(L11_2)
      L11_2 = L8_2.Hcoin
      L12_2 = 0
      L13_2 = 0
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L9_2 = L8_2.ItemID_1
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = L8_2.ItemID_1
      L11_2 = L8_2.Count_1
      L12_2 = L8_2.Level_1
      L13_2 = L8_2.Rank_1
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L9_2 = L8_2.ItemID_2
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = L8_2.ItemID_2
      L11_2 = L8_2.Count_2
      L12_2 = L8_2.Level_2
      L13_2 = L8_2.Rank_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L9_2 = L8_2.ItemID_3
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = L8_2.ItemID_3
      L11_2 = L8_2.Count_3
      L12_2 = L8_2.Level_3
      L13_2 = L8_2.Rank_3
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L9_2 = L8_2.ItemID_4
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = L8_2.ItemID_4
      L11_2 = L8_2.Count_4
      L12_2 = L8_2.Level_4
      L13_2 = L8_2.Rank_4
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L9_2 = L8_2.ItemID_5
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = L8_2.ItemID_5
      L11_2 = L8_2.Count_5
      L12_2 = L8_2.Level_5
      L13_2 = L8_2.Rank_5
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
    L9_2 = L8_2.ItemID_6
    if L9_2 ~= 0 then
      L9_2 = L0_1._MakeOneRewardItem
      L10_2 = L8_2.ItemID_6
      L11_2 = L8_2.Count_6
      L12_2 = L8_2.Level_6
      L13_2 = L8_2.Rank_6
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = L2_2
      L11_2 = L1_2
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L3_2 = L0_1._merge_item_if_player_max_level
  L4_2 = L1_2
  return L3_2(L4_2)
end
L0_1.CreateRewardItemTableFromRewardList = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.UtilEngineWrap
  L0_2 = L0_2.ConvCsEnumToNum
  L1_2 = CS
  L1_2 = L1_2.HGGDPEHMDBH
  L1_2 = L1_2.PPIMKNOOAML
  return L0_2(L1_2)
end
L0_1.get_hcoin_item_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.CreateRewardItemTable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2.ItemID
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1.get_reward_item_ids = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L2_2 = L0_1.sort_reward_item
  L3_2 = L1_2
  L2_2(L3_2)
  return L1_2
end
L0_1.CreateRewardItemTableSorted = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTable
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = L0_1.filter_reward_item_table
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  L3_2 = L0_1.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end
L0_1.CreateRewardItemTableSortedWithFilter = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.filter_reward_item_table
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      A0_2 = L7_2
    end
  end
  return A0_2
end
L0_1.filter_reward_item_table = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.filter_item_display_data_list
      L9_2 = A0_2
      L7_2 = L7_2(L8_2, L9_2)
      A0_2 = L7_2
    end
  end
  return A0_2
end
L0_1.filter_display_item_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = L0_1.get_item_dict
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L2_2[L9_2] = L8_2
  end
  L4_2 = L0_1.sort_reward_item
  L5_2 = L2_2
  L4_2(L5_2)
  return L2_2
end
L0_1.GetDistinctRewardTableByRewardList = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L3_2 = A0_2.Length
  if not L3_2 then
    L3_2 = A0_2.Count
  end
  L4_2 = 0
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L0_1.CreateRewardItemTable
    L9_2 = A0_2[L7_2]
    L8_2 = L8_2(L9_2)
    L9_2 = ipairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2.ItemID
      L14_2 = L2_2[L14_2]
      if L14_2 then
        L14_2 = L13_2.ItemID
        L14_2 = L2_2[L14_2]
        L15_2 = L13_2.ItemID
        L15_2 = L2_2[L15_2]
        L15_2 = L15_2.Count
        L16_2 = L13_2.Count
        L15_2 = L15_2 + L16_2
        L14_2.Count = L15_2
      else
        L14_2 = L13_2.ItemID
        L2_2[L14_2] = L13_2
      end
    end
  end
  if A1_2 ~= nil then
    L4_2 = A1_2.Length
    if not L4_2 then
      L4_2 = A1_2.Count
    end
    L5_2 = 0
    L6_2 = L4_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A1_2[L8_2]
      L10_2 = L0_1.CreateRewardItemByItemID
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L10_2.ItemID
      L11_2 = L2_2[L11_2]
      if L11_2 then
        L11_2 = L10_2.ItemID
        L11_2 = L2_2[L11_2]
        L12_2 = L10_2.ItemID
        L12_2 = L2_2[L12_2]
        L12_2 = L12_2.Count
        L13_2 = L10_2.Count
        L12_2 = L12_2 + L13_2
        L11_2.Count = L12_2
      else
        L11_2 = L10_2.ItemID
        L2_2[L11_2] = L10_2
      end
    end
  end
  return L2_2
end
L0_1.get_item_dict = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1._MakeOneRewardItem
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = 0
  L6_2 = 0
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.CreateRewardItem = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.CreateRewardItem
  L2_2 = A0_2
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L0_1.CreateRewardItemByItemID = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = L0_1.CreateRewardItemTableSorted
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2.ItemID
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L0_1.CreateConfigIDList = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = {}
  L4_2.ItemID = A0_2
  L4_2.Count = A1_2
  L4_2.Level = A2_2
  L4_2.Rank = A3_2
  return L4_2
end
L0_1._MakeOneRewardItem = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2.Length
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L8_2 = {}
    L9_2 = L7_2.ItemID
    L8_2.item_id = L9_2
    L9_2 = L7_2.ItemNum
    L8_2.item_count = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = #L1_2
    L11_2 = L11_2 + 1
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
  return L1_2
end
L0_1.create_items_from_excel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.ConfigID
    L7_2 = L7_2(L8_2)
    L8_2 = L0_1._check_display_reward_condition
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1.get_reward_table_without_avatar = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AddNewAvatarInfo
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.AvatarModule
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatar
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.NewAvatarData = L3_2
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemConfig
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.ItemSubType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ItemSubType
    L10_2 = L10_2.Eidolon
    if L9_2 ~= L10_2 then
      L9_2 = L8_2.ConfigID
      L10_2 = L3_1
      if L9_2 ~= L10_2 then
        goto lbl_55
      end
    end
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemConfig
    L9_2 = L9_2()
    L10_2 = L8_2.ConfigID
    L9_2.ItemID = L10_2
    L10_2 = L8_2.Count
    L9_2.ItemNum = L10_2
    L11_2 = L3_2
    L10_2 = L3_2.Add
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    ::lbl_55::
  end
  L2_2.ConvertItemList = L3_2
  L4_2 = L3_2.Count
  L4_2 = L4_2 == 0
  L2_2.IsNew = L4_2
  return L2_2
end
L0_1.create_add_new_avatar_info = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L0_1.get_reward_table_without_avatar
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = #L3_2
  if L4_2 == 0 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.RewardDialog"
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = nil
  L9_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.show_reward_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._get_reward_list_from_notify
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if L2_2 == 0 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.AdventureReward.RareRewardHintDialog"
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.show_reward_dialog_with_important_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1.get_reward_table_without_avatar
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = #L2_2
  if L3_2 == 0 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.PopupQueueManager
  L4_2 = L3_2
  L3_2 = L3_2.inqueue
  L5_2 = "FullScreenToast"
  L6_2 = 1
  L7_2 = "Ui.Common.RewardDialog"
  L8_2 = nil
  L9_2 = L2_2
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.show_reward_dialog_with_toast = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.get_unique_reward_table
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1.sort_reward_item
  L3_2 = L1_2
  L2_2(L3_2)
  return L1_2
end
L0_1.get_unique_sorted_reward_table = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.UID
    if L8_2 ~= nil then
      L8_2 = L7_2.UID
      if L8_2 ~= 0 then
        L8_2 = #L2_2
        L8_2 = L8_2 + 1
        L2_2[L8_2] = L7_2
    end
    else
      L8_2 = L7_2.ConfigID
      L8_2 = L1_2[L8_2]
      if L8_2 == nil then
        L8_2 = L7_2
        L9_2 = L7_2.ConfigID
        L1_2[L9_2] = L8_2
      else
        L9_2 = L8_2.Count
        L10_2 = L7_2.Count
        L9_2 = L9_2 + L10_2
        L8_2.Count = L9_2
      end
    end
  end
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1.get_unique_reward_table = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.UID
    if L8_2 ~= nil then
      L8_2 = L7_2.UID
      if L8_2 ~= 0 then
        L8_2 = #L2_2
        L8_2 = L8_2 + 1
        L2_2[L8_2] = L7_2
    end
    else
      L8_2 = L7_2.ConfigID
      L8_2 = L1_2[L8_2]
      if L8_2 == nil then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.ItemDisplayData
        L9_2 = L9_2()
        L8_2 = L9_2
        L9_2 = L7_2.ConfigID
        L8_2.ConfigID = L9_2
        L9_2 = L7_2.Count
        L8_2.Count = L9_2
        L9_2 = L7_2.Level
        L8_2.Level = L9_2
        L9_2 = L7_2.UID
        L8_2.UID = L9_2
        L9_2 = L7_2.Rank
        L8_2.Rank = L9_2
        L9_2 = L7_2.Rarity
        L8_2.Rarity = L9_2
        L9_2 = L7_2.ItemMainType
        L8_2.ItemMainType = L9_2
        L9_2 = L7_2.ItemSubType
        L8_2.ItemSubType = L9_2
        L9_2 = L7_2.ExtraInfo
        L8_2.ExtraInfo = L9_2
        L9_2 = L7_2.ConfigID
        L1_2[L9_2] = L8_2
      else
        L9_2 = L8_2.Count
        L10_2 = L7_2.Count
        L9_2 = L9_2 + L10_2
        L8_2.Count = L9_2
      end
    end
  end
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L0_1.get_unique_reward_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ExtraInfo
    if L8_2 ~= nil then
      L8_2 = L7_2.ExtraInfo
      L8_2 = L8_2.IsFromMultipleDrop
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
    end
    else
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = L0_1.get_unique_sorted_reward_table
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.get_unique_sorted_reward_table
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = L4_2[L8_2]
    L9_2(L10_2, L11_2)
  end
  return L3_2
end
L0_1.get_multiple_drop_unique_sorted_reward_table = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1._default_reward_filter
  if L0_2 == nil then
    L0_2 = G
    L0_2 = L0_2.new
    L1_2 = "Logic.LogicUtils.RewardFilter.DefaultRewardFilter"
    L0_2 = L0_2(L1_2)
    L0_1._default_reward_filter = L0_2
  end
  L0_2 = L0_1._default_reward_filter
  return L0_2
end
L0_1.get_default_reward_filter = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1._get_reward_list_from_notify
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L4_2 = G
  L4_2 = L4_2.ToastModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.show_important_item_hint
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.AdventureReward.RewardListDialog"
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
end
L0_1.on_notify_daily_mission_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsType
  L4_2 = A0_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.RewardDisplayData
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L1_2 = A0_2.Rewards
    L2_2 = A0_2.ExtraRewards
  else
    L1_2 = A0_2
  end
  L3_2 = L0_1._get_reward_list_from_notify
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L6_2 = L0_1._get_extra_reward_list_from_notify
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.ToastModule
  L7_2 = L7_2.Instance
  L8_2 = L7_2
  L7_2 = L7_2.show_important_item_hint
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  if nil ~= L3_2 then
    L7_2 = #L3_2
    if 0 < L7_2 then
      goto lbl_39
    end
  end
  if L6_2 ~= nil then
    L7_2 = #L6_2
    ::lbl_39::
    if 0 < L7_2 then
      L7_2 = G
      L7_2 = L7_2.Utils
      L7_2 = L7_2.table_merge
      L8_2 = L3_2
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L3_2 = L7_2
      L7_2 = L0_1.sort_reward_item
      L8_2 = L3_2
      L7_2(L8_2)
      L7_2 = G
      L7_2 = L7_2.RewardUtils
      L7_2 = L7_2.filter_reward_item_table
      L8_2 = L3_2
      L9_2 = {}
      L10_2 = L0_1.get_default_reward_filter
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L9_2[3] = L12_2
      L9_2[4] = L13_2
      L9_2[5] = L14_2
      L7_2 = L7_2(L8_2, L9_2)
      L3_2 = L7_2
      L7_2 = G
      L7_2 = L7_2.ToastModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.try_reward_list_hint
      L9_2 = L3_2
      L7_2(L8_2, L9_2)
    end
  end
  if nil ~= L4_2 then
    L7_2 = #L4_2
    if 0 < L7_2 then
      L7_2 = {}
      L8_2 = pairs
      L9_2 = L4_2
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.GameCore
        L13_2 = L13_2.ItemExcelTable
        L13_2 = L13_2.GetData
        L14_2 = L12_2.id
        L13_2 = L13_2(L14_2)
        if L13_2 ~= nil then
          L14_2 = #L7_2
          L14_2 = L14_2 + 1
          L7_2[L14_2] = L13_2
        end
      end
      L8_2 = G
      L8_2 = L8_2.ToastModule
      L8_2 = L8_2.Instance
      L9_2 = L8_2
      L8_2 = L8_2.try_interact_reward_hint
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.on_notify_receive_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.ItemSubType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Book
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_interact_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L6_2 = L6_2.Count
    if 0 < L6_2 then
      L6_2 = A0_2[L5_2]
      L6_2 = L6_2.ConfigID
      L7_2 = L1_2[L6_2]
      if L7_2 == nil then
        L8_2 = {}
        L7_2 = L8_2
        L7_2.id = L6_2
        L8_2 = A0_2[L5_2]
        L8_2 = L8_2.Count
        L7_2.num = L8_2
        L8_2 = A0_2[L5_2]
        L8_2 = L8_2.UID
        if 0 < L8_2 then
          L8_2 = A0_2[L5_2]
          L8_2 = L8_2.UID
          L7_2.uid = L8_2
        end
        L1_2[L6_2] = L7_2
      else
        L8_2 = L7_2.num
        L9_2 = A0_2[L5_2]
        L9_2 = L9_2.Count
        L8_2 = L8_2 + L9_2
        L7_2.num = L8_2
      end
    end
  end
  L2_2 = {}
  L3_2 = {}
  L4_2 = nil
  L5_2 = pairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.InventoryModule
    L11_2 = L11_2.GetItemRow
    L12_2 = L10_2.id
    L11_2 = L11_2(L12_2)
    if nil ~= L11_2 then
      L12_2 = L0_1._is_interact_reward
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L3_2
        L14_2 = L10_2
        L12_2(L13_2, L14_2)
    end
    else
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L2_2
      L14_2 = L10_2
      L12_2(L13_2, L14_2)
    end
    if nil ~= L11_2 then
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.Client
      L12_2 = L12_2.InventoryModule
      L12_2 = L12_2.IsItemImportHint
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if L12_2 then
        if L4_2 == nil then
          L12_2 = {}
          L4_2 = L12_2
        end
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L4_2
        L14_2 = L10_2
        L12_2(L13_2, L14_2)
      end
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
L0_1._get_reward_list_from_notify = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L6_2 = L6_2.Count
    if 0 < L6_2 then
      L6_2 = A0_2[L5_2]
      L6_2 = L6_2.ConfigID
      L7_2 = L1_2[L6_2]
      if L7_2 == nil then
        L8_2 = {}
        L7_2 = L8_2
        L7_2.id = L6_2
        L7_2.isExtra = true
        L8_2 = A0_2[L5_2]
        L8_2 = L8_2.Count
        L7_2.num = L8_2
        L1_2[L6_2] = L7_2
      else
        L8_2 = L7_2.num
        L9_2 = A0_2[L5_2]
        L9_2 = L9_2.Count
        L8_2 = L8_2 + L9_2
        L7_2.num = L8_2
      end
    end
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L2_2
end
L0_1._get_extra_reward_list_from_notify = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.ItemSubType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemSubType
  L2_2 = L2_2.Eidolon
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.InventoryModule
    L2_2 = L1_2
    L1_2 = L1_2.CheckIsHeroAvatarEidolonItemType
    L3_2 = A0_2.ID
    return L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2.ItemMainType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemMainType
  L2_2 = L2_2.AvatarCard
  L1_2 = L1_2 ~= L2_2
  return L1_2
end
L0_1._check_display_reward_condition = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.InventoryModule
    L8_2 = L7_2
    L7_2 = L7_2.GetItemDataByUID
    L9_2 = L6_2.UID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == nil then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.GlobalVars
      L8_2 = L8_2.s_ModuleManager
      L8_2 = L8_2.InventoryModule
      L9_2 = L8_2
      L8_2 = L8_2.GetItemDataByConfigID
      L10_2 = L6_2.ConfigID
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L8_2
    end
    L8_2 = false
    L9_2 = ipairs
    L10_2 = L1_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      if L13_2 == L7_2 then
        L8_2 = true
      end
    end
    if not L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1.get_item_data_table_by_item_display_data_table = L4_1
return L0_1
