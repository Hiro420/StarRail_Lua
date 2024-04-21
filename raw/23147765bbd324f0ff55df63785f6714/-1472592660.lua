local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritMainDetailStatisticsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AvatarPropertyType
L3_1 = L3_1.MaxHP
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.AvatarPropertyType
L4_1 = L4_1.Attack
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.AvatarPropertyType
L5_1 = L5_1.Speed
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailStatisticsPanelSingleItem"
  L6_2 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritMainDetail.AetherSpiritMainDetailStatisticsPanelSingleItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._property_list_panel = L1_2
  L1_2 = A0_2._property_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prefab_load_property
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._spirit_proerpty_data_table = L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_desc_txt_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._spirit_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._generate_spirit_proerpty_data_table
  L2_2(L3_2)
  L2_2 = A0_2._property_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.rebind_child_node
  L4_2 = A0_2._spirit_proerpty_data_table
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._property_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._spirit_proerpty_data_table
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.SpiritDescription
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._spirit_proerpty_data_table = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = {}
    L6_2 = L2_1[L4_2]
    L5_2.Property = L6_2
    L6_2 = A0_2._spirit_data
    L7_2 = L6_2
    L6_2 = L6_2.GetPropertyUIData
    L8_2 = L2_1[L4_2]
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.UIData = L6_2
    L5_2.WithPlus = false
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._spirit_proerpty_data_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._generate_spirit_proerpty_data_table = L3_1
return L0_1
