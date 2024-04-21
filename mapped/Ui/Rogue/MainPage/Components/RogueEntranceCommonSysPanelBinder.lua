local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceTypeSwitchBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceTypeSwitchBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceSimulatedSysPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceSimulatedSysPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceDLCSysPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueEntranceDLCSysPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.RogueEntranceCommonSysPanelIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEntranceCommonSysPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
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
  L3_2 = L3_2.RogueEntranceTypeSwitchBtnPanel
  L4_2 = G
  L4_2 = L4_2.RogueEntranceTypeSwitchBtnPanelBinder
  L5_2 = A0_2.panel_type_switch_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_type_switch_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueEntranceSimulatedSysPanel
  L4_2 = G
  L4_2 = L4_2.RogueEntranceSimulatedSysPanelBinder
  L5_2 = A0_2.panel_simulated_sys_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_simulated_sys = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.RogueEntranceDLCSysPanel
  L4_2 = G
  L4_2 = L4_2.RogueEntranceDLCSysPanelBinder
  L5_2 = A0_2.panel_dlc_sys_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dlc_sys = L1_2
end
L1_1._on_bind = L2_1
return L1_1
