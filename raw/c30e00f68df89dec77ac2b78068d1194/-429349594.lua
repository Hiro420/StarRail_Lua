local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Team.TeamLimitItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamLimitItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamLimitPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ConditionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.condition_root = L1_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._has_title
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._safe_find
    L3_2 = "TitlePanel"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2.title_root = L1_2
  end
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.TeamLimitItemPanel
  L5_2 = G
  L5_2 = L5_2.TeamLimitItemPanelBinder
  L6_2 = "ConditionPanel/1"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[1] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.TeamLimitItemPanel
  L5_2 = G
  L5_2 = L5_2.TeamLimitItemPanelBinder
  L6_2 = "ConditionPanel/2"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[2] = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.TeamLimitItemPanel
  L5_2 = G
  L5_2 = L5_2.TeamLimitItemPanelBinder
  L6_2 = "ConditionPanel/3"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L1_2[3] = L2_2
  A0_2.panel_limit_item = L1_2
end
L0_1._on_bind = L1_1
return L0_1
