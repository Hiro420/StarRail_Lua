local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.SettingModule.SettingEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SwitchLanguageDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_AudioManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_GamePhaseManager
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SwitchLanguageDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = A1_2 or nil
  if not A1_2 then
    L4_2 = LanguageSettingType
    L4_2 = L4_2.Language
  end
  A0_2.language_type = L4_2
  A0_2._language_dict = A2_2
  A0_2._callback = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._get_current_selected_language
  L4_2 = L4_2(L5_2)
  A0_2._cur_selected_language = L4_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_language_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.language_type
  L4_2 = LanguageSettingType
  L4_2 = L4_2.Audio
  if L3_2 == L4_2 then
    L3_2 = "UIText_Voice_Del_Dialog_Title"
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = "UIText_Setting_Tab_Language"
  ::lbl_13::
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_scrow_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scrollview
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scrollview
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._allowed_language_data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_click_cancel_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_cancel_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_cancel_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_click_confirm_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_delete
  L4_2 = A0_2._on_click_delete_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_download
  L4_2 = A0_2._on_click_download_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AudioSetChanged
  L4_2 = A0_2._on_audio_set
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = A0_2._language_dict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    L8_2 = A0_2
    L7_2 = A0_2._set_language_data
    L9_2 = L6_2
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._allowed_language_data_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_language_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_language_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_scrow_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scrollview
  L1_2(L2_2)
end
L0_1._on_audio_set = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scrollview
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_language
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Audio.LanguegePackDownloadDialog"
  L3_2 = A0_2._cur_selected_language
  L1_2(L2_2, L3_2)
end
L0_1._on_click_download_btn = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SwitchLanguageItem
    L8_2 = G
    L8_2 = L8_2.SwitchLanguageItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    function L5_2(A0_3)
      local L1_3, L2_3
      L1_3 = A0_3.languageKey
      A0_2._cur_selected_language = L1_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._refresh_scrollview
      L1_3(L2_3)
    end
    L7_2 = L4_2
    L6_2 = L4_2.register_click_callback
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._allowed_language_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._cur_selected_language
  L10_2 = A0_2.language_type
  L11_2 = LanguageSettingType
  L11_2 = L11_2.Audio
  L10_2 = L10_2 == L11_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_language_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.language_type
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Audio
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.CanSwitchAudio
    L1_2 = L1_2(L2_2)
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.IsLoginContext
    L2_2 = L2_2(L3_2)
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.CanDelete
    L3_2 = L3_2(L4_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetDownloadedAudioCount
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_LocalizationManager
    L5_2 = L5_2.CurrentAudioLanguage
    L6_2 = A0_2._cur_selected_language
    L5_2 = L5_2 == L6_2
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsAudioDownloaded
    L8_2 = A0_2._cur_selected_language
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 0
    L8_2 = L6_2 or L8_2
    L8_2 = L3_2 or L8_2
    if L3_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.AppUtils
      L8_2 = L8_2.IsCloudPlatform
      L8_2 = not L5_2 and 1 < L4_2 and L6_2 and not L2_2 and L8_2
    end
    if L8_2 then
      L9_2 = 1
      if L9_2 then
        goto lbl_59
      end
    end
    L9_2 = 0
    ::lbl_59::
    L7_2 = L7_2 + L9_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_delete
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = not L6_2 and not L2_2 and L9_2
    if L9_2 then
      L10_2 = 1
      if L10_2 then
        goto lbl_79
      end
    end
    L10_2 = 0
    ::lbl_79::
    L7_2 = L7_2 + L10_2
    L10_2 = A0_2._binder
    L10_2 = L10_2.btn_download
    L11_2 = L10_2
    L10_2 = L10_2.SafeSetActive
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = L6_2 or L10_2
    if not L6_2 then
      L10_2 = L2_2
    end
    if L10_2 then
      L11_2 = 1
      if L11_2 then
        goto lbl_94
      end
    end
    L11_2 = 0
    ::lbl_94::
    L7_2 = L7_2 + L11_2
    L11_2 = A0_2._binder
    L11_2 = L11_2.btn_confirm
    L12_2 = L11_2
    L11_2 = L11_2.SafeSetActive
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L11_2 = A0_2._binder
    L11_2 = L11_2.btn_cancel
    L12_2 = L11_2
    L11_2 = L11_2.SafeSetActive
    L13_2 = L4_2 <= 1 or L7_2 <= 1
    L11_2(L12_2, L13_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_language_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._allowed_language_data_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_language_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_scrollview = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_selected_language
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._cur_selected_language
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_current_selected_language
    L3_2 = A0_2._cur_selected_language
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L1_2()
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_confirm_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CanDelete
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = "UIText_Voice_Del_Hint_Dialog_Desc"
  L4_2 = "UIText_Voice_Del_Hint_Dialog_Title"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.DeleteAudioPack
      L3_3 = A0_2._cur_selected_language
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.exit
      L1_3(L2_3)
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AllowedAudioLanguageExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._cur_selected_language
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.ShowString
  L5_2 = L2_2
  L4_2 = L2_2.SetContent
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.TextID
  L7_2 = "UIText_Voice_Del_Hint_Dialog_Desc"
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = L3_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_click_delete_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L1_2()
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_cancel_btn = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.language_type
  L4_2 = LanguageSettingType
  L4_2 = L4_2.Language
  if L3_2 == L4_2 then
    L3_2 = A2_2.TextLanguageKey
    A1_2.languageKey = L3_2
    L3_2 = A2_2.ShowString
    A1_2.textID = L3_2
  else
    L3_2 = A2_2.AudioLanguageKey
    A1_2.languageKey = L3_2
    L3_2 = A2_2.ShowString
    A1_2.textID = L3_2
  end
end
L0_1._set_language_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.language_type
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Language
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_LocalizationManager
    L1_2 = L1_2.CurrentTextLanguage
    return L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_LocalizationManager
    L1_2 = L1_2.CurrentAudioLanguage
    return L1_2
  end
end
L0_1._get_current_selected_language = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.language_type
  L3_2 = LanguageSettingType
  L3_2 = L3_2.Language
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_LocalizationManager
    L2_2.CurrentTextLanguage = A1_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AccountManager
    L3_2 = L2_2
    L2_2 = L2_2.SetSDKLanguage
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_LocalizationManager
    L5_2 = L4_2
    L4_2 = L4_2.GetMiHoYoLangStr
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_LocalizationManager
    L2_2.CurrentAudioLanguage = A1_2
  end
end
L0_1._set_current_selected_language = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_language_list
  L1_2(L2_2)
  A0_2._node_list = nil
end
L0_1._on_dispose = L3_1
return L0_1
