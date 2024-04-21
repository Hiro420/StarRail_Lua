local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendChatAddPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Friend/Chat/FriendChatSessionPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/EmptyPanel/BtnAddFriend"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/SpeedList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.friend_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/PSNEmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty_ps = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/SpeedList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/EmptyPanel/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/EmptyPanel/BtnChatBubbleChange"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bubble = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/MyFriendPanel/MyFriendPanel/Contents/ListInfoPanel/EmptyPanel/BtnChatBubbleChange/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bubble_reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
