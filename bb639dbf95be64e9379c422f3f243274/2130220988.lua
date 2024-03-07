local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyDailySettleDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyDailySettleDataItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyDailySettleDataItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyDailyTransferDialog_Donate"
L2_1 = "MonoPolyDailyTransferDialog_FadeIn_Common"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyDailySettleDialog"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyDailySettleDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.SystemInfo
  L3_2 = L2_2
  L2_2 = L2_2.SetHasSettlement
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L0_1.JackpotInfo
  L3_2 = L3_2.Progress
  L3_2 = L3_2 / 10
  L2_2 = L2_2(L3_2)
  A0_2._server_progress = L2_2
  L2_2 = L0_1.HistoryInfo
  L2_2 = L2_2.DailyDonateCoin
  A0_2._currency_num = L2_2
  L2_2 = A1_2 or L2_2
  if A1_2 == nil or not A1_2 then
    L2_2 = false
  end
  A0_2._is_jackpot_main_page_settle = L2_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyJackpotProgressUpdated
  L4_2 = A0_2._on_progress_update
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_donate_callback
  L3_2 = A0_2._on_btn_donate
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_again_callback
  L3_2 = A0_2._on_btn_again
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_back_callback
  L3_2 = A0_2._on_btn_back
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_server
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_callback
  L3_2 = A0_2._on_btn_return
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_fade_in_finish
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._fade_in_timer = L2_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_contribution_num
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.History.ActivityMonopolyHistoryMainDialog"
  L1_2(L2_2)
end
L3_1._on_btn_report = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._settle_exit_callback
  L3_2 = A0_2._settle_exit_handler
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_again = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._settle_exit_callback
  L3_2 = A0_2._settle_exit_handler
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.set_all_btn_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_server
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_currency
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L3_1._on_btn_donate = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.SystemInfo
  L2_2 = L1_2
  L1_2 = L1_2.ModifyCurrency
  L3_2 = A0_2._currency_num
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._settle_exit_callback
  L3_2 = A0_2._settle_exit_handler
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_return = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.play_fill_anim
  L1_2(L2_2)
end
L3_1._on_fade_in_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L3_1._on_progress_update = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.AHOJCCLBJGG
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetJackpotProgressReq
  L1_2(L2_2)
end
L3_1._get_contribution_num = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._currency_num
  L4_2 = A0_2._is_jackpot_main_page_settle
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_server
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._server_progress
  L4_2 = A0_2._is_jackpot_main_page_settle
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_currency
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._currency_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_personal
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_server
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_currency
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2
  return
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._settle_exit_callback = A1_2
  A0_2._settle_exit_handler = A2_2
end
L3_1.register_exit_callback = L4_1
return L3_1
