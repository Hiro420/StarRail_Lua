local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.AnimationAction"
L0_1(L1_1)
L0_1 = {}
L0_1[1] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGachaBoxItem1.png"
L0_1[2] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGachaBoxItem2.png"
L0_1[3] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGachaBoxItem3.png"
L0_1[4] = "SpriteOutput/UI/Quest/ClockPark/ClockParkGachaBoxItem4.png"
L1_1 = 4
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ClockParkSlotMachineDisplayPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_finish_callback = nil
  A0_2._on_finish_callback_callbackSelf = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_scroll_list_1
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_scroll_list_2
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_scroll_list_3
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L0_1
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_finish_callback = A1_2
  A0_2._on_finish_callback_callbackSelf = A2_2
end
L2_1.register_finish_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ClockParkLotteryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._generate_finish_icon_index
    L5_2 = L2_2.LotteryType
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_scroll_list_1
    L5_2 = L4_2
    L4_2 = L4_2.set_finish_icon_index
    L6_2 = L3_2[1]
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_scroll_list_2
    L5_2 = L4_2
    L4_2 = L4_2.set_finish_icon_index
    L6_2 = L3_2[2]
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_scroll_list_3
    L5_2 = L4_2
    L4_2 = L4_2.set_finish_icon_index
    L6_2 = L3_2[3]
    L4_2(L5_2, L6_2)
  end
end
L2_1.prepare_finish_anim = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == 1 then
    L2_2 = {}
    L3_2 = 1
    L4_2 = 1
    L5_2 = 1
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    return L2_2
  end
  if A1_2 == 2 then
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 2
    L4_2 = L1_1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = {}
    L4_2 = L2_2
    L5_2 = L2_2
    L6_2 = L2_2
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    return L3_2
  end
  if A1_2 == 3 then
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = L1_1
    L2_2 = L2_2(L3_2)
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = L1_1
    L3_2 = L3_2(L4_2)
    if L3_2 == L2_2 then
      L4_2 = L2_2 + 1
      L5_2 = L1_1
      L4_2 = L4_2 % L5_2
      L3_2 = L4_2 + 1
    end
    L4_2 = L2_1._shuffle_array
    L5_2 = {}
    L6_2 = L2_2
    L7_2 = L2_2
    L8_2 = L3_2
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    return L4_2(L5_2)
  end
  if A1_2 == 4 then
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = L1_1
    L2_2 = L2_2(L3_2)
    L3_2 = {}
    L4_2 = 1
    L5_2 = L1_1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      if L7_2 ~= L2_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L3_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
    L4_2 = L2_1._shuffle_array
    L5_2 = L3_2
    return L4_2(L5_2)
  end
end
L2_1._generate_finish_icon_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = #A0_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = L1_2
  L4_2 = 2
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2[L7_2]
    L9_2 = A0_2[L6_2]
    A0_2[L7_2] = L9_2
    A0_2[L6_2] = L8_2
  end
  return A0_2
end
L2_1._shuffle_array = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim
  L4_2 = "ClockParkGachaBoxShow"
  return L1_2(L2_2, L3_2, L4_2)
end
L2_1.get_play_anim_action = L3_1
return L2_1
