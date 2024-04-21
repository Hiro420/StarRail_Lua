local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceItemDotListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceItemDotListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceCommonSysPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceCommonSysPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueDLCEntranceListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueDLCEntranceListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueSimulatedEntranceListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueSimulatedEntranceListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.RogueSelectMain2DPageIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueSelectMainPageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/3DSelectUI/RogueSelectMain2DPage.prefab"
  return L0_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueEntranceCommonSysPanel
  L4_2 = G
  L4_2 = L4_2.RogueEntranceCommonSysPanelBinder
  L5_2 = A0_2.panel_common_sys_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_common_sys = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueEntranceItemDotListPanel
  L4_2 = G
  L4_2 = L4_2.RogueEntranceItemDotListPanelBinder
  L5_2 = A0_2.panel_item_dot_list_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_item_dot_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueSimulatedEntranceListPanel
  L4_2 = G
  L4_2 = L4_2.RogueSimulatedEntranceListPanelBinder
  L5_2 = A0_2.panel_simulated_entrance_list_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_simulated_entrance_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueDLCEntranceListPanel
  L4_2 = G
  L4_2 = L4_2.RogueDLCEntranceListPanelBinder
  L5_2 = A0_2.panel_dlc_entrance_list_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dlc_entrance_list = L1_2
end
L1_1._on_bind = L2_1
return L1_1
