local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.ResurrectionRoleDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MPItemUseDialogBinder"
L2_1 = G
L2_1 = L2_1.ResurrectionRoleDialogBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_bind
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/LeftPanel/TeamSkillRightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mp_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "Contents/DescPanel/LeftPanel/TeamSkillRightPanel/SkillPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mp_static_list_view = L1_2
end
L0_1._on_bind = L1_1
return L0_1
