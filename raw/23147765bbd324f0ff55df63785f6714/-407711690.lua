local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.Jackpot.ActivityMonopolyJackpotProgressItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.Jackpot.ActivityMonopolyJackpotProgressItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyJackpotProgressDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Monopoly/MonopolyServerRewardPreviewDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Contents/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/DescPanel/CurrentProgress/TextPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/NormalPhase/HandleRoot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_in_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/NormalPhase"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_normal_percent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/ExtraPhase"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_extra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/ExtraPhase"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_extra_percent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyJackpotProgressItemPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyJackpotProgressItemPanelBinder
  L5_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/NormalPhase/Point1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_zero_item = L1_2
  L1_2 = {}
  A0_2.panel_normal_items = L1_2
  L1_2 = 2
  L2_2 = 5
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyJackpotProgressItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyJackpotProgressItemPanelBinder
    L9_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/NormalPhase/Point"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.panel_normal_items
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2.panel_extra_items = L1_2
  L1_2 = 1
  L2_2 = 5
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyJackpotProgressItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyJackpotProgressItemPanelBinder
    L9_2 = "Contents/DescPanel/ProgressBar/ProgressRoot/ExtraPhase/Point"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.panel_extra_items
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
