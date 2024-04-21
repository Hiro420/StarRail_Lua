local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueLayerMissionFinishPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueDimensionIncrementItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueCabinetMissionFinishItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionGraphPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueLayerExploreFinishDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/DicePassLvMissionToastDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueLayerMissionFinishPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueLayerMissionFinishPanelBinder
  L5_2 = "Animator_Root/Contents/BoxDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.cabinet_mission_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDimensionGraphPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDimensionGraphPanelBinder
  L5_2 = "Animator_Root/Contents/MainPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.graph_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Animator_Root/Contents/BoxInfo/TxtDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.layer_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Animator_Root/Contents/DescPanel/Root/BoxDesc/TxtDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.aeon_room_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Animator_Root/Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Animator_Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Animator_Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event_cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Animator_Root/Contents/BoxDesc/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Animator_Root/Contents/HintPanel/KeyMapHIntInfo2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.scroll_hint_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
