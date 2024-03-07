local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMazeMainCommonPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DialogueEventReward
  L4_2 = L0_1._on_dialogue_event_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueBuffReward
  L4_2 = L0_1._on_get_rogue_buff_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UpRogueBuffLevelReward
  L4_2 = L0_1._on_up_rogue_buff_level_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DestoryRogueMiracleHint
  L4_2 = L0_1._on_destory_rogue_miracle_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueMiracleReward
  L4_2 = L0_1._on_get_rogue_miracle_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReplaceRogueMiracles
  L4_2 = L0_1._on_replace_rogue_miracles
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResetRogueMiracles
  L4_2 = L0_1._on_reset_rogue_miracles
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRogueCommonDisplay
  L4_2 = L0_1._show_common_display_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRogueReviveAvatars
  L4_2 = L0_1._show_revive_avatar_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueBonusSelect
  L4_2 = L0_1._on_trigger_rogue_bonus_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueBuffSelect
  L4_2 = L0_1._on_trigger_rogue_buff_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueBuffDrop
  L4_2 = L0_1._on_trigger_rogue_buff_drop
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueSelectBuffToEnhance
  L4_2 = L0_1._on_trigger_rogue_buff_select_to_enhance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueMiracleSelect
  L4_2 = L0_1._on_trigger_rogue_miracle_select
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueMiracleDrop
  L4_2 = L0_1._on_trigger_miracle_drop
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueMiracleRepair
  L4_2 = L0_1._on_trigger_miracle_repair
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerRogueMiracleDestory
  L4_2 = L0_1._on_trigger_miracle_destory
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TriggerSelectDestroyedMiracle
  L4_2 = L0_1._on_trigger_select_destroyed_miracle
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog_with_toast
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_dialogue_event_reward = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2._has_rogue_talk_page_in_stack
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.PopupQueueManager
    L4_2 = L3_2
    L3_2 = L3_2.inqueue
    L5_2 = "FullScreenToast"
    L6_2 = 1
    L7_2 = A1_2
    L8_2 = nil
    L9_2 = A2_2
    L10_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_trigger_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.SelectSourceType
  L3_2 = CS
  L3_2 = L3_2.EAOCHKIMAGD
  L3_2 = L3_2.JOIEKKDGMAN
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Rogue.Buff.RogueSelectBuffPage"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._has_rogue_talk_page_in_stack
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._has_rogue_buff_shop_page_in_stack
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        goto lbl_38
      end
    end
    L2_2 = G
    L2_2 = L2_2.PopupQueueManager
    L3_2 = L2_2
    L2_2 = L2_2.inqueue
    L4_2 = "FullScreenToast"
    L5_2 = 1
    L6_2 = "Ui.Rogue.Buff.RogueSelectBuffPage"
    L7_2 = nil
    L8_2 = A1_2
    L9_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    goto lbl_44
    ::lbl_38::
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Rogue.Buff.RogueSelectBuffPage"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  ::lbl_44::
end
L0_1._on_trigger_rogue_buff_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._on_trigger_select
  L4_2 = "Ui.RogueCommon.ActionEffect.RogueDropBuffPage"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_trigger_rogue_buff_drop = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._on_trigger_select
  L4_2 = "Ui.RogueCommon.ActionEffect.RogueSelectBuffToEnhancePage"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_trigger_rogue_buff_select_to_enhance = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = "Ui.Rogue.Miracle.RogueSelectMiraclePage"
  L3_2 = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._has_rogue_talk_page_in_stack
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.PopupQueueManager
    L5_2 = L4_2
    L4_2 = L4_2.inqueue
    L6_2 = "FullScreenToast"
    L7_2 = 1
    L8_2 = L2_2
    L9_2 = nil
    L10_2 = L3_2
    L11_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_show
    L5_2 = L2_2
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_trigger_rogue_miracle_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._on_trigger_select
  L4_2 = "Ui.RogueCommon.ActionEffect.RogueDropMiraclePage"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_trigger_miracle_drop = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._on_trigger_select
  L4_2 = "Ui.RogueCommon.RandomEvent.RogueRepairMiraclePage"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_trigger_miracle_repair = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._on_trigger_select
  L4_2 = "Ui.RogueCommon.ActionEffect.RogueDestroyMiraclePage"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_trigger_miracle_destory = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._on_trigger_select
  L4_2 = "Ui.RogueCommon.ActionEffect.RogueSelectDamagedMiraclePage"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_trigger_select_destroyed_miracle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_page_in_stack
  L3_2 = "RogueRandomEvtPage"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._has_page_in_stack
    L3_2 = "RogueAeonTalkPage"
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
L0_1._has_rogue_talk_page_in_stack = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_page_in_stack
  L3_2 = "RogueSelectMiraclePage"
  return L1_2(L2_2, L3_2)
end
L0_1._has_rogue_select_miracle_page_in_stack = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_page_in_stack
  L3_2 = "ChessRogueBoardPage"
  return L1_2(L2_2, L3_2)
end
L0_1._has_chess_rogue_board_page_in_stack = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_page_in_stack
  L3_2 = "RogueBuffShopPage"
  return L1_2(L2_2, L3_2)
end
L0_1._has_rogue_buff_shop_page_in_stack = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_page_in_stack
  L3_2 = "RogueMiracleShopPage"
  return L1_2(L2_2, L3_2)
end
L0_1._has_rogue_miracle_shop_page_in_stack = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.HasPageInStack
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._has_page_in_stack = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.Item1
  L3_2 = A1_2.Item2
  L5_2 = A0_2
  L4_2 = A0_2._show_rogue_buff_reward_toast
  L6_2 = L3_2
  L7_2 = "Ui.Rogue.Buff.RogueBuffGetDialog"
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_get_rogue_buff_reward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.Item1
  L3_2 = A1_2.Item2
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._has_page_in_stack
    L5_2 = "RogueEnhanceBuffPage"
    L3_2 = L3_2(L4_2, L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._show_rogue_buff_reward_toast
  L6_2 = L3_2
  L7_2 = "Ui.Rogue.Buff.RogueEnhanceBuffResultDialog"
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_up_rogue_buff_level_reward = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 ~= true then
    L5_2 = A0_2
    L4_2 = A0_2._has_rogue_talk_page_in_stack
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._has_rogue_select_miracle_page_in_stack
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        goto lbl_21
      end
    end
  end
  L4_2 = G
  L4_2 = L4_2.PopupQueueManager
  L5_2 = L4_2
  L4_2 = L4_2.inqueue
  L6_2 = "FullScreenToast"
  L7_2 = 1
  L8_2 = A2_2
  L9_2 = nil
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  goto lbl_31
  ::lbl_21::
  L4_2 = G
  L4_2 = L4_2.ToastModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.inqueue_toast_checkmainpage
  L6_2 = "FullScreenToast"
  L7_2 = 1
  L8_2 = A2_2
  L9_2 = nil
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  ::lbl_31::
end
L0_1._show_rogue_buff_reward_toast = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.Item1
  L3_2 = A1_2.Item2
  L4_2 = A1_2.Item3
  L5_2 = A1_2.Item4
  if L3_2 ~= true then
    L7_2 = A0_2
    L6_2 = A0_2._has_rogue_talk_page_in_stack
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      goto lbl_24
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._show_rogue_toast
  L8_2 = true
  L9_2 = "Ui.Rogue.Miracle.RogueMiracleDetailDialog"
  L10_2 = L2_2
  L11_2 = false
  L12_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  goto lbl_49
  ::lbl_24::
  if L4_2 ~= true then
    L7_2 = A0_2
    L6_2 = A0_2._has_rogue_select_miracle_page_in_stack
    L6_2 = L6_2(L7_2)
    if not L6_2 and L5_2 ~= true then
      goto lbl_40
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._show_rogue_toast
  L8_2 = true
  L9_2 = "Ui.Rogue.Miracle.RogueMiracleDetailDialog"
  L10_2 = L2_2
  L11_2 = true
  L12_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  goto lbl_49
  ::lbl_40::
  L7_2 = A0_2
  L6_2 = A0_2._has_rogue_miracle_shop_page_in_stack
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._show_rogue_toast
  L9_2 = L6_2
  L10_2 = "Ui.Rogue.Miracle.RogueMiracleDetailDialog"
  L11_2 = L2_2
  L12_2 = false
  L13_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  ::lbl_49::
end
L0_1._on_get_rogue_miracle_reward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.inqueue
  L4_2 = "FullScreenToast"
  L5_2 = 1
  L6_2 = "Ui.Rogue.Miracle.RogueDestroyMiracleResultDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_destory_rogue_miracle_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_rogue_miracle_replace_toast
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_replace_rogue_miracles = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_rogue_miracle_replace_toast
  L4_2 = A1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_reset_rogue_miracles = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L3_2 = A0_2._has_rogue_talk_page_in_stack
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._has_rogue_select_miracle_page_in_stack
    L3_2 = L3_2(L4_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._show_rogue_toast
  L6_2 = L3_2
  L7_2 = "Ui.Rogue.Miracle.RogueMiracleReplaceDialog"
  L8_2 = A1_2
  L9_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._show_rogue_miracle_replace_toast = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L3_2 = G
    L3_2 = L3_2.PopupQueueManager
    L4_2 = L3_2
    L3_2 = L3_2.inqueue
    L5_2 = "FullScreenToast"
    L6_2 = 1
    L7_2 = A2_2
    L8_2 = nil
    L9_2 = ...
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L3_2 = G
    L3_2 = L3_2.ToastModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.inqueue_toast_checkmainpage
    L5_2 = "FullScreenToast"
    L6_2 = 1
    L7_2 = A2_2
    L8_2 = nil
    L9_2 = ...
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._show_rogue_toast = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._has_chess_rogue_board_page_in_stack
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueCommonDisplayType
  L3_2 = L3_2.Get
  if L2_2 == L3_2 then
    L2_2 = A1_2.DisplayItemList
    if L2_2 ~= nil then
      L2_2 = A1_2.DisplayItemList
      L2_2 = L2_2.Count
      if 0 < L2_2 then
        L2_2 = G
        L2_2 = L2_2.RewardUtils
        L2_2 = L2_2.show_reward_dialog_with_toast
        L3_2 = A1_2.DisplayItemList
        L2_2(L3_2)
    end
    else
      L3_2 = A0_2
      L2_2 = A0_2._has_page_in_stack
      L4_2 = "RogueSelectBonusBuffPage"
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.ToastModule
        L2_2 = L2_2.Instance
        L3_2 = L2_2
        L2_2 = L2_2.inqueue_toast_checkmainpage
        L4_2 = "FullScreenToast"
        L5_2 = 1
        L6_2 = "Ui.RogueCommon.RandomEvent.RogueCommonGetDialog"
        L7_2 = nil
        L8_2 = A1_2
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      else
        L2_2 = G
        L2_2 = L2_2.PopupQueueManager
        L3_2 = L2_2
        L2_2 = L2_2.inqueue
        L4_2 = "FullScreenToast"
        L5_2 = 1
        L6_2 = "Ui.RogueCommon.RandomEvent.RogueCommonGetDialog"
        L7_2 = nil
        L8_2 = A1_2
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      end
    end
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.RogueCommonDisplayType
    L3_2 = L3_2.Drop
    if L2_2 == L3_2 then
      L2_2 = G
      L2_2 = L2_2.PopupQueueManager
      L3_2 = L2_2
      L2_2 = L2_2.inqueue
      L4_2 = "FullScreenToast"
      L5_2 = 1
      L6_2 = "Ui.RogueCommon.RandomEvent.RogueCommonDropDialog"
      L7_2 = nil
      L8_2 = A1_2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.RogueCommonDisplayType
      L3_2 = L3_2.RepairMiracle
      if L2_2 == L3_2 then
        L2_2 = G
        L2_2 = L2_2.PopupQueueManager
        L3_2 = L2_2
        L2_2 = L2_2.inqueue
        L4_2 = "FullScreenToast"
        L5_2 = 1
        L6_2 = "Ui.RogueCommon.RandomEvent.RogueCommonRepairMiracleDialog"
        L7_2 = nil
        L8_2 = A1_2
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      else
        L2_2 = A1_2.Type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.RogueCommonDisplayType
        L3_2 = L3_2.GetDestroyedMiracle
        if L2_2 == L3_2 then
          L2_2 = G
          L2_2 = L2_2.PopupQueueManager
          L3_2 = L2_2
          L2_2 = L2_2.inqueue
          L4_2 = "FullScreenToast"
          L5_2 = 1
          L6_2 = "Ui.RogueCommon.RandomEvent.RogueCommonGetDialog"
          L7_2 = nil
          L8_2 = A1_2
          L9_2 = "UIText_RogueNous_Get_Broken_Miracle_Hint_1"
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        else
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.RogueCommonDisplayType
          L3_2 = L3_2.DestroyMiracle
          if L2_2 == L3_2 then
            L2_2 = G
            L2_2 = L2_2.PopupQueueManager
            L3_2 = L2_2
            L2_2 = L2_2.inqueue
            L4_2 = "FullScreenToast"
            L5_2 = 1
            L6_2 = "Ui.RogueCommon.RandomEvent.RogueCommonDropDialog"
            L7_2 = nil
            L8_2 = A1_2
            L9_2 = "UIText_RogueNous_Miracle_Broken_Hint_1"
            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          end
        end
      end
    end
  end
end
L0_1._show_common_display_dialog = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.inqueue
  L4_2 = "FullScreenToast"
  L5_2 = 1
  L6_2 = "Ui.RogueDLC.RogueNous.Toast.RogueNousReviveAvatarsDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._show_revive_avatar_dialog = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.SelectBonusIDs
  if L2_2 ~= nil then
    L2_2 = A1_2.SelectBonusIDs
    L2_2 = L2_2.Count
    if L2_2 ~= 0 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.HasPageInStack
  L4_2 = "RogueSelectBonusBuffPage"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Rogue.Bonus.RogueSelectBonusBuffPage"
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_trigger_rogue_bonus_select = L1_1
return L0_1
