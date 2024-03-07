local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Contact.PhoneMessageContactListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Contact.PhoneMessageContactListPanelBinder"
L0_1(L1_1)
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
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageSkipBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageSkipBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MessageMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Adventure/Message/PhoneMessagePage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxMessage"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_in_chat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_not_chat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneMessageContactListPanel
  L4_2 = G
  L4_2 = L4_2.PhoneMessageContactListPanelBinder
  L5_2 = "Root/BoxContact"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_contact_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageContactInfoPanel
  L4_2 = G
  L4_2 = L4_2.MessageContactInfoPanelBinder
  L5_2 = "Root/BoxMessage/BoxTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_contact_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneMessageChatPanel
  L4_2 = G
  L4_2 = L4_2.PhoneMessageChatPanelBinder
  L5_2 = "Root/BoxMessage/BoxMessage"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_chat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageSkipBtnPanel
  L4_2 = G
  L4_2 = L4_2.MessageSkipBtnPanelBinder
  L5_2 = "BtnAnimationSkip"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_skip_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BoxContact/BtnOrderPanel/BtnChatBubbleChange"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bubble = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxContact/BtnOrderPanel/BtnChatBubbleChange/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bubble_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/BoxContact"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
