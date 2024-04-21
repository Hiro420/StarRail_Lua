local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyEventRollDicePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyEventRollDicePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyEventTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolyEventTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.OptionalEvent.ActivityMonopolyEventOptionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.OptionalEvent.ActivityMonopolyEventOptionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyRandomOptionPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.MonopolyEventRollDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Monopoly/MonopolyEventRollDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyEventRollDicePanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyEventRollDicePanelBinder
  L5_2 = "Root/PanelContent"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_roll_dice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyEventTalkPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyEventTalkPanelBinder
  L5_2 = "Root/PanelContent/SimpleTalkPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyEventOptionPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyEventOptionPanelBinder
  L5_2 = "Root/PanelContent/OptionPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_event_option = L1_2
end
L0_1._on_bind = L2_1
return L0_1
