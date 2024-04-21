local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "StoryLineSwitchButtonPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.switch_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StoryLineIconPanel
  L4_2 = G
  L4_2 = L4_2.StoryLineIconPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.icon_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
