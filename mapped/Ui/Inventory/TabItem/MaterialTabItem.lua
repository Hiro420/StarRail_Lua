local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.TabItem.InventoryTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MaterialTabItem"
L2_1 = G
L2_1 = L2_1.InventoryTabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_show_item_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_parent_type
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_order_panel
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._setup_order_panel = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L4_2 = L4_2.Default
  if A2_2 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = A1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = G
      L2_3 = L2_3.InventoryUtils
      L2_3 = L2_3.compare_sort_default
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A3_2
      return L2_3(L3_3, L4_3, L5_3)
    end
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L4_2 = L4_2.Rarity
  if A2_2 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.sort
    L5_2 = A1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = G
      L2_3 = L2_3.InventoryUtils
      L2_3 = L2_3.compare_sort_material_rarity
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A3_2
      return L2_3(L3_3, L4_3, L5_3)
    end
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = A2_2
  L4_2 = A2_2.ToString
  L4_2 = L4_2(L5_2)
  if A3_2 then
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A1_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L4_2
      L2_3 = A0_3[L2_3]
      L3_3 = L4_2
      L3_3 = A1_3[L3_3]
      L2_3 = L2_3 > L3_3
      return L2_3
    end
    L5_2(L6_2, L7_2)
  else
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A1_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = L4_2
      L2_3 = A0_3[L2_3]
      L3_3 = L4_2
      L3_3 = A1_3[L3_3]
      L2_3 = L2_3 < L3_3
      return L2_3
    end
    L5_2(L6_2, L7_2)
  end
end
L0_1._sort = L1_1
return L0_1
