local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.Panels.AetherAdventureTeamMemberListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.Panels.AetherTeamMemberIconChibiPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherMaze.Panels.AetherTeamMemberIconChibiPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherAdventureTeamMemberListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._member_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_list
  L1_2 = L1_2.childCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_icon_list
    L7_2 = L6_2
    L6_2 = L6_2.GetChild
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = {}
  A0_2._member_panels = L2_2
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AetherTeamMemberIconChibiPanel
    L9_2 = G
    L9_2 = L9_2.AetherTeamMemberIconChibiPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.async_bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_icon_list
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._member_panels
    L9_2 = A0_2._member_panels
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._member_panels
  if L1_2 == nil then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._member_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._member_panels
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L6_2(L7_2)
    end
  end
end
L0_1.setup_view = L1_1
return L0_1
