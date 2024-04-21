local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhoneInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.create_phone_option_data
  L1_2 = L1_2()
  A0_2._option_data = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerInfoChanged
  L4_2 = A0_2._on_player_info_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_uid_copy
  L4_2 = A0_2._on_btn_copy_uid
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_option_list
  L4_2 = A0_2._on_btn_option_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PhoneMore"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot_edit
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.create_phone_option_data
  L1_2 = L1_2()
  A0_2._option_data = L1_2
end
L0_1._on_player_info_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PlayerData
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2.NickName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_signature
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2.Signature
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_level_world
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.WorldLevel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_level_player
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_uid
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.UserID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_exp_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_player
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.PlayerData
  L1_2 = L1_2.Exp
  L2_2 = L1_1.PlayerData
  L2_2 = L2_2.ExpUp
  L3_2 = L2_2 == 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_exp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_exp_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_Relic_Upgrade_LevelMax_Tips"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_exp_title
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_PlayerInfo_Exp"
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_exp
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L1_2
    L7_2 = "/"
    L8_2 = L2_2
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.bar_exp
  if L3_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_43
    end
  end
  L5_2 = L1_2 / L2_2
  ::lbl_43::
  L4_2.size = L5_2
end
L0_1._setup_exp_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ClipboardUtils
  L1_2 = L1_2.CopyToClipboard
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_uid
  L2_2 = L2_2.text
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Copy_Succeed"
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_copy_uid = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_id
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.HeadIconID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2._on_click_photo
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_player = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.is_edit_func_unlock
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.PlayerUtils
    L1_2 = L1_2.show_func_lock_hint
    L1_2()
    return
  end
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.show_head_icon_modify
  L1_2()
end
L0_1._on_click_photo = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.is_edit_func_unlock
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.PlayerUtils
    L1_2 = L1_2.show_func_lock_hint
    L1_2()
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.OptionListDialog"
  L3_2 = A0_2._option_data
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_option_list
  L4_2 = L4_2.gameObject
  L4_2 = L4_2.transform
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_option_list = L2_1
return L0_1
