local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.SlotMachineImpl.ClockParkSlotMachineDisplayItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.SlotMachineImpl.ClockParkSlotMachineDisplayItemListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkSlotMachineDisplayPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ClockParkSlotMachineDisplayItemListPanel
  L4_2 = G
  L4_2 = L4_2.ClockParkSlotMachineDisplayItemListPanelBinder
  L5_2 = "Root/Contents/Scroll1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_scroll_list_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ClockParkSlotMachineDisplayItemListPanel
  L4_2 = G
  L4_2 = L4_2.ClockParkSlotMachineDisplayItemListPanelBinder
  L5_2 = "Root/Contents/Scroll2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_scroll_list_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ClockParkSlotMachineDisplayItemListPanel
  L4_2 = G
  L4_2 = L4_2.ClockParkSlotMachineDisplayItemListPanelBinder
  L5_2 = "Root/Contents/Scroll3"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_scroll_list_3 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
