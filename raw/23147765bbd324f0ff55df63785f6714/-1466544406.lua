local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Generate.ActivityClockParkGamePlayLittleGameStartDialogIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayLittleGameStartDialogBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ClockPark/ClockParkMiniGamePlayDialog.prefab"
  return L0_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "[ClockPark] ActivityClockParkGamePlayLittleGameStartDialog: auto_bind Failed."
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = A0_2.node_desc
  L6_2 = "Ui.ActivityClockPark.InSideGame.LittleGameState.ActivityClockParkGamePlayLittleGameTargetInfoRowPanel"
  L7_2 = "Ui.ActivityClockPark.InSideGame.LittleGameState.ActivityClockParkGamePlayLittleGameTargetInfoRowPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_desc_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayCardEffectItemPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCardEffectItemPanelBinder
  L5_2 = A0_2.node_attribute_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_effect_a = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayCardEffectItemPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCardEffectItemPanelBinder
  L5_2 = A0_2.node_attribute_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_effect_b = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayCardEffectItemPanel
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCardEffectItemPanelBinder
  L5_2 = A0_2.node_attribute_3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_effect_c = L1_2
end
L1_1._on_bind = L2_1
return L1_1
