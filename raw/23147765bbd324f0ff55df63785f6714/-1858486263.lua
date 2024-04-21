local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.VirtualCursor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.VirtualCursorBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAlleyVirtualCursorPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Map/Widget/MapVirtualCursor.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.VirtualCursor
  L4_2 = G
  L4_2 = L4_2.VirtualCursorBinder
  L5_2 = "CommonVirtualCursor"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.pane_virtual_cursor = L1_2
end
L0_1._on_bind = L1_1
return L0_1
