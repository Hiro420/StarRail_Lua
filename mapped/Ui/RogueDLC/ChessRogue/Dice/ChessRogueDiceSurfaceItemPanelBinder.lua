local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueDiceIconRarityPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Common.ChessRogueDiceIconRarityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceSurfaceItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/Widget/BtnDiceEffect.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxIcon/DiceFacetActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxIcon/DiceFaceNotActive"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_inactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/BoxIcon/DiceFacetActive/IconDiceFace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/BoxIcon/DiceFaceNotActive/IconDiceFace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_inactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/BoxContent/TxtDes"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/BoxTag/TxtCurrent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_tag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxTag/TxtEffect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tag_rolled_out = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceIconRarityPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceIconRarityPanelBinder
  L5_2 = "Root/BoxIcon/DiceFaceNotActive"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.rarity_panel_inactive = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceIconRarityPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceIconRarityPanelBinder
  L5_2 = "Root/BoxIcon/DiceFacetActive"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.rarity_panel_active = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_underline_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxContent/TxtDes"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_underline_txt = L1_2
end
L0_1._on_bind = L1_1
return L0_1