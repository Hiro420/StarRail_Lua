local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneMessageChatPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneMessageChatPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageContactInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhoneQuickReplyPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageContactInfoPanel
  L4_2 = G
  L4_2 = L4_2.MessageContactInfoPanelBinder
  L5_2 = "Contents/BoxTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_contact_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneMessageChatPanel
  L4_2 = G
  L4_2 = L4_2.PhoneMessageChatPanelBinder
  L5_2 = "Contents/BoxMessage"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reply = L1_2
end
L0_1._on_bind = L1_1
return L0_1
