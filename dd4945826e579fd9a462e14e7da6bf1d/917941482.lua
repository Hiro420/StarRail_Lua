local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PlayerUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = 3400
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.PlayerModule
L3_1 = L3_1.DisplayAvatarMaxCount
L0_1.display_avatar_max_count = L3_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.PlayerModule
L3_1 = L3_1.AssistAvatarMaxCount
L0_1.assist_avatar_max_count = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L2_1
  return L0_2(L1_2)
end
L0_1.is_edit_func_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.String
  L1_2 = L1_2.Equals
  L2_2 = A0_2
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.Signature
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.IOHCEEJIDKN
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.do_modify_signature = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.PlayerData
  L1_2 = L1_2.HeadIconID
  if A0_2 == L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.AGEAHKPGMOF
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.do_modify_head_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.DKNJBAFBLKI
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.do_modify_display_avatar_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ModifyAssistAvatars
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.modify_assist_avatar = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.IMDCPIKCDFD
  L4_2 = A0_2 * 100
  L4_2 = L4_2 + A1_2
  L2_2(L3_2, L4_2)
end
L0_1.do_modify_birthday = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L1_1.PlayerData
  L0_2 = L0_2.HasAssist
  L0_2 = not L0_2
  return L0_2
end
L0_1.is_not_finish_assist_set = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L1_1.AllowModifyNickName
  if L0_2 then
    L0_2 = L1_1.RenameCD
    L0_2 = L0_2 == nil
  end
  return L0_2
end
L0_1.can_modify_nickname = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.is_edit_func_unlock
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = L1_1.PlayerData
    L0_2 = L0_2.Birthday
    L0_2 = L0_2 == 0
  end
  return L0_2
end
L0_1.can_modify_birthday = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1.PlayerData
  L0_2 = L0_2.Birthday
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L0_2 / 100
  L1_2 = L1_2(L2_2)
  L2_2 = L0_2 % 100
  return L1_2, L2_2
end
L0_1.get_player_birthday = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.notify
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyType
  L1_2 = L1_2.UIPileToastMessageTextID
  L2_2 = "UIText_Toast_LockMapHint"
  L0_2(L1_2, L2_2)
end
L0_1.show_func_lock_hint = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.FriendModule
  L2_2 = L0_2
  L1_2 = L0_2.GetAssistHistory
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.PlayerInfo.PlayerInfoPage"
    L2_3 = L1_1
    L3_3 = L2_3
    L2_3 = L2_3.GetDisplayLocalPlayerBoardInfo
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1.show_detail_info = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.PlayerInfo.HeadIconEditDialog"
  L2_2 = L1_1.PlayerData
  L2_2 = L2_2.HeadIconID
  L0_2(L1_2, L2_2)
end
L0_1.show_head_icon_modify = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1.RenameCD
  L1_2 = L1_1.AllowModifyNickName
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_PlayerInfo_Toast_Maintenance"
    L1_2(L2_2, L3_2)
    return
  elseif L0_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = "UIText_Rename_CD_Desc"
    L3_2 = L0_2.Hours
    L4_2 = L0_2.Days
    L4_2 = L4_2 * 24
    L3_2 = L3_2 + L4_2
    L4_2 = L0_2.Minutes
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageString
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PlayerInfo.PlayerNickNameEditDialog"
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.NickName
  L1_2(L2_2, L3_2)
end
L0_1.show_nickname_modify = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1.AllowModifySignature
  if not L0_2 then
    L0_2 = G
    L0_2 = L0_2.NotifyManager
    L0_2 = L0_2.notify
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.NotifyType
    L1_2 = L1_2.UIPileToastMessageTextID
    L2_2 = "UIText_PlayerInfo_Toast_Maintenance"
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = G
  L0_2 = L0_2.Utils
  L0_2 = L0_2.is_communication_restricted
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = G
    L0_2 = L0_2.NotifyManager
    L0_2 = L0_2.notify
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.NotifyType
    L1_2 = L1_2.UIPileToastMessageTextID
    L2_2 = "UIText_PS_Parental_Control"
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.PlayerInfo.PlayerSignatureEditDialog"
  L2_2 = L1_1.PlayerData
  L2_2 = L2_2.Signature
  L0_2(L1_2, L2_2)
end
L0_1.show_signature_modify = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.ClipboardUtils
  L0_2 = L0_2.CopyToClipboard
  L1_2 = tostring
  L2_2 = L1_1.PlayerData
  L2_2 = L2_2.UID
  L1_2, L2_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2)
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.notify
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyType
  L1_2 = L1_2.UIPileToastMessageTextID
  L2_2 = "UIText_Copy_Succeed"
  L0_2(L1_2, L2_2)
end
L0_1.uid_copy = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.PlayerInfo.CDKeyDialog"
  L0_2(L1_2)
end
L0_1.show_cd_key = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1.can_modify_birthday
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_async_show
  L1_2 = "Ui.PlayerInfo.BirthdayEditDialog"
  L0_2(L1_2)
end
L0_1.show_birthday_modify = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1.is_display_birthday
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "UIText_PlayerInfo_ShowBirthday_Text"
    if L0_2 then
      goto lbl_9
    end
  end
  L0_2 = "UIText_PlayerInfo_HideBirthday_Text"
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = L0_2
  L3_2 = "UIText_PlayerInfo_ChangeModeTitle"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.NetworkManager
      L1_3 = L1_3.OOGONDGGKMI
      L2_3 = L1_3
      L1_3 = L1_3.PPCFCEIILPN
      L3_3 = L0_1.is_display_birthday
      L3_3 = L3_3()
      L3_3 = not L3_3
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.set_birthday_display = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.PlayerModule
  L0_2 = L0_2.PlayerSettingData
  L0_2 = L0_2.DisplayBirthday
  return L0_2
end
L0_1.is_display_birthday = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PhoneTheme.PhoneThemeSelectPage"
  L1_2(L2_2)
end
L0_1.go_phone_theme = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerSettingData
  L1_2 = L1_2.AutoProtectEquipmentRarity4
  if L1_2 ~= A0_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.OOGONDGGKMI
    L2_2 = L1_2
    L1_2 = L1_2.EHAMIGIBGGP
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.set_light_cone_rarity4_auto_lock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerSettingData
  L1_2 = L1_2.IsCloseAvatarLookAt
  if L1_2 ~= A0_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.OOGONDGGKMI
    L2_2 = L1_2
    L1_2 = L1_2.OKFGDOIJJKA
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.set_close_avatar_look_at = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.PlayerModule
  L0_2 = L0_2.PlayerSettingData
  L0_2 = L0_2.IsCloseAvatarLookAt
  L0_2 = not L0_2
  return L0_2
end
L0_1.is_enable_avatar_look_at = L3_1
L3_1 = {}
L3_1.DetailInfo = 1
L3_1.HeadIconModify = 2
L3_1.NickNameModify = 3
L3_1.SignatureModify = 4
L3_1.BirthdayModify = 5
L3_1.CopyUID = 6
L3_1.CDKey = 7
L3_1.BirthdayDisplay = 8
L3_1.PhoneTheme = 9
L0_1.OptionList = L3_1
L3_1 = {}
L4_1 = L0_1.OptionList
L4_1 = L4_1.DetailInfo
L5_1 = L0_1.show_detail_info
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.HeadIconModify
L5_1 = L0_1.show_head_icon_modify
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.NickNameModify
L5_1 = L0_1.show_nickname_modify
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.SignatureModify
L5_1 = L0_1.show_signature_modify
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.BirthdayModify
L5_1 = L0_1.show_birthday_modify
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.CopyUID
L5_1 = L0_1.uid_copy
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.CDKey
L5_1 = L0_1.show_cd_key
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.BirthdayDisplay
L5_1 = L0_1.set_birthday_display
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.PhoneTheme
L5_1 = L0_1.go_phone_theme
L3_1[L4_1] = L5_1
L0_1.FunctionTable = L3_1
L3_1 = {}
L4_1 = L0_1.OptionList
L4_1 = L4_1.DetailInfo
L3_1[L4_1] = "UIText_PlayerCard_Func_EditData"
L4_1 = L0_1.OptionList
L4_1 = L4_1.HeadIconModify
L3_1[L4_1] = "UIText_PlayerCard_Func_ChangeIcon"
L4_1 = L0_1.OptionList
L4_1 = L4_1.NickNameModify
L3_1[L4_1] = "UIText_PlayerCard_Func_Rename"
L4_1 = L0_1.OptionList
L4_1 = L4_1.SignatureModify
L3_1[L4_1] = "UIText_PlayerCard_Func_ChangeComment"
L4_1 = L0_1.OptionList
L4_1 = L4_1.BirthdayModify
L3_1[L4_1] = "UIText_PlayerCard_Func_Birthday"
L4_1 = L0_1.OptionList
L4_1 = L4_1.CopyUID
L3_1[L4_1] = "UIText_PlayerCard_Func_CopyUID"
L4_1 = L0_1.OptionList
L4_1 = L4_1.CDKey
L3_1[L4_1] = "UIText_PlayerCard_Func_Code"
L4_1 = L0_1.OptionList
L4_1 = L4_1.BirthdayDisplay
function L5_1()
  local L0_2, L1_2
  L0_2 = L0_1.is_display_birthday
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "UIText_PlayerInfo_HideBirthday"
    if L0_2 then
      goto lbl_9
    end
  end
  L0_2 = "UIText_PlayerInfo_ShowBirthday"
  ::lbl_9::
  return L0_2
end
L3_1[L4_1] = L5_1
L4_1 = L0_1.OptionList
L4_1 = L4_1.PhoneTheme
L3_1[L4_1] = "UIText_PhoneThemeEntranceButton"
L0_1.OptionNameTable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1._check_option_enable
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = {}
      L8_2 = type
      L9_2 = L0_1.OptionNameTable
      L9_2 = L9_2[L6_2]
      L8_2 = L8_2(L9_2)
      if L8_2 == "function" then
        L8_2 = L0_1.OptionNameTable
        L8_2 = L8_2[L6_2]
        L8_2 = L8_2()
        L7_2.Name = L8_2
      else
        L8_2 = L0_1.OptionNameTable
        L8_2 = L8_2[L6_2]
        L7_2.Name = L8_2
      end
      L8_2 = L0_1.FunctionTable
      L8_2 = L8_2[L6_2]
      L7_2.Callback = L8_2
      L8_2 = L0_1._create_red_dot_key
      L9_2 = L6_2
      L8_2, L9_2 = L8_2(L9_2)
      L7_2.SubKey = L9_2
      L7_2.Key = L8_2
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L1_2[L8_2] = L7_2
    end
  end
  return L1_2
end
L0_1.create_option_data = L3_1
L3_1 = {}
L4_1 = L0_1.OptionList
L4_1 = L4_1.HeadIconModify
L5_1 = L0_1.OptionList
L5_1 = L5_1.NickNameModify
L6_1 = L0_1.OptionList
L6_1 = L6_1.SignatureModify
L7_1 = L0_1.OptionList
L7_1 = L7_1.BirthdayDisplay
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L4_1 = {}
L5_1 = G
L5_1 = L5_1.PlayerUtils
L5_1 = L5_1.OptionList
L5_1 = L5_1.DetailInfo
L6_1 = G
L6_1 = L6_1.PlayerUtils
L6_1 = L6_1.OptionList
L6_1 = L6_1.PhoneTheme
L7_1 = G
L7_1 = L7_1.PlayerUtils
L7_1 = L7_1.OptionList
L7_1 = L7_1.CDKey
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
function L5_1()
  local L0_2, L1_2
  L0_2 = L0_1.create_option_data
  L1_2 = L3_1
  return L0_2(L1_2)
end
L0_1.create_local_info_option_data = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = L0_1.create_option_data
  L1_2 = L4_1
  return L0_2(L1_2)
end
L0_1.create_phone_option_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.OptionList
  L1_2 = L1_2.CDKey
  if A0_2 == L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.SystemOpenModule
    L1_2 = L1_2.RedeemCodeEnabled
    return L1_2
  else
    L1_2 = L0_1.OptionList
    L1_2 = L1_2.BirthdayModify
    if A0_2 == L1_2 then
      L1_2 = L0_1.can_modify_birthday
      return L1_2()
    else
      L1_2 = L0_1.OptionList
      L1_2 = L1_2.SignatureModify
      if A0_2 == L1_2 then
        L1_2 = G
        L1_2 = L1_2.Utils
        L1_2 = L1_2.is_communication_restricted
        L1_2 = L1_2()
        L1_2 = not L1_2
        return L1_2
      else
        L1_2 = L0_1.OptionList
        L1_2 = L1_2.PhoneTheme
        if A0_2 == L1_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.GlobalVars
          L1_2 = L1_2.s_ModuleManager
          L1_2 = L1_2.PersonalizeModule
          L2_2 = L1_2
          L1_2 = L1_2.IsPhoneThemeUnlocked
          return L1_2(L2_2)
        end
      end
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._check_option_enable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.OptionList
  L1_2 = L1_2.BirthdayModify
  if A0_2 == L1_2 then
    L1_2 = "PlayerInfoEdit"
    L2_2 = "BirthdaySetHint"
    return L1_2, L2_2
  else
    L1_2 = L0_1.OptionList
    L1_2 = L1_2.DetailInfo
    if A0_2 == L1_2 then
      L1_2 = "PlayerInfoEdit"
      return L1_2
    else
      L1_2 = L0_1.OptionList
      L1_2 = L1_2.PhoneTheme
      if A0_2 == L1_2 then
        L1_2 = "PhoneThemeSelect"
        return L1_2
      end
    end
  end
  L1_2 = nil
  L2_2 = nil
  return L1_2, L2_2
end
L0_1._create_red_dot_key = L5_1
return L0_1
