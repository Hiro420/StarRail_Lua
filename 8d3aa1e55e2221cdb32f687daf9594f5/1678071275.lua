local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RPGSDKModule"
L2_1 = "Logic.BaseModule"
L0_1 = L0_1(L1_1, L2_1)
L0_1.LOGIN_FORBIDDEN = -117
L0_1.NEED_REALNAME = -118
L0_1.NEED_GUARDIAN = -119
function L1_1(A0_2)
  local L1_2
  A0_2.GuestBindTipDialog = nil
  A0_2.inited = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowLoadingPage
  L4_2 = L0_1._on_loading_page_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._on_loading_page_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKInitializedFail
  L4_2 = L0_1._on_initialized_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKForceLogout
  L4_2 = L0_1._on_force_logout
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKFatigueReminder
  L4_2 = L0_1._on_show_fatigue_reminder
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKGuestBindUid
  L4_2 = L0_1._on_guest_bind_uid
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.inited
  if L1_2 then
    return
  end
  A0_2.inited = true
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowLoadingPage
  L4_2 = L0_1._on_loading_page_show
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._on_loading_page_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKInitializedFail
  L4_2 = L0_1._on_initialized_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKForceLogout
  L4_2 = L0_1._on_force_logout
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKFatigueReminder
  L4_2 = L0_1._on_show_fatigue_reminder
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MDKGuestBindUid
  L4_2 = L0_1._on_guest_bind_uid
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_global_dispatch
  L1_2(L2_2)
end
L0_1.try_auto_login = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ClientStartupPhase
  L1_2 = L1_2.GetGlobalDispatch
  L1_2()
end
L0_1.get_global_dispatch = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ClientStartupPhase
  L1_2 = L1_2.GetServerDispatch
  L1_2()
end
L0_1.get_server_dispatch = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.in_debug_mode = true
end
L0_1.set_debug_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AccountManager
  L2_2 = L1_2
  L1_2 = L1_2.StartLogin
  L1_2(L2_2)
end
L0_1.player_login = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AccountManager
  L2_2 = L1_2
  L1_2 = L1_2.StartLogout
  L1_2(L2_2)
end
L0_1.player_logout = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L2_2 = L2_2.DebugLastLangIndex
  L1_2 = 0 == L2_2
  return L1_2
end
L0_1.IsLocalEnv = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = true
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L2_2 = L2_2.DebugLastLangIndex
  L1_2 = 2 == L2_2
  return L1_2
end
L0_1.IsOverSeaEnv = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkHint
  L3_2 = "SDK initialize fail, please restart app"
  L4_2 = ""
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
L0_1._on_initialized_fail = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_force_logout = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "StripeDialog, On Notify MDKFatigueReminder"
  L2_2(L3_2)
  L2_2 = A0_2._horse_lamp_dialog
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Operation.StripeDialog"
    L4_2 = A1_2
    L5_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._horse_lamp_dialog = L2_2
    L2_2 = A0_2._horse_lamp_dialog
    L2_2 = L2_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      A0_2._horse_lamp_dialog = nil
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._horse_lamp_dialog
    L2_2 = L2_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.update_message
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_show_fatigue_reminder = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_loading = true
end
L0_1._on_loading_page_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_loading = false
  L1_2 = A0_2._anti_addiction_rsp
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_anti_addiction_hint
  L3_2 = A0_2._anti_addiction_rsp
  L1_2(L2_2, L3_2)
end
L0_1._on_loading_page_hide = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "AntiAddictScNotify"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._is_loading
  if L3_2 == true then
    A0_2._anti_addiction_rsp = L2_2
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._show_anti_addiction_hint
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_anti_addiction = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.LuaDebug
  L4_2 = "Pang: Get rsp: _on_anti_addiction, rsp.msg_type is %s, rsp.msg is %s, rsp.level is %s"
  L5_2 = tostring
  L6_2 = A1_2.MsgType
  L5_2 = L5_2(L6_2)
  L6_2 = tostring
  L7_2 = A1_2.Msg
  L6_2 = L6_2(L7_2)
  L7_2 = tostring
  L8_2 = A1_2.Level
  L7_2, L8_2 = L7_2(L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AccountManager
  L3_2 = L2_2
  L2_2 = L2_2.IsGuestLogin
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A1_2.MsgType
    if L2_2 == 1 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConfirmDialogUtil
      L2_2 = L2_2.ShowConfirmDialog
      L3_2 = L0_1._on_btn_quit_click
      L2_2 = L2_2(L3_2)
      L4_2 = L2_2
      L3_2 = L2_2.GetComponentContent
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = A1_2.Msg
      L3_2(L4_2, L5_2)
      L2_2.TextIDOK = "Operation_QuitGame"
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConfirmDialogUtil
      L2_2 = L2_2.ShowConfirmDialog
      L3_2 = L0_1._on_btn_guest_bind_tip_click
      L2_2 = L2_2(L3_2)
      L4_2 = L2_2
      L3_2 = L2_2.GetComponentContent
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = A1_2.Msg
      L3_2(L4_2, L5_2)
      L3_2 = DialogBtnMode
      L3_2 = L3_2.eOkCancel
      L2_2.Mode = L3_2
      L2_2.TextIDOK = "Operation_QuitGame"
      L2_2.TextIDCancel = "Operation_BindAccount"
    end
  else
    L2_2 = A1_2.Level
    if "error" == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConfirmDialogUtil
      L2_2 = L2_2.ShowConfirmDialog
      L3_2 = L0_1._on_btn_quit_click
      L2_2 = L2_2(L3_2)
      L4_2 = L2_2
      L3_2 = L2_2.GetComponentContent
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = A1_2.Msg
      L3_2(L4_2, L5_2)
      L2_2.TextIDOK = "Operation_QuitGame"
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConfirmDialogUtil
      L2_2 = L2_2.ShowConfirmDialog
      L3_2 = L0_1._on_btn_warn_click
      L2_2 = L2_2(L3_2)
      L4_2 = L2_2
      L3_2 = L2_2.GetComponentContent
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = A1_2.Msg
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._show_anti_addiction_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.GuestBindTipDialog
  if nil ~= L2_2 then
    L2_2 = A0_2.GuestBindTipDialog
    L3_2 = L2_2
    L2_2 = L2_2.exit
    L2_2(L3_2)
    A0_2.GuestBindTipDialog = nil
  end
end
L0_1._on_guest_bind_uid = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._anti_addiction_rsp = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RPGApplication
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.QuitApp
  L2_2(L3_2)
end
L0_1._on_btn_quit_click = L1_1
function L1_1(A0_2, A1_2)
  A0_2._anti_addiction_rsp = nil
end
L0_1._on_btn_warn_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._anti_addiction_rsp = nil
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.RPGApplication
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.QuitApp
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AccountManager
    L3_2 = L2_2
    L2_2 = L2_2.LoginBind
    L2_2(L3_2)
  end
end
L0_1._on_btn_guest_bind_tip_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = NG_HSOD_DEBUG
  if not L2_2 then
    L2_2 = NG_HSOD_PROFILE
    if not L2_2 then
      goto lbl_47
    end
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.LuaDebug
  L4_2 = "DebugSetLangIndex, DebugLastLangIndex is %s, setvalue is %s"
  L5_2 = tostring
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.Prefs
  L6_2 = L6_2.App
  L6_2 = L6_2.DebugLastLangIndex
  L5_2 = L5_2(L6_2)
  L6_2 = tostring
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L2_2 = L2_2.DebugLastLangIndex
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.App
    L2_2.DebugLastLangIndex = A1_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.RPGApplication
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.RestartAppNextFrame
    L2_2(L3_2)
  end
  ::lbl_47::
end
L0_1.DebugSetLangIndex = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ""
  L2_2 = NG_HSOD_DEBUG
  if not L2_2 then
    L2_2 = NG_HSOD_PROFILE
    if not L2_2 then
      goto lbl_55
    end
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.LuaDebug
  L4_2 = "DebugGetEnvName, DebugLastLangIndex is %s"
  L5_2 = tostring
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.Prefs
  L6_2 = L6_2.App
  L6_2 = L6_2.DebugLastLangIndex
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L2_2 = L2_2.DebugLastLangIndex
  if 0 == L2_2 then
    L1_2 = "\229\155\189\229\134\133\230\178\153\231\155\146"
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.App
    L2_2 = L2_2.DebugLastLangIndex
    if 1 == L2_2 then
      L1_2 = "\229\155\189\229\134\133\230\173\163\229\188\143"
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.App
      L2_2 = L2_2.DebugLastLangIndex
      if 2 == L2_2 then
        L1_2 = "\230\181\183\229\164\150\230\178\153\231\155\146"
      else
        L1_2 = "\230\181\183\229\164\150\230\173\163\229\188\143"
      end
    end
  end
  ::lbl_55::
  return L1_2
end
L0_1.DebugGetEnvName = L1_1
return L0_1
