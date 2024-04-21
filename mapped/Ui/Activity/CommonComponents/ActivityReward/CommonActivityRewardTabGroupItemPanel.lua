local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonActivityRewardTabGroupItemPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._tab_group_row = A3_2
  A0_2._red_dot_name = A4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_group_row
  L3_2 = L3_2.QuestTabGroupName
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._red_dot_name
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = A0_2._red_dot_name
    L4_2 = A0_2._tab_group_row
    L4_2 = L4_2.QuestTabGroupID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reddot
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_added = L1_1
return L0_1
