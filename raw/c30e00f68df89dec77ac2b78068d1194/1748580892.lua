local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachinePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.DialogAction"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkAttributeType
L3_1 = 2.5
L4_1 = 16
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ClockParkSlotMachinePage"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ClockParkSlotMachinePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  A0_2._grouped_lottery_list = L1_2
  A0_2._cost_type = nil
  A0_2._cost_num = 0
  A0_2._action_queue = nil
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.get_state
  L3_2 = L1_1.SlotMachine
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.GetSortedLotteryList
    L3_2 = L3_2(L4_2)
    L4_2 = 0
    L5_2 = L3_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ClockParkLotteryExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 ~= nil then
        L10_2 = L9_2.LotteryType
        L10_2 = L1_2[L10_2]
        if L10_2 == nil then
          L10_2 = L9_2.LotteryType
          L11_2 = {}
          L1_2[L10_2] = L11_2
        end
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L9_2.LotteryType
        L11_2 = L1_2[L11_2]
        L12_2 = L8_2
        L10_2(L11_2, L12_2)
      end
    end
    L4_2 = L2_2.GachaCost
    L5_2 = L2_1.A
    L5_2 = L4_2[L5_2]
    if 0 < L5_2 then
      L5_2 = L2_1.A
      A0_2._cost_type = L5_2
      L5_2 = L2_1.A
      L5_2 = L4_2[L5_2]
      A0_2._cost_num = L5_2
    else
      L5_2 = L2_1.B
      L5_2 = L4_2[L5_2]
      if 0 < L5_2 then
        L5_2 = L2_1.B
        A0_2._cost_type = L5_2
        L5_2 = L2_1.B
        L5_2 = L4_2[L5_2]
        A0_2._cost_num = L5_2
      else
        L5_2 = L2_1.C
        L5_2 = L4_2[L5_2]
        if 0 < L5_2 then
          L5_2 = L2_1.C
          A0_2._cost_type = L5_2
          L5_2 = L2_1.C
          L5_2 = L4_2[L5_2]
          A0_2._cost_num = L5_2
        end
      end
    end
  end
  L3_2 = {}
  A0_2._grouped_lottery_list = L3_2
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._grouped_lottery_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L5_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_continue
  L4_2 = A0_2._on_btn_continue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkGotLottery
  L4_2 = A0_2._on_got_lottery
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkOnGoingUpdate
  L4_2 = A0_2._on_clock_park_on_going_update
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_action_queue
  L1_2(L2_2)
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_lottery_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lottery_cost
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_slot_machine
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mono_gacha_box
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_attributes
  L1_2(L2_2)
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._grouped_lottery_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_lottery_list
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.setup_view
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L5_1._setup_lottery_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cost_type
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_cost_icon
    L4_2 = G
    L4_2 = L4_2.ActivityClockParkUtils
    L4_2 = L4_2.get_attribute_item
    L5_2 = A0_2._cost_type
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_cost_num
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._cost_num
    L1_2(L2_2, L3_2)
  end
end
L5_1._setup_lottery_cost = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_slot_machine
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L5_1._setup_slot_machine = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_gacha_box
  L2_2 = L3_1
  L1_2.Duration = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rolling_gacha_groups_focus
  L2_2 = L2_2(L3_2)
  L1_2.GachaGroupsFocus = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rolling_gacha_groups_mask1
  L2_2 = L2_2(L3_2)
  L1_2.GachaGroupsMask1 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rolling_gacha_groups_mask2
  L2_2 = L2_2(L3_2)
  L1_2.GachaGroupsMask2 = L2_2
end
L5_1._setup_mono_gacha_box = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.GameObject
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._grouped_lottery_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_lottery_list
    L7_2 = L7_2[L5_2]
    if L7_2 ~= nil then
      L9_2 = L1_2
      L8_2 = L1_2.Add
      L10_2 = L7_2._binder
      L10_2 = L10_2.node_focus
      L10_2 = L10_2.gameObject
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L5_1._get_rolling_gacha_groups_focus = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.GameObject
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._grouped_lottery_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_lottery_list
    L7_2 = L7_2[L5_2]
    if L7_2 ~= nil then
      L9_2 = L1_2
      L8_2 = L1_2.Add
      L10_2 = L7_2._binder
      L10_2 = L10_2.node_mask1
      L10_2 = L10_2.gameObject
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L5_1._get_rolling_gacha_groups_mask1 = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.GameObject
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._grouped_lottery_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_lottery_list
    L7_2 = L7_2[L5_2]
    if L7_2 ~= nil then
      L9_2 = L1_2
      L8_2 = L1_2.Add
      L10_2 = L7_2._binder
      L10_2 = L10_2.node_mask1
      L10_2 = L10_2.gameObject
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L5_1._get_rolling_gacha_groups_mask2 = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_status
  L1_2(L2_2)
end
L5_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_attribute
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L5_1._setup_attributes = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_state
  L2_2 = L1_1.SlotMachine
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.GachaRemainTime
    L2_2 = 0 < L2_2
    L3_2 = A0_2._cost_type
    L3_2 = L3_2 == nil
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_continue
    L5_2 = L2_2 or L5_2
    if L2_2 then
      L5_2 = L3_2
    end
    L4_2.interactable = L5_2
  end
end
L5_1._setup_btn_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._continue_gacha
  L1_2(L2_2)
end
L5_1._on_btn_continue = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_state
  L2_2 = L1_1.SlotMachine
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.ContinueGacha
    L2_2(L3_2)
  end
end
L5_1._continue_gacha = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_state
  L2_2 = L1_1.SlotMachine
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.ExitGacha
    L2_2(L3_2)
  end
end
L5_1._quit_gacha = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ClockParkLotteryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_slot_machine
    L4_2 = L3_2
    L3_2 = L3_2.prepare_finish_anim
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L6_2 = A0_2
    L5_2 = A0_2._create_mono_gacha_box_action
    L7_2 = L2_2.LotteryType
    L7_2 = L7_2 - 1
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_slot_machine
    L6_2 = L5_2
    L5_2 = L5_2.get_play_anim_action
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L6_2 = A0_2
    L5_2 = A0_2._create_refresh_attribute_action
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L6_2 = A0_2
    L5_2 = A0_2._create_reward_dialog_action
    L7_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.add_action
    L6_2 = A0_2
    L5_2 = A0_2._create_exit_action
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._action_queue
    L4_2 = L3_2
    L3_2 = L3_2.start_do_action
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._refresh
    L3_2(L4_2)
  end
end
L5_1._on_got_lottery = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.SlotMachine
  if L1_2 ~= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L5_1._on_clock_park_on_going_update = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.ActionQueue
    L1_2 = L1_2(L2_2)
    A0_2._action_queue = L1_2
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  end
end
L5_1._init_action_queue = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._action_queue = nil
  end
end
L5_1._dispose_action_queue = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.CoroutineUtils
    L0_3 = L0_3.InvokeAfterSeconds
    L1_3 = 1.2
    function L2_3()
      local L0_4, L1_4
      L0_4 = A0_2._binder
      if L0_4 == nil then
        return
      end
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4._setup_attributes
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L5_1._create_refresh_attribute_action = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.DialogAction
  L4_2 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachineRewardDialog"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L5_1._create_reward_dialog_action = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._quit_gacha
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L5_1._create_exit_action = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ImmediateAction
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_callback
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_gacha_box
    L1_3 = L0_3
    L0_3 = L0_3.StartRolling
    L2_3 = A1_2
    L3_3 = L4_1
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
  return L2_2
end
L5_1._create_mono_gacha_box_action = L6_1
function L6_1(A0_2)
  local L1_2
end
L5_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L5_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L5_1._init_ui_navigation = L6_1
return L5_1
