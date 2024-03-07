local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Audio.AudioSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AudioSettingInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0
L2_1 = 10
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_value_change_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_slider_value_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.slider_panel
    L1_3 = L0_3
    L0_3 = L0_3.setup_control_mode
    L2_3 = true
    L0_3(L1_3, L2_3)
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
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.slider_panel
      L1_3 = L0_3
      L0_3 = L0_3.setup_control_mode
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
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
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._audio_data
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_dropdown_value_chagne
    L4_3 = L1_3.setting
    L2_3(L3_3, L4_3)
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
  local L2_2, L3_2, L4_2
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2.setting_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.title_text_id
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.SettingModule
  L3_2 = L2_2
  L2_2 = L2_2.get_audio_data_by_type
  L4_2 = A0_2.setting_data
  L4_2 = L4_2.setting_type
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._audio_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_current_dasta
  L2_2(L3_2)
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
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_click_area
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2._setup_slider_value
        L2_2(L3_2)
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
  L2_2 = A0_2._current_data
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._current_data
    L4_2 = L4_2.text_id
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_content_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._current_data = nil
  A0_2._default_key = nil
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = AudioSettingType
  L2_2 = L2_2.SpeakerMode
  if L1_2 == L2_2 then
    A0_2._default_key = 1
    L1_2 = ipairs
    L2_2 = A0_2._audio_data
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.setting
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_AudioManager
      L7_2 = L7_2.SpeakerMode
      if L6_2 == L7_2 then
        A0_2._current_data = L5_2
        L6_2 = L5_2.key
        A0_2._default_key = L6_2
      end
    end
  end
end
L0_1._refresh_current_dasta = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_min_max_value
  L3_2 = L1_1
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = AudioSettingType
  L2_2 = L2_2.MasterVolume
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_AudioManager
    L3_2 = L3_2.MasterVolume
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = AudioSettingType
    L2_2 = L2_2.BGMVolume
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.slider_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L3_2 = L3_2.BGMVolume
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.setting_data
      L1_2 = L1_2.setting_type
      L2_2 = AudioSettingType
      L2_2 = L2_2.VOVolume
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.slider_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.GlobalVars
        L3_2 = L3_2.s_AudioManager
        L3_2 = L3_2.VOVolume
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2.setting_data
        L1_2 = L1_2.setting_type
        L2_2 = AudioSettingType
        L2_2 = L2_2.SFXVolume
        if L1_2 == L2_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.slider_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_view
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.GlobalVars
          L3_2 = L3_2.s_AudioManager
          L3_2 = L3_2.SFXVolume
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L0_1._setup_slider_value = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = AudioSettingType
  L3_2 = L3_2.MasterVolume
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.SetMasterVolume
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = AudioSettingType
    L3_2 = L3_2.BGMVolume
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_AudioManager
      L3_2 = L2_2
      L2_2 = L2_2.SetBGMVolume
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = AudioSettingType
      L3_2 = L3_2.VOVolume
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_AudioManager
        L3_2 = L2_2
        L2_2 = L2_2.SetVOVolume
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = AudioSettingType
        L3_2 = L3_2.SFXVolume
        if L2_2 == L3_2 then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.GlobalVars
          L2_2 = L2_2.s_AudioManager
          L3_2 = L2_2
          L2_2 = L2_2.SetSFXVolume
          L4_2 = A1_2
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._on_slider_value_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = AudioSettingType
  L2_2 = L2_2.SpeakerMode
  if L1_2 == L2_2 then
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
      L2_2 = "Ui.Settings.CommonSettingItemDialog"
      L3_2 = A0_2
      L4_2 = A0_2._on_set_common_setting
      L5_2 = A0_2._audio_data
      L6_2 = A0_2._default_key
      L7_2 = A0_2.setting_data
      L7_2 = L7_2.title_text_id
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.SetSpeakerMode
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_dropdown_value_chagne = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._on_dropdown_value_chagne
  L4_2 = A1_2.setting
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_current_dasta
  L2_2(L3_2)
  L2_2 = A0_2._current_data
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._current_data
    L4_2 = L4_2.text_id
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_set_common_setting = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = AudioSettingType
  L3_2 = L3_2.SpeakerMode
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.Collections
    L2_2 = L2_2.Generic
    L2_2 = L2_2.List
    L3_2 = CS
    L3_2 = L3_2.System
    L3_2 = L3_2.String
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2()
    L1_2 = L2_2
    L2_2 = ipairs
    L3_2 = A0_2._audio_data
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.text_id
      L7_2(L8_2, L9_2)
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
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = A0_2._default_key
    L3_2 = L3_2 - 1
    L2_2.value = L3_2
  end
end
L0_1._init_drop_down_list = L3_1
return L0_1
