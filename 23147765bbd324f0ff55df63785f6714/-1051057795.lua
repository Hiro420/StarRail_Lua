local L0_1, L1_1, L2_1, L3_1, L4_1
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
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityClockParkGamePlaySlotMachinePanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_round_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_state
  L2_2 = L1_1.SlotMachine
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.GachaRemainTime
    L2_2 = 0 < L2_2
    if L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._show_start_game_dialog
      L3_2(L4_2)
    else
      L4_2 = L1_2
      L3_2 = L1_2.ExitGacha
      L3_2(L4_2)
    end
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._is_showed_start_dialog = false
end
L2_1.on_exit_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_start_game_dialog
  L1_2(L2_2)
end
L2_1.override_on_btn_round_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_showed_start_dialog
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ActivityClockParkGamePlaySlotMachineStartDialog"
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.CurGameState
  L1_2(L2_2, L3_2)
  A0_2._is_showed_start_dialog = true
end
L2_1._show_start_game_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_immediate_action
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.panel_attribute
    L1_3 = L0_3
    L0_3 = L0_3.setup_view
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_dialog_action
  L5_2 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ActivityClockParkGamePlaySlotMachineResultDialog"
  L6_2 = nil
  L7_2 = L0_1.ClockParkInstance
  L7_2 = L7_2.CurGameState
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  return L1_2
end
L2_1.get_exit_action = L3_1
return L2_1
