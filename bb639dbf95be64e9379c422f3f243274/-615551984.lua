local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GameStartupDebugLoginPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
g_checkbox = true
g_uselocal = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.LuaToCs
  L1_2 = L1_2.GetIsUseInteriorNetdiskDownloadAssetBundle
  L1_2 = L1_2()
  g_checkbox = L1_2
  A0_2._account = nil
  A0_2._uid = nil
  L1_2 = g_checkbox
  A0_2._checkbox = L1_2
  A0_2._select_server = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.use_csb_checkbox
  L2_2 = g_checkbox
  L1_2.isOn = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.use_local_checkbox
  L2_2 = g_uselocal
  L1_2.isOn = L2_2
  L1_2 = UNITY_EDITOR
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.use_csb_checkbox
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.use_local_checkbox
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.LuaToCs
  L1_2 = L1_2.SetIsUseInteriorNetdiskDownloadAssetBundle
  L2_2 = g_checkbox
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.LuaToCs
  L1_2 = L1_2.SetUseLocal
  L2_2 = g_uselocal
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.uid_input_field
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_uid_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.account_input_field
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_account_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_enter_game
  L4_2 = A0_2._on_click_enter_game_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ret_dev_login
  L4_2 = A0_2._on_ret_dev_login
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.use_csb_checkbox
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_use_csb_check_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.use_local_checkbox
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3
    g_uselocal = A0_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.LuaToCs
    L1_3 = L1_3.SetUseLocal
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_from_cache
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_server = A1_2
end
L0_1.set_select_server = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "_on_click_enter_game_btn "
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.FBAFBFIPNPB
  A0_2._select_server = L1_2
  L1_2 = A0_2._select_server
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogFormat
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "_on_click_enter_game_btn server is nil"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LoginServerDevSet
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AccountManager
  L2_2 = L1_2
  L1_2 = L1_2.SetAccountLoginMode
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AccountLoginMode
  L3_2 = L3_2.eAccountId
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.LoginTryEnterGame
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Debug.Scattered.DebugVersionUpdatePage"
  L1_2(L2_2)
end
L0_1._on_click_enter_game_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.VersionUpdateCheck
  L1_2 = L1_2.EnableSKDLogin
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_ret_dev_login = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._account
  if L1_2 ~= nil then
    L1_2 = A0_2._account
  end
  L1_2 = L1_2 ~= ""
  return L1_2
end
L0_1._check_account_or_uid_legal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.App
  L1_2 = L1_2.LastDevUID
  if L1_2 ~= 0 and nil ~= L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.uid_input_field
    L3_2 = tostring
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L2_2.text = L3_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.App
  L2_2 = L2_2.LastDevAccountUID
  if L2_2 ~= nil and L2_2 ~= "" then
    L3_2 = A0_2._binder
    L3_2 = L3_2.account_input_field
    L3_2.text = L2_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L3_2 = L3_2.FBAFBFIPNPB
  A0_2._select_server = L3_2
end
L0_1.load_from_cache = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L2_2 = L2_2.TryParse
  L3_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2)
  A0_2._uid = L3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_AccountManager
  L4_2 = L4_2.DevAccountModel
  L4_2.Uid = L3_2
end
L0_1._on_uid_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._account = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AccountManager
  L2_2 = L2_2.DevAccountModel
  L2_2.AccountUid = A1_2
end
L0_1._on_account_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._checkbox = A1_2
  g_checkbox = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.SetIsUseInteriorNetdiskDownloadAssetBundle
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_use_csb_check_changed = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
