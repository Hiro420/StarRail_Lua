local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Effect.ActivityClockParkGamePlayCardEffectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.Common.Effect.ActivityClockParkGamePlayCardEffectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.ActivityClockParkGamePlayCardItemPanelBinderIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayCardItemPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/ClockPark/Widget/GamePlayPageEventItemMain.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.auto_bind
  L4_2 = L0_1
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "[%s] auto bind fail"
    L4_2 = A0_2.__name
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayCardEffectPanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayCardEffectPanelBinder
  L6_2 = A0_2.node_panel_effect
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_effect = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.NodeListView
  L5_2 = G
  L5_2 = L5_2.NodeListViewBinder
  L6_2 = A0_2.node_panel_slot_list
  L7_2 = "Ui.ActivityClockPark.InSideGame.Common.Card.ActivityClockParkGamePlaySlotItemPanel"
  L8_2 = "Ui.ActivityClockPark.InSideGame.Common.Card.ActivityClockParkGamePlaySlotItemPanelBinder"
  L9_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.panel_slot_list = L2_2
end
L1_1._on_bind = L2_1
return L1_1
