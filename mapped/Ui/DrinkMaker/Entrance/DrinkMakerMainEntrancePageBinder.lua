local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.DrinkMakerMainEntrancePageIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "DrinkMakerMainEntrancePageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/DrinkMaker/DrinkMakerMainEntrancePage.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerRewardPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerRewardPanelBinder
  L5_2 = "Root/Contents/RewardBtnPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
end
L1_1._on_bind = L2_1
return L1_1
