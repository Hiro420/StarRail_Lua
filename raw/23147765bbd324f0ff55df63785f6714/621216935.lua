local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkUtils"
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
L2_1 = "5304"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityClockParkGamePlayRandomEventPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClockParkStateUpdate
  L4_2 = A0_2._on_state_update
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._control_panel = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  A0_2._control_panel = A1_2
end
L3_1.init_control_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._control_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._control_panel
    L2_2 = L1_2
    L1_2 = L1_2.register_refresh_callback
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh
      L0_3(L1_3)
    end
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[ClockPark], Task Unlock, key: "
  L3_2 = L2_1
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_round_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_state_update = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_round_finish
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_round_hint
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_round_finish
  L3_2 = L1_2.DiceInfo
  L4_2 = L3_2
  L3_2 = L3_2.IsAllDiceInSlot
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L1_2.CardInfo
    L4_2 = L3_2
    L3_2 = L3_2.IsAllCardFilledWithDice
    L3_2 = L3_2(L4_2)
  end
  L2_2.interactable = L3_2
end
L3_1._refresh_btn_round_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ClockParkAttributeInfo
  L2_2 = L2_2.AttributeTypeList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ClockParkAttributeInfo
    L5_2 = L5_2.AttributeTypeList
    L5_2 = L5_2[L4_2]
    L6_2 = nil
    L7_2 = L0_1.ClockParkInstance
    L7_2 = L7_2.CurGameStateEnum
    L8_2 = L1_1.Check
    if L7_2 ~= L8_2 then
      L8_2 = L1_1.Story
      if L7_2 ~= L8_2 then
        L8_2 = G
        L8_2 = L8_2.ActivityClockParkUtils
        L8_2 = L8_2.get_predict_round_finish_attribute
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        L6_2 = L8_2
    end
    else
      L8_2 = G
      L8_2 = L8_2.ActivityClockParkUtils
      L8_2 = L8_2.get_cur_attribute
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L6_2 = L8_2
    end
    if L6_2 <= 0 then
      L8_2 = A0_2._owner
      L8_2 = L8_2._binder
      L8_2 = L8_2.node_btn_round_finish_hint
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = L0_1.ClockParkInstance
      L8_2 = L8_2.ScriptInfo
      L8_2 = L8_2.IsInEndless
      if L8_2 then
        L9_2 = A0_2._owner
        L9_2 = L9_2._binder
        L9_2 = L9_2.text_btn_round_finish_hint
        L10_2 = L9_2
        L9_2 = L9_2.SafeSetTextID
        L11_2 = "UIText_ClockPark_EndlessMode_Fail_Common_Tip"
        L9_2(L10_2, L11_2)
      else
        L9_2 = A0_2._owner
        L9_2 = L9_2._binder
        L9_2 = L9_2.text_btn_round_finish_hint
        L10_2 = L9_2
        L9_2 = L9_2.SafeSetTextID
        L11_2 = "UIText_ClockPark_Fail_Common_Tip"
        L9_2(L10_2, L11_2)
      end
      L9_2 = G
      L9_2 = L9_2.NotifyManager
      L9_2 = L9_2.notify
      L10_2 = G
      L10_2 = L10_2.CS
      L10_2 = L10_2.NotifyType
      L10_2 = L10_2.TutorialTaskUnlock
      L11_2 = "5316"
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._owner
      L9_2 = L9_2._binder
      L9_2 = L9_2.node_hint_branch_select
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetActive
      L11_2 = false
      L9_2(L10_2, L11_2)
      return
    end
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_btn_round_finish_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.node_hint_branch_select
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._refresh_round_hint = L4_1
function L4_1(A0_2)
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
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.ImmediateAction
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_callback
  function L6_2()
    local L0_3, L1_3
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
    L0_3 = L0_3.panel_endless
    L1_3 = L0_3
    L0_3 = L0_3.setup_view
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L0_1.ClockParkInstance
  L4_2 = L4_2.CurGameStateEnum
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L1_2
  L7_2 = A0_2._control_panel
  L8_2 = L7_2
  L7_2 = L7_2.get_chapter_progress_action
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L1_1.RandomEvent
  if L4_2 ~= L5_2 then
    L5_2 = L1_1.BranchSelect
    if L4_2 ~= L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L1_2
      L7_2 = A0_2._control_panel
      L8_2 = L7_2
      L7_2 = L7_2.get_card_exit_action
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  else
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L1_2
    L7_2 = A0_2._control_panel
    L8_2 = L7_2
    L7_2 = L7_2.get_card_refresh_action
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  return L1_2
end
L3_1.get_exit_action = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.PrevGameStateEnum
  L2_2 = L1_1.None
  if L1_2 ~= L2_2 then
    L2_2 = L1_1.RandomEvent
    if L1_2 ~= L2_2 then
      L2_2 = L1_1.BranchSelect
      if L1_2 ~= L2_2 then
        goto lbl_14
      end
    end
  end
  L2_2 = {}
  do return L2_2 end
  ::lbl_14::
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A0_2._control_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_card_enter_action
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = A0_2._control_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_card_reset_anim_state_action
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L3_1.get_enter_action = L4_1
return L3_1
