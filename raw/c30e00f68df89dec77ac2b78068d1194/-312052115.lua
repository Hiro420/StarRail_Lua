local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatContactListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatContactListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatMessageListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatMessageListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatSendPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatSendPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PlatformInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendChatPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Friend/Chat/FriendChatPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage/BoxTitle/BoxInfo/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FriendChatContactListPanel
  L4_2 = G
  L4_2 = L4_2.FriendChatContactListPanelBinder
  L5_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxContact"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_contact_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FriendChatMessageListPanel
  L4_2 = G
  L4_2 = L4_2.FriendChatMessageListPanelBinder
  L5_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage/BoxMessage"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_message_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FriendChatSendPanel
  L4_2 = G
  L4_2 = L4_2.FriendChatSendPanelBinder
  L5_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_send = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_in_chat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxContact"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.nodes_not_empty = L1_2
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
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage/BoxTitle/BoxInfo/BtnMore"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_more = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxEmpty/BtnAddFriend"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxContact/BtnAdd"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_contact_add = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxContact/BtnChatBubbleChange"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bubble = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxEmpty/BtnChatBubbleChange"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bubble2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxContact/BtnChatBubbleChange/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bubble_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxEmpty/BtnChatBubbleChange/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bubble_reddot2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlatformInfoPanel
  L4_2 = G
  L4_2 = L4_2.PlatformInfoPanelBinder
  L5_2 = "Root/PanelContent/FriendChatPanel/FriendChatPanel/Contents/BoxMessage/BoxTitle/BoxInfo/PlatformTag"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_platform = L1_2
end
L0_1._on_bind = L1_1
return L0_1
