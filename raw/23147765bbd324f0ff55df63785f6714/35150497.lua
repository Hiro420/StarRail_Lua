local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Audio.AudioPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Audio.AudioSettingInfoItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AudioPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/TabIcon/Settings/SettingsVoiceIcon.png"
L2_1 = "UIText_Setting_Tab_Volume"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._selected_object = nil
  L1_2 = {}
  A0_2.data_list = L1_2
  L1_2 = {}
  L2_2 = SettingItemType
  L2_2 = L2_2.Slider
  L1_2.show_type = L2_2
  L2_2 = AudioSettingType
  L2_2 = L2_2.MasterVolume
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Event_TotalVolume"
  L1_2.setting_title_text_id = "UIText_Setting_Title_Volume"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Slider
  L1_2.show_type = L2_2
  L2_2 = AudioSettingType
  L2_2 = L2_2.BGMVolume
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Event_MusicVolume"
  L1_2.setting_title_text_id = "UIText_Setting_Title_VolumeBalance"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Slider
  L1_2.show_type = L2_2
  L2_2 = AudioSettingType
  L2_2 = L2_2.VOVolume
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Event_VoiceVolume"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Slider
  L1_2.show_type = L2_2
  L2_2 = AudioSettingType
  L2_2 = L2_2.SFXVolume
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Event_SoundVolume"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_cloud_platform
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_pc_mode
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = {}
      L1_2 = L2_2
      L2_2 = SettingItemType
      L2_2 = L2_2.Common
      L1_2.show_type = L2_2
      L2_2 = AudioSettingType
      L2_2 = L2_2.MuteOnLostFocus
      L1_2.setting_type = L2_2
      L1_2.title_text_id = "UIText_MinimizeMute_Option"
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2.data_list
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_mobile_platform
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_cloud_android_platform
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.is_cloud_ios_platform
      L2_2 = L2_2()
      if not L2_2 then
        goto lbl_119
      end
    end
  end
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  L1_2.show_type = L2_2
  L2_2 = AudioSettingType
  L2_2 = L2_2.SpeakerMode
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Audio_Device_Mode"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  ::lbl_119::
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_object
  if L1_2 then
    L1_2 = A0_2._selected_object
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.data_list
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = nil
  L5_2 = nil
  L7_2 = A1_2
  L6_2 = A1_2.NewListViewItem
  L8_2 = 0
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L6_2
  L4_2 = L5_2.UserObjectData
  if L4_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.AudioSettingInfoItem
    L9_2 = G
    L9_2 = L9_2.AudioSettingInfoItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L7_2 = L4_2
    L6_2 = L4_2.bind
    L8_2 = L5_2.transform
    L6_2(L7_2, L8_2)
    L5_2.UserObjectData = L4_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L5_2
end
L0_1._on_loop_list_view_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_normal_img
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_selected_img
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_loop_list_view_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    A0_2._selected_object = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.SaveVolume
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
return L0_1
