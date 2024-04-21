local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_sdk_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_net_disc_download
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.LuaToCs
    L1_3 = L1_3.SetIsUseInteriorNetdiskDownloadAssetBundle
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_field_uid
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = CS
    L1_3 = L1_3.System
    L1_3 = L1_3.UInt32
    L1_3 = L1_3.TryParse
    L2_3 = A0_3
    L1_3, L2_3 = L1_3(L2_3)
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.Client
    L3_3 = L3_3.GlobalVars
    L3_3 = L3_3.s_AccountManager
    L3_3 = L3_3.DevAccountModel
    L3_3.Uid = L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_field_account_id
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.GlobalVars
    L1_3 = L1_3.s_AccountManager
    L1_3 = L1_3.DevAccountModel
    L1_3.AccountUid = A0_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.toggle_use_local
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.LuaToCs
    L1_3 = L1_3.SetUseLocal
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.LuaToCs
  L1_2 = L1_2.GetIsUseInteriorNetdiskDownloadAssetBundle
  L1_2 = L1_2()
  L2_2 = UNITY_EDITOR
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.toggle_net_disc_download
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.toggle_use_local
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.toggle_net_disc_download
  L2_2.isOn = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_sdk_toggle
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_sdk_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lang
  L4_2 = A0_2._on_btn_lang
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cn_lang
  L4_2 = A0_2._on_btn_cn_lang
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cn_test_lang
  L4_2 = A0_2._on_btn_cn_test_lang
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_en_lang
  L4_2 = A0_2._on_btn_en_lang
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_en_test_lang
  L4_2 = A0_2._on_btn_en_test_lang
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_all_sdk_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = NG_HSOD_DEBUG
  if not L1_2 then
    L1_2 = NG_HSOD_PROFILE
    if not L1_2 then
      goto lbl_64
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.App
  L1_2 = L1_2.LastDevUID
  if L1_2 ~= 0 and nil ~= L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.input_field_uid
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
  if "" ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.App
    L2_2 = L2_2.LastDevAccountUID
    if nil ~= L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.input_field_account_id
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.App
      L3_2 = L3_2.LastDevAccountUID
      L2_2.text = L3_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dev_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_dev_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_AccountManager
    L5_2 = L4_2
    L4_2 = L4_2.IsSDKLoginMode
    L4_2 = L4_2(L5_2)
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
  end
  ::lbl_64::
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RPGSDKModule
  L2_2 = L1_2
  L1_2 = L1_2.IsLocalEnv
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_cn_test_lang
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_cn_lang
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_en_test_lang
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_en_lang
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_lang = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RPGSDKModule
  L2_2 = L1_2
  L1_2 = L1_2.DebugSetLangIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_cn_test_lang = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RPGSDKModule
  L2_2 = L1_2
  L1_2 = L1_2.DebugSetLangIndex
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_cn_lang = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RPGSDKModule
  L2_2 = L1_2
  L1_2 = L1_2.DebugSetLangIndex
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_en_test_lang = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cn_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_test_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_en_lang
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RPGSDKModule
  L2_2 = L1_2
  L1_2 = L1_2.DebugSetLangIndex
  L3_2 = 3
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_en_lang = L1_1
return L0_1
