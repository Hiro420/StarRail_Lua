local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.Monopoly.MonopolyUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolySocialEventPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyCheckIdlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyCheckCheatDicePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyButtonLocker"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = "Monopoly_Activity_BubbleTalk_Case_Finish"
L3_1 = "ThrowDice"
L4_1 = "Idle"
L5_1 = "Lying"
L6_1 = 20
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.MonopolyUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui_3d_page = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.map_btn
  L4_2 = A0_2._on_map_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.friend_btn
  L4_2 = A0_2._on_rank_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_roll_dice_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_virtual_cursor_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.virtual_cursor_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_callback
  L3_2 = A0_2
  L4_2 = nil
  L5_2 = A0_2._on_virtual_cursor_blocked
  L6_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyCommonDiceRollResult
  L4_2 = A0_2._on_roll_dice_result_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyTriggerMove
  L4_2 = A0_2._on_trigger_move
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyCellEventAllFinished
  L4_2 = A0_2._on_event_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyAssetLevelUp
  L4_2 = A0_2._on_monopoly_asset_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyCheatResultConfirm
  L4_2 = A0_2._on_roll_dice_result_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyItemNumChanged
  L4_2 = A0_2._refresh
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
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyTriggerTeleport
  L4_2 = A0_2._on_teleport
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowDailySettleDialog
  L4_2 = A0_2._on_daily_settle_ntf
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGuessSettled
  L4_2 = A0_2._on_guess_settled
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyExtraContentChanged
  L4_2 = A0_2._on_monopoly_extra_content_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyTrigger3DEffect
  L4_2 = A0_2._on_ui3d_effect_ntf
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyTriggerMainPageAddDiceEffect
  L4_2 = A0_2._on_play_2d_effect_add_dice
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyTriggerMainPageAddCoinEffect
  L4_2 = A0_2._on_play_2d_effect_add_coin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyTriggerMainPageAddBuffEffect
  L4_2 = A0_2._on_play_2d_effect_add_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyPauseStateChanged
  L4_2 = A0_2._on_pause_state_changed
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
  L3_2 = L3_2.UIMonopolyEventFinished
  L4_2 = A0_2._on_event_triggered_state_changed
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
  L3_2 = L3_2.UIMonopolyMapIDChanged
  L4_2 = L0_1._on_monopoly_map_id_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyAssetTaxHint
  L4_2 = L0_1._on_gain_asset_tax
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyShowEnterDreamEffect
  L4_2 = A0_2._on_enter_dream
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyLeaveDreamStart
  L4_2 = A0_2._on_leave_dream
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDailyRefresh
  L4_2 = A0_2._on_schedule_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyHideRollDice
  L4_2 = A0_2._on_cheat_dice_roll_req_sent
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyCellEventStart
  L4_2 = A0_2._on_event_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGetMoveRsp
  L4_2 = A0_2._on_move_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyCheckIdlePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._idle_check_panel = L1_2
  L1_2 = A0_2._idle_check_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_idle_callback
  L3_2 = A0_2._on_idle_do
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyCheckCheatDicePanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._check_cheat_dice_panel = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ActivityMonopolyButtonLocker
  L1_2 = L1_2(L2_2)
  A0_2._lock_info_provider = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._on_gesture_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._disable_roll_dice
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Monopoly_MapSelect"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.resbar_root
  L3_2 = "ActivityMonopolyReRoll"
  L4_2 = A0_2
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_idle_effect
  L1_2(L2_2)
end
L0_1._on_idle_do = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.try_recover_trigger
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_monopoly_asset_level
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.server_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lock_info_provider
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lock_info_provider
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_cheat_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lock_info_provider
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lock_info_provider
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.history_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lock_info_provider
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lock_info_provider
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.currency_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.cus_init
  L3_2 = A0_2._on_player_icon_clicked
  L4_2 = A0_2
  L5_2 = A0_2._ui_3d_page
  L6_2 = L5_2
  L5_2 = L5_2.get_player_ref
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_func_unlock_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_status
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_root_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_root_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_bubble_eff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.register_rotate_finish_cbk
  L3_2 = A0_2._on_roll_result_anim_finish
  L4_2 = A0_2
  L5_2 = "UI3D_MonopolyGamePlay_Dice_01"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._idle_check_panel
  L2_2 = L1_2
  L1_2 = L1_2.start_tick
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_play_settled_hint
    L0_3(L1_3)
  end
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.SystemInfo
  L2_2 = L1_2
  L1_2 = L1_2.SetGamePauseStateSilently
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._lock_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.dispose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._lock_info_provider
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MonopolyModule
  L1_2 = L1_2.SystemInfo
  L2_2 = L1_2
  L1_2 = L1_2.IsTutorialFinished
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.friend_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SystemInfo
  L3_2 = L2_2
  L2_2 = L2_2.IsMBTIReportUnlocked
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.history_btn_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._res_bar_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L1_1.SystemInfo
  L6_2 = L5_2
  L5_2 = L5_2.IsResBarUnlocked
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = L1_1.SystemInfo
    L5_2 = L5_2.IsInDream
    L5_2 = not L5_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._refresh_func_unlock_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_cheat_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.frameCount
  A0_2._refreshed_tick = L1_2
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_schedule_refresh_close_page
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_daily_settle_dialog
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_guess_settled
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._start_trigger_immediately_effect
  L1_2(L2_2)
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.set_game_pause
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._current_time
  L2_2 = L2_2 + A1_2
  A0_2._current_time = L2_2
  L2_2 = A0_2._current_time
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyUtils
  L3_2 = L3_2.GetVisualEffectInterval
  L3_2 = L3_2()
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._trigger_immediately_effect
    L2_2(L3_2)
  end
end
L0_1.tick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.set_game_pause
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_first_child_dialog_open = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._ui_3d_page
    L3_2 = L2_2
    L2_2 = L2_2.set_game_pause
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_view_active_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.activate_event_trigger_immediate
  L4_2 = A1_2.CellID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.teleport_to
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_teleport = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.on_main_page_btn_clicked
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._close_page
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_page
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._close_page = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 ~= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 ~= L3_2 then
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 ~= L3_2 then
          goto lbl_49
        end
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.is_in_special_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_setup_virtual_cursor_active_state
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_cursor_moved
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Monopoly_MapSelect"
    L7_2 = "ActionGroup_Monopoly_MapSelectItem"
    L8_2 = "ActionGroup_Monopoly_MapMoveBack"
    L9_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L3_2(L4_2, L5_2)
    A0_2._is_cursor_moved = true
  end
  ::lbl_49::
end
L0_1._on_in_control_press = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.virtual_cursor_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_setup_virtual_cursor_active_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._lock_info_provider
  L3_2 = L2_2
  L2_2 = L2_2.is_locked
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A0_2._is_event_finish
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.DoTouchByVirtualCursor
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_virtual_cursor_click = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L3_2 = L3_2.zero
  L4_2 = CS
  L4_2 = L4_2.InControl
  L4_2 = L4_2.InputControlType
  L4_2 = L4_2.LeftStickUp
  L4_2 = #L4_2
  if A1_2 == L4_2 then
    L4_2 = -A2_2
    L3_2.y = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.InControl
    L4_2 = L4_2.InputControlType
    L4_2 = L4_2.LeftStickDown
    L4_2 = #L4_2
    if A1_2 == L4_2 then
      L3_2.y = A2_2
    else
      L4_2 = CS
      L4_2 = L4_2.InControl
      L4_2 = L4_2.InputControlType
      L4_2 = L4_2.LeftStickLeft
      L4_2 = #L4_2
      if A1_2 == L4_2 then
        L3_2.x = A2_2
      else
        L4_2 = CS
        L4_2 = L4_2.InControl
        L4_2 = L4_2.InputControlType
        L4_2 = L4_2.LeftStickRight
        L4_2 = #L4_2
        if A1_2 == L4_2 then
          L4_2 = -A2_2
          L3_2.x = L4_2
        end
      end
    end
  end
  L4_2 = A0_2._ui_3d_page
  L5_2 = L4_2
  L4_2 = L4_2.simulate_touch
  L6_2 = L6_1
  L6_2 = L3_2 * L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_camera_moved
  if not L4_2 then
    L4_2 = A0_2._res_bar_panel
    L5_2 = L4_2
    L4_2 = L4_2.enable_navi_reaction
    L6_2 = false
    L4_2(L5_2, L6_2)
    A0_2._is_camera_moved = true
  end
end
L0_1._on_virtual_cursor_blocked = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.virtual_cursor_panel
    L3_2 = L2_2
    L2_2 = L2_2.reset_and_hide_cursor
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Monopoly_MapSelect"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
    A0_2._is_cursor_moved = false
    A0_2._is_camera_moved = false
    L2_2 = A0_2._ui_3d_page
    L3_2 = L2_2
    L2_2 = L2_2.try_reset_camera
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeNextFrame
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._res_bar_panel
      L1_3 = L0_3
      L0_3 = L0_3.enable_navi_reaction
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = A0_2._recovered
    if not L2_2 then
      L2_2 = A0_2._ui_3d_page
      L3_2 = L2_2
      L2_2 = L2_2.try_recover_trigger
      L2_2(L3_2)
      A0_2._recovered = true
      return
  end
  elseif A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyDailyRewardDialog"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2._ui_3d_page
    L1_3 = L0_3
    L0_3 = L0_3.try_recover_trigger
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._on_daily_reward_ntf = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_wait_show_daily_settle_dialog = true
  L3_2 = A0_2
  L2_2 = A0_2._try_show_daily_settle_dialog
  L2_2(L3_2)
end
L0_1._on_daily_settle_ntf = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_wait_show_daily_settle_dialog
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = "5181"
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.SystemInfo
  L1_2 = L1_2.PauseGame
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyDailySettleDialog"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.LuaTable
  L3_2 = L2_2
  L2_2 = L2_2.register_exit_callback
  L4_2 = A0_2._on_daily_settle_dialog_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  A0_2._is_wait_show_daily_settle_dialog = false
end
L0_1._try_show_daily_settle_dialog = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_get_daily_reward
    L2_2(L3_2)
  end
end
L0_1._on_daily_settle_dialog_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_cheat_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_close_cheat_dice_dialog
  L1_2(L2_2)
  L1_2 = A0_2._idle_check_panel
  L2_2 = L1_2
  L1_2 = L1_2.reset_timer
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_virtual_cursor_active_state
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.on_main_page_btn_clicked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = L1_1.JackpotInfo
    L1_2 = L1_2.IsProgressExtra
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = L1_1.SystemInfo
  L1_2 = L1_2.DiceNum
  if L1_2 == 0 then
    L1_2 = L1_1.SystemInfo
    L1_2 = L1_2.CheatDiceNum
    if L1_2 == 0 then
      L1_2 = L1_1.SystemInfo
      L1_2 = L1_2.IsMonopolyDailyRewardGet
      if L1_2 then
        L1_2 = L1_1.SystemInfo
        L1_2 = L1_2.RemainSteps
        if L1_2 == 0 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.MonopolyUtils
          L1_2 = L1_2.PlayCharacterSpine
          L2_2 = L5_1
          L1_2(L2_2)
          L2_2 = A0_2
          L1_2 = A0_2._try_hint_settled
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._try_play_settled_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.SystemInfo
  L2_2 = L1_2
  L1_2 = L1_2.IsTutorialFinished
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._is_event_finish
      if L1_2 then
        goto lbl_20
      end
    end
  end
  A0_2._is_wait_to_close = true
  do return end
  ::lbl_20::
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_schedule_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_wait_to_close
  if L1_2 then
    A0_2._is_wait_to_close = false
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._try_schedule_refresh_close_page = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._disable_roll_dice
  L1_2(L2_2)
  A0_2._is_wait_roll_dice_finish = true
  L1_2 = A0_2._lock_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.setup_all_locked
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_cheat_dice_roll_req_sent = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_cheat_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._disable_roll_dice = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._lock_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.is_locked
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.on_main_page_btn_clicked
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PAFOBGDKKML
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._disable_roll_dice
  L1_2(L2_2)
  L1_2 = A0_2._lock_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.setup_all_locked
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.disable_drag_map
  L1_2(L2_2)
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.try_reset_camera
  L1_2(L2_2)
  A0_2._is_event_finish = false
  A0_2._is_wait_roll_dice_finish = true
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyRollDiceCsReq
  L1_2(L2_2)
end
L0_1._on_roll_dice_btn_clicked = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._roll_dice_result_value = A1_2
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.rotate
  L4_2 = A1_2
  L5_2 = ""
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.try_reset_camera
  L2_2(L3_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.disable_drag_map
  L2_2(L3_2)
  A0_2._is_event_finish = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.PostEvent
  L4_2 = "Ev_sfx_activity_monopoly_dice"
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.PlayCharacterSpine
  L3_2 = L3_1
  L2_2(L3_2)
end
L0_1._on_roll_dice_result_confirm = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_wait_roll_dice_finish
  if not L1_2 then
    return
  end
  A0_2._is_wait_roll_dice_finish = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.PlayCharacterSpine
  L2_2 = L4_1
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurPlayingCellConfig
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.NextCellIDList
  L1_2 = L1_2.Length
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.choose_direction_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L3_2 = A0_2._roll_dice_result_value
    L4_2 = A0_2._send_monopoly_move_cs_req_with_direction
    L5_2 = A0_2
    L6_2 = A0_2._ui_3d_page
    L7_2 = L6_2
    L6_2 = L6_2.get_player_ref
    L6_2, L7_2 = L6_2(L7_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.choose_direction_panel
    L2_2 = L1_2
    L1_2 = L1_2.show
    L1_2(L2_2)
    L1_2 = A0_2._ui_3d_page
    L2_2 = L1_2
    L1_2 = L1_2.enable_drag_map
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.history_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.switch_gamepad_btn
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._send_monopoly_move_cs_req
    L1_2(L2_2)
  end
end
L0_1._on_roll_result_anim_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_for_move_rsp
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.BJCMFAJIMOK
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyMoveCsReq
  L1_2(L2_2)
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.disable_drag_map
  L1_2(L2_2)
  A0_2._is_event_finish = false
  A0_2._wait_for_move_rsp = true
end
L0_1._send_monopoly_move_cs_req = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._wait_for_move_rsp
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.BJCMFAJIMOK
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SendMonopolyChooseDirectionMoveCsReq
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.disable_drag_map
  L2_2(L3_2)
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.try_reset_camera
  L2_2(L3_2)
  A0_2._is_event_finish = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.history_btn_panel
  L3_2 = L2_2
  L2_2 = L2_2.switch_gamepad_btn
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._wait_for_move_rsp = true
end
L0_1._send_monopoly_move_cs_req_with_direction = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._wait_for_move_rsp = false
end
L0_1._on_move_rsp = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._lock_info_provider
  L3_2 = L2_2
  L2_2 = L2_2.setup_all_locked
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SystemInfo
  L2_2 = L2_2.CurCellID
  L3_2 = A0_2._ui_3d_page
  L4_2 = L3_2
  L3_2 = L3_2.activate_event_trigger
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._ui_3d_page
  L4_2 = L3_2
  L3_2 = L3_2.move_by_path
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._disable_roll_dice
  L3_2(L4_2)
  A0_2._is_event_finish = false
  L3_2 = A0_2._ui_3d_page
  L4_2 = L3_2
  L3_2 = L3_2.try_reset_camera
  L3_2(L4_2)
end
L0_1._on_trigger_move = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.SystemInfo
  L1_2 = L1_2.RemainSteps
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.roll_cheat_dice_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = L1_1.SystemInfo
    L3_2 = L3_2.IsInDream
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.roll_dice_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_interactable
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._check_cheat_dice_panel
    L2_2 = L1_2
    L1_2 = L1_2.do_check
    L1_2(L2_2)
    L1_2 = A0_2._ui_3d_page
    L2_2 = L1_2
    L1_2 = L1_2.enable_drag_map
    L1_2(L2_2)
    A0_2._is_event_finish = true
    L2_2 = A0_2
    L1_2 = A0_2._try_schedule_refresh_close_page
    L1_2(L2_2)
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetCurPlayingCellConfig
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.NextCellIDList
    L1_2 = L1_2.Length
    if 1 < L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.choose_direction_panel
      L2_2 = L1_2
      L1_2 = L1_2.refresh
      L3_2 = L1_1.SystemInfo
      L3_2 = L3_2.RemainSteps
      L4_2 = A0_2._send_monopoly_move_cs_req_with_direction
      L5_2 = A0_2
      L6_2 = A0_2._ui_3d_page
      L7_2 = L6_2
      L6_2 = L6_2.get_player_ref
      L6_2, L7_2 = L6_2(L7_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.choose_direction_panel
      L2_2 = L1_2
      L1_2 = L1_2.show
      L1_2(L2_2)
      L1_2 = A0_2._ui_3d_page
      L2_2 = L1_2
      L1_2 = L1_2.enable_drag_map
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.history_btn_panel
      L2_2 = L1_2
      L1_2 = L1_2.switch_gamepad_btn
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._send_monopoly_move_cs_req
      L1_2(L2_2)
    end
  end
end
L0_1._on_event_finished = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._disable_roll_dice
  L1_2(L2_2)
end
L0_1._on_event_start = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1.AssetInfo
  L2_2 = L2_2.AssetsDict
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.Level
  L3_2 = A0_2._ui_3d_page
  L4_2 = L3_2
  L3_2 = L3_2.upgrade_asset
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._ui_3d_page
  L4_2 = L3_2
  L3_2 = L3_2.refresh_active_state
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.effect_panel
  L4_2 = L3_2
  L3_2 = L3_2.play_asset_effect
  L3_2(L4_2)
end
L0_1._on_monopoly_asset_upgrade = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.AssetInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetAssetList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._ui_3d_page
    L8_2 = L7_2
    L7_2 = L7_2.upgrade_asset
    L9_2 = L6_2.ID
    L10_2 = L6_2.Level
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._init_monopoly_asset_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.refresh_active_state
  L1_2(L2_2)
end
L0_1._on_event_triggered_state_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.DisposeLevelGraph
  L1_2(L2_2)
end
L0_1._on_clear_ui_stack = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_cheat_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_button_status
  L1_2(L2_2)
end
L0_1._on_monopoly_map_id_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = L1_1.SystemInfo
  L3_2 = L3_2.IsInDream
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MonopolyModule
  L1_2 = L1_2.SystemInfo
  L2_2 = L1_2
  L1_2 = L1_2.IsTutorialFinished
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = L1_1.SystemInfo
    L4_2 = L4_2.IsInDream
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.friend_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = L1_1.SystemInfo
    L4_2 = L4_2.IsInDream
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = L1_1.SystemInfo
    L4_2 = L4_2.IsInDream
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SystemInfo
  L3_2 = L2_2
  L2_2 = L2_2.IsMBTIReportUnlocked
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.history_btn_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2 or L5_2
  if L2_2 then
    L5_2 = L1_1.SystemInfo
    L5_2 = L5_2.IsInDream
    L5_2 = not L5_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._res_bar_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L1_1.SystemInfo
  L6_2 = L5_2
  L5_2 = L5_2.IsResBarUnlocked
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = L1_1.SystemInfo
    L5_2 = L5_2.IsInDream
    L5_2 = not L5_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._refresh_button_status = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.SystemInfo
  L1_2 = L1_2.IsSettled
  if L1_2 then
    L1_2 = L1_1.JackpotInfo
    L1_2 = L1_2.IsProgressExtra
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.ShowPlayerBubble
  L2_2 = L2_1
  L1_2(L2_2)
end
L0_1._try_hint_settled = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.ODNGJGNMDIK
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendDailyFirstEnterMonopolyActivityCsReq
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.IOJNIEENGMF
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetDailyInitItemCsReq
  L1_2(L2_2)
end
L0_1._try_get_daily_reward = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._guess_settled_arg = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._try_show_guess_settled
  L2_2(L3_2)
end
L0_1._on_guess_settled = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._guess_settled_arg
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MiniGamePage.ActivityMonopolyMiniGameGuessResultPage"
  L3_2 = A0_2._guess_settled_arg
  L1_2(L2_2, L3_2)
  A0_2._guess_settled_arg = nil
end
L0_1._try_show_guess_settled = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_show_daily_settle_dialog
    L2_2(L3_2)
  end
end
L0_1._on_pause_state_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.Reward.Quest.ActivityMonopolyQuestPage"
  L1_2(L2_2)
end
L0_1._on_btn_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lock_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.is_locked
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.on_main_page_btn_clicked
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMapPage"
  L1_2(L2_2)
end
L0_1._on_map_btn_clicked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._lock_info_provider
  L2_2 = L1_2
  L1_2 = L1_2.is_locked
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.on_main_page_btn_clicked
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2
  L1_2 = L1_2.SetMonopolyLastTimeSeenFriendRankTimeStamp
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_TimeManager
  L3_2 = L3_2.NowTimeStamp
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FriendModule
  L2_2 = L1_2.IsBriefFriendInfoGot
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_get_friend_list_succeed
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.NIJNBICAPPA
    L4_2 = L4_2.HIDCHKGDJAP
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.RefreshFriendList
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._add_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.FriendListRefreshed
    L5_2 = A0_2._on_get_friend_list_succeed
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_rank_btn_clicked = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_event_finish
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.DoTouch
  L1_2()
end
L0_1._on_gesture_clicked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendListRefreshed
  L4_2 = A0_2._on_get_friend_list_succeed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyGetRankData
  L4_2 = A0_2._on_fetch_rank_data_succeed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.NNCMFPOFJKO
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetMonopolyFriendRankingListCsReq
  L1_2(L2_2)
end
L0_1._on_get_friend_list_succeed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._remove_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIMonopolyGetRankData
  L5_2 = A0_2._on_fetch_rank_data_succeed
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.ActivityMonopoly.Friend.ActivityMonopolyFriendRankPage"
  L2_2(L3_2)
end
L0_1._on_fetch_rank_data_succeed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2
  L3_2 = "UIText_ActivityMonopoly_Event_Tips_AddFriendCoin"
  L4_2 = "UIText_ActivityMonopoly_Event_Tips_SubFriendCoin"
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.FriendModule
  L6_2 = L5_2
  L5_2 = L5_2.GetPlayerBriefDisplayDataPromise
  L7_2 = L2_2.FriendUID
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.Then
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.Name
    A0_2._social_event_toast_text = nil
    L2_3 = L2_2.AddCoin
    if L2_3 ~= 0 then
      L2_3 = G
      L2_3 = L2_3.TextmapStatic
      L2_3 = L2_3.GetText
      L3_3 = L3_2
      L4_3 = L1_3
      L5_3 = L2_2.AddCoin
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      A0_2._social_event_toast_text = L2_3
    else
      L2_3 = G
      L2_3 = L2_3.TextmapStatic
      L2_3 = L2_3.GetText
      L3_3 = L4_2
      L4_3 = L1_3
      L5_3 = L2_2.SubCoin
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      A0_2._social_event_toast_text = L2_3
    end
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._try_notify_select_friend_toast
    L2_3(L3_3)
  end
  L5_2(L6_2, L7_2)
end
L0_1._on_show_select_toast = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._social_event_toast_text
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageString
  L3_2 = A0_2._social_event_toast_text
  L1_2(L2_2, L3_2)
  A0_2._social_event_toast_text = nil
end
L0_1._try_notify_select_friend_toast = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.GKAHKIDKAAG
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetSocialEventServerCacheCsReq
  L1_2(L2_2)
end
L0_1._try_get_social_event_server_cache = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L2_2 = {}
  A0_2._cache_id = L2_2
  A0_2._cache_index = 1
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._social_event_cache = L2_2
  L2_2 = A0_2._social_event_cache
  L2_2 = #L2_2
  if L2_2 == 0 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_social_event
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._binder
  L5_2 = L5_2.prefab_load_social_event
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.ActivityMonopolySocialEventPanel
  L6_2 = G
  L6_2 = L6_2.ActivityMonopolySocialEventPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._panel_social_event = L3_2
  L3_2 = A0_2._panel_social_event
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = L2_2.transform
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_social_event
  L4_2 = L3_2
  L3_2 = L3_2.register_fadeout_finish_callback
  L5_2 = A0_2._on_social_event_fadeout
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._panel_social_event
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._cache_id
  L5_2 = A0_2._social_event_cache
  L6_2 = A0_2._cache_index
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.Id
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_show_social_event_effect
  L5_2 = A0_2._social_event_cache
  L6_2 = A0_2._cache_index
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.SrcUid
  L6_2 = A0_2._social_event_cache
  L7_2 = A0_2._cache_index
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.AddCoin
  L7_2 = A0_2._social_event_cache
  L8_2 = A0_2._cache_index
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.SubCoin
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_get_social_event_effect = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.FriendModule
  L5_2 = L4_2
  L4_2 = L4_2.GetPlayerBriefDisplayDataPromise
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.Then
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A0_3.HeadIconID
    L2_3 = A0_3.Name
    L3_3 = A0_2._panel_social_event
    L4_3 = L3_3
    L3_3 = L3_3.safe_set_active
    L5_3 = true
    L3_3(L4_3, L5_3)
    L3_3 = A0_2._panel_social_event
    L4_3 = L3_3
    L3_3 = L3_3.setup_view
    L5_3 = L1_3
    L6_3 = L2_3
    L7_3 = A2_2
    L8_3 = A3_2
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1._try_show_social_event_effect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cache_index
  L1_2 = L1_2 + 1
  A0_2._cache_index = L1_2
  L1_2 = A0_2._cache_index
  L2_2 = A0_2._social_event_cache
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SendDeleteSocialEventServerCacheCsReq
    L3_2 = A0_2._cache_id
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._cache_id
  L3_2 = A0_2._social_event_cache
  L4_2 = A0_2._cache_index
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.Id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_show_social_event_effect
  L3_2 = A0_2._social_event_cache
  L4_2 = A0_2._cache_index
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.SrcUid
  L4_2 = A0_2._social_event_cache
  L5_2 = A0_2._cache_index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.AddCoin
  L5_2 = A0_2._social_event_cache
  L6_2 = A0_2._cache_index
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.SubCoin
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_social_event_fadeout = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._social_event_cache
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._panel_social_event
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._social_event_cache
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._social_event_cache
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.Id
    L6_2(L7_2, L8_2)
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SendDeleteSocialEventServerCacheCsReq
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_delete_social_event_server_cache = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.update_content
  L1_2(L2_2)
end
L0_1._on_monopoly_extra_content_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_func_unlock_view
  L1_2(L2_2)
end
L0_1._on_function_unlocked = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._ui_3d_page
  L3_2 = L2_2
  L2_2 = L2_2.trigger_3d_effect
  L4_2 = L1_1.SystemInfo
  L4_2 = L4_2.CurCellID
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_ui3d_effect_ntf = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.effect_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_coin_effect
  L1_2(L2_2)
end
L0_1._on_play_2d_effect_add_coin = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = A0_2._binder
  L2_2 = L2_2.effect_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_dice_arrive_callback
  L4_2 = L1_2.play_add_effect
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.effect_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_dice_effect
  L2_2(L3_2)
end
L0_1._on_play_2d_effect_add_dice = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.effect_panel
  L3_2 = L2_2
  L2_2 = L2_2.play_buff_effect
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_play_2d_effect_add_buff = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._current_time = 0
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._start_trigger_immediately_effect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._current_time = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonopolyUtils
  L1_2 = L1_2.TriggerImmediatelyEffect
  L1_2 = L1_2()
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.remove_tick
    L2_2(L3_2)
  end
end
L0_1._trigger_immediately_effect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.effect_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_asset_tax_effect
  L1_2(L2_2)
end
L0_1._on_gain_asset_tax = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui_3d_page
  L2_2 = L1_2
  L1_2 = L1_2.try_reset_camera
  L1_2(L2_2)
end
L0_1._on_player_icon_clicked = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonopolyQuestReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonopolyFriendLikeHint"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_friend_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonopolyMBTIReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_report_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.page_animation
  L3_2 = "MonopolyGameplayPageDream_FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_root_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_root_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_bubble_eff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_dream = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.page_animation
  L3_2 = "MonopolyGameplayPageDream_FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.roll_dice_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_root_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dream_world_bubble_eff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_dream = L7_1
return L0_1
