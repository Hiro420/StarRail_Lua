local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.CommonPuzzleBossHPBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.CommonPuzzleBossHPBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingBossHPBarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonPuzzleBossHPBarPanel
  L4_2 = G
  L4_2 = L4_2.CommonPuzzleBossHPBarPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_boss_hp_bar = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2.root
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  A0_2.animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_boss = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NumPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_boss_hp = L1_2
end
L0_1._on_bind = L1_1
return L0_1
