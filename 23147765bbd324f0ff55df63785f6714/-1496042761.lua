local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideSPPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.set_max_sp
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._create_item_panels
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._items = L1_2
  L1_2 = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_points
  L2_2 = L2_2.childCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_points
    L6_2 = L5_2
    L5_2 = L5_2.GetChild
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BattleAetherDivideSPItemPanel
    L9_2 = G
    L9_2 = L9_2.BattleAetherDivideSPItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._items
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._create_item_panels = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherSpiritTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = #A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = A0_2._items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.set_color
    L10_2 = L2_2.Color
    L8_2(L9_2, L10_2)
  end
end
L0_1.set_color_by_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = L5_2 <= A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_cur_sp = L1_1
return L0_1
