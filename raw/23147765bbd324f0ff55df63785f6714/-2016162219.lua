local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamMemberInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamMemberInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberStatusPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Team/Widget/TeamMemberEditIcon.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.transform = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TeamMemberInfoPanel
  L4_2 = G
  L4_2 = L4_2.TeamMemberInfoPanelBinder
  L5_2 = "TeamMemberEditContents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_member_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusPanel/Empty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "StatusPanel/Unchosen"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_un_choose_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ClickPanel/ClickAdd"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ClickPanel/ClickCharacter"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_character = L1_2
end
L0_1._on_bind = L1_1
return L0_1
