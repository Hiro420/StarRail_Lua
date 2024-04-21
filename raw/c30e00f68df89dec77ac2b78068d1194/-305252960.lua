local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkRaidBtnPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkRaidTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "ProgressPanel/Root/TextPanel/ProgressNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ProgressPanel/Root/ProgressBar/Bar/FillPanel/Fill"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_progress = L1_2
  L1_2 = {}
  A0_2.slider_progresses = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "RaidLevelEntrancePanel/ProgressPanel/ProgressBar/Bar/FillPanel/Slider%d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_get_cmpt
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Slider
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.slider_progresses
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = {}
  A0_2.panels_raid_item = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "RaidLevelEntrancePanel/RaidEntranceItem%d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.ClockParkRaidBtnPanel
    L9_2 = G
    L9_2 = L9_2.ClockParkRaidBtnPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.panels_raid_item
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
