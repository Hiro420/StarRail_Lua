local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchSubmitItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._icon_panel = L1_2
  L1_2 = A0_2._icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.ItemID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = A1_2.ItemID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2.Count
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_view = L2_1
return L0_1
