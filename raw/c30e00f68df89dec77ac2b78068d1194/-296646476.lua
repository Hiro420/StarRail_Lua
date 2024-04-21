local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeHudFuncEntrancePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "RightTopArea/AppIconList"
  L6_2 = "Ui.Phone.HudIconItemPanel"
  L7_2 = "Ui.Phone.HudIconItemPanelBinder"
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.right_hud_func_entrance_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "LeftUpInfo/FunctionBtn/AppIconPanel"
  L6_2 = "Ui.Phone.HudIconItemPanel"
  L7_2 = "Ui.Phone.HudIconItemPanelBinder"
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.left_hud_func_entrance_panel = L1_2
end
L0_1._on_bind = L1_1
