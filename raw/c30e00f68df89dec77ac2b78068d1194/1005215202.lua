local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.MultiAvatarSortPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.MultiAvatarSortPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MultiAvatarSelectPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ListPanel/ScrollViewMuiti"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.select_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MultiAvatarSortPanel
  L4_2 = G
  L4_2 = L4_2.MultiAvatarSortPanelBinder
  L5_2 = "ListPanel/BtnList"
  L6_2 = A0_2._owner
  L6_2 = L6_2.__name
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_avatar_sort = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ListPanel/EmptyStatusTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
end
L0_1._on_bind = L1_1
return L0_1
