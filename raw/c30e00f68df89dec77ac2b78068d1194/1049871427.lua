local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FoodItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._enable_show_quick_consumable_mark = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._inventory_item_icon_panel = A1_2
end
L0_1.set_inventory_item_icon_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._item = A1_2
  L2_2 = A0_2._enable_show_quick_consumable_mark
  if L2_2 then
    L2_2 = A1_2.ConfigID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.InventoryModule
    L3_2 = L3_2.QuickConsumableItem
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.InventoryModule
      L2_2 = L2_2.DisableQuickConsumableItem
      if L2_2 == nil then
        L2_2 = A0_2._inventory_item_icon_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_quick_consumable_mark
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.setup_view_by_item = L1_1
function L1_1(A0_2, A1_2)
  A0_2._enable_show_quick_consumable_mark = A1_2
end
L0_1.set_enable_show_quick_consumable_mark = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._item = nil
  A0_2._inventory_item_icon_panel = nil
end
L0_1._on_dispose = L1_1
return L0_1
