local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.Common.AetherCommonItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTeamEditPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.spirit_panel_list = L1_2
  L1_2 = {}
  A0_2.node_member_list = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Member%d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.AetherCommonItemIconPanel
    L9_2 = G
    L9_2 = L9_2.AetherCommonItemIconPanelBinder
    L10_2 = L5_2
    L11_2 = "/AetherDivideItemIcon"
    L10_2 = L10_2 .. L11_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = A0_2.spirit_panel_list
    L8_2 = A0_2.spirit_panel_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L7_2[L8_2] = L6_2
    L7_2 = A0_2.node_member_list
    L8_2 = A0_2.node_member_list
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L10_2 = A0_2
    L9_2 = A0_2._safe_find
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    L7_2[L8_2] = L9_2
  end
end
L0_1._on_bind = L1_1
return L0_1
