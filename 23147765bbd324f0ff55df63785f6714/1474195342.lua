local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneQuickReplyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneQuickReplyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageSkipBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageSkipBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhoneNoticePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Adventure/Message/PhoneNotificationsSimplePage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/Contents/Content/PhoneNotificationsContactPanel/Contents/ContactScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/Content/PhoneNotificationsContactPanel/Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/Content/PhoneNotificationsContactPanel/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/Content/PhoneNotificationsQuickReplyPanel/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reply_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/Content/PhoneNotificationsContactPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_main = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneQuickReplyPanel
  L4_2 = G
  L4_2 = L4_2.PhoneQuickReplyPanelBinder
  L5_2 = "Root/Contents/Content/PhoneNotificationsQuickReplyPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reply = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MessageSkipBtnPanel
  L4_2 = G
  L4_2 = L4_2.MessageSkipBtnPanelBinder
  L5_2 = "BtnAnimationSkip"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_skip_btn = L1_2
end
L0_1._on_bind = L1_1
return L0_1
