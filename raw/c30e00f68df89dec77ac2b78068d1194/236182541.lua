local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceAeonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceBuffInfoDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceBuffInfoDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceDiceInfoDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceDiceInfoDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoEmptyPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/DetialPanel/Contents/BtnSelect_A"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/DetialPanel/Contents/BtnSelect_B"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.confirm_btn_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnLeftArrow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.left_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnRightArrow"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.right_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DetialPanel/Contents/Switch_A/TopListPanel/ScrollView/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DetialPanel/Contents/Switch_B/TopListPanel/ScrollView/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_root_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DetialPanel/Contents/Switch_A/TopListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_top_tab_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DetialPanel/Contents/Switch_B/TopListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_top_tab_list_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/DetialPanel/Contents/Switch_A/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel/Root/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_ref = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DetialPanel/Contents/Switch_A/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/DetialPanel/Contents/Switch_B/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_panel_root_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceBuffInfoDisplayPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceBuffInfoDisplayPanelBinder
  L5_2 = "Root/DetialPanel/Contents/Switch_A/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel/Root/ScrollView/Viewport/Content/BoxBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceDiceInfoDisplayPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceDiceInfoDisplayPanelBinder
  L5_2 = "Root/DetialPanel/Contents/Switch_A/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel/Root/ScrollView/Viewport/Content/BoxInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.dice_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceBuffInfoDisplayPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceBuffInfoDisplayPanelBinder
  L5_2 = "Root/DetialPanel/Contents/Switch_B/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel/Root/ScrollView/Viewport/Content/BoxBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_detail_panel_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceDiceInfoDisplayPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceDiceInfoDisplayPanelBinder
  L5_2 = "Root/DetialPanel/Contents/Switch_B/DescPanel/GenreDetialPanelLoader/DiceEnterGenreDetialPanel/Root/ScrollView/Viewport/Content/BoxInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.dice_detail_panel_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceInfoEmptyPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceInfoEmptyPanelBinder
  L5_2 = "Root/DetialPanel/Contents/Switch_A/DescPanel/LockStatusTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.empty_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueEntranceInfoEmptyPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueEntranceInfoEmptyPanelBinder
  L5_2 = "Root/DetialPanel/Contents/Switch_B/DescPanel/LockStatusTip"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.empty_panel_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/DetialPanel/Contents/Switch_A/GenrePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta_btn_genre_dice_a = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/DetialPanel/Contents/Switch_B/GenrePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta_btn_genre_dice_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1