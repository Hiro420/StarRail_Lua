local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.GameStartup.GameStartupMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.GameStartupUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.LoginFunctionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.LoginAgeHint"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.LoginAgeHintBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.AppUtils
L0_1 = L0_1.IsRelease
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.LoginNodeType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.LoginPanelFunction
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_AccountManager
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "GameStartupMainPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._using_debug_login = false
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.GameStartupUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._login_ui3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GameStartupMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_OpenWithCut
  A0_2._transition_style = L1_2
  A0_2._is_forbid_auto_sdk_login = false
  A0_2._server_list_count = 0
  A0_2._in_update = false
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._cur_manager = nil
  A0_2._wait_for_ping = false
  A0_2._is_in_open_dialog = false
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._promise = A1_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._adjust_ui_for_safe_area
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LoginFunctionPanel
  L4_2 = G
  L4_2 = L4_2.LoginFunctionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.login_function_panel = L1_2
  L1_2 = A0_2.login_function_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_function
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_bind_btn
  L1_2(L2_2)
  L1_2 = A0_2._promise
  if L1_2 ~= nil then
    L1_2 = A0_2._promise
    L2_2 = L1_2
    L1_2 = L1_2.Resolve
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_enter_game
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.full_download_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_function
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_login_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_patch_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_speed
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_percent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.size_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsCloudPlatform
  if L1_2 == false then
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Login
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Qrcode
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Logout
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Exit
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_pc_mode
    L4_2 = L4_2()
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.ResCheck
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Login
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Logout
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Exit
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.login_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_btn_active
    L3_2 = LoginFunctionBtnType
    L3_2 = L3_2.Qrcode
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = OVERSEA_BUILD
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_age
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_server
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L1_2 = not L1_2
  A0_2._using_debug_login = L1_2
  L1_2 = A0_2.login_function_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_btn_active
  L3_2 = LoginFunctionBtnType
  L3_2 = L3_2.DevLogin
  L4_2 = A0_2._using_debug_login
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowStartupMainPage
  L1_2(L2_2)
end
L4_1._init_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_age
  L4_2 = A0_2._on_click_age_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_server
  L4_2 = A0_2._on_click_server_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_server_order
  L4_2 = A0_2._on_click_server_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start_up
  L4_2 = A0_2._on_click_start_up_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter_game
  L4_2 = A0_2._on_click_enter_game_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.full_download_button
  L4_2 = A0_2._on_full_download_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.predownload_btn
  L4_2 = A0_2._on_pre_download_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.pause_btn
  L4_2 = A0_2._on_pause_download_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.login_empty_button
  L4_2 = A0_2._on_login_empty_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.back_btn
  L4_2 = A0_2._on_back_predownload_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.predownload_finish_btn
  L4_2 = A0_2._on_finish_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._custom_bind_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKLogoutSuccess
  L4_2 = L4_1._on_RPGSDK_logout_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKInitializedFail
  L4_2 = L4_1._on_initialized_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKForceLogout
  L4_2 = L4_1._on_force_logout
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginEmptyServerSelect
  L4_2 = L4_1._on_empty_server
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DesignDataBundleLoadProgress
  L4_2 = L4_1._update_progress_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DesignDataBundleLoadEnd
  L4_2 = L4_1._design_data_load_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DownloadAsbBlocksStart
  L4_2 = L4_1._update_progress_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ProgressUpdate
  L4_2 = L4_1._update_progress_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LocalAssetVerifyStart
  L4_2 = L4_1._update_progress_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LocalAssetVerifyProgress
  L4_2 = L4_1._update_progress_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LocalAssetVerifyEnd
  L4_2 = L4_1._update_progress_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayGOEnd
  L4_2 = L4_1._update_play_go_progress_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginForbidAutoSDKLogin
  L4_2 = L4_1._update_sdk_login
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginPhaseChange
  L4_2 = L4_1._on_login_phase_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginNodeStateChange
  L4_2 = L4_1._on_login_phase_state_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginReset
  L4_2 = L4_1._on_login_reset
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PreDownloadPackageEnd
  L4_2 = L4_1._predownload_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PreDownloadPackageSuspend
  L4_2 = L4_1._predownload_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnEnterVersionUpdatePhase
  L4_2 = L4_1._setup_top_hint
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._add_handlers = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._update_progress_view
  L4_2 = nil
  L2_2(L3_2, L4_2)
end
L4_1._design_data_load_end = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L3_1
  A0_2._cur_manager = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "_on_login_phase_changed"
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_by_phase_state
  L2_2(L3_2)
end
L4_1._on_login_phase_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_by_phase_state
  L2_2(L3_2)
end
L4_1._on_login_phase_state_changed = L5_1
function L5_1(A0_2, A1_2)
  A0_2._in_predownload = false
  A0_2._in_update = false
end
L4_1._predownload_finish = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._login_phase = A1_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.StartUp
  L4_2 = "_on_phase_changed "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  if A1_2 == "SDKLoginPhase" then
    L3_2 = A0_2
    L2_2 = A0_2._update_show_state
    L2_2(L3_2)
  end
end
L4_1._on_phase_changed = L5_1
function L5_1(A0_2, A1_2)
  A0_2._in_update = false
end
L4_1._on_login_reset = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AccountManager
  L2_2 = L2_2.IsInLoginSequence
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AccountManager
  L4_2 = L3_2
  L3_2 = L3_2.HaveUserAccount
  L3_2 = L3_2(L4_2)
  if L3_2 or L2_2 then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_AccountManager
  L5_2 = L4_2
  L4_2 = L4_2.StartLogin
  L4_2(L5_2)
end
L4_1._on_login_empty_click = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_forbid_auto_sdk_login = A1_2
end
L4_1._update_sdk_login = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.GameStartup.LoginAgeHint"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.forced_use_cn_font
  L2_2(L3_2)
  L2_2 = ""
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_ps_platform
  L3_2 = L3_2()
  if L3_2 then
    L2_2 = "UIText_LoginPage_StandardageDialog_Desc_PS"
  else
    L2_2 = "UIText_LoginPage_StandardageDialog_Desc"
  end
  L4_2 = L1_2
  L3_2 = L1_2.setup_info
  L5_2 = "UIText_LoginPage_StandardageDialog_Tilte"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L1_2
  L3_2 = L1_2.hide_btns
  L3_2(L4_2)
end
L4_1._on_click_age_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsNetAvailable
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkHint
    L2_2 = "UIText_Dialog_NetworkUnauthorized"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L0_1
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.GameStartup.ServerSelectDialog"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.GameStartup.DevLogin.DevServerSelectDialog"
    L1_2(L2_2)
  end
end
L4_1._on_click_server_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._in_asset_check
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LoginTryEnterGame
  L1_2(L2_2)
end
L4_1._on_click_start_up_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LoginConfirmEnter
  L1_2(L2_2)
end
L4_1._on_click_enter_game_btn = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_click_server_btn
    L2_2(L3_2)
  end
end
L4_1._on_empty_server = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_forbid_auto_sdk_login
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AccountManager
  L3_2 = L2_2
  L2_2 = L2_2.StartLogin
  L2_2(L3_2)
end
L4_1._on_RPGSDK_logout_success = L5_1
function L5_1(A0_2, A1_2)
end
L4_1._on_RPGSDK_logout_fail = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkHint
  L3_2 = "SDK_Initialize_Error"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.RPGApplication
    L1_3 = L1_3.Instance
    L2_3 = L1_3
    L1_3 = L1_3.RestartAppNextFrame
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._on_initialized_fail = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RPGApplication
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.RestartAppNextFrame
  L2_2(L3_2)
end
L4_1._on_force_logout = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._in_update
  if A1_2 ~= nil then
    A0_2._in_update = true
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_patch_info
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_percent
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.smooth_mask_progress
    L4_2 = A1_2.ProgressValue
    L3_2.fillAmount = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_patch_info
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.DescTextID
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.DescTextID
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_progress
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A1_2.DescStr
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.DownloadSpeed
    if L3_2 ~= nil then
      L3_2 = A1_2.DownloadSpeed
      if L3_2 ~= "" then
        L3_2 = A1_2.ShowSpeed
        if L3_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.text_speed
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetActive
          L5_2 = true
          L3_2(L4_2, L5_2)
          L3_2 = A0_2._binder
          L3_2 = L3_2.text_speed
          L4_2 = L3_2
          L3_2 = L3_2.SetCustomizedText
          L5_2 = A1_2.DownloadSpeed
          L3_2(L4_2, L5_2)
      end
    end
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_speed
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    L3_2 = A1_2.DownloadSize
    if L3_2 ~= nil then
      L3_2 = A1_2.DownloadSize
      if L3_2 ~= "" then
        L3_2 = A0_2._binder
        L3_2 = L3_2.size_info
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A1_2.ShowSpeed
        if L3_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.size_info
          L4_2 = L3_2
          L3_2 = L3_2.SetCustomizedText
          L5_2 = "("
          L6_2 = A1_2.DownloadSize
          L7_2 = ")"
          L5_2 = L5_2 .. L6_2 .. L7_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = A0_2._binder
          L3_2 = L3_2.size_info
          L4_2 = L3_2
          L3_2 = L3_2.SetCustomizedText
          L5_2 = A1_2.DownloadSize
          L3_2(L4_2, L5_2)
        end
    end
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.size_info
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_percent
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A1_2.DownloadProgress
    L3_2(L4_2, L5_2)
  else
    A0_2._in_update = false
  end
  L3_2 = A0_2._in_update
  if L3_2 ~= L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.refresh_by_phase_state
    L3_2(L4_2)
  end
end
L4_1._update_progress_view = L5_1
function L5_1(A0_2, A1_2)
  A0_2._in_update = false
end
L4_1._update_play_go_progress_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_in_open_dialog
  if L1_2 then
    return
  end
  A0_2._is_in_open_dialog = true
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Audio.PackageDownloadTipDialog"
  function L3_2(A0_3)
    local L1_3, L2_3
    A0_2._is_in_open_dialog = false
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.Prefs
      L1_3 = L1_3.App
      L1_3.NeedDownloadAllAssets = true
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.Prefs
      L1_3 = L1_3.ForceSave
      L1_3()
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.LoginDownloadFullPackage
      L1_3(L2_3)
    end
  end
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_full_download_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PreDownloadPackageSuspend
  L1_2(L2_2)
end
L4_1._on_pause_download_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_PreDownload_Return_Dialogue_Desc"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.PreDownloadPackageSuspend
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_back_predownload_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_PreDownload_Finish_Tips"
  L1_2(L2_2, L3_2)
end
L4_1._on_finish_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_in_open_dialog
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_manager
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_manager
    L2_2 = L1_2
    L1_2 = L1_2.IsOpen
    L3_2 = L1_1.IsIgnorePredownloadConfirm
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.PreDownloadPackageStart
      L1_2(L2_2)
      return
    end
  end
  A0_2._is_in_open_dialog = true
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Audio.PackageDownloadTipDialog"
  function L3_2(A0_3)
    local L1_3, L2_3
    A0_2._is_in_open_dialog = false
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.PreDownloadPackageStart
      L1_3(L2_3)
    end
  end
  L4_2 = true
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._on_pre_download_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PreDownloadPackageSuspend
  L1_2(L2_2)
end
L4_1._on_pre_download_suspend_btn_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.set_bg_visible = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "refresh_by_phase_state"
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AccountManager
  L2_2 = L1_2
  L1_2 = L1_2.HaveUserAccount
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_manager
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_start_up
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.LoginButton
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_server
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.ServerPanel
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_function
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.FunctionPanel
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.LoadingPanel
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = A0_2._in_update
    end
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_stage_1
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.PanelStage1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_stage_2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.PanelStage2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_age
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.PanelAge
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.rect_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.MaskBgOpen
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.login_empty_button
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.EmptyBgClick
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.pause_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.PauseBtn
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AppUtils
    L2_2 = L2_2.IsCloudPlatform
    if L2_2 == false then
      L2_2 = A0_2._binder
      L2_2 = L2_2.full_download_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = A0_2._cur_manager
      L5_2 = L4_2
      L4_2 = L4_2.IsOpen
      L6_2 = L1_1.DownloadPanel
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.full_download_button
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.FullDownloadBtn
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.predownload_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.PreDownloadBtn
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.predownload_finish_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.PreDownloadFinishBtn
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2.login_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_btn_active
    L4_2 = LoginFunctionBtnType
    L4_2 = L4_2.Notice
    L5_2 = A0_2._cur_manager
    L6_2 = L5_2
    L5_2 = L5_2.IsFunctionOpen
    L7_2 = L2_1.Notice
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A0_2.login_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_btn_active
    L4_2 = LoginFunctionBtnType
    L4_2 = L4_2.Language
    L5_2 = A0_2._cur_manager
    L6_2 = L5_2
    L5_2 = L5_2.IsFunctionOpen
    L7_2 = L2_1.Language
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = L1_2
    end
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AppUtils
    L2_2 = L2_2.IsCloudPlatform
    if L2_2 == false then
      L2_2 = A0_2.login_function_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_btn_active
      L4_2 = LoginFunctionBtnType
      L4_2 = L4_2.ResCheck
      L5_2 = A0_2._cur_manager
      L6_2 = L5_2
      L5_2 = L5_2.IsFunctionOpen
      L7_2 = L2_1.ResCheck
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = G
        L5_2 = L5_2.Utils
        L5_2 = L5_2.is_ps_platform
        L5_2 = L5_2()
        L5_2 = not L5_2
      end
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.login_function_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_btn_active
      L4_2 = LoginFunctionBtnType
      L4_2 = L4_2.Login
      L5_2 = A0_2._cur_manager
      L6_2 = L5_2
      L5_2 = L5_2.IsFunctionOpen
      L7_2 = L2_1.Login
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = not L1_2
      end
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.login_function_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_btn_active
      L4_2 = LoginFunctionBtnType
      L4_2 = L4_2.Logout
      L5_2 = A0_2._cur_manager
      L6_2 = L5_2
      L5_2 = L5_2.IsFunctionOpen
      L7_2 = L2_1.Logout
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L1_2 or L5_2
      if L5_2 and L1_2 then
        L5_2 = G
        L5_2 = L5_2.Utils
        L5_2 = L5_2.is_ps_platform
        L5_2 = L5_2()
        L5_2 = not L5_2
      end
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.login_function_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_btn_active
      L4_2 = LoginFunctionBtnType
      L4_2 = L4_2.Exit
      L5_2 = A0_2._cur_manager
      L6_2 = L5_2
      L5_2 = L5_2.IsFunctionOpen
      L7_2 = L2_1.Exit
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 then
        L5_2 = G
        L5_2 = L5_2.Utils
        L5_2 = L5_2.is_ps_platform
        L5_2 = L5_2()
        L5_2 = not L5_2
      end
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.login_function_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_btn_active
      L4_2 = LoginFunctionBtnType
      L4_2 = L4_2.Qrcode
      L5_2 = G
      L5_2 = L5_2.Utils
      L5_2 = L5_2.is_mobile_platform
      L5_2 = L5_2()
      if L5_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.GlobalVars
        L5_2 = L5_2.s_AccountManager
        L6_2 = L5_2
        L5_2 = L5_2.HasScanFunc
        L5_2 = L5_2(L6_2)
        L5_2 = L1_2 or L5_2
        if L5_2 and L1_2 then
          L5_2 = A0_2._cur_manager
          L6_2 = L5_2
          L5_2 = L5_2.IsFunctionOpen
          L7_2 = L2_1.Qrcode
          L5_2 = L5_2(L6_2, L7_2)
        end
      end
      L2_2(L3_2, L4_2, L5_2)
    end
    L2_2 = A0_2.login_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_btn_active
    L4_2 = LoginFunctionBtnType
    L4_2 = L4_2.PSRule
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.is_ps_platform
    L5_2 = L5_2()
    if L5_2 then
      L5_2 = A0_2._cur_manager
      L6_2 = L5_2
      L5_2 = L5_2.IsFunctionOpen
      L7_2 = L2_1.PSRule
      L5_2 = L5_2(L6_2, L7_2)
    end
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.login_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_btn_active
    L4_2 = LoginFunctionBtnType
    L4_2 = L4_2.Feedback
    L5_2 = A0_2._cur_manager
    L6_2 = L5_2
    L5_2 = L5_2.IsFunctionOpen
    L7_2 = L2_1.Feedback
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.AppUtils
      L5_2 = L5_2.IsAndroidPlatform
      if L5_2 then
        L5_2 = not L1_2
      end
    end
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.back_btn
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._cur_manager
    L5_2 = L4_2
    L4_2 = L4_2.IsOpen
    L6_2 = L1_1.ShowBackBtn
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L2_2 = L2_2.DMJEEGFELJE
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_server
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_NetworkManager
    L4_2 = L4_2.DMJEEGFELJE
    L4_2 = L4_2.DisplayName
    L2_2(L3_2, L4_2)
  end
end
L4_1.refresh_by_phase_state = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L2_2 = L2_2.DMJEEGFELJE
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_server
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_NetworkManager
    L4_2 = L4_2.DMJEEGFELJE
    L4_2 = L4_2.DisplayName
    L2_2(L3_2, L4_2)
  end
end
L4_1.tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_ios_platform
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_top_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.GIHDCLKLGPI
  L1_2 = L1_2.IOSExam
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_top_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_top_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_IOSTrial_Music"
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_top_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAdaptUtils
  L1_2 = L1_2.TryAdjustIndent
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_root
  L1_2(L2_2)
end
L4_1._adjust_ui_for_safe_area = L5_1
return L4_1
