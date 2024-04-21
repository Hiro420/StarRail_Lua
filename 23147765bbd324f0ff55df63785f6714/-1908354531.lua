local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingItemListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingTextItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingTextItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingImageItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingImageItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MessageReplyPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ReplyItemList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageWaitingItemListPanel
  L4_2 = G
  L4_2 = L4_2.MessageWaitingItemListPanelBinder
  L5_2 = "ReplyItemList"
  L6_2 = G
  L6_2 = L6_2.MessageWaitingTextItemPanel
  L7_2 = G
  L7_2 = L7_2.MessageWaitingTextItemPanelBinder
  L8_2 = NavigationType
  L8_2 = L8_2.Vertical
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.panel_reply_text = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageWaitingItemListPanel
  L4_2 = G
  L4_2 = L4_2.MessageWaitingItemListPanelBinder
  L5_2 = "ReplyImgList"
  L6_2 = G
  L6_2 = L6_2.MessageWaitingImageItemPanel
  L7_2 = G
  L7_2 = L7_2.MessageWaitingImageItemPanelBinder
  L8_2 = NavigationType
  L8_2 = L8_2.Horizontal
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.panel_reply_image = L1_2
end
L0_1._on_bind = L1_1
return L0_1
