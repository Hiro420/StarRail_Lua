local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkStreeteventBtnPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkStreetEventTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.panels_street_event_item = L1_2
  L1_2 = 1
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Content/StreetEventItem%d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.ClockParkStreeteventBtnPanel
    L9_2 = G
    L9_2 = L9_2.ClockParkStreeteventBtnPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.panels_street_event_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
