local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendChatContactListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "BoxContactList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoScrollRedDot
  L4_2 = "BoxContactList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_scroll_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxContactList/BoxRedDotTips/RedDotArrowTop"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_top_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxContactList/BoxRedDotTips/RedDotArrowBottom"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bottom_reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
