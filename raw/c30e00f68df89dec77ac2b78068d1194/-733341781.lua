local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueActionPointBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueActionPointBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueDiceEventInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueDiceEventInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardSelectTipPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardSelectTipPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMapMainPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/Widget/DiceMainConsolePanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueActionPointBtnPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueActionPointBtnPanelBinder
  L5_2 = "Content/ConsolePanel/Root/APPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_action_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceEventInfoPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceEventInfoPanelBinder
  L5_2 = "Content/ConsolePanel/Root/InfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_event_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Content/BtnPanel/BtnQuestion"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Content/BtnPanel/BoxOperation/BoxDo/BtnDo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/BtnPanel/BoxOperation/BoxDo/BtnDo/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_confirm = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/BoxOperation/BoxDo/BtnDo/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_confirm_key_map_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueBoardSelectTipPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardSelectTipPanelBinder
  L5_2 = "Content/BtnPanel/BoxTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_tip_select = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueUnderLinePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueUnderLinePanelBinder
  L5_2 = "Content/BtnPanel/ExtraContainer/StatePanel/Simple/ScrollView/Viewport/Content/BoxDesc/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.aeon_effect_underline_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/ExtraContainer/StatePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_aeon_effect_outer_layout_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/BtnPanel/ExtraContainer/StatePanel/Simple/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_aeon_effect_inner_layout_group = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Content/BtnPanel/ExtraContainer/StatePanel/Simple/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_aeon_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlMove
  L4_2 = "Content/BtnPanel/ExtraContainer/StatePanel/Simple/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.aeon_effect_in_ctrl_move = L1_2
  L1_2 = {}
  A0_2.dice_effect_relative_node_table = L1_2
  L1_2 = {}
  L2_2 = "Content/BtnPanel/Frame"
  L3_2 = "Content/BtnPanel/ExtraContainer"
  L4_2 = "Content/BtnPanel/BoxEventInfo"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.dice_effect_relative_node_table
    L10_2 = A0_2
    L9_2 = A0_2._safe_find
    L11_2 = L6_2
    L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "Content/BtnPanel/ExtraContainer/StatePanel/Simple/ScrollView/Viewport/Content/BoxDesc/TxtTitle"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_aeon_effect = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Content/BtnPanel/BoxEventInfo/BoxDicShow/Root/BoxIcon/Icon"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.img_aeon_effect_icon = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnPanel/BoxEventInfo/BoxDicShow/Root/BoxTagTotal"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_aeon_effect_progress = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Content/BtnPanel/BoxEventInfo/BoxDicShow/Root/BoxTagTotal/Root/BoxTag/Icon"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.img_aeon_effect_progress = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.LocalizedText
  L5_2 = "Content/BtnPanel/BoxEventInfo/BoxDicShow/Root/BoxTagTotal/Root/BoxTag/TxtNum"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text_aeon_effect_progress = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = "Content/BtnPanel"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.animation_aeon_effect = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Content/BtnPanel/ExtraContainer/StatePanel/ShortCutHintPanelDark"
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.node_short_cut_panel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.PrefabLoadMeta
  L5_2 = "Content/BtnPanel/ExtraContainer/StatePanel/ShortCutHintPanelDark/Contents"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.short_cut_panel_load_meta = L2_2
end
L0_1._on_bind = L1_1
return L0_1
