local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Tutorial.TutorialPunkLordMainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordMainPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TutorialPunkLordMainPage"
L3_1 = G
L3_1 = L3_1.PunkLordMainPage
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TutorialPunkLordMainPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordMainPanelBinder
  L5_2 = A0_2._punklord_ui3d
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_main_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_main_panel
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._init_main_panel = L2_1
return L1_1
