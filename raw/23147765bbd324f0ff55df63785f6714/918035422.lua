local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.DiceBoss.ChessRogueDiceBossItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.DiceBoss.ChessRogueDiceBossItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceBossPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/Widget/DiceBossChoosePanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/BossPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BossPanel/Content/IconPanel/EffWeaker"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_eff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BossPanel/Content/IconPanel/EffSelectPath"
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_path_eff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/BossPanel/Content/IconPanel/EffSelectPath/Root/Scale_02/IconPath"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.img_path_eff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceBossItem
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceBossItemBinder
  L5_2 = "Root/BossPanel/Content/BossChoose/ListPanel/BtnDiceBossChoose1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._boss_choose_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceBossItem
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceBossItemBinder
  L5_2 = "Root/BossPanel/Content/BossChoose/ListPanel/BtnDiceBossChoose2"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._boss_choose_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/BtnPanel/BoxOperation/BoxDo/BtnDo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._confirm_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/BtnPanel/BoxOperation/BoxDo/BtnDo/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_confirm_btn = L1_2
end
L0_1._on_bind = L1_1
return L0_1
