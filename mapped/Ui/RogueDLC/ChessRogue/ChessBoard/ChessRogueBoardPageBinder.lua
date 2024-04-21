local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueDiceTurnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueDiceTurnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueDiceEventPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueDiceEventPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueMapMainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueMapMainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueBoardFramePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueBoardFramePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardTeamListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardTeamListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/DiceMainStagePage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceTurnPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceTurnPanelBinder
  L5_2 = "Root/DiceTurnPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dice_turn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceEventPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceEventPanelBinder
  L5_2 = "Root/DiceEventPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dice_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueMapMainPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueMapMainPanelBinder
  L5_2 = "Root/DiceMainConsolePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_map_main = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DiceBossChoosePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.panel_dice_boss_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DiceBossChoosePanel/Root/BossPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.panel_dice_boss_loader_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardFramePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardFramePanelBinder
  L5_2 = "Root/FramePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_board_frame = L1_2
  L1_2 = A0_2.panel_dice_event
  L2_2 = L1_2
  L1_2 = L1_2.init_map_panel
  L3_2 = A0_2.panel_board_frame
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.panel_map_main
  L2_2 = L1_2
  L1_2 = L1_2.init_map_panel
  L3_2 = A0_2.panel_board_frame
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HUDPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hud_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardTeamListPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardTeamListPanelBinder
  L5_2 = "Root/HUDPanel/TeamList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Root/HUDPanel/RightTopArea/AppIconList"
  L6_2 = "Ui.Phone.HudIconItemPanel"
  L7_2 = "Ui.Phone.HudIconItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.top_func_entrances_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/NousValuePanel/ConsolePanel/Root/NousValuePanelRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_nous_value_slot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
