local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueActionPointBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueActionPointBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardSelectTipPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardSelectTipPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueBoardBgFramePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousBattleExtendInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuChessMapTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/DLC/Dice/DiceMapPanel.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueActionPointBtnPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueActionPointBtnPanelBinder
  L5_2 = "ConsolePanel/Root/APPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_action_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardBgFramePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardBgFramePanelBinder
  L5_2 = "ConsolePanel/Root/Frame/Root/Frame"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_bg_frame = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "ConsolePanel/Root/BoxMovePanel/IconPanel/IconBg/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "ConsolePanel/Root/BoxMovePanel/IconPanel/TitlePanel/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_layer_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardMapPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardMapPanelBinder
  L5_2 = "ConsolePanel/Root/Frame/Root/BoxMap"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_board_map = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardSelectTipPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardSelectTipPanelBinder
  L5_2 = "ConsolePanel/Root/BoxTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_tip_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "ConsolePanel/Root/BoxMovePanel/BtnHelp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ConsolePanel/Root/Frame/Root/NousValuePanelRoot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_nous_value_slot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousBattleExtendInfoPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousBattleExtendInfoPanelBinder
  L5_2 = "ConsolePanel/Root/BtnOpenExtendPanelRoot/BtnOpenExtendPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_extend_info = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_selected = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UnSelected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_unselected = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
