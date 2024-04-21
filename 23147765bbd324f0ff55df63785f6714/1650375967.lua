local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyPackControlPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyPackControlPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyFovPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyFovPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackShipFuncBtnsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.AlleyPackShipFuncBtnsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyVirtualCursorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Pack.Widget.ActivityAlleyVirtualCursorPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyPackShipControlPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyPackControlPanel
  L4_2 = G
  L4_2 = L4_2.ActivityAlleyPackControlPanelBinder
  L5_2 = "UI3DBtnContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_3d_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyFovPanel
  L4_2 = G
  L4_2 = L4_2.AlleyFovPanelBinder
  L5_2 = "SliderPanelHorizontal"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_fov = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AlleyPackShipFuncBtnsPanel
  L4_2 = G
  L4_2 = L4_2.AlleyPackShipFuncBtnsPanelBinder
  L5_2 = "ShipFunction"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.ship_func_btns_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityAlleyVirtualCursorPanel
  L4_2 = G
  L4_2 = L4_2.ActivityAlleyVirtualCursorPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_virtual_cursor = L1_2
end
L0_1._on_bind = L1_1
return L0_1
