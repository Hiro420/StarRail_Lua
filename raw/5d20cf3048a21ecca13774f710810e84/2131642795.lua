local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.Toast.BottomToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.PlayerExpToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.PlayerLevelToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.InteractRewardToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.RewardListToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.ToastModule.ToastData.BattleTargetToastData"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastModule"
L2_1 = "Logic.BaseModule"
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = 2
L3_1 = 0
L4_1 = "ShopPage"
L5_1 = "BattlePassPurchasePage"
function L6_1(A0_2)
  local L1_2
  A0_2._in_battle = false
  A0_2._is_in_performance = false
  A0_2._is_in_loading = false
  A0_2._is_paused = false
  L1_2 = {}
  A0_2._paused_reason_table = L1_2
  L1_2 = {}
  A0_2._adventure_datas = L1_2
  L1_2 = {}
  A0_2._battle_datas = L1_2
  L1_2 = {}
  A0_2._paused_datas = L1_2
  A0_2._mainpage_datas = nil
  A0_2._in_loading_datas = nil
  A0_2._battle_achievement_score_ids = nil
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._in_battle = nil
  A0_2._paused_reason_table = nil
  A0_2._adventure_datas = nil
  A0_2._battle_datas = nil
  A0_2._paused_datas = nil
  A0_2._mainpage_datas = nil
  A0_2._in_loading_datas = nil
  A0_2._battle_achievement_score_ids = nil
end
L0_1.dtor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LGIFGBCCKOO
  L4_2 = L0_1._on_set_in_loading
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.MBMMBOOAHBK
  L4_2 = L0_1._on_set_in_loading
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastPause
  L4_2 = L0_1._on_ui_toast_pause
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastContinue
  L4_2 = L0_1._on_ui_toast_continue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePhaseEntered
  L4_2 = L0_1._on_enter_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEntered
  L4_2 = L0_1._on_enter_maze
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastMainPage
  L4_2 = L0_1._on_main_page_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._set_not_in_loading
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EntityMove
  L4_2 = L0_1._set_not_in_loading
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = L0_1._on_maze_to_battle_transit_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = L0_1._on_story_mode_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BeginPlayVideo
  L4_2 = L0_1._on_begin_play_video
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishRewardToast
  L4_2 = L0_1._on_finish_reward_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWillClearUIStack
  L4_2 = L0_1._on_clear_ui_stack
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueClear
  L4_2 = L0_1._clear_queue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerAddHeroBasicType
  L4_2 = L0_1._on_get_new_profession
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UnLockFuncEntrance
  L4_2 = L0_1._on_unlock_func_entrance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetNewAvatar
  L4_2 = L0_1._on_get_new_character
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetNewAvatarSkin
  L4_2 = L0_1._on_get_new_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetNewLightCone
  L4_2 = L0_1._on_get_new_lightcone
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenMainMission
  L4_2 = L0_1._on_take_main_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = L0_1._on_finish_main_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonthCardAwardReceived
  L4_2 = L0_1._on_receive_monthcard_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowTreasureChallengeRewardDialog
  L4_2 = L0_1._on_treasure_challenge_succeed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReceiveFarmBattleReward
  L4_2 = L0_1._on_receive_farm_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamOnMPMaxUpgrade
  L4_2 = L0_1._on_maze_skill_point_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRechargeItem
  L4_2 = A0_2._on_recharge_succ
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NewDecalUnlock
  L4_2 = L0_1._on_new_decal_unlock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRogueAdventureRoomPreparePanel
  L4_2 = L0_1._on_show_rogue_adventure_room_prepare_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestAutoReward
  L4_2 = L0_1._on_quest_auto_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowRewardFullscreenToast
  L4_2 = L0_1._on_quest_auto_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureDiaryUnlocked
  L4_2 = L0_1._on_travel_brochure_diary_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochurePasterGotHint
  L4_2 = L0_1._on_travel_brochure_paster_got
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumPhaseUpgrade
  L4_2 = L0_1._on_museum_phase_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumNewPhaseBegin
  L4_2 = L0_1._on_museum_new_phase_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumTurnResult
  L4_2 = L0_1._on_museum_turn_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumGetAvatarStaff
  L4_2 = L0_1._on_museum_get_avatar_staff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumGetExhibit
  L4_2 = L0_1._on_museum_get_exhibit_item
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumShowGetFundDialog
  L4_2 = L0_1._on_museum_show_get_fund_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumShowRandomEvent
  L4_2 = L0_1._on_museum_random_event_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumShowNewTurnHint
  L4_2 = L0_1._on_museum_new_turn_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumTargetFinishHint
  L4_2 = L0_1._on_museum_target_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SpaceZooGetNewCatHint
  L4_2 = L0_1._on_space_zoo_new_cat_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyShowEventFinishDialog
  L4_2 = L0_1._on_alley_event_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyShowStageFinishDialog
  L4_2 = L0_1._on_alley_stage_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherDivideUnlockBadge
  L4_2 = A0_2._on_aether_divide_badge_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherSpiritUnlocked
  L4_2 = A0_2._on_aether_divide_spirit_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnActionDayChange
  L4_2 = A0_2._on_heliobus_action_day_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusOnChallengeUpdate
  L4_2 = A0_2._on_heliobus_challenge_update
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialShowEventHintToast
  L4_2 = A0_2._on_heart_dial_show_eventhint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIWorldLevelUpgrade
  L4_2 = L0_1._on_world_level_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIExpGet
  L4_2 = L0_1._on_get_exp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UILevelUpgrade
  L4_2 = L0_1._on_level_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastPageMessage
  L4_2 = L0_1._on_toast_task
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastEliteHint
  L4_2 = L0_1._on_elite_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleEnvBuffHint
  L4_2 = L0_1._on_battle_env_buff_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIChallengeBattleTargetHint
  L4_2 = L0_1._on_challenge_battle_target_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPassBattleTargetHint
  L4_2 = L0_1._on_pass_battle_target_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleTargetCreateHint
  L4_2 = L0_1._on_battle_target_create_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleWinConditionHint
  L4_2 = L0_1._on_battle_win_condition_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleLoseConditionHint
  L4_2 = L0_1._on_battle_lose_condition_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamTrialAvatarLeave
  L4_2 = L0_1._on_trail_avatar_leave
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventPrepare
  L4_2 = L0_1._on_challenge_event_prepare
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventStart
  L4_2 = L0_1._on_challenge_event_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeEventFinish
  L4_2 = L0_1._on_challenge_event_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  L4_2 = L0_1._on_take_sub_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakeSubmissionLogin
  L4_2 = L0_1._on_take_sub_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishSubMission
  L4_2 = L0_1._on_finish_sub_mission_top_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishSubMissionToast
  L4_2 = L0_1._on_finish_sub_mission_full_screen
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FightActivityBattleEnter
  L4_2 = L0_1._on_fight_activity_battle_enter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueShowWorldFinishToast
  L4_2 = L0_1._on_rogue_show_world_finish_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChessRogueMainMissionFinished
  L4_2 = L0_1._on_chess_rogue_main_mission_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChessRogueLayerCommonSettlement
  L4_2 = L0_1._on_chess_rogue_common_layer_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyFundsChangeHint
  L4_2 = L0_1._on_alley_funds_change_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusShowSkillUnlockToast
  L4_2 = L0_1._on_heliobus_skill_unlock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryLineSwitchToast
  L4_2 = L0_1._on_story_line_switch
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AddFriendHint
  L4_2 = L0_1._on_add_friend_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowMissionHintDialog
  L4_2 = L0_1._on_show_mission_hint_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowAchievementFinishHint
  L4_2 = L0_1._on_achievement_complete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleScoringChange
  L4_2 = L0_1._on_battle_achievement_complete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIBattleShowRemainAchievement
  L4_2 = L0_1._on_show_remain_battle_achievement
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FakeBattleAchievementGet
  L4_2 = L0_1._on_fake_battle_achievement_complete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueNousShowTriggerRecomSubStoryToast
  L4_2 = L0_1._on_rogue_nous_show_trigger_recom_sub_story_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueToastGetAvatar
  L4_2 = L0_1._on_rogue_get_avatar
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueToastMiracleUse
  L4_2 = L0_1._on_rogue_miracle_use
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueToastMiracleBroken
  L4_2 = L0_1._on_rogue_miracle_broken
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureOnBuffCreate
  L4_2 = L0_1._on_rogue_buff_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureOnBuffDelete
  L4_2 = L0_1._on_rogue_buff_delete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CabinetMissionFinished
  L4_2 = L0_1._on_chess_rogue_cabinet_mission_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DrinkMakerShowDayChangeToast
  L4_2 = L0_1._on_drink_maker_show_day_change_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyAssetHint
  L4_2 = L0_1._on_monopoly_asset_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGameRatioHint
  L4_2 = L0_1._on_monopoly_game_ratio_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyAddBuffHint
  L4_2 = L0_1._on_monopoly_add_buff_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolySwitchMapHint
  L4_2 = L0_1._on_monopoly_switch_map
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyEndTransitionFinished
  L4_2 = L0_1._on_monopoly_transition_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyMBTIFinishHint
  L4_2 = L0_1._on_monopoly_mbti_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowEffectToast
  L4_2 = A0_2._on_monopoly_try_show_effect
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolySetToastPauseState
  L4_2 = A0_2._monopoly_set_pause_state
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyClickGetCoin
  L4_2 = A0_2._on_monopoly_click_get_currency
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowCommonTopToast
  L4_2 = A0_2._on_show_monopoly_common_toast
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SceneTakeRollShopRewardScRsp
  L4_2 = L0_1._on_scene_take_roll_shop_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.Init = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.has_toast_in_queue
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.has_toast_in_queue = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = false
  L7_2 = A0_2
  L6_2 = A0_2._check_main_page
  L8_2 = A1_2
  L9_2 = L5_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = ...
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if L6_2 then
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue
  L8_2 = A1_2
  L9_2 = L5_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = ...
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.inqueue_toast_checkmainpage = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2
  if A2_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ToastPauseReason
    L3_2 = L4_2.Default
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_pause_status
  L6_2 = L3_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.pasue_toast = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_pause_status
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_ui_toast_pause = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_pause_status
  L4_2 = A1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_ui_toast_continue = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = A0_2
  L3_2 = A0_2._set_pause_flag
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_paused_status
  L3_2 = L3_2(L4_2)
  A0_2._is_paused = L3_2
  L3_2 = A0_2._is_paused
  if not L3_2 then
    L3_2 = ipairs
    L4_2 = A0_2._paused_datas
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2._try_to_inqueue
      L10_2 = L7_2.queueTag
      L11_2 = L7_2.inBattle
      L12_2 = L7_2.priority
      L13_2 = L7_2.panel
      L14_2 = L7_2.binder
      L15_2 = unpack
      L16_2 = L7_2.data
      L15_2, L16_2 = L15_2(L16_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    end
    L3_2 = {}
    A0_2._paused_datas = L3_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIManager
    L3_2 = L3_2.PageStackCount
    if L3_2 == 2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_main_page_show
      L3_2(L4_2)
    end
  end
end
L0_1._refresh_pause_status = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._paused_reason_table
  if L3_2 == nil then
    L3_2 = {}
    A0_2._paused_reason_table = L3_2
  end
  L3_2 = A0_2._paused_reason_table
  L4_2 = #A1_2
  L3_2[L4_2] = A2_2
end
L0_1._set_pause_flag = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._paused_reason_table
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = pairs
  L2_2 = A0_2._paused_reason_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._get_paused_status = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._check_ui_in_data_table
  L5_2 = A0_2._paused_datas
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_ui_in_data_table
  L5_2 = A0_2._in_loading_datas
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_ui_in_data_table
  L5_2 = A0_2._mainpage_datas
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = G
  L3_2 = L3_2.PopupQueueManager
  L4_2 = L3_2
  L3_2 = L3_2.check_ui_in_queue
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._check_ui_in_queue = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 ~= nil then
    L3_2 = ipairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.panel
      if L8_2 == A2_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_ui_in_data_table = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "FullScreenToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_fullscreen = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._check_main_page
  L7_2 = "FullScreenToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L5_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "FullScreenToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_fullscreen_in_main_page = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._check_main_page
  L7_2 = "DefaultToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L5_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "DefaultToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_top = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._check_main_page
  L7_2 = "RewardList"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L5_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "RewardList"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_left_reward = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._check_main_page
  L7_2 = "MissionLeftHint"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L5_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "MissionLeftHint"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_left_top_mission_hint = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "BottomToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_bottom = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = A0_2
  L5_2 = A0_2._check_main_page
  L7_2 = "RogueToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L5_2 then
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "RogueToast"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_rogue = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = G
  L5_2 = L5_2.SuperDebug
  L5_2 = L5_2.LogFormatWithTag
  L6_2 = G
  L6_2 = L6_2.LogTag
  L6_2 = L6_2.Tutorial
  L7_2 = "\229\133\168\229\177\128\229\188\149\229\175\188Dialog\232\191\155\229\133\165toast\233\152\159\229\136\151"
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = "TutorialList"
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._try_to_inqueue_tutorial = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, ...)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = A0_2._is_paused
  if L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._create_queue_data
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L13_2 = ...
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._paused_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2._check_is_in_loading
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = ...
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if L6_2 == true then
    return
  end
  L6_2 = A0_2._in_battle
  if A2_2 == L6_2 then
    L6_2 = G
    L6_2 = L6_2.PopupQueueManager
    L7_2 = L6_2
    L6_2 = L6_2.inqueue
    L8_2 = A1_2
    L9_2 = A3_2
    L10_2 = A4_2
    L11_2 = A5_2
    L12_2, L13_2 = ...
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._create_queue_data
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L13_2 = ...
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    if A2_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._battle_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._adventure_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._try_to_inqueue = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, ...)
  local L6_2, L7_2, L8_2
  L6_2 = {}
  L6_2.queueTag = A1_2
  L6_2.inBattle = A2_2
  L6_2.priority = A3_2
  L6_2.panel = A4_2
  L6_2.binder = A5_2
  L7_2 = {}
  L8_2 = ...
  L7_2[1] = L8_2
  L6_2.data = L7_2
  return L6_2
end
L0_1._create_queue_data = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, ...)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UIManager
  L6_2 = L6_2.PageStackCount
  if 2 < L6_2 then
    L6_2 = A0_2._mainpage_datas
    if L6_2 == nil then
      L6_2 = {}
      A0_2._mainpage_datas = L6_2
    end
    L7_2 = A0_2
    L6_2 = A0_2._create_queue_data
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L12_2 = A5_2
    L13_2 = ...
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = A0_2
    L7_2 = A0_2._get_main_page_insert_index
    L9_2 = A1_2
    L10_2 = A3_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._mainpage_datas
    L10_2 = L7_2
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = true
    return L8_2
  end
  L6_2 = false
  return L6_2
end
L0_1._check_main_page = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._mainpage_datas
  L3_2 = #L3_2
  L4_2 = L3_2 + 1
  if A1_2 == "FullScreenToast" then
    L5_2 = 1
    L6_2 = L3_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A0_2._mainpage_datas
      L9_2 = L9_2[L8_2]
      L10_2 = L9_2.queueTag
      if L10_2 == "FullScreenToast" then
        L10_2 = L9_2.priority
        if not (A2_2 < L10_2) then
          goto lbl_20
        end
      end
      L4_2 = L8_2
      do break end
      ::lbl_20::
    end
  end
  return L4_2
end
L0_1._get_main_page_insert_index = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._is_paused
  if L1_2 then
    return
  end
  L1_2 = A0_2._mainpage_datas
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.PopupQueueManager
    L2_2 = L1_2
    L1_2 = L1_2.try_show_wait_main_page
    L1_2(L2_2)
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._mainpage_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._try_to_inqueue
    L8_2 = L5_2.queueTag
    L9_2 = L5_2.inBattle
    L10_2 = L5_2.priority
    L11_2 = L5_2.panel
    L12_2 = L5_2.binder
    L13_2 = unpack
    L14_2 = L5_2.data
    L13_2, L14_2 = L13_2(L14_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  A0_2._mainpage_datas = nil
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.try_show_wait_main_page
  L1_2(L2_2)
end
L0_1._on_main_page_show = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._is_in_loading = true
end
L0_1._on_set_in_loading = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._is_in_loading = false
  L1_2 = A0_2._in_loading_datas
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._in_loading_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._try_to_inqueue
    L8_2 = L5_2.queueTag
    L9_2 = L5_2.inBattle
    L10_2 = L5_2.priority
    L11_2 = L5_2.panel
    L12_2 = L5_2.binder
    L13_2 = unpack
    L14_2 = L5_2.data
    L13_2, L14_2 = L13_2(L14_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  A0_2._in_loading_datas = nil
end
L0_1._set_not_in_loading = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, ...)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = A0_2._is_in_loading
  if L6_2 ~= true then
    L6_2 = false
    return L6_2
  end
  L7_2 = A0_2
  L6_2 = A0_2._create_queue_data
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = ...
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = A0_2._in_loading_datas
  if L7_2 == nil then
    L7_2 = {}
    A0_2._in_loading_datas = L7_2
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = A0_2._in_loading_datas
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = true
  return L7_2
end
L0_1._check_is_in_loading = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._in_battle = true
  L2_2 = A0_2
  L1_2 = A0_2._set_not_in_loading
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._battle_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.PopupQueueManager
    L7_2 = L6_2
    L6_2 = L6_2.inqueue
    L8_2 = L5_2.queueTag
    L9_2 = L5_2.priority
    L10_2 = L5_2.panel
    L11_2 = L5_2.binder
    L12_2 = unpack
    L13_2 = L5_2.data
    L12_2, L13_2 = L12_2(L13_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L1_2 = {}
  A0_2._battle_datas = L1_2
end
L0_1._on_enter_battle = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._in_battle
  if L1_2 == false then
    L2_2 = A0_2
    L1_2 = A0_2._set_not_in_loading
    L1_2(L2_2)
    return
  end
  A0_2._in_battle = false
  L2_2 = A0_2
  L1_2 = A0_2._set_not_in_loading
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._adventure_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.beRemoved
      if L6_2 ~= true then
        L6_2 = G
        L6_2 = L6_2.PopupQueueManager
        L7_2 = L6_2
        L6_2 = L6_2.inqueue
        L8_2 = L5_2.queueTag
        L9_2 = L5_2.priority
        L10_2 = L5_2.panel
        L11_2 = L5_2.binder
        L12_2 = unpack
        L13_2 = L5_2.data
        L12_2, L13_2 = L12_2(L13_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
  L1_2 = {}
  A0_2._adventure_datas = L1_2
end
L0_1._on_enter_maze = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._is_in_performance
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.HasPageInStack
      L4_2 = "TalkDialog"
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._clear_queue
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_story_mode_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_begin_play_video
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_adventure_rewarad
  L1_2(L2_2)
end
L0_1._on_maze_to_battle_transit_begin = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_queue
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_adventure_rewarad
  L1_2(L2_2)
end
L0_1._on_begin_play_video = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.clear_queue
  L3_2 = "RewardList"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_adventure_rewarad
  L1_2(L2_2)
end
L0_1._on_finish_reward_toast = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.PopupQueueManager
    L2_2 = L1_2
    L1_2 = L1_2.clear_all_queue
    L1_2(L2_2)
  end
end
L0_1._on_clear_ui_stack = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.clear_queue
  L3_2 = "DefaultToast"
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.clear_queue
  L3_2 = "BottomToast"
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.clear_queue
  L3_2 = "RewardList"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.clear_main_page_datas
  L1_2(L2_2)
end
L0_1._clear_queue = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._mainpage_datas = nil
end
L0_1.clear_main_page_datas = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._adventure_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.queueTag
      if L6_2 == "RewardList" then
        L5_2.beRemoved = true
      end
    end
  end
end
L0_1._remove_adventure_rewarad = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastManagerExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "NewSystemOpen"
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_fullscreen
  L6_2 = L3_2.IsinBattle
  L7_2 = L3_2.Priority
  L8_2 = "Ui.Adventure.NewSystemHintDialog"
  L9_2 = nil
  L10_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_unlock_func_entrance = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewAvatarDrop"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Avatar.NewAvatarDropDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_get_new_character = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewAvatarSkin"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.AvatarSkin.NewSkinDropDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_get_new_skin = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewAvatarDrop"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.LightCone.GetNewLightCone.NewLightConeDropDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_get_new_lightcone = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewProfessionAddHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Story.NewProfessionAddDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_get_new_profession = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.Instance
  L2_2 = L2_2.IsInLoadingProcess
  if L2_2 then
    return
  end
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.MissionAdvance
  if L4_2 == 1 then
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.TryGetMainMissionData
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.IsTakenAndNotstarted
      if not L5_2 then
        L5_2 = L4_2.IsStart
        if not L5_2 then
          goto lbl_83
        end
      end
      L5_2 = nil
      L6_2 = L4_2.IsTakenAndNotstarted
      if L6_2 then
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.ToastManagerExcelTable
        L6_2 = L6_2.GetData
        L7_2 = "MissionAdvance"
        L6_2 = L6_2(L7_2)
        L5_2 = L6_2
        L7_2 = A0_2
        L6_2 = A0_2._try_to_inqueue_fullscreen
        L8_2 = L5_2.IsinBattle
        L9_2 = L5_2.Priority
        L10_2 = "Ui.Mission.OnMissionForeseeDialog"
        L11_2 = nil
        L12_2 = L2_2
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      else
        L6_2 = L4_2.IsStart
        if L6_2 then
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.GameCore
          L6_2 = L6_2.ToastManagerExcelTable
          L6_2 = L6_2.GetData
          L7_2 = "MainMissionStart"
          L6_2 = L6_2(L7_2)
          L5_2 = L6_2
          L7_2 = A0_2
          L6_2 = A0_2._try_to_inqueue_top
          L8_2 = L5_2.IsinBattle
          L9_2 = L5_2.Priority
          L10_2 = "Ui.Adventure.MainMissionHint.MainMissionTopToastDialog"
          L11_2 = nil
          L12_2 = L4_2.Row
          L13_2 = true
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L6_2 = G
          L6_2 = L6_2.NotifyManager
          L6_2 = L6_2.notify
          L7_2 = G
          L7_2 = L7_2.CS
          L7_2 = L7_2.NotifyType
          L7_2 = L7_2.UIMainMissionTopToastEnqueue
          L8_2 = true
          L6_2(L7_2, L8_2)
        end
      end
    end
  end
  ::lbl_83::
end
L0_1._on_take_main_mission = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.IsMainMissionSuspended
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = nil
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsNextMainMissionStart
    L8_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.NextMainMissionStatus
    L7_2 = L7_2.NotStart
    if L6_2 == L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.ToastManagerExcelTable
      L7_2 = L7_2.GetData
      L8_2 = "MissionSuspend"
      L7_2 = L7_2(L8_2)
      L5_2 = L7_2
      L8_2 = A0_2
      L7_2 = A0_2._try_to_inqueue_fullscreen
      L9_2 = L5_2.IsinBattle
      L10_2 = L5_2.Priority
      L11_2 = "Ui.Mission.OnMissionSuspendDialog"
      L12_2 = nil
      L13_2 = L2_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.NextMainMissionStatus
      L7_2 = L7_2.IsStart
      if L6_2 == L7_2 then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.ToastManagerExcelTable
        L7_2 = L7_2.GetData
        L8_2 = "MainMissionComplete"
        L7_2 = L7_2(L8_2)
        L5_2 = L7_2
        L8_2 = A0_2
        L7_2 = A0_2._try_to_inqueue_top
        L9_2 = L5_2.IsinBattle
        L10_2 = L5_2.Priority
        L11_2 = "Ui.Adventure.MainMissionHint.MainMissionTopToastDialog"
        L12_2 = nil
        L13_2 = L3_2
        L14_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L7_2 = G
        L7_2 = L7_2.NotifyManager
        L7_2 = L7_2.notify
        L8_2 = G
        L8_2 = L8_2.CS
        L8_2 = L8_2.NotifyType
        L8_2 = L8_2.UIMainMissionTopToastEnqueue
        L9_2 = false
        L7_2(L8_2, L9_2)
      else
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.NextMainMissionStatus
        L7_2 = L7_2.None
        if L6_2 == L7_2 then
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.GameCore
          L7_2 = L7_2.ToastManagerExcelTable
          L7_2 = L7_2.GetData
          L8_2 = "MissionSuspend"
          L7_2 = L7_2(L8_2)
          L5_2 = L7_2
          L8_2 = A0_2
          L7_2 = A0_2._try_to_inqueue_fullscreen
          L9_2 = L5_2.IsinBattle
          L10_2 = L5_2.Priority
          L11_2 = "Ui.Mission.OnMissionForeseeDialog"
          L12_2 = nil
          L13_2 = nil
          L14_2 = L2_2
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        end
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.try_add_train_visitor_toast
  L7_2 = L2_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.TryShowMainMissionRewardDisplay
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L0_1._on_finish_main_mission = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ChallengeRewardGet"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.TreasureChallenge.ChallengeSuccessRewardDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_treasure_challenge_succeed = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "TrialAvatarAddHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Avatar.TrialAvatarDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.try_show_trial_avatar_added = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L2_2 = L2_2.PageStackCount
    if not (L2_2 <= 1) then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L3_2 = A0_2
  L2_2 = A0_2.inqueue_toast_checkmainpage
  L4_2 = "FullScreenToast"
  L5_2 = 1
  L6_2 = "Ui.Shop.MonthCardAwardDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_receive_monthcard_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ImportItemToast"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.IsinBattle
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = false
  ::lbl_20::
  if L2_2 then
    L4_2 = L2_2.Priority
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = 1
  ::lbl_26::
  L6_2 = A0_2
  L5_2 = A0_2.inqueue_toast_checkmainpage
  L7_2 = "FullScreenToast"
  L8_2 = L4_2
  L9_2 = "Ui.AdventureReward.RareRewardHintDialog"
  L10_2 = nil
  L11_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.show_important_item_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RollShopRewardHint"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 0
  L5_2 = A1_2.Reward
  L5_2 = L5_2.ItemList_
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2.Reward
    L8_2 = L8_2.ItemList_
    L8_2 = L8_2[L7_2]
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.ItemFactory
    L9_2 = L9_2.CreateDisplayItemData
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_fullscreen
  L6_2 = L2_2.IsinBattle
  L7_2 = L2_2.Priority
  L8_2 = "Ui.RollShop.MazeGachaBoxRewardHintDialog"
  L9_2 = nil
  L10_2 = L3_2
  L11_2 = A1_2.GroupType
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._on_scene_take_roll_shop_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = 1
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_fullscreen
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = "Ui.Challenge.Entrance.ChallengeScheduleRefreshHintDialog"
  L9_2 = nil
  L10_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.show_abyss_schedule_refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L2_2 = 1
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = "Ui.Challenge.Entrance.ChallengeUnlockScheduleHintDialog"
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.show_abyss_schedule_unlock = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = false
  L4_2 = 1
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue_fullscreen
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = "Ui.Challenge.Entrance.ChallengeResidentUnlockHintDialog"
  L10_2 = nil
  L11_2 = A1_2
  L12_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1.show_abyss_resident_unlock = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "WorldLevelUP"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.PlayerLevelUp.WorldLevelUpgradeDialog"
  L8_2 = nil
  L9_2 = A1_2.Level
  L10_2 = A1_2.WorldLevel
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_world_level_upgrade = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PlayerLevelUp"
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.PlayerLevelToastData
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = A1_2.Level
  L7_2 = A1_2.WorldLevel
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L2_2.IsinBattle
  L7_2 = L2_2.Priority
  L8_2 = "Ui.PlayerLevelUp.LevelUpgradeDialog"
  L9_2 = nil
  L10_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_level_upgrade = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PlayerExpGet"
  L2_2 = L2_2(L3_2)
  if L2_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.PlayerExpToastData
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = A1_2.Level
  L7_2 = A1_2.Exp
  L8_2 = A1_2.ExpAdd
  L9_2 = L2_2.Duration
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L2_2.IsinBattle
  L7_2 = L2_2.Priority
  L8_2 = "Ui.PlayerLevelUp.PlayerExpGetDialog"
  L9_2 = nil
  L10_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_get_exp = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "DangerousAreasHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Common.ToastEliteHintPanel"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_elite_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BattleEnvBuffHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Battle.BattleEnvBuffHintDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_battle_env_buff_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.check_ui_in_current_panel
  L4_2 = "Ui.Battle.BattleTargetDialog"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BattleEndConditionHint"
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.BattleTargetToastData
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = A1_2
  L7_2 = nil
  L8_2 = L2_2.Duration
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L2_2.IsinBattle
  L7_2 = L2_2.Priority
  L8_2 = "Ui.Battle.BattleTargetDialog"
  L9_2 = nil
  L10_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_challenge_battle_target_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.check_ui_in_current_panel
  L4_2 = "Ui.Battle.BattleTarget.BattlePassTargetDialog"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BattleTargetClearHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Battle.BattleTarget.BattlePassTargetDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_pass_battle_target_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BattleEndConditionHint"
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.BattleTargetToastData
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = nil
  L7_2 = {}
  L8_2 = A1_2
  L7_2[1] = L8_2
  L8_2 = L2_2.Duration
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L2_2.IsinBattle
  L7_2 = L2_2.Priority
  L8_2 = "Ui.Battle.BattleTargetDialog"
  L9_2 = nil
  L10_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_battle_target_create_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.check_ui_in_current_panel
  L4_2 = "Ui.Battle.BattleWinConditionDialog"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BattleEndConditionHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Battle.BattleWinConditionDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_battle_win_condition_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.PopupQueueManager
  L3_2 = L2_2
  L2_2 = L2_2.check_ui_in_current_panel
  L4_2 = "Ui.Battle.BattleLoseConditionDialog"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "BattleEndConditionHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Battle.BattleLoseConditionDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_battle_lose_condition_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "TrialAvatarLeaveHint"
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GamePlayStatic
  L3_2 = L3_2.AdventureGetSpecialAvatarRowByAvatarID
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = L3_2.HasLeaveHint
    if L4_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L2_2.IsinBattle
  L7_2 = L2_2.Priority
  L8_2 = "Ui.Avatar.TrialAvatarLeaveDialog"
  L9_2 = nil
  L10_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_trail_avatar_leave = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionInfoConfig
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetSubMissionData
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L3_2.MainMissionID
  if L5_2 ~= nil then
    L7_2 = L5_2.IsShow
    if L7_2 then
      L7_2 = L5_2.IsStart
      if L7_2 then
        goto lbl_34
      end
    end
  end
  do return end
  ::lbl_34::
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.TryGetMainMissionData
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if L6_2 ~= nil then
    L8_2 = L4_2.IsShowStartHint
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.BeginHintType
    L9_2 = L9_2.New
    if L8_2 == L9_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ToastManagerExcelTable
      L8_2 = L8_2.GetData
      L9_2 = "MissionStart"
      L8_2 = L8_2(L9_2)
      L9_2 = {}
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.GlobalVars
      L10_2 = L10_2.s_ModuleManager
      L10_2 = L10_2.MissionModule
      L11_2 = L10_2
      L10_2 = L10_2.GetMainMissionRow
      L12_2 = L6_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2.ID = L6_2
      L11_2 = L10_2.Name
      L9_2.Name = L11_2
      L9_2.MissionPanelTag = "Start"
      L11_2 = L8_2.Duration
      L9_2.Duration = L11_2
      L9_2.FuncName = "MissionStart"
      L11_2 = false
      L12_2 = "Ui.Common.ToastMissionPanel"
      L13_2 = "Ui.Common.ToastMissionPanelBinder"
      L14_2 = L10_2.Type
      L15_2 = CS
      L15_2 = L15_2.RPG
      L15_2 = L15_2.GameCore
      L15_2 = L15_2.MainMissionType
      L15_2 = L15_2.Main
      if L14_2 == L15_2 then
        L12_2 = "Ui.Common.ToastMissionMainDialog"
        L13_2 = "Ui.Common.ToastMissionMainPanelBinder"
        L11_2 = true
      else
        L14_2 = L10_2.Type
        L15_2 = CS
        L15_2 = L15_2.RPG
        L15_2 = L15_2.GameCore
        L15_2 = L15_2.MainMissionType
        L15_2 = L15_2.Daily
        if L14_2 == L15_2 then
          L13_2 = "Ui.Common.ToastMissionDailyPanelBinder"
        else
          L14_2 = L10_2.Type
          L15_2 = CS
          L15_2 = L15_2.RPG
          L15_2 = L15_2.GameCore
          L15_2 = L15_2.MainMissionType
          L15_2 = L15_2.Branch
          if L14_2 == L15_2 then
            L13_2 = "Ui.Common.ToastMissionBranchPanelBinder"
            L14_2 = L7_2.ChapterID
            if L14_2 ~= 0 then
              L14_2 = L7_2.ChapterRow
              L14_2 = L14_2.OriginMainMission
              L15_2 = L7_2.ID
              if L14_2 == L15_2 then
                L12_2 = "Ui.Common.ToastMissionBranchDialog"
                L13_2 = "Ui.Common.ToastMissionBranchDialogBinder"
                L11_2 = true
              end
            end
          else
            L14_2 = L10_2.Type
            L15_2 = CS
            L15_2 = L15_2.RPG
            L15_2 = L15_2.GameCore
            L15_2 = L15_2.MainMissionType
            L15_2 = L15_2.Companion
            if L14_2 == L15_2 then
              L12_2 = "Ui.Common.ToastMissionCompanionDialog"
              L13_2 = "Ui.Common.ToastMissionCompanionPanelBinder"
              L11_2 = true
            else
              L14_2 = L10_2.Type
              L15_2 = CS
              L15_2 = L15_2.RPG
              L15_2 = L15_2.GameCore
              L15_2 = L15_2.MainMissionType
              L15_2 = L15_2.Gap
              if L14_2 == L15_2 then
                L12_2 = "Ui.Common.ToastMissionGapDialog"
                L13_2 = "Ui.Common.ToastMissionGapDialogBinder"
                L11_2 = true
              end
            end
          end
        end
      end
      if L11_2 then
        L15_2 = A0_2
        L14_2 = A0_2.inqueue_toast_checkmainpage
        L16_2 = "FullScreenToast"
        L17_2 = L8_2.Priority
        L18_2 = L12_2
        L19_2 = L13_2
        L20_2 = L9_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      else
        L15_2 = A0_2
        L14_2 = A0_2._try_to_inqueue_top
        L16_2 = L8_2.IsinBattle
        L17_2 = L8_2.Priority
        L18_2 = L12_2
        L19_2 = L13_2
        L20_2 = L9_2
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
    end
  end
end
L0_1._on_take_sub_mission = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TrainModule
  L5_2 = L3_2
  L4_2 = L3_2.VisitorConditionPrepared
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.GameCore
    L0_3 = L0_3.ToastManagerExcelTable
    L0_3 = L0_3.GetData
    L1_3 = "TrainVisitorHint"
    L0_3 = L0_3(L1_3)
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.GetMissionUnlockedVisitorAvatarIDs
    L3_3 = L2_2
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = 0
    L3_3 = L1_3.Count
    L3_3 = L3_3 - 1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_2
      L7_3 = L6_3
      L6_3 = L6_3._try_to_inqueue_fullscreen
      L8_3 = L0_3.IsinBattle
      L9_3 = L0_3.Priority
      L10_3 = "Ui.Mission.TrainVisitor.MissionTrainVisitorDialog"
      L11_3 = nil
      L12_3 = L1_3[L5_3]
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
  end
  L4_2(L5_2, L6_2)
end
L0_1._on_train_visitor_toast = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TrainModule
  L5_2 = L3_2
  L4_2 = L3_2.VisitorConditionPrepared
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.GameCore
    L0_3 = L0_3.ToastManagerExcelTable
    L0_3 = L0_3.GetData
    L1_3 = "TrainVisitorHint"
    L0_3 = L0_3(L1_3)
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.GameCore
    L1_3 = L1_3.TrainVisitorConfigExcelTable
    L1_3 = L1_3.GetUnlockVisitorIDs
    L2_3 = A1_2
    L1_3 = L1_3(L2_3)
    L2_3 = 0
    L3_3 = L1_3.Count
    L3_3 = L3_3 - 1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = CS
      L6_3 = L6_3.RPG
      L6_3 = L6_3.GameCore
      L6_3 = L6_3.TrainVisitorConfigExcelTable
      L6_3 = L6_3.GetData
      L7_3 = L1_3[L5_3]
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L7_3 = L6_3.ToastFinishMainMission
        L8_3 = A2_2
        if L7_3 == L8_3 then
          L7_3 = A0_2
          L8_3 = L7_3
          L7_3 = L7_3.inqueue_toast_checkmainpage
          L9_3 = "FullScreenToast"
          L10_3 = L0_3.Priority
          L11_3 = "Ui.Mission.TrainVisitor.MissionTrainVisitorDialog"
          L12_3 = nil
          L13_3 = L6_3.AvatarID
          L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        end
      end
    end
  end
  L4_2(L5_2, L6_2)
end
L0_1.try_add_train_visitor_toast = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "FarmRewardGet"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Common.RewardDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_receive_farm_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MazeSkillPointUpgrade"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.PlayerLevelUp.MazeSkillPointUpgradeDialog"
  L8_2 = nil
  L9_2 = A1_2[0]
  L10_2 = A1_2[1]
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_maze_skill_point_upgrade = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.TopPage
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Name
    L4_2 = L4_1
    if L3_2 ~= L4_2 then
      L3_2 = L2_2.Name
      L4_2 = L5_1
      if L3_2 ~= L4_2 then
        goto lbl_26
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2._try_to_inqueue_fullscreen
    L5_2 = false
    L6_2 = L3_1
    L7_2 = "Ui.Shop.RechargeRewardDialog"
    L8_2 = "Ui.Common.RewardDialogBinder"
    L9_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  ::lbl_26::
  else
    L4_2 = A0_2
    L3_2 = A0_2.inqueue_toast_checkmainpage
    L5_2 = "FullScreenToast"
    L6_2 = L3_1
    L7_2 = "Ui.Shop.RechargeRewardDialog"
    L8_2 = "Ui.Common.RewardDialogBinder"
    L9_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_recharge_succ = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewDecalUnlock"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Activity.ActivitySilverWolf.SilverWolfNewDecalDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_new_decal_unlock = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2.inqueue_toast_checkmainpage
  L4_2 = "FullScreenToast"
  L5_2 = 5
  L6_2 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomPreparePanel"
  L7_2 = nil
  L8_2 = A1_2.Type
  L9_2 = A1_2.GroupID
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_show_rogue_adventure_room_prepare_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = 5
  L6_2 = "Ui.Common.RewardDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_quest_auto_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TravelBrochureConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ShowUnlockToast
    if L4_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ToastManagerExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "PasterRewardHint"
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue_top
  L7_2 = L4_2.IsinBattle
  L8_2 = L4_2.Priority
  L9_2 = "Ui.TravelBrochure.Toast.TravelBrochureDiaryUnlockDialog"
  L10_2 = nil
  L11_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._on_travel_brochure_diary_unlocked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PasterRewardHint"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.IsinBattle
  L4_2 = L2_2.Priority
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue_fullscreen_in_main_page
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = "Ui.TravelBrochure.Toast.TravelBrochurePasterGotDialog"
  L10_2 = nil
  L11_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._on_travel_brochure_paster_got = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumPhaseUpgrade"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumPhaseUpgradeDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_phase_upgrade = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumNewPhaseHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumNewPhaseDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_new_phase_begin = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumTurnResult"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumTurnResultDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_turn_finish = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewMuseumStaff"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumNewStaffDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_get_avatar_staff = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.ItemData
  L2_2 = L2_2.MuseumItemRow
  L2_2 = L2_2.HideGetHint
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "NewMuseumItem"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumNewExhibitItemDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_get_exhibit_item = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumGetFund"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumGetFundDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_show_get_fund_dialog = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumRandomEvent"
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.RandomEventConfig
  L3_2 = L3_2.EventType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MuseumRandomEventType
  L4_2 = L4_2.Operate
  if L3_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_to_inqueue_fullscreen
    L6_2 = L2_2.IsinBattle
    L7_2 = L2_2.Priority
    L8_2 = "Ui.Museum.RandomEvent.MuseumBuffEventDialog"
    L9_2 = nil
    L10_2 = A1_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MuseumRandomEventType
    L4_2 = L4_2.Market
    if L3_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._try_to_inqueue_fullscreen
      L6_2 = L2_2.IsinBattle
      L7_2 = L2_2.Priority
      L8_2 = "Ui.Museum.RandomEvent.MuseumMarketEventDialog"
      L9_2 = nil
      L10_2 = A1_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.MuseumRandomEventType
      L4_2 = L4_2.ExhibitMission
      if L3_2 == L4_2 then
        L4_2 = A1_2.RandomEventConfig
        L4_2 = L4_2.EventTypeParameter
        L4_2 = L4_2[0]
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.EventMuseumItemConfigExcelTable
        L5_2 = L5_2.GetData
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L6_2 = L5_2.IsTargetReward
        if L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2._try_to_inqueue_fullscreen
          L8_2 = L2_2.IsinBattle
          L9_2 = L2_2.Priority
          L10_2 = "Ui.Museum.Target.MuseumRewardMissionDialog"
          L11_2 = nil
          L12_2 = A1_2
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        else
          L7_2 = A0_2
          L6_2 = A0_2._try_to_inqueue_fullscreen
          L8_2 = L2_2.IsinBattle
          L9_2 = L2_2.Priority
          L10_2 = "Ui.Museum.RandomEvent.MuseumMissionEventDialog"
          L11_2 = nil
          L12_2 = A1_2
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        end
      else
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.MuseumRandomEventType
        L4_2 = L4_2.StuffMission
        if L3_2 == L4_2 then
          L5_2 = A0_2
          L4_2 = A0_2._try_to_inqueue_fullscreen
          L6_2 = L2_2.IsinBattle
          L7_2 = L2_2.Priority
          L8_2 = "Ui.Museum.RandomEvent.MuseumMissionEventDialog"
          L9_2 = nil
          L10_2 = A1_2
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L0_1._on_museum_random_event_begin = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumTargetFinishHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.Target.MuseumTargetFinishDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_target_finish = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumNewTurnHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumNewTurnHintDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_new_turn_begin = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "MuseumItemCollectionHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Museum.MuseumExhibitCollctionHintDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_museum_exhibit_collection_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.SpaceZoo.SpaceZooBreedResultDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_space_zoo_new_cat_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L3_1
  L6_2 = "Ui.Activity.ActivityAlley.Event.AlleyEventResultDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_alley_event_finish = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L3_1
  L6_2 = "Ui.Activity.ActivityAlley.Event.AlleyLetterDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_alley_stage_finish = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AetherDivideModule
  L2_2 = L2_2.GymData
  L2_2 = L2_2.CurGymID
  if L2_2 == 0 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.AetherDivide.AetherGym.AetherDivideBadgeListDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_aether_divide_badge_unlocked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == 6010 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.inqueue_toast_checkmainpage
  L4_2 = "FullScreenToast"
  L5_2 = L2_1
  L6_2 = "Ui.AetherDivide.AetherSpiritAtlas.AetherSpiritAtlasUnlockAnim.AetherSpiritAtlasUnlockAnimDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_aether_divide_spirit_unlocked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "HeliobusActionDayResult"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_fullscreen
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Heliobus.SNS.ActionDay.Performance.HeliobusActionDayResultPerformanceDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_heliobus_action_day_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.Heliobus.Challenge.HeliobusChallengeSuccessRewardDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_heliobus_challenge_update = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.HeartDial.HeartDialEventHintDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_heart_dial_show_eventhint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionInfoConfig
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.IsShowFinishEffect
  if L5_2 ~= 1 then
    return
  end
  L5_2 = L3_2.MainMissionID
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.TryGetMainMissionData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.MissionModule
  L8_2 = L7_2
  L7_2 = L7_2.GetMainMissionRow
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = "Ui.Common.ToastMissionPanel"
  L9_2 = nil
  L10_2 = L7_2.Type
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.GameCore
  L11_2 = L11_2.MainMissionType
  L11_2 = L11_2.Daily
  if L10_2 == L11_2 then
    L9_2 = "Ui.Common.ToastMissionDailyPanelBinder"
  else
    L10_2 = L7_2.Type
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.GameCore
    L11_2 = L11_2.MainMissionType
    L11_2 = L11_2.Branch
    if L10_2 == L11_2 then
      L10_2 = L6_2.ChapterID
      if L10_2 ~= 0 then
        L10_2 = L6_2.ChapterRow
        L10_2 = L10_2.FinalMainMission
        L11_2 = L6_2.ID
        if L10_2 == L11_2 then
          return
        end
      end
      L9_2 = "Ui.Common.ToastMissionBranchPanelBinder"
    end
  end
  if L9_2 == nil then
    return
  end
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.ToastManagerExcelTable
  L10_2 = L10_2.GetData
  L11_2 = "MissionFinish"
  L10_2 = L10_2(L11_2)
  L12_2 = A0_2
  L11_2 = A0_2._create_mission_finish_hint
  L13_2 = L7_2
  L14_2 = L10_2.Duration
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L13_2 = A0_2
  L12_2 = A0_2._try_to_inqueue_top
  L14_2 = L10_2.IsinBattle
  L15_2 = L10_2.Priority
  L16_2 = L8_2
  L17_2 = L9_2
  L18_2 = L11_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = A0_2
  L12_2 = A0_2.try_add_train_visitor_toast
  L14_2 = L5_2
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
end
L0_1._on_finish_sub_mission_top_toast = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.GetSubMissionInfoConfig
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.IsShowFinishEffect
  if L5_2 ~= 1 then
    return
  end
  L5_2 = L3_2.MainMissionID
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.TryGetMainMissionData
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.MissionModule
  L8_2 = L7_2
  L7_2 = L7_2.GetMainMissionRow
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = nil
  L9_2 = nil
  L10_2 = L7_2.Type
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.GameCore
  L11_2 = L11_2.MainMissionType
  L11_2 = L11_2.Main
  if L10_2 == L11_2 then
    L8_2 = "Ui.Common.ToastMissionMainDialog"
    L9_2 = "Ui.Common.ToastMissionMainPanelBinder"
  else
    L10_2 = L7_2.Type
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.GameCore
    L11_2 = L11_2.MainMissionType
    L11_2 = L11_2.Companion
    if L10_2 == L11_2 then
      L8_2 = "Ui.Common.ToastMissionCompanionDialog"
      L9_2 = "Ui.Common.ToastMissionCompanionPanelBinder"
    else
      L10_2 = L7_2.Type
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.MainMissionType
      L11_2 = L11_2.Branch
      if L10_2 == L11_2 then
        L10_2 = L6_2.ChapterID
        if L10_2 ~= 0 then
          L10_2 = L6_2.ChapterRow
          L10_2 = L10_2.FinalMainMission
          L11_2 = L6_2.ID
          if L10_2 == L11_2 then
            L8_2 = "Ui.Common.ToastMissionBranchDialog"
            L9_2 = "Ui.Common.ToastMissionBranchDialogBinder"
          end
        end
      else
        L10_2 = L7_2.Type
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.GameCore
        L11_2 = L11_2.MainMissionType
        L11_2 = L11_2.Gap
        if L10_2 == L11_2 then
          L8_2 = "Ui.Common.ToastMissionGapDialog"
          L9_2 = "Ui.Common.ToastMissionGapDialogBinder"
        end
      end
    end
  end
  if L8_2 == nil or L9_2 == nil then
    return
  end
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.ToastManagerExcelTable
  L10_2 = L10_2.GetData
  L11_2 = "MissionFinish"
  L10_2 = L10_2(L11_2)
  L12_2 = A0_2
  L11_2 = A0_2._create_mission_finish_hint
  L13_2 = L7_2
  L14_2 = L10_2.Duration
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L13_2 = A0_2
  L12_2 = A0_2.inqueue_toast_checkmainpage
  L14_2 = "FullScreenToast"
  L15_2 = L10_2.Priority
  L16_2 = L8_2
  L17_2 = L9_2
  L18_2 = L11_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = A0_2
  L12_2 = A0_2.try_add_train_visitor_toast
  L14_2 = L5_2
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
end
L0_1._on_finish_sub_mission_full_screen = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = {}
  L4_2 = A1_2.MainMissionID
  L3_2.ID = L4_2
  L4_2 = A1_2.Name
  L3_2.Name = L4_2
  L3_2.MissionPanelTag = "Complete"
  L3_2.Duration = A2_2
  L3_2.FuncName = "MissionFinish"
  return L3_2
end
L0_1._create_mission_finish_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ChallengeEventPrepare"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Adventure.ChallengeEventMission.ChallengeEventCountDownDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_challenge_event_prepare = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ChallengeEventStart"
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.IsPuzzle
  if L3_2 then
    L3_2 = "Ui.Adventure.PuzzleChallenge.PuzzleChallengeStartToastDialog"
    L4_2 = "Ui.Adventure.PuzzleChallenge.PuzzleChallengeStartToastDialogBinder"
    L6_2 = A0_2
    L5_2 = A0_2._try_to_inqueue_top
    L7_2 = L2_2.IsinBattle
    L8_2 = L2_2.Priority
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = A1_2.Data
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._try_to_inqueue_top
    L5_2 = L2_2.IsinBattle
    L6_2 = L2_2.Priority
    L7_2 = "Ui.Adventure.ChallengeEventMission.ChallengeEventStartToastDialog"
    L8_2 = nil
    L9_2 = A1_2.Data
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_challenge_event_start = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ChallengeEventFinish"
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.IsSuccess
  if L3_2 then
    L3_2 = A1_2.IsPuzzle
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_to_inqueue_top
      L5_2 = L2_2.IsinBattle
      L6_2 = L2_2.Priority
      L7_2 = "Ui.Adventure.PuzzleChallenge.PuzzleChallengeSuccessToastDialog"
      L8_2 = nil
      L9_2 = A1_2.Data
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._try_to_inqueue_top
      L5_2 = L2_2.IsinBattle
      L6_2 = L2_2.Priority
      L7_2 = "Ui.Adventure.ChallengeEventMission.ChallengeEventSuccessToastDialog"
      L8_2 = nil
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  else
    L3_2 = A1_2.IsPuzzle
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._try_to_inqueue_top
      L5_2 = L2_2.IsinBattle
      L6_2 = L2_2.Priority
      L7_2 = "Ui.Adventure.PuzzleChallenge.PuzzleChallengeFailToastDialog"
      L8_2 = nil
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._try_to_inqueue_top
      L5_2 = L2_2.IsinBattle
      L6_2 = L2_2.Priority
      L7_2 = "Ui.Adventure.ChallengeEventMission.ChallengeEventFailToastDialog"
      L8_2 = nil
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L0_1._on_challenge_event_finish = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastType
  L3_2 = L3_2.ChallengeMission
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.PopupQueueManager
    L3_2 = L2_2
    L2_2 = L2_2.inqueue
    L4_2 = "DefaultToast"
    L5_2 = L2_1
    L6_2 = "Ui.Common.ToastChallengePanel"
    L7_2 = nil
    L8_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ToastType
    L3_2 = L3_2.AreaChange
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.AdventureStatic
      L3_2 = L2_2
      L2_2 = L2_2.GetCurrentGameModeType
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.GameModeType
      L3_2 = L3_2.RogueExplore
      if L2_2 == L3_2 then
        L3_2 = G
        L3_2 = L3_2.PopupQueueManager
        L4_2 = L3_2
        L3_2 = L3_2.inqueue
        L5_2 = "DefaultToast"
        L6_2 = L2_1
        L7_2 = "Ui.Common.Toast.RogueToastAreaDialog"
        L8_2 = nil
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.GameModeType
        L3_2 = L3_2.ChessRogue
        if L2_2 == L3_2 then
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.GlobalVars
          L3_2 = L3_2.s_ModuleManager
          L3_2 = L3_2.ChessRogueModule
          L4_2 = L3_2.ChessRogueData
          L5_2 = L4_2
          L4_2 = L4_2.GetCurChessRogueBoardDataItem
          L4_2 = L4_2(L5_2)
          L5_2 = L4_2 or L5_2
          if L4_2 then
            L5_2 = L4_2.CurCellDataItem
          end
          if L5_2 ~= nil then
            L7_2 = L5_2
            L6_2 = L5_2.IsDecayCell
            L6_2 = L6_2(L7_2)
            if L6_2 then
              L6_2 = L5_2.CellStatus
              L7_2 = CS
              L7_2 = L7_2.FINAEOMBOMP
              L7_2 = L7_2.MIKAMDENMMJ
              if L6_2 ~= L7_2 then
                L6_2 = G
                L6_2 = L6_2.PopupQueueManager
                L7_2 = L6_2
                L6_2 = L6_2.inqueue
                L8_2 = "FullScreenToast"
                L9_2 = L2_1
                L10_2 = "Ui.RogueDLC.ChessRogue.Toast.ChessRogueBossBuffDialog"
                L11_2 = nil
                L12_2 = L5_2
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
              end
            end
          end
          L6_2 = L3_2.ChessRogueData
          L7_2 = L6_2
          L6_2 = L6_2.IsInChessRogueStartRoom
          L6_2 = L6_2(L7_2)
          if not L6_2 then
            L6_2 = G
            L6_2 = L6_2.PopupQueueManager
            L7_2 = L6_2
            L6_2 = L6_2.inqueue
            L8_2 = "DefaultToast"
            L9_2 = L2_1
            L10_2 = "Ui.RogueDLC.ChessRogue.Layer.ChessRogueToastCellDialog"
            L11_2 = nil
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          end
        else
          L3_2 = G
          L3_2 = L3_2.PopupQueueManager
          L4_2 = L3_2
          L3_2 = L3_2.inqueue
          L5_2 = "DefaultToast"
          L6_2 = L2_1
          L7_2 = "Ui.Common.ToastAreaPanel"
          L8_2 = nil
          L9_2 = A1_2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        end
      end
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ToastType
      L3_2 = L3_2.ChallengeEnviromentHint
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_ModuleManager
        L2_2 = L2_2.ChallengeModule
        L2_2 = L2_2.CurrentChallengeInstance
        L3_2 = L2_2.GroupType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.ChallengeGroupType
        L4_2 = L4_2.Memory
        if L3_2 == L4_2 then
          L3_2 = G
          L3_2 = L3_2.PopupQueueManager
          L4_2 = L3_2
          L3_2 = L3_2.inqueue
          L5_2 = "FullScreenToast"
          L6_2 = L2_1
          L7_2 = "Ui.Challenge.Maze.ToastChallengeEnvironmentHintPanel"
          L8_2 = nil
          L9_2 = A1_2
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
        else
          L3_2 = L2_2.GroupType
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.ChallengeGroupType
          L4_2 = L4_2.Story
          if L3_2 == L4_2 then
            L3_2 = G
            L3_2 = L3_2.PopupQueueManager
            L4_2 = L3_2
            L3_2 = L3_2.inqueue
            L5_2 = "FullScreenToast"
            L6_2 = L2_1
            L7_2 = "Ui.ChallengeStory.Maze.ToastChallengeStoryEnvironmentHintPanel"
            L8_2 = nil
            L9_2 = A1_2
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          end
        end
      else
        L2_2 = A1_2.Type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ToastType
        L3_2 = L3_2.ChallengeMazeHint
        if L2_2 == L3_2 then
          L2_2 = G
          L2_2 = L2_2.PopupQueueManager
          L3_2 = L2_2
          L2_2 = L2_2.inqueue
          L4_2 = "DefaultToast"
          L5_2 = L2_1
          L6_2 = "Ui.Common.ToastChallengeMazeHintPanel"
          L7_2 = nil
          L8_2 = A1_2
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.ToastType
          L3_2 = L3_2.MazeEnvBuffToast
          if L2_2 == L3_2 then
            L2_2 = G
            L2_2 = L2_2.PopupQueueManager
            L3_2 = L2_2
            L2_2 = L2_2.inqueue
            L4_2 = "DefaultToast"
            L5_2 = L2_1
            L6_2 = "Ui.Maze.MazeBuff.MazeEnvBuffToastPanel"
            L7_2 = nil
            L8_2 = A1_2
            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          end
        end
      end
    end
  end
end
L0_1._on_toast_task = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastManagerExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "FarmPropUnlock"
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L3_2.IsinBattle
  L7_2 = L3_2.Priority
  L8_2 = "Ui.FarmEnemy.FarmPropUnlockDialog"
  L9_2 = nil
  L10_2 = A1_2
  L11_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.try_show_farm_prop_unlocked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.DrinkMaker.Entrance.DrinkMakerWorkingDayChangeDialog"
  L7_2 = nil
  L8_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_drink_maker_show_day_change_toast = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "InteractRewardToast"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.IsinBattle
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = false
  ::lbl_14::
  if L2_2 then
    L4_2 = L2_2.Priority
    if L4_2 then
      goto lbl_20
    end
  end
  L4_2 = 4
  ::lbl_20::
  L5_2 = G
  L5_2 = L5_2.new
  L6_2 = G
  L6_2 = L6_2.InteractRewardToastData
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.init
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue_left_reward
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = "Ui.AdventureReward.InteractRewardDialog"
  L11_2 = nil
  L12_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1.try_interact_reward_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if L2_2 ~= 0 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RewardListToast"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.IsinBattle
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = false
  ::lbl_20::
  if L2_2 then
    L4_2 = L2_2.Priority
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = 5
  ::lbl_26::
  L5_2 = G
  L5_2 = L5_2.new
  L6_2 = G
  L6_2 = L6_2.RewardListToastData
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.init
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue_left_reward
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = "Ui.AdventureReward.RewardListDialog"
  L11_2 = nil
  L12_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1.try_reward_list_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.ActivityPunkLord
  if L2_2 == L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastManagerExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "AddFriendHint"
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_left_reward
  L6_2 = L3_2.IsinBattle
  L7_2 = L3_2.Priority
  L8_2 = "Ui.Friend.AddFriendDialog"
  L9_2 = nil
  L10_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_add_friend_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "AdventureStatusHintNew"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_left_top_mission_hint
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Adventure.AdventureMissionHintDialog"
  L8_2 = nil
  L9_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_show_mission_hint_dialog = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 2800
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SystemOpenModule
  L3_2 = L3_2.IsOpen
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == false then
    return
  end
  L4_2 = A1_2.IsChallenge
  if L4_2 == false then
    return
  end
  L4_2 = A1_2.ScoringId
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.AchievementModule
  L6_2 = L5_2
  L5_2 = L5_2.IsBattleAchievementInDoing
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == false then
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ToastManagerExcelTable
  L5_2 = L5_2.GetData
  L6_2 = "AchievementToastBattle"
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2.insert_battle_achievement_score_id
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue_bottom
  L8_2 = L5_2.IsinBattle
  L9_2 = L5_2.Priority
  L10_2 = "Ui.Achievement.AchievementHintForBattleDialog"
  L11_2 = nil
  L12_2 = {}
  L13_2 = L4_2
  L12_2[1] = L13_2
  L13_2 = L5_2.Duration
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1._on_battle_achievement_complete = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = 2800
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SystemOpenModule
  L3_2 = L3_2.IsOpen
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == false then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ToastManagerExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "AchievementToastBattle"
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue_bottom
  L7_2 = L4_2.IsinBattle
  L8_2 = L4_2.Priority
  L9_2 = "Ui.Achievement.AchievementHintForBattleDialog"
  L10_2 = nil
  L11_2 = {}
  L12_2 = A1_2
  L11_2[1] = L12_2
  L12_2 = L4_2.Duration
  L13_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1._on_fake_battle_achievement_complete = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.check_ui_in_current_panel
  L3_2 = "Ui.Achievement.AchievementHintForBattleDialog"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_remain_battle_achievement_score_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "AchievementToastBattle"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_bottom
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.Achievement.AchievementHintForBattleDialog"
  L8_2 = nil
  L9_2 = L1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_show_remain_battle_achievement = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RaidTargetSuccessHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.TreasureChallenge.TreasureChallengeTargetSuccessHint"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_show_treasure_challenge_target_success_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RaidTargetFailHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.TreasureChallenge.TreasureChallengeTargetFailHint"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_show_treasure_challenge_target_fail_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RaidTargetMazeSuccessHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.TreasureChallenge.TreasureChallengeTargetSuccessHint"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_show_treasure_challenge_target_maze_success_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RaidTargetMazeFailHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_top
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.TreasureChallenge.TreasureChallengeTargetFailHint"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_show_treasure_challenge_target_maze_fail_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._try_to_inqueue_top
  L3_2 = 1
  L4_2 = 10
  L5_2 = "Ui.Activity.FightActivity.FightNextWaveDialog"
  L6_2 = nil
  L7_2 = 10
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_fight_activity_battle_enter = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastPage
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastType
  L3_2 = L3_2.ChallengeMission
  L2_2.Type = L3_2
  L2_2.MessageOne = "MazeText_Rogue_Finish_15"
  L2_2.MessageTwo = "MazeText_Rogue_Finish_15_sub"
  L2_2.CanInterrupt = false
  L3_2 = G
  L3_2 = L3_2.PopupQueueManager
  L4_2 = L3_2
  L3_2 = L3_2.inqueue
  L5_2 = "DefaultToast"
  L6_2 = L2_1
  L7_2 = "Ui.Common.ToastChallengePanel"
  L8_2 = nil
  L9_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_rogue_show_world_finish_toast = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastManagerExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "ChessRogueMainStoryFinished"
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.MainStoryToastType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ChessRogueMainStoryToastType
  L5_2 = L5_2.Buff
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_to_inqueue_top
    L6_2 = L3_2.IsinBattle
    L7_2 = L3_2.Priority
    L8_2 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueUnlockTrailblazeBuffToast"
    L9_2 = nil
    L10_2 = L2_2
    L11_2 = L3_2.Duration
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L4_2 = L2_2.MainStoryToastType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ChessRogueMainStoryToastType
    L5_2 = L5_2.Effect
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2._try_to_inqueue_fullscreen
      L6_2 = L3_2.IsinBattle
      L7_2 = L3_2.Priority
      L8_2 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueUnlockAeonMainStoryEffectToast"
      L9_2 = nil
      L10_2 = L2_2
      L11_2 = L3_2.Duration
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L0_1._on_chess_rogue_main_mission_finished = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastManagerExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "ChessRogueLayerSettlement"
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_to_inqueue_top
  L6_2 = L3_2.IsinBattle
  L7_2 = L3_2.Priority
  L8_2 = "Ui.RogueDLC.ChessRogue.Settlement.ChessRogueLayerSettlementDialog"
  L9_2 = nil
  L10_2 = L2_2
  L11_2 = L3_2.Duration
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1._on_chess_rogue_common_layer_finished = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ToastManagerExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "AlleyFundsChangeHint"
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_top
  L4_2 = L1_2.IsinBattle
  L5_2 = L1_2.Priority
  L6_2 = "Ui.Activity.ActivityAlley.AlleyFundHintDialog"
  L7_2 = nil
  L8_2 = L1_2.Duration
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_alley_funds_change_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ToastManagerExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "HeliobusSkillUnlock"
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_top
  L4_2 = L1_2.IsinBattle
  L5_2 = L1_2.Priority
  L6_2 = "Ui.Heliobus.Skill.HeliobusSkillUnlockToastDialog"
  L7_2 = nil
  L8_2 = L1_2.Duration
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_heliobus_skill_unlock = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.pasue_toast
  L4_2 = A1_2
  L5_2 = nil
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._monopoly_set_pause_state = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_fullscreen
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.ActivityMonopoly.Effect.ActivityMonopolyEffectToastDialog"
  L7_2 = nil
  L8_2 = A1_2
  L9_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_monopoly_try_show_effect = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = "MonopolyTop"
  L3_2 = 10
  L4_2 = "Ui.ActivityMonopoly.AssetsPage.ActivityMonopolyAssetsHintDialog"
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = L2_2
  L8_2 = false
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = nil
  L12_2 = 1.5
  L13_2 = nil
  L14_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L0_1._on_monopoly_asset_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MonopolyModule
  L2_2 = L2_2.BuffInfo
  L2_2 = L2_2.BuffDict
  L2_2 = L2_2[A1_2]
  L3_2 = "MonopolyTop"
  L4_2 = 10
  L5_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyBuffHintDialog"
  L6_2 = "UIText_ActivityMonopoly_Event_Tips_GetBuff_Detail"
  L7_2 = L2_2.IsPermanent
  if L7_2 then
    L5_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyGameRatioHintDialog"
    L6_2 = "UIText_ActivityMonopoly_Event_Tips_BuffUpGrade"
  end
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L6_2
  L9_2 = G
  L9_2 = L9_2.TextmapStatic
  L9_2 = L9_2.GetText
  L10_2 = L2_2.Name
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = A0_2
  L8_2 = A0_2._try_to_inqueue
  L10_2 = L3_2
  L11_2 = false
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = nil
  L15_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L0_1._on_monopoly_add_buff_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = "MonopolyTop"
  L3_2 = 10
  L4_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyAreaHintDialog"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue
  L8_2 = L2_2
  L9_2 = false
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = nil
  L13_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1._on_monopoly_switch_map = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = "MonopolyTop"
  L3_2 = 10
  L4_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyGameRatioHintDialog"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "UIText_ActivityMonopoly_Event_Tips_AddGameRaiseValue"
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._monopoly_try_cache_toast_when_transition
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = nil
  L12_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L6_2 then
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue
  L8_2 = L2_2
  L9_2 = false
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = nil
  L13_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1._on_monopoly_game_ratio_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_ActivityMonopoly_Event_Tips_AddCoin_Click"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = "MonopolyTop"
  L4_2 = 10
  L5_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyTopHintDialog"
  L7_2 = A0_2
  L6_2 = A0_2._try_to_inqueue
  L8_2 = L3_2
  L9_2 = false
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = nil
  L13_2 = L2_2
  L14_2 = 2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L0_1._on_monopoly_click_get_currency = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = "MonopolyTop"
  L3_2 = 10
  L4_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyTopHintDialog"
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = L2_2
  L8_2 = false
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = nil
  L12_2 = A1_2
  L13_2 = 2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1._on_show_monopoly_common_toast = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, ...)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.MonopolyModule
  L6_2 = L5_2
  L5_2 = L5_2.IsSwitchingWorld
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = A0_2._monopoly_transition_cache_datas
  if L5_2 == nil then
    L5_2 = {}
    A0_2._monopoly_transition_cache_datas = L5_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._create_queue_data
  L7_2 = A1_2
  L8_2 = false
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = ...
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = A0_2._monopoly_transition_cache_datas
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = true
  return L6_2
end
L0_1._monopoly_try_cache_toast_when_transition = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._monopoly_transition_cache_datas
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._monopoly_transition_cache_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._try_to_inqueue
    L8_2 = L5_2.queueTag
    L9_2 = L5_2.inBattle
    L10_2 = L5_2.priority
    L11_2 = L5_2.panel
    L12_2 = L5_2.binder
    L13_2 = unpack
    L14_2 = L5_2.data
    L13_2, L14_2 = L13_2(L14_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  A0_2._monopoly_transition_cache_datas = nil
end
L0_1._on_monopoly_transition_end = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = "MonopolyTop"
  L2_2 = 10
  L3_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyMBTIHintDialog"
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Event_Tips_Report"
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue
  L7_2 = L1_2
  L8_2 = false
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = nil
  L12_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._on_monopoly_mbti_finish = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._check_ui_in_queue
  L3_2 = "DefaultToast"
  L4_2 = "Ui.StoryLine.StoryLineSwitchHintDialog"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ToastManagerExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "StoryLineSwitchHint"
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_top
  L4_2 = L1_2.IsinBattle
  L5_2 = L1_2.Priority
  L6_2 = "Ui.StoryLine.StoryLineSwitchHintDialog"
  L7_2 = nil
  L8_2 = L1_2.Duration
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_story_line_switch = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityFightGroupExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.FightStageTitle
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UIPileToastMessage
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._on_fight_activity_unlock_infinite = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._battle_achievement_score_ids
  if L2_2 == nil then
    L2_2 = {}
    A0_2._battle_achievement_score_ids = L2_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._battle_achievement_score_ids
  L4_2 = A0_2._battle_achievement_score_ids
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.insert_battle_achievement_score_id = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._battle_achievement_score_ids
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._battle_achievement_score_ids
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._battle_achievement_score_ids
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._battle_achievement_score_ids
      L6_2 = L6_2[L5_2]
      if L6_2 == A1_2 then
        L6_2 = table
        L6_2 = L6_2.remove
        L7_2 = A0_2._battle_achievement_score_ids
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1.remove_battle_achievement_score_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2._battle_achievement_score_ids
  if L2_2 ~= nil then
    L2_2 = 1
    L3_2 = A0_2._battle_achievement_score_ids
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._battle_achievement_score_ids
      L6_2 = L6_2[L5_2]
      if L6_2 ~= nil then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = L1_2
        L8_2 = #L1_2
        L8_2 = L8_2 + 1
        L9_2 = A0_2._battle_achievement_score_ids
        L9_2 = L9_2[L5_2]
        L6_2(L7_2, L8_2, L9_2)
      end
    end
    L2_2 = G
    L2_2 = L2_2.PopupQueueManager
    L3_2 = L2_2
    L2_2 = L2_2.clear_queue
    L4_2 = "BottomToast"
    L2_2(L3_2, L4_2)
    A0_2._battle_achievement_score_ids = nil
  end
  return L1_2
end
L0_1.get_remain_battle_achievement_score_id = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 2800
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SystemOpenModule
  L3_2 = L3_2.IsOpen
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == false then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ToastManagerExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "AchievementToast"
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_to_inqueue_bottom
  L7_2 = L4_2.IsinBattle
  L8_2 = L4_2.Priority
  L9_2 = "Ui.Achievement.AchievementHintDialog"
  L10_2 = nil
  L11_2 = A1_2
  L12_2 = L4_2.Duration
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1._on_achievement_complete = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ChessRogueCabinetHint"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_to_inqueue_bottom
  L5_2 = L2_2.IsinBattle
  L6_2 = L2_2.Priority
  L7_2 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueHiddenCabinetCompleteDialog"
  L8_2 = nil
  L9_2 = A1_2
  L10_2 = L2_2.Duration
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_chess_rogue_cabinet_mission_finished = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ToastManagerExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "RogueNousTriggerRecomSubStory"
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.inqueue_toast_checkmainpage
  L5_2 = "BottomToast"
  L6_2 = L2_2.Priority
  L7_2 = "Ui.RogueDLC.RogueNous.Toast.RogueNousTriggerRecomSubStoryToastDialog"
  L8_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_rogue_nous_show_trigger_recom_sub_story_toast = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A0_2._battle_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.queueTag
    if L8_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = ipairs
  L4_2 = A0_2._adventure_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.queueTag
    if L8_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  if not A2_2 then
    L3_2 = A0_2._mainpage_datas
    if L3_2 ~= nil then
      L3_2 = ipairs
      L4_2 = A0_2._mainpage_datas
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = L7_2.queueTag
        if L8_2 == A1_2 then
          L8_2 = true
          return L8_2
        end
      end
    end
  end
  L3_2 = A0_2._paused_datas
  if L3_2 ~= nil then
    L3_2 = ipairs
    L4_2 = A0_2._paused_datas
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.queueTag
      if L8_2 == A1_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.has_toast_in_queue
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1.tutorial_check_has_toast_in_queue = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_rogue
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.Common.Toast.BottomToastDialog"
  L7_2 = nil
  L8_2 = G
  L8_2 = L8_2.BottomToastData
  L8_2 = L8_2.CreateForRogueJoinAvatar
  L9_2 = A1_2
  L8_2, L9_2 = L8_2(L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_rogue_get_avatar = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._is_in_loading
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.HasPageInStack
    L4_2 = "ChessRogueBoardPage"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.new
      L3_2 = "Ui.Common.Toast.BottomToastDialog"
      L2_2 = L2_2(L3_2)
      L4_2 = L2_2
      L3_2 = L2_2.init
      L5_2 = G
      L5_2 = L5_2.BottomToastData
      L5_2 = L5_2.CreateForRogueMiracleBroken
      L6_2 = A1_2
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = L2_2
      L3_2 = L2_2.set_not_close_when_phase_change
      L3_2(L4_2)
      L4_2 = L2_2
      L3_2 = L2_2.async_show
      L3_2(L4_2)
  end
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_to_inqueue_rogue
    L4_2 = false
    L5_2 = L2_1
    L6_2 = "Ui.Common.Toast.BottomToastDialog"
    L7_2 = nil
    L8_2 = G
    L8_2 = L8_2.BottomToastData
    L8_2 = L8_2.CreateForRogueMiracleBroken
    L9_2 = A1_2
    L8_2, L9_2 = L8_2(L9_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_rogue_miracle_broken = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L2_2 = A0_2._try_to_inqueue_rogue
  L4_2 = false
  L5_2 = L2_1
  L6_2 = "Ui.Common.Toast.BottomToastDialog"
  L7_2 = nil
  L8_2 = G
  L8_2 = L8_2.BottomToastData
  L8_2 = L8_2.CreateForRogueMiracleUse
  L9_2 = A1_2
  L8_2, L9_2 = L8_2(L9_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_rogue_miracle_use = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.BottomToastData
  L2_2 = L2_2.CreateForRogueBuffGet
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._try_to_inqueue_rogue
    L5_2 = false
    L6_2 = L2_1
    L7_2 = "Ui.Common.Toast.BottomToastDialog"
    L8_2 = nil
    L9_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_rogue_buff_get = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.BottomToastData
  L2_2 = L2_2.CreateForRogueBuffDelete
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._try_to_inqueue_rogue
    L5_2 = false
    L6_2 = L2_1
    L7_2 = "Ui.Common.Toast.BottomToastDialog"
    L8_2 = nil
    L9_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_rogue_buff_delete = L6_1
return L0_1
