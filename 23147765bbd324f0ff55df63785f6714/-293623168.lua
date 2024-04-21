local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleAutoCloseToastPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleAutoCloseToastPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEnvBuffHintDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Battle/Info/BattleEnvironmentInfoDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAutoCloseToastPanel
  L4_2 = G
  L4_2 = L4_2.BattleAutoCloseToastPanelBinder
  L5_2 = "Contents/EnvironmentInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.auto_close_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/EnvironmentInfoPanel/InfoPanel/Content/BasicInfo/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_buff_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Contents/EnvironmentInfoPanel/InfoPanel/Content/BasicInfo/Frame/IconEvent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_property = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/EnvironmentInfoPanel/InfoPanel/Content/BasicInfo/DescPanel"
  L6_2 = "Ui.Battle.BattleEnvBuffPanel"
  L7_2 = "Ui.Battle.BattleEnvBuffPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.buff_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
