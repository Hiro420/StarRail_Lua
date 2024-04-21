local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachineRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachineRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkSlotMachineRewardInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward_item
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L5_2 = A0_2
  L4_2 = A0_2.gen_to_attribute_reward_item
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = G
    L8_2 = L8_2.ActivityClockParkUtils
    L8_2 = L8_2.create_attribute_reward_from_lottery
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = #L8_2
      if 0 < L9_2 then
        L9_2 = L8_2[1]
        return L9_2
      end
    end
  end
  return L2_2
end
L0_1.gen_to_attribute_reward_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_remain_times
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_remain_times
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_total_times
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.set_remain_times = L1_1
return L0_1
