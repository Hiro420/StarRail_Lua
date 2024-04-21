local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueScheduleCheckPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L3_2 = L1_2
  L2_2 = L1_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.RogueRow
  if L2_2 then
    L3_2 = L2_2.ScheduleDataID
    if L3_2 then
      goto lbl_16
    end
  end
  L3_2 = 0
  ::lbl_16::
  A0_2._rogue_season_schedule_id = L3_2
  L4_2 = L1_2
  L3_2 = L1_2.GetRogueScoreRewardData
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.EndTimeStamp
  A0_2._rogue_score_reward_end_time_stamp = L3_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_season_schedule_id
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ScheduleModule
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L3_2 = A0_2._rogue_season_schedule_id
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_rogue_season_expired
      L1_2(L2_2)
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_TimeManager
  L1_2 = L1_2.NowTimeStamp
  L2_2 = A0_2._rogue_score_reward_end_time_stamp
  if L1_2 >= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_rogue_score_reward_expired
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = true
  return L1_2
end
L0_1.check_schedule = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CDILNDGFPDB
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.HFBMFICCMJL
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_Rogue_Season_Finish_Tip"
  L1_2(L2_2)
end
L0_1._on_rogue_season_expired = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MOLHLACPPFD
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.FBALJEBNIGE
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_Rogue_Score_Reward_Reset_Tip"
  L1_2(L2_2)
end
L0_1._on_rogue_score_reward_expired = L1_1
return L0_1
