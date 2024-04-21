local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.SlotMachineImpl.ClockParkSlotMachineDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.SlotMachineImpl.ClockParkSlotMachineDisplayPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachineRewardInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachineRewardInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.ClockParkSlotMachinePageBinderIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ClockParkSlotMachinePageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ClockPark/ClockParkGachaBoxPage.prefab"
  return L0_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.root
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._safe_find
    L3_2 = ""
    L1_2 = L1_2(L2_2, L3_2)
  end
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
  L4_2 = L4_2.ClockParkSlotMachineDisplayPanel
  L5_2 = G
  L5_2 = L5_2.ClockParkSlotMachineDisplayPanelBinder
  L6_2 = A0_2.panel_slot_machine
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_slot_machine = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.ActivityClockParkGamePlayAttributePanel
  L5_2 = G
  L5_2 = L5_2.ActivityClockParkGamePlayAttributePanelBinder
  L6_2 = A0_2.panel_attribute
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_attribute = L2_2
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ClockParkSlotMachineRewardInfoRowPanel
  L6_2 = G
  L6_2 = L6_2.ClockParkSlotMachineRewardInfoRowPanelBinder
  L7_2 = A0_2.reward_node_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[1] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ClockParkSlotMachineRewardInfoRowPanel
  L6_2 = G
  L6_2 = L6_2.ClockParkSlotMachineRewardInfoRowPanelBinder
  L7_2 = A0_2.reward_node_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[2] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ClockParkSlotMachineRewardInfoRowPanel
  L6_2 = G
  L6_2 = L6_2.ClockParkSlotMachineRewardInfoRowPanelBinder
  L7_2 = A0_2.reward_node_3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[3] = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.ClockParkSlotMachineRewardInfoRowPanel
  L6_2 = G
  L6_2 = L6_2.ClockParkSlotMachineRewardInfoRowPanelBinder
  L7_2 = A0_2.reward_node_4
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2[4] = L3_2
  A0_2.panel_lottery_list = L2_2
end
L1_1._on_bind = L2_1
return L1_1
