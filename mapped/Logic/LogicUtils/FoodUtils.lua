local L0_1, L1_1, L2_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = G
L1_1 = L1_1.StaticClass
L2_1 = "FoodUtils"
L1_1 = L1_1(L2_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1.QuickConsumableItems
  L0_2 = L0_2.Count
  return L0_2
end
L1_1.open_quick_consumable_switch_count = L2_1
return L1_1
