local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Reward.ActivityMonopolyJackpotMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityModule
L2_1 = 300
L3_1 = 4
L4_1 = 2.1
L5_1 = "StateMonopoly"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "ActivityMonopolyJackpotMainPage"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyJackpotMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.JackpotInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetProgressPhaseIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._phase_ids = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetContributionQuestIDs
  L2_2, L3_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quest_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Monopoly_Activity_Reward_Personal_SpQuestID"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  A0_2._special_quest_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
end
L6_1.init = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.Progress
  A0_2._current_progress = L1_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.ContributionNum
  A0_2._current_contribution = L1_2
end
L6_1._update_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyJackpotProgressUpdated
  L4_2 = A0_2._on_progress_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyJackpotProgressRewardTaken
  L4_2 = A0_2._on_progress_reward_taken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = L6_1._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestUpdated
  L4_2 = A0_2._on_quest_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyDailyUpdateTimeSynced
  L4_2 = A0_2._on_daily_time_synced
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyYesterdaySettle
  L4_2 = A0_2._on_daily_settle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyFunctionUnlockSynced
  L4_2 = A0_2._on_function_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowDailyRewardHint
  L4_2 = A0_2._on_daily_reward_ntf
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_contribution_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_contribution_reward
  L2_2 = L1_2
  L1_2 = L1_2.SetMaxTrackObject
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_final_contribution_reward
  L3_2 = L3_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_final_contribution_reward
  L2_2 = L1_2
  L1_2 = L1_2.register_available_callback
  L3_2 = A0_2._take_all_available_contribution_reward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetJackpotProgressReq
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._fetch_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fetch_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fetch_timer
    L0_3(L1_3)
  end
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fetch_timer = L1_2
  A0_2._cur_hint_time = 0
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonopolyBtnEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_daily_resource_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._bind_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_do_daily_first_enter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_take_ticket
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_hint
  L1_2(L2_2)
end
L6_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_bgm
  L1_2(L2_2)
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "MonopolyEntranceShow" then
    L3_2 = A0_2
    L2_2 = A0_2._is_max
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.PlayFromBegin
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_max
      L4_2 = "MonopolyMainEntrancePage_Star_Hint"
      L2_2(L3_2, L4_2)
    end
  end
end
L6_1._on_ui_animation_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_daily_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_contribution_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_do_daily_first_enter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_take_ticket
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_bgm
  L1_2(L2_2)
  L1_2 = A0_2._fetch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fetch_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterSeconds
  L2_2 = L4_1
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    A0_2._is_fade_in_finished = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_show_hint
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.IsProgressExtra
  return L1_2
end
L6_1._is_max = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = false
  L3_2 = A0_2
  L2_2 = A0_2._is_max
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L3_2 = L2_2
    L2_2 = L2_2.MonopolyGetEntranceMaxHintSeen
    L2_2 = L2_2(L3_2)
    L1_2 = not L2_2
    if L1_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.User
      L3_2 = L2_2
      L2_2 = L2_2.MonopolySetEntranceMaxHintSeen
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L3_2 = L2_2
    L2_2 = L2_2.MonopolyGetEntranceHintSeenTimestamp
    L2_2 = L2_2(L3_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_TimeManager
    L4_2 = L3_2
    L3_2 = L3_2.TimeStampCrossDailyUpdate
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L1_2 = L3_2
    if L1_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.User
      L4_2 = L3_2
      L3_2 = L3_2.MonopolySetEntranceHintSeen
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.GlobalVars
      L5_2 = L5_2.s_TimeManager
      L5_2 = L5_2.NowTimeStamp
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = A0_2
  L4_2 = A0_2._is_max
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = "UIText_ActivityMonopoly_Reward_BubbleTalk_02"
    if L4_2 then
      goto lbl_72
    end
  end
  L4_2 = "UIText_ActivityMonopoly_Reward_BubbleTalk_01"
  ::lbl_72::
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_hint
    L4_2 = "MonopolySetpCountFadeIn"
    L2_2(L3_2, L4_2)
    A0_2._cur_hint_time = 0
    L3_2 = A0_2
    L2_2 = A0_2.add_tick
    L2_2(L3_2)
  end
end
L6_1._try_show_hint = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A0_2._cur_hint_time
  L2_2 = L2_2 + A1_2
  A0_2._cur_hint_time = L2_2
  L2_2 = A0_2._cur_hint_time
  L3_2 = L3_1
  if L2_2 >= L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_hint
    L4_2 = "MonopolySetpCountFadeOut"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.remove_tick
    L2_2(L3_2)
  end
end
L6_1._on_tick = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._setup_timer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.daily_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = L0_1.SystemInfo
  L3_2 = L3_2.NextDailyUpdateTimeStamp
  L4_2 = A0_2._on_daily_time_reached
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._refresh_daily_timer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bg_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress_reward_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_contribution_view
  L1_2(L2_2)
end
L6_1._refresh_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_max
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg_extra
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L6_1._refresh_bg_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.modf
  L2_2 = A0_2._current_progress
  L2_2 = L2_2 / 10
  L1_2, L2_2 = L1_2(L2_2)
  if 0 < L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMonopoly_Common_PercentValue"
    L6_2 = string
    L6_2 = L6_2.format
    L7_2 = "%.1f"
    L8_2 = A0_2._current_progress
    L8_2 = L8_2 / 10
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMonopoly_Common_PercentValue"
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L6_1._refresh_progress_info_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_progress_reward
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._phase_ids
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2 ~= nil
    L9_2 = L5_2
    L8_2 = L5_2.safe_set_active
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L9_2 = L5_2
      L8_2 = L5_2.setup_view
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
end
L6_1._refresh_progress_reward_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.ActivityMonopolyUtils
  L1_2 = L1_2.set_text_value_in_thousands
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_contribution
  L3_2 = L0_1.JackpotInfo
  L3_2 = L3_2.ContributionNum
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.GetMonopolyCurrencyID
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_currency
  L6_2 = L2_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_final_contribution_reward
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._special_quest_id
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_final_contribution_reward
  L4_2 = L3_2
  L3_2 = L3_2.set_reddot
  L5_2 = "ActivityMonopolyContributionReward"
  L6_2 = A0_2._special_quest_id
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_contribution_reward
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._quest_ids
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_contribution_reward
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._quest_ids
  L5_2 = A0_2._special_quest_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_contribution_reward
  L5_2 = L4_2
  L4_2 = L4_2.PushTrackIndex
  L6_2 = L3_2 - 1
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = A0_2._quest_ids
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_ModuleManager
    L9_2 = L9_2.QuestModule
    L10_2 = L9_2
    L9_2 = L9_2.IsQuestStatus
    L11_2 = L8_2
    L12_2 = CS
    L12_2 = L12_2.BLHLCHNAJKK
    L12_2 = L12_2.FMLBEGJJHMJ
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if not L9_2 then
      L9_2 = math
      L9_2 = L9_2.max
      L10_2 = 0
      L11_2 = L7_2 - 2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.list_contribution_reward
      L11_2 = L10_2
      L10_2 = L10_2.MovePanelToItemIndex
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
      return
    end
  end
end
L6_1._setup_contribution_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ActivityMonopolyUtils
  L1_2 = L1_2.set_text_value_in_thousands
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_contribution
  L3_2 = L0_1.JackpotInfo
  L3_2 = L3_2.ContributionNum
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_contribution_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_final_contribution_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._special_quest_id
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._quest_ids
  L3_2 = A0_2._special_quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_contribution_reward
  L3_2 = L2_2
  L2_2 = L2_2.PushTrackIndex
  L4_2 = L1_2 - 1
  L2_2(L3_2, L4_2)
end
L6_1._refresh_contribution_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyJackpotDonatedItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyJackpotDonatedItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_available_callback
    L7_2 = A0_2._take_all_available_contribution_reward
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._quest_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._quest_ids
  L6_2 = L6_2[A2_2]
  L7_2 = A0_2._quest_ids
  L8_2 = A2_2 + 2
  L7_2 = L7_2[L8_2]
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_reddot
  L10_2 = "ActivityMonopolyContributionReward"
  L11_2 = L5_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_tutorial
  L10_2 = A2_2 + 1
  L8_2(L9_2, L10_2)
  return L3_2
end
L6_1._on_item_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._phase_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1.JackpotInfo
    L7_2 = L6_2
    L6_2 = L6_2.IsProgressRewardTaken
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      return L5_2
    end
  end
  L1_2 = A0_2._phase_ids
  L2_2 = A0_2._phase_ids
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  return L1_2
end
L6_1._get_next_progress_phase_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ODNGJGNMDIK
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendDailyFirstEnterMonopolyActivityCsReq
  L1_2(L2_2)
end
L6_1._try_do_daily_first_enter = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._try_take_ticket = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._quest_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.QuestModule
    L8_2 = L7_2
    L7_2 = L7_2.IsQuestStatus
    L9_2 = L6_2
    L10_2 = CS
    L10_2 = L10_2.BLHLCHNAJKK
    L10_2 = L10_2.CDJHHIHBNMN
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_NetworkManager
    L3_2 = L2_2
    L2_2 = L2_2.AMFNHGKACLB
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L6_1._take_all_available_contribution_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ODNGJGNMDIK
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendDailyFirstEnterMonopolyActivityCsReq
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.IOJNIEENGMF
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetDailyInitItemCsReq
  L1_2(L2_2)
end
L6_1._on_btn_start = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMainPage"
    L2_2(L3_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyDailyRewardDialog"
  L4_2 = A1_2
  L5_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMainPage"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
end
L6_1._on_daily_reward_ntf = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._is_fade_in_finished
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_show_hint
    L1_2(L2_2)
  end
end
L6_1._on_progress_updated = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_progress_reward_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.RewardDialog"
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._on_progress_reward_taken = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 and nil ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_contribution_view
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A1_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
end
L6_1._on_quest_get_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_contribution_view
  L1_2(L2_2)
end
L6_1._on_quest_updated = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetJackpotProgressReq
  L1_2(L2_2)
end
L6_1._on_fetch_timer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_do_daily_first_enter
  L1_2(L2_2)
end
L6_1._on_daily_time_reached = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_daily_timer
  L1_2(L2_2)
end
L6_1._on_daily_time_synced = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_show_daily_settle_dialog
  L1_2(L2_2)
end
L6_1._on_daily_settle = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyDailySettleDialog"
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._try_show_daily_settle_dialog = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_function_unlocked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._on_expired = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_progress_reward
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L6_1.get_first_selected_phase_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_shown_item_index
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_contribution_reward
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_contribution_reward
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_17
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_17::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L6_1.get_first_selected_contribution_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = A1_2.ItemTotalCount
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A1_2
    L6_2 = A1_2.IsItemWithinViewport
    L8_2 = L5_2
    L9_2 = 0.9
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = L5_2 + 1
      return L6_2
    end
  end
  L2_2 = 1
  return L2_2
end
L6_1._get_first_shown_item_index = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InControlActionsManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.InControlInputEventEnabled
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickButton
      L2_2 = #L2_2
      if A1_2 ~= L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickUp
        L2_2 = #L2_2
        if A1_2 ~= L2_2 then
          goto lbl_48
        end
      end
      L3_2 = A0_2
      L2_2 = A0_2.get_first_selected_phase_object
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_in_phase
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      goto lbl_60
      ::lbl_48::
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickDown
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.get_first_selected_contribution_object
        L2_2 = L2_2(L3_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
  ::lbl_60::
end
L6_1._on_in_control_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L6_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_in_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L6_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_in_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 1
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ItemDetail"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L6_1._refresh_short_cut_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.ContainsKey
    L5_2 = L5_1
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      return
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.AudioConfig
    L3_2 = L3_2.MenuBGMStates
    L4_2 = L3_2
    L3_2 = L3_2.get_Item
    L5_2 = L5_1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L2_2
    L4_2 = L2_2.SwitchUIMenuBGM
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L6_1._start_bgm = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StopUIMenuBGM
    L3_2(L4_2)
  end
end
L6_1._stop_bgm = L7_1
return L6_1
