local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.SkillDetailInfoExtDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.SkillDetailInfoExtDescPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExtraDescListDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Common/ExtDescListDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Contents/ExtDescListPanel/ExtDescList"
  L6_2 = "Ui.Battle.SkillDetailInfoExtDescPanel"
  L7_2 = "Ui.Battle.SkillDetailInfoExtDescPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.node_list_extra_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/ExtDescListPanel/HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hint_back = L1_2
end
L0_1._on_bind = L1_1
return L0_1
