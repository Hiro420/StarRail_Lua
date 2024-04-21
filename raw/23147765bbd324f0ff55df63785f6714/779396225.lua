local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerMonsterGuestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookGuestIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerGuestEmotionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerGuestEmotionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookFinishRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.WorkBook.DrinkMakerWorkBookFinishRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerGuestWorkInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.DrinkMakerGuestWorkInfoPanelIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMonsterGuestPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerWorkBookGuestIconPanelBinder
  L5_2 = A0_2.node_guest_icon
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_guest = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.DrinkMakerWorkBookRewardPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerWorkBookRewardPanelBinder
  L5_2 = A0_2.node_reward
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.DrinkMakerWorkBookFinishRewardPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerWorkBookFinishRewardPanelBinder
  L5_2 = A0_2.node_finish_reward
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_finish_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "DetailPanel/TitlePanel/ProgressPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_trust = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_emotion_panel_list
  L1_2(L2_2)
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.emotion_panel_list = L1_2
  L1_2 = 0
  L2_2 = A0_2.node_guest_emotion
  L2_2 = L2_2.childCount
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.node_guest_emotion
    L6_2 = L5_2
    L5_2 = L5_2.GetChild
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel_with_root_trans
    L8_2 = G
    L8_2 = L8_2.DrinkMakerGuestEmotionPanel
    L9_2 = G
    L9_2 = L9_2.DrinkMakerGuestEmotionPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.emotion_panel_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._create_emotion_panel_list = L2_1
return L0_1
