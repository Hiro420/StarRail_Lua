local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "SuperScrollViewUtils"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 ~= nil then
    L1_2 = A0_2.ItemList
    L1_2 = L1_2.Count
    L2_2 = 0
    L3_2 = L1_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2.ItemList
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.UserObjectData
      if L6_2 ~= nil then
        L6_2 = A0_2.ItemList
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.UserObjectData
        L7_2 = L6_2
        L6_2 = L6_2.dispose
        L6_2(L7_2)
        L6_2 = A0_2.ItemList
        L6_2 = L6_2[L5_2]
        L6_2.UserObjectData = nil
      end
    end
    L2_2 = A0_2.ItemPoolList
    L2_2 = L2_2.Count
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2.ItemPoolList
      L7_2 = L7_2[L6_2]
      L9_2 = L7_2
      L8_2 = L7_2.ClearTmpRecycledItem
      L8_2(L9_2)
      L8_2 = L7_2.PooledItemList
      L8_2 = L8_2.Count
      L9_2 = 0
      L10_2 = L8_2 - 1
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L7_2.PooledItemList
        L13_2 = L13_2[L12_2]
        L13_2 = L13_2.UserObjectData
        if L13_2 ~= nil then
          L13_2 = L7_2.PooledItemList
          L13_2 = L13_2[L12_2]
          L13_2 = L13_2.UserObjectData
          L14_2 = L13_2
          L13_2 = L13_2.dispose
          L13_2(L14_2)
          L13_2 = L7_2.PooledItemList
          L13_2 = L13_2[L12_2]
          L13_2.UserObjectData = nil
        end
      end
    end
  end
end
L0_1.DisposeList = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 ~= nil then
    L1_2 = A0_2.ItemGroupList
    L1_2 = L1_2.Count
    L2_2 = 0
    L3_2 = L1_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2.ItemGroupList
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.First
      while L7_2 ~= nil do
        L8_2 = L7_2.UserObjectData
        if L8_2 ~= nil then
          L8_2 = L7_2.UserObjectData
          L9_2 = L8_2
          L8_2 = L8_2.dispose
          L8_2(L9_2)
          L7_2.UserObjectData = nil
        end
        L7_2 = L7_2.NextItem
      end
    end
    L2_2 = A0_2.ItemPoolList
    L2_2 = L2_2.Count
    L3_2 = 0
    L4_2 = L2_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2.ItemPoolList
      L7_2 = L7_2[L6_2]
      L9_2 = L7_2
      L8_2 = L7_2.ClearTmpRecycledItem
      L8_2(L9_2)
      L8_2 = L7_2.PooledItemList
      L8_2 = L8_2.Count
      L9_2 = 0
      L10_2 = L8_2 - 1
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L7_2.PooledItemList
        L13_2 = L13_2[L12_2]
        L13_2 = L13_2.UserObjectData
        if L13_2 ~= nil then
          L13_2 = L7_2.PooledItemList
          L13_2 = L13_2[L12_2]
          L13_2 = L13_2.UserObjectData
          L14_2 = L13_2
          L13_2 = L13_2.dispose
          L13_2(L14_2)
          L13_2 = L7_2.PooledItemList
          L13_2 = L13_2[L12_2]
          L13_2.UserObjectData = nil
        end
      end
    end
  end
end
L0_1.DisposeGrid = L1_1
