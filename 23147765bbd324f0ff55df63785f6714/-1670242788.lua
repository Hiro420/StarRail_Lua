local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousSurfaceRarityLimitPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousSlotGamePadHintPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceEditOverviewPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Epic = 3
L1_1.Rare = 2
L1_1.Common = 1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "LeftPanel/Content/MainCore/Root/IconDice"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.dice_branch_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PageNumGroup"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.game_pad_tab_root = L1_2
  L1_2 = {}
  A0_2.game_pad_hint_panels = L1_2
  L1_2 = {}
  A0_2.slot_panels = L1_2
  L1_2 = 1
  L2_2 = 6
  L3_2 = L1_2
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._create_panel
    L9_2 = G
    L9_2 = L9_2.RogueNousDiceSlotPanel
    L10_2 = G
    L10_2 = L10_2.RogueNousDiceSlotPanelBinder
    L11_2 = "LeftPanel/Content/DiceEditorList/RogueNousDiceCircleItem"
    L12_2 = tostring
    L13_2 = L6_2 - 1
    L12_2 = L12_2(L13_2)
    L11_2 = L11_2 .. L12_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L9_2 = A0_2
    L8_2 = A0_2._create_panel
    L10_2 = G
    L10_2 = L10_2.RogueNousSlotGamePadHintPanel
    L11_2 = G
    L11_2 = L11_2.RogueNousSlotGamePadHintPanelBinder
    L12_2 = "PageNumGroup/PageNumWhite"
    L13_2 = tostring
    L14_2 = L6_2
    L13_2 = L13_2(L14_2)
    L12_2 = L12_2 .. L13_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = A0_2.slot_panels
    L9_2[L6_2] = L7_2
    L9_2 = A0_2.game_pad_hint_panels
    L9_2[L6_2] = L8_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "LeftPanel/Content/BtnComReset/KeyMapGroup"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.btn_gamepad_root = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "LeftPanel/Content/BtnComReset/Root"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.btn_common_root = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "LeftPanel/Content/BtnComGood/KeyMapGroup"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.btn_gamepad_root_recommend = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "LeftPanel/Content/BtnComGood/Root"
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.btn_common_root_recommend = L3_2
end
L0_1._on_bind = L2_1
return L0_1
