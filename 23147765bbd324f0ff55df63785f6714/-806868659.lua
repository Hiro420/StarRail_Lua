local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleConditionListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleConditionListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleAutoCloseToastPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleAutoCloseToastPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleLoseConditionDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Battle/Info/BattleConditionInfoDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAutoCloseToastPanel
  L4_2 = G
  L4_2 = L4_2.BattleAutoCloseToastPanelBinder
  L5_2 = "Contents/ConditionInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.auto_close_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleConditionListPanel
  L4_2 = G
  L4_2 = L4_2.BattleConditionListPanelBinder
  L5_2 = "Contents/ConditionInfoPanel/InfoPanel/Content/BasicInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.condition_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
