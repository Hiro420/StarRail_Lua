local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnInviteProgressItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnInviteProgressItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.PlayerReturnRecallPanelIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PlayerReturnInviteActivityPanelBinder"
L3_1 = G
L3_1 = L3_1.TabItemBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.auto_bind
  L4_2 = L0_1
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "[%s] auto bind fail"
    L4_2 = A0_2.__name
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.CommonActivityStateTitlePanel
  L5_2 = G
  L5_2 = L5_2.CommonActivityStateTitlePanelBinder
  L6_2 = A0_2.panel_title_root
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_title = L2_2
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.PlayerReturnInviteProgressItemPanel
  L6_2 = G
  L6_2 = L6_2.PlayerReturnInviteProgressItemPanelBinder
  L7_2 = A0_2.panel_progress_item_root_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel_with_root_trans
  L6_2 = G
  L6_2 = L6_2.PlayerReturnInviteProgressItemPanel
  L7_2 = G
  L7_2 = L7_2.PlayerReturnInviteProgressItemPanelBinder
  L8_2 = A0_2.panel_progress_item_root_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel_with_root_trans
  L7_2 = G
  L7_2 = L7_2.PlayerReturnInviteProgressItemPanel
  L8_2 = G
  L8_2 = L8_2.PlayerReturnInviteProgressItemPanelBinder
  L9_2 = A0_2.panel_progress_item_root_3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._create_panel_with_root_trans
  L8_2 = G
  L8_2 = L8_2.PlayerReturnInviteProgressItemPanel
  L9_2 = G
  L9_2 = L9_2.PlayerReturnInviteProgressItemPanelBinder
  L10_2 = A0_2.panel_progress_item_root_4
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._create_panel_with_root_trans
  L9_2 = G
  L9_2 = L9_2.PlayerReturnInviteProgressItemPanel
  L10_2 = G
  L10_2 = L10_2.PlayerReturnInviteProgressItemPanelBinder
  L11_2 = A0_2.panel_progress_item_root_5
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._create_panel_with_root_trans
  L10_2 = G
  L10_2 = L10_2.PlayerReturnInviteProgressItemPanel
  L11_2 = G
  L11_2 = L11_2.PlayerReturnInviteProgressItemPanelBinder
  L12_2 = A0_2.panel_progress_item_root_6
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  A0_2.panel_progress_item_arr = L2_2
end
L1_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.ActivityTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.ActivityTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_btn_reddot = L1_2
end
L1_1._on_tab_btn_bind = L2_1
return L1_1
