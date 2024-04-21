local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageDropItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageDropItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguageSettingInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AudioSetChanged
  L4_2 = A0_2._on_audio_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_down_pc
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_down_pc
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3 + 1
    L2_3 = A0_2._language_data
    L2_3 = #L2_3
    if L1_3 > L2_3 then
      L1_3 = G
      L1_3 = L1_3.UIManager
      L1_3 = L1_3.load_and_show
      L2_3 = "Ui.Audio.LanguegePackManageDialog"
      L1_3(L2_3)
      return
    end
    L1_3 = A0_2._language_data
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    L2_3 = A0_2.setting_data
    L2_3 = L2_3.setting_type
    L3_3 = LanguageSettingType
    L3_3 = L3_3.Language
    if L2_3 == L3_3 then
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.Client
      L2_3 = L2_3.GlobalVars
      L2_3 = L2_3.s_LocalizationManager
      L3_3 = L1_3.language_key
      L2_3.CurrentTextLanguage = L3_3
    else
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.Client
      L2_3 = L2_3.GlobalVars
      L2_3 = L2_3.s_LocalizationManager
      L3_3 = L1_3.language_key
      L2_3.CurrentAudioLanguage = L3_3
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Audio
  if L1_2 == L2_2 then
    L1_2 = 0
    L2_2 = 0
    L3_2 = ipairs
    L4_2 = A0_2._language_data
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L2_2 = L2_2 + 1
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.GlobalVars
      L8_2 = L8_2.s_LocalizationManager
      L8_2 = L8_2.CurrentAudioLanguage
      L9_2 = L7_2.language_key
      if L8_2 == L9_2 then
        L1_2 = L2_2
      end
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_drop_down_pc
    L4_2 = L1_2 - 1
    L3_2.value = L4_2
    L4_2 = A0_2
    L3_2 = A0_2._setup_language
    L3_2(L4_2)
  end
end
L0_1._on_audio_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L2_2(L3_2)
  A0_2.setting_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_title_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_content_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.setting_title_text_id
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_setting_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_setting_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.setting_title_text_id
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_setting_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_title_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_setting_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_drop_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_drop_down_pc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_exchange_mini
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_link
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hot_key
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2.setting_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.title_text_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_language_data
  L2_2 = L2_2(L3_2)
  A0_2._language_data = L2_2
  L2_2 = A1_2.show_type
  L3_2 = SettingItemType
  L3_2 = L3_2.Common
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_pc_or_ps_or_mobile_gamepad_mode
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_drop_down_pc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = LanguageSettingType
      L3_2 = L3_2.Audio
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_drop_down_pc
        L3_2 = L2_2
        L2_2 = L2_2.SetLuaBindingCallback
        L4_2 = A0_2
        L5_2 = A0_2.on_show_item
        L6_2 = A0_2.on_show_select_item
        L2_2(L3_2, L4_2, L5_2, L6_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_drop_down_pc
        L3_2 = L2_2
        L2_2 = L2_2.BindToggleChangedFunction
        L4_2 = A0_2.on_toggle_click
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_drop_down_pc
        L3_2 = L2_2
        L2_2 = L2_2.SetLuaBindingCallback
        L4_2 = nil
        L5_2 = nil
        L6_2 = nil
        L2_2(L3_2, L4_2, L5_2, L6_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_drop_down_pc
        L3_2 = L2_2
        L2_2 = L2_2.BindToggleChangedFunction
        L4_2 = nil
        L2_2(L3_2, L4_2)
      end
      L3_2 = A0_2
      L2_2 = A0_2._init_drop_down_list
      L2_2(L3_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_drop_down
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A1_2.show_type
    L3_2 = SettingItemType
    L3_2 = L3_2.Link
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_link
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A1_2.show_type
      L3_2 = SettingItemType
      L3_2 = L3_2.Slider
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_exchange_mini
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      else
        L2_2 = A1_2.show_type
        L3_2 = SettingItemType
        L3_2 = L3_2.HotKey
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.node_hot_key
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetActive
          L4_2 = true
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_language
  L2_2(L3_2)
end
L0_1.setup_content_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._language_data
  L2_2 = #L2_2
  if A1_2 >= L2_2 then
    L2_2 = G
    L2_2 = L2_2.ButtonMutex
    L2_2 = L2_2.click_mutex
    L3_2 = A0_2._owner
    L3_2 = L3_2._button_mutex
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_drop_down_pc
      L1_3 = L0_3
      L0_3 = L0_3.Hide
      L0_3(L1_3)
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_show
      L1_3 = "Ui.Audio.LanguegePackManageDialog"
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsAudioDownloaded
  L4_2 = A0_2._language_data
  L5_2 = A1_2 + 1
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.language_key
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._language_data
  L4_2 = A1_2 + 1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.language_key
  if not L2_2 then
    L4_2 = L2_1
    L5_2 = L4_2
    L4_2 = L4_2.IsLoginContext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L5_2 = G
      L5_2 = L5_2.ButtonMutex
      L5_2 = L5_2.click_mutex
      L6_2 = A0_2._owner
      L6_2 = L6_2._button_mutex
      function L7_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_drop_down_pc
        L1_3 = L0_3
        L0_3 = L0_3.Hide
        L0_3(L1_3)
        L0_3 = G
        L0_3 = L0_3.UIManager
        L0_3 = L0_3.load_and_show
        L1_3 = "Ui.Audio.LanguegePackDownloadDialog"
        L2_3 = L3_2
        L0_3(L1_3, L2_3)
      end
      L5_2(L6_2, L7_2)
      L5_2 = false
      return L5_2
    else
      L5_2 = true
      return L5_2
    end
    L5_2 = false
    return L5_2
  end
  L4_2 = true
  return L4_2
end
L0_1.on_toggle_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A2_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.LanguageDropItem
    L8_2 = G
    L8_2 = L8_2.LanguageDropItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = A2_2.transform
    L5_2(L6_2, L7_2)
    A2_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._language_data
  L5_2 = #L5_2
  if A3_2 < L5_2 then
    L5_2 = A0_2._language_data
    L6_2 = A3_2 + 1
    L5_2 = L5_2[L6_2]
    L7_2 = L4_2
    L6_2 = L4_2.setup_view
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_as_manage_btn
    L5_2(L6_2)
  end
end
L0_1.on_show_item = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_drop_down_pc_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._language_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.text_id
  L3_2(L4_2, L5_2)
end
L0_1.on_show_select_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CanSwitchAudio
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = LanguageSettingType
    L2_2 = L2_2.Audio
    if L1_2 == L2_2 then
      return
    end
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drop_down_pc
    L2_2 = L1_2
    L1_2 = L1_2.Show
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.GameStartup.SwitchLanguageDialog"
    L3_2 = A0_2.setting_data
    L3_2 = L3_2.setting_type
    L5_2 = A0_2
    L4_2 = A0_2._get_current_language_dict
    L4_2 = L4_2(L5_2)
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_language
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Language
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_LocalizationManager
    L3_2 = L3_2.CurrentTextLanguageTextID
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = LanguageSettingType
    L2_2 = L2_2.Audio
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_content
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_LocalizationManager
      L3_2 = L3_2.CurrentAudioLanguageTextID
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_language = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Audio
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsPSPlatform
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.AppUtils
      L1_2 = L1_2.IsCloudPlatform
      if not L1_2 then
        goto lbl_28
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drop_down_pc
    L2_2 = L1_2
    L1_2 = L1_2.SetOptionsCount
    L3_2 = A0_2._language_data
    L3_2 = #L3_2
    L1_2(L2_2, L3_2)
    goto lbl_69
    ::lbl_28::
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drop_down_pc
    L2_2 = L1_2
    L1_2 = L1_2.SetOptionsCount
    L3_2 = A0_2._language_data
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.System
    L1_2 = L1_2.Collections
    L1_2 = L1_2.Generic
    L1_2 = L1_2.List
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2()
    L2_2 = ipairs
    L3_2 = A0_2._language_data
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = L6_2.text_id
      L9_2, L10_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = L2_2
    L2_2 = L2_2.ClearOptions
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = L2_2
    L2_2 = L2_2.AddOptions
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  ::lbl_69::
  L1_2 = A0_2._default_key
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drop_down_pc
    L2_2 = A0_2._default_key
    L2_2 = L2_2 - 1
    L1_2.value = L2_2
  end
end
L0_1._init_drop_down_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._get_current_language_dict
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = {}
    L10_2 = L8_2.ShowString
    L9_2.text_id = L10_2
    L10_2 = A0_2.setting_data
    L10_2 = L10_2.setting_type
    L11_2 = LanguageSettingType
    L11_2 = L11_2.Language
    if L10_2 == L11_2 then
      L10_2 = L8_2.TextLanguageKey
      L9_2.language_key = L10_2
      L10_2 = L9_2.language_key
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.Client
      L11_2 = L11_2.GlobalVars
      L11_2 = L11_2.s_LocalizationManager
      L11_2 = L11_2.CurrentTextLanguage
      if L10_2 == L11_2 then
        A0_2._default_key = L3_2
      end
    else
      L10_2 = L8_2.AudioLanguageKey
      L9_2.language_key = L10_2
      L10_2 = L9_2.language_key
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.Client
      L11_2 = L11_2.GlobalVars
      L11_2 = L11_2.s_LocalizationManager
      L11_2 = L11_2.CurrentAudioLanguage
      if L10_2 == L11_2 then
        A0_2._default_key = L3_2
      end
    end
    L3_2 = L3_2 + 1
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L1_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L1_2
end
L0_1._get_language_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = LanguageSettingType
  L3_2 = L3_2.Language
  if L2_2 == L3_2 then
    L2_2 = pairs
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AllowedTextLanguageExcelTable
    L3_2 = L3_2.dataDict
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = A0_2
      L7_2 = A0_2._is_language_valid
      L9_2 = L6_2.TextLanguageKey
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  else
    L2_2 = pairs
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AllowedAudioLanguageExcelTable
    L3_2 = L3_2.dataDict
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = A0_2
      L7_2 = A0_2._is_language_valid
      L9_2 = L6_2.AudioLanguageKey
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  return L1_2
end
L0_1._get_current_language_dict = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = OVERSEA_BUILD
  if L3_2 then
    L2_2 = "os"
  else
    L2_2 = "cn"
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AllowedLanguageExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L5_2 = A0_2.setting_data
  L5_2 = L5_2.setting_type
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.LanguageList
    if L4_2 ~= nil then
      goto lbl_24
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_24::
  L4_2 = 0
  L5_2 = L3_2.LanguageList
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2.LanguageList
    L8_2 = L8_2[L7_2]
    if L8_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L4_2 = false
  return L4_2
end
L0_1._is_language_valid = L3_1
return L0_1
