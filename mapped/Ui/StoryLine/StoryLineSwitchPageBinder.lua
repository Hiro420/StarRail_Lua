local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Generate.StoryLineSwitchPageIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "StoryLineSwitchPageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/StoryLine/StoryLineSwitchPage.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L1_1._on_bind = L2_1
return L1_1
