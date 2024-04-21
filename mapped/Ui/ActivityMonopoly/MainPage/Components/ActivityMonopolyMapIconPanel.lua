local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMapIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.GroundLayer
  L2_2 = L2_2.IconPath
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "3DBlockIcon"
  L5_2 = "MapIcon"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.gsub
  L5_2 = "Block"
  L6_2 = "Map"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.icon
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
return L0_1
