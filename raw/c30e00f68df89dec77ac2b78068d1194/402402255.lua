local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.Journey.PlayerReturnJourneyQuestionnaireData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.Journey.PlayerReturnJourneyHotspotData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.Journey.PlayerReturnJourneyInvitationData"
L0_1(L1_1)
L0_1 = {}
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.PlayerReturnJourneyItemType
L1_1 = L1_1.Questionnaire
L2_1 = G
L2_1 = L2_1.PlayerReturnJourneyQuestionnaireData
L0_1[L1_1] = L2_1
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.PlayerReturnJourneyItemType
L1_1 = L1_1.Hotspot
L2_1 = G
L2_1 = L2_1.PlayerReturnJourneyHotspotData
L0_1[L1_1] = L2_1
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.PlayerReturnJourneyItemType
L1_1 = L1_1.Invitation
L2_1 = G
L2_1 = L2_1.PlayerReturnJourneyInvitationData
L0_1[L1_1] = L2_1
L1_1 = require
L2_1 = "Ui.Activity.PlayerReturn.Components.PlayerReturnJourneyQuestionnairePanel"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Activity.PlayerReturn.Components.PlayerReturnJourneyQuestionnairePanelBinder"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Activity.PlayerReturn.Components.PlayerReturnJourneyHotspotPanel"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Activity.PlayerReturn.Components.PlayerReturnJourneyHotspotPanelBinder"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Activity.PlayerReturn.Components.PlayerReturnJourneyInvitationPanel"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Activity.PlayerReturn.Components.PlayerReturnJourneyInvitationPanelBinder"
L1_1(L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PlayerReturnJourneyItemType
L2_1 = L2_1.Questionnaire
L3_1 = G
L3_1 = L3_1.PlayerReturnJourneyQuestionnairePanel
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PlayerReturnJourneyItemType
L2_1 = L2_1.Hotspot
L3_1 = G
L3_1 = L3_1.PlayerReturnJourneyHotspotPanel
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PlayerReturnJourneyItemType
L2_1 = L2_1.Invitation
L3_1 = G
L3_1 = L3_1.PlayerReturnJourneyInvitationPanel
L1_1[L2_1] = L3_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PlayerReturnJourneyItemType
L3_1 = L3_1.Questionnaire
L4_1 = G
L4_1 = L4_1.PlayerReturnJourneyQuestionnairePanelBinder
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PlayerReturnJourneyItemType
L3_1 = L3_1.Hotspot
L4_1 = G
L4_1 = L4_1.PlayerReturnJourneyHotspotPanelBinder
L2_1[L3_1] = L4_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PlayerReturnJourneyItemType
L3_1 = L3_1.Invitation
L4_1 = G
L4_1 = L4_1.PlayerReturnJourneyInvitationPanelBinder
L2_1[L3_1] = L4_1
L3_1 = G
L3_1 = L3_1.StaticClass
L4_1 = "PlayerReturnJourneyEnum"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = L0_1[A0_2]
  return L1_2
end
L3_1.get_data_class = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L1_1[A0_2]
  return L1_2
end
L3_1.get_panel_class = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L2_1[A0_2]
  return L1_2
end
L3_1.get_panel_binder_class = L4_1
return L3_1
