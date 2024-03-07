local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.MapContainer.MapBaseIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapTeleportIconPanel"
L2_1 = G
L2_1 = L2_1.MapBaseIconPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._icon_game_object_list = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._show_layer = A1_2
  A0_2._big_map_data = A2_2
  A0_2._map_icon_data = A3_2
  L4_2 = MapIconShowType
  L4_2 = L4_2.Teleport
  A0_2._show_type = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._create_icon_node
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_icon_data
  L1_2 = L1_2.PropState
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PropState
  L2_2 = L2_2.CheckPointEnable
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_icon_can_click = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
