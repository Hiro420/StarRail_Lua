local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeartDialFullPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.MoodEventPanelIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Maze/MiniGame/ClockBoy/Widget/MoodEventPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
end
L0_1._on_bind = L2_1
return L0_1
