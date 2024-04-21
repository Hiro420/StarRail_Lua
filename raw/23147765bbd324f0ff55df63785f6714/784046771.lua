local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.State.ActivityClockParkGamePlayRandomEventPanel"
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
L2_1 = "UIText_ClockPark_Script_Round_NextChapter"
L3_1 = "UIText_ClockPark_Script_Round_Choose"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityClockParkGamePlayBranchSelectStatePanel"
L6_1 = G
L6_1 = L6_1.ActivityClockParkGamePlayRandomEventPanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._control_panel = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1.super
  L1_2 = L1_2._refresh
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dice_item
  L1_2(L2_2)
end
L4_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.DiceItemList
  L2_2 = L1_2.Count
  L2_2 = 1 < L2_2
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_hint_branch_select
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.txt_hint_branch_select
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.node_btn_round_finish_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L4_1._refresh_round_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.BranchSelect
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.CurGameState
  L4_2 = L2_2
  L3_2 = L2_2.IsTrueEndBranchUnlock
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1.ClockParkInstance
  L4_2 = L4_2.DiceInfo
  L4_2 = L4_2.DiceItemList
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2._control_panel
    L10_2 = L9_2
    L9_2 = L9_2.set_dice_lock
    L11_2 = L8_2 + 1
    L13_2 = L2_2
    L12_2 = L2_2.IsDiceToLockChapter
    L14_2 = L8_2
    L12_2 = not L3_2 and L12_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L4_1._refresh_dice_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.PrevGameStateEnum
  L2_2 = L1_1.RandomEvent
  if L1_2 ~= L2_2 then
    L2_2 = L1_1.BranchSelect
    if L1_2 ~= L2_2 then
      goto lbl_15
    end
  end
  L2_2 = {}
  L3_2 = A0_2._control_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_branch_select_fade_in_action
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  do return L2_2 end
  ::lbl_15::
  L2_2 = {}
  L3_2 = A0_2._control_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_branch_select_fade_in_action
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._control_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_card_enter_action
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._control_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_card_reset_anim_state_action
  L5_2, L6_2 = L5_2(L6_2)
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  return L2_2
end
L4_1.get_enter_action = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.ImmediateAction
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_callback
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
    L0_3 = L0_3.btn_round_finish
    L0_3.interactable = false
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.node_btn_round_finish_hint
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.node_hint_branch_select
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.CS
    L0_3 = L0_3.EventSystem
    L0_3 = L0_3.current
    L1_3 = L0_3
    L0_3 = L0_3.SetSelectedGameObject
    L2_3 = nil
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = pairs
  L4_2 = A0_2._control_panel
  L5_2 = L4_2
  L4_2 = L4_2.get_round_finish_actions
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._control_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_branch_select_fade_out_action
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._control_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_chapter_progress_action
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._control_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_card_exit_action
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  return L1_2
end
L4_1.get_exit_action = L5_1
return L4_1
