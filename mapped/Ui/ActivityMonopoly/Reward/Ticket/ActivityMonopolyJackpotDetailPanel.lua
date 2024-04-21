local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyRewardTicketDialog_Wait"
L2_1 = {}
L3_1 = "MonopolyRewardTicketDialog_Winner"
L4_1 = "MonopolyRewardTicketDialog_Winner1"
L5_1 = "MonopolyRewardTicketDialog_Winner2"
L6_1 = "MonopolyRewardTicketDialog_Winner3"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyJackpotDetailPanel"
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
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_show
  L4_2 = A0_2._on_btn_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyJackpotInfoSynced
  L4_2 = A0_2._on_jackpot_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyJackpotTicketShown
  L4_2 = A0_2._on_ticket_shown
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyJackpotTicketCashed
  L4_2 = A0_2._on_ticket_cashed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_level_value
  L1_2(L2_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._level_to_value = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Monopoly_Activity_Raffle_RewardUp"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L5_2 + 1
      L7_2 = L1_2[L5_2]
      L7_2 = L7_2.UintValue
      L8_2 = A0_2._level_to_value
      L8_2[L6_2] = L7_2
    end
  end
  L2_2 = A0_2._level_to_value
  L2_2[0] = 0
end
L3_1._init_level_value = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_info_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_result_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_ticket_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status_view
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_status_view
      L0_3(L1_3)
    end
  end
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_auto_update_ticket
  L2_2(L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer_result
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  if L3_2 then
    L3_2 = A0_2._data
    L3_2 = L3_2.HasResult
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.timer_unlock
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._data
    L3_2 = L3_2.UnlockTimeStamp
    L4_2 = A0_2._on_unlocked
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.HasResult
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.timer_result
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._data
      L3_2 = L3_2.ResultTimeStamp
      L4_2 = A0_2._on_result_time
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.JackpotLevel
  L2_2 = A0_2._data
  L2_2 = L2_2.IsUnlocked
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.HasBonus
    L2_2 = L2_2 and 0 < L1_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_bonus_level
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMonopoly_Common_PercentValue"
    L6_2 = A0_2._level_to_value
    L6_2 = L6_2[L1_2]
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._refresh_info_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.JackpotLevel
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentRewards
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.panels_result
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L6_2 - 1
    L8_2 = L2_2[L8_2]
    L9_2 = A0_2._data
    L9_2 = L9_2.IsDrawn
    if L9_2 then
      L9_2 = A0_2._data
      L9_2 = L9_2.ResultNumbers
      L9_2 = L9_2.Count
      if L6_2 <= L9_2 then
        L9_2 = A0_2._data
        L9_2 = L9_2.ResultNumbers
        L10_2 = L6_2 - 1
        L9_2 = L9_2[L10_2]
        if L9_2 then
          goto lbl_30
        end
      end
    end
    L9_2 = nil
    ::lbl_30::
    L11_2 = L7_2
    L10_2 = L7_2.setup_view
    L12_2 = L6_2
    L13_2 = L8_2
    L14_2 = A0_2._data
    L14_2 = L14_2.IsDrawn
    L15_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  end
end
L3_1._refresh_result_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.txts_number
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._data
    L6_2 = L6_2.IsTicketGot
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.SetCustomizedText
      L8_2 = tostring
      L9_2 = A0_2._data
      L9_2 = L9_2.GotTicketID
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.SafeSetTextID
      L8_2 = "UIText_ActivityMonopoly_Raffle_Number_Participation"
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = nil
  L2_2 = A0_2._data
  L2_2 = L2_2.IsClosed
  if L2_2 then
    L1_2 = "UIText_ActivityMonopoly_Raffle_Ticket_Expired"
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.IsDrawn
    if L2_2 then
      L1_2 = "UIText_ActivityMonopoly_Raffle_Ticket_Show"
    else
      L2_2 = A0_2._data
      L2_2 = L2_2.IsTicketShown
      if not L2_2 then
        L1_2 = "UIText_ActivityMonopoly_Raffle_Ticket_ClickTips"
      else
        L1_2 = "UIText_ActivityMonopoly_Raffle_Ticket_Waiting"
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_status
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_show
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlocked
  if L3_2 then
    L3_2 = A0_2._data
    L3_2 = L3_2.IsClosed
    L3_2 = A0_2._data
    L3_2 = L3_2.IsTicketCashed
    L3_2 = A0_2._data
    L3_2 = L3_2.IsTicketShown
    L3_2 = not L3_2 and L3_2
  end
  L2_2.interactable = L3_2
end
L3_1._refresh_ticket_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsTicketCashed
  if L1_2 then
    L1_2 = A0_2._data
    L2_2 = L1_2
    L1_2 = L1_2.GetTicketResultIndex
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2 + 1
    L1_2 = L2_1[L1_2]
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.IsTicketShown
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayToEnd
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayToBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1._setup_status_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasResult
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsDrawn
    if not L1_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.IsClosed
      if not L1_2 then
        L1_2 = L0_1
        L2_2 = L1_2
        L1_2 = L1_2.SendGetJackpotInfoReq
        L1_2(L2_2)
    end
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_auto_use_ticket
    L1_2(L2_2)
  end
end
L3_1._try_auto_update_ticket = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_take_ticket
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsTicketShown
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_cash_ticket
    L1_2(L2_2)
  end
end
L3_1._try_auto_use_ticket = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsDrawn
    if not L1_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.IsClosed
      if not L1_2 then
        L1_2 = A0_2._data
        L1_2 = L1_2.IsTicketGot
        if not L1_2 then
          L1_2 = L0_1
          L2_2 = L1_2
          L1_2 = L1_2.SendTakeJackpotTicket
          L3_2 = A0_2._data
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L3_1._try_take_ticket = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsDrawn
    if not L1_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.IsClosed
      if not L1_2 then
        L1_2 = A0_2._data
        L1_2 = L1_2.IsTicketGot
        if L1_2 then
          L1_2 = A0_2._data
          L1_2 = L1_2.IsTicketShown
          if not L1_2 then
            L1_2 = L0_1
            L2_2 = L1_2
            L1_2 = L1_2.SendShowJackpotTicket
            L3_2 = A0_2._data
            L1_2(L2_2, L3_2)
          end
        end
      end
    end
  end
end
L3_1._try_show_ticket = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsDrawn
    if L1_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.IsClosed
      if not L1_2 then
        L1_2 = A0_2._data
        L1_2 = L1_2.IsTicketCashed
        if not L1_2 then
          goto lbl_18
        end
      end
    end
  end
  do return end
  ::lbl_18::
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendCashJackpotTicket
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L3_1._try_cash_ticket = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_result_view
  L1_2(L2_2)
end
L3_1._on_unlocked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetJackpotInfoReq
  L1_2(L2_2)
end
L3_1._on_result_time = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_result_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ticket_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_auto_use_ticket
  L1_2(L2_2)
end
L3_1._on_jackpot_synced = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsDrawn
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_take_ticket
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_show_ticket
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_cash_ticket
    L1_2(L2_2)
  end
end
L3_1._on_btn_show = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ticket_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_show_anim_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._show_timer = L2_2
end
L3_1._on_ticket_shown = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._show_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._show_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._show_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_cash_ticket
  L1_2(L2_2)
end
L3_1._on_show_anim_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._cashed_rewards = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_ticket_view
  L2_2(L3_2)
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetTicketResultIndex
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  L2_2 = L2_1[L2_2]
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = L3_2
  L3_2 = L3_2.GetClip
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.length
  L5_2 = A0_2
  L4_2 = A0_2.show_full_screen_block
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.PlayFromBegin
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_root
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._on_cash_anim_finish
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._cash_timer = L4_2
  L4_2 = A0_2._cash_timer
  L5_2 = L4_2
  L4_2 = L4_2.reset
  L4_2(L5_2)
  L4_2 = A0_2._cash_timer
  L5_2 = L4_2
  L4_2 = L4_2.start
  L4_2(L5_2)
end
L3_1._on_ticket_cashed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cash_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._cash_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._cash_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.RewardDialog"
  L3_2 = A0_2._cashed_rewards
  L1_2(L2_2, L3_2)
end
L3_1._on_cash_anim_finish = L4_1
return L3_1
