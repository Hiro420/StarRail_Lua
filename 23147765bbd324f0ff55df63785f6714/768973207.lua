local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageSettingInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageDropItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageDropItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguageStartupSettingInfoItem"
L2_1 = G
L2_1 = L2_1.LanguageSettingInfoItem
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
    local L1_3, L2_3
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
    L2_3 = L1_3.language_key
    A0_2.current_key = L2_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L2_2(L3_2)
  A0_2.setting_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.init_language
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
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
  local L2_2, L3_2
  L2_2 = A1_2.setting_type
  L3_2 = LanguageSettingType
  L3_2 = L3_2.Language
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_LocalizationManager
    L2_2 = L2_2.CurrentTextLanguage
    A0_2.current_key = L2_2
  else
    L2_2 = A1_2.setting_type
    L3_2 = LanguageSettingType
    L3_2 = L3_2.Audio
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_LocalizationManager
      L2_2 = L2_2.CurrentAudioLanguage
      A0_2.current_key = L2_2
    end
  end
end
L0_1.init_language = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_key
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Language
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_LocalizationManager
    L2_2 = A0_2.current_key
    L1_2.CurrentTextLanguage = L2_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_LocalizationManager
    L2_2 = A0_2.current_key
    L1_2.CurrentAudioLanguage = L2_2
  end
end
L0_1.apply_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
    L2_2 = "Ui.GameStartup.LanguageStartupSwitchDialog"
    L3_2 = A0_2.setting_data
    L3_2 = L3_2.setting_type
    L5_2 = A0_2
    L4_2 = A0_2._get_current_language_dict
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.current_key
    function L6_2(A0_3)
      local L1_3, L2_3
      if A0_3 ~= nil then
        A0_2.current_key = A0_3
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._setup_language
        L1_3(L2_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L3_2 = L3_2.LocalizationManager
    L3_2 = L3_2.GetTextLanguageTextIDByTextLanguage
    L4_2 = A0_2.current_key
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_LocalizationManager
      L3_2 = L3_2.CurrentTextLanguageTextID
    end
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
      L3_2 = L3_2.LocalizationManager
      L3_2 = L3_2.GetAudioLanguageTextIDByAudioLanguage
      L4_2 = A0_2.current_key
      L3_2 = L3_2(L4_2)
      if not L3_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_LocalizationManager
        L3_2 = L3_2.CurrentAudioLanguageTextID
      end
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_language = L3_1
return L0_1
