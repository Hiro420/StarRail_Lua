local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BuffIconNode
  L4_2 = G
  L4_2 = L4_2.BuffIconNodeBinder
  L5_2 = "BuffIcon/BuffIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BuffIconNode
  L4_2 = G
  L4_2 = L4_2.BuffIconNodeBinder
  L5_2 = "SpecialBuffIcon/SpecialBuffIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.special_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SpecialBuffIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_special_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LongPressArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.buff_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "BuffIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_loader = L1_2
end
L0_1._on_bind = L1_1
return L0_1
