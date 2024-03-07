local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Settings.Other.OtherSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OtherSettingInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ClientOnlyCommonConfig
L2_1 = 1
L3_1 = 5
L4_1 = 0
L5_1 = 5
L6_1 = "UI/Atlas/AtlasRoot/Common/Icon/GamepadVibrationOn.png"
L7_1 = "UI/Atlas/AtlasRoot/Common/Icon/GamepadVibrationOff.png"
function L8_1(A0_2)
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
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_voice_active
  L3_2 = false
  L1_2(L2_2, L3_2)
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
    L1_3 = A0_2._other_setting_data
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.set_content_text
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = OtherSettingType
  L3_2 = L3_2.LightConeAutoLock
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._add_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.LightConeAutoLockSettingChanged
    L5_2 = A0_2._update_content_text
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = OtherSettingType
  L3_2 = L3_2.IsAcceptFriendApply
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._add_packet_handler
    L4_2 = CS
    L4_2 = L4_2.NIJNBICAPPA
    L4_2 = L4_2.OGCJBFONMJK
    L5_2 = A0_2._update_content_text
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = OtherSettingType
  L3_2 = L3_2.AvatarLookAt
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._add_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.AvatarLookAtSettingChanged
    L5_2 = A0_2._update_content_text
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L8_1
function L8_1(A0_2, A1_2)
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
L0_1.setup_title_view = L8_1
function L8_1(A0_2, A1_2)
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_link
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.link_text_id
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.SettingModule
  L3_2 = L2_2
  L2_2 = L2_2.get_other_setting_data_by_type
  L4_2 = A0_2.setting_data
  L4_2 = L4_2.setting_type
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._other_setting_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._update_content_text
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
end
L0_1.setup_content_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.show_type
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
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
      L1_2 = false
      L2_2 = G
      L2_2 = L2_2.UIManager
      L2_2 = L2_2.load_and_show
      L3_2 = "Ui.Settings.CommonSettingItemDialog"
      L4_2 = A0_2
      L5_2 = A0_2.set_content_text
      L6_2 = A0_2._other_setting_data
      L7_2 = A0_2._default_key
      L8_2 = OtherSettingType2Title
      L9_2 = A0_2.setting_data
      L9_2 = L9_2.setting_type
      L8_2 = L8_2[L9_2]
      L9_2 = L1_2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = OtherSettingType
    L2_2 = L2_2.EmergencyExit
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowOkCancelHint
      L2_2 = "UIText_Setting_Other_EmergencyExitTransfer_ConfirmDialog"
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TextID
      L3_2 = L3_2.empty
      function L4_2(A0_3)
        local L1_3, L2_3
        if A0_3 then
          L1_3 = CS
          L1_3 = L1_3.RPG
          L1_3 = L1_3.Client
          L1_3 = L1_3.GlobalVars
          L1_3 = L1_3.s_NetworkManager
          L2_3 = L1_3
          L1_3 = L1_3.EEHIADCDPEJ
          L1_3(L2_3)
          L1_3 = CS
          L1_3 = L1_3.RPG
          L1_3 = L1_3.Client
          L1_3 = L1_3.GlobalVars
          L1_3 = L1_3.s_UIManager
          L2_3 = L1_3
          L1_3 = L1_3.BackToFirstPage
          L1_3(L2_3)
        end
      end
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = OtherSettingType
  L3_2 = L3_2.BattleLock
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Other
    L2_2.DragDistanceGearForChangeTarget = A1_2
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = OtherSettingType
    L3_2 = L3_2.MouseFov
    if L2_2 == L3_2 then
      L1_1.ZoomSpeedRatioGearSetting = A1_2
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = OtherSettingType
      L3_2 = L3_2.MouseRotation
      if L2_2 == L3_2 then
        L1_1.CameraRotationSpeedRatioGearSetting = A1_2
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = OtherSettingType
        L3_2 = L3_2.GamepadFov
        if L2_2 == L3_2 then
          L1_1.ZoomSpeedRatioGearSettingForController = A1_2
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = OtherSettingType
          L3_2 = L3_2.GamepadRotation
          if L2_2 == L3_2 then
            L1_1.CameraRotationSpeedRatioGearSettingForController = A1_2
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = OtherSettingType
            L3_2 = L3_2.CustomIndent
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._on_custom_indent_slider_value_changed
              L4_2 = A1_2
              L2_2(L3_2, L4_2)
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = OtherSettingType
              L3_2 = L3_2.GamepadVibrationIntensity
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._on_gamepad_vibration_intensity_slider_value_changed
                L4_2 = A1_2
                L2_2(L3_2, L4_2)
              end
            end
          end
        end
      end
    end
  end
end
L0_1._on_slider_value_change = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = OtherSettingType
  L3_2 = L3_2.SettingPhoneJoystick
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIUtils
    L2_2 = L2_2.IsMobileGamePadModeBySetting
    L3_2 = A1_2.setting
    if L2_2 ~= L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIUtils
      L3_2 = A1_2.setting
      L2_2.IsMobileGamePadModeBySetting = L3_2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.RPGApplication
      L2_2 = L2_2.Instance
      L3_2 = L2_2
      L2_2 = L2_2.RestartAppNextFrame
      L2_2(L3_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIUtils
      L3_2 = A1_2.setting
      L2_2.IsMobileGamePadModeBySetting = L3_2
    end
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = OtherSettingType
    L3_2 = L3_2.AIUltraSkill
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.Settings
      L2_2 = L2_2.Other
      L3_2 = A1_2.setting
      L2_2.IsAIConsiderUltraSkill = L3_2
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = OtherSettingType
      L3_2 = L3_2.BattleSpeed
      if L2_2 == L3_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.Prefs
        L2_2 = L2_2.Settings
        L2_2 = L2_2.Other
        L3_2 = A1_2.setting
        L2_2.IsSaveBattleSpeed = L3_2
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = OtherSettingType
        L3_2 = L3_2.AutoTalk
        if L2_2 == L3_2 then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.Prefs
          L2_2 = L2_2.Settings
          L2_2 = L2_2.Other
          L3_2 = A1_2.setting
          L2_2.IsTalkDefaultAuto = L3_2
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = OtherSettingType
          L3_2 = L3_2.WalkSwitch
          if L2_2 == L3_2 then
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.GlobalVars
            L2_2 = L2_2.s_SettingManager
            L3_2 = A1_2.setting
            L2_2.WalkSwitchValue = L3_2
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = OtherSettingType
            L3_2 = L3_2.LightConeAutoLock
            if L2_2 == L3_2 then
              L2_2 = G
              L2_2 = L2_2.PlayerUtils
              L2_2 = L2_2.set_light_cone_rarity4_auto_lock
              L3_2 = A1_2.setting
              L2_2(L3_2)
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = OtherSettingType
              L3_2 = L3_2.FastRunSwitch
              if L2_2 == L3_2 then
                L2_2 = CS
                L2_2 = L2_2.RPG
                L2_2 = L2_2.Client
                L2_2 = L2_2.Prefs
                L2_2 = L2_2.Settings
                L2_2 = L2_2.Other
                L3_2 = A1_2.setting
                L2_2.FastRunSwitchForPC = L3_2
              else
                L2_2 = A0_2.setting_data
                L2_2 = L2_2.setting_type
                L3_2 = OtherSettingType
                L3_2 = L3_2.ShowBattleActionDelay
                if L2_2 == L3_2 then
                  L2_2 = CS
                  L2_2 = L2_2.RPG
                  L2_2 = L2_2.Client
                  L2_2 = L2_2.Prefs
                  L2_2 = L2_2.Settings
                  L2_2 = L2_2.Other
                  L3_2 = A1_2.setting
                  L2_2.ShowBattleActionDelay = L3_2
                  L2_2 = G
                  L2_2 = L2_2.NotifyManager
                  L2_2 = L2_2.notify
                  L3_2 = G
                  L3_2 = L3_2.CS
                  L3_2 = L3_2.NotifyType
                  L3_2 = L3_2.UIActionDelayShowModeChange
                  L4_2 = A1_2.setting
                  L2_2(L3_2, L4_2)
                else
                  L2_2 = A0_2.setting_data
                  L2_2 = L2_2.setting_type
                  L3_2 = OtherSettingType
                  L3_2 = L3_2.CameraYAxisInversion
                  if L2_2 == L3_2 then
                    L2_2 = CS
                    L2_2 = L2_2.RPG
                    L2_2 = L2_2.Client
                    L2_2 = L2_2.Prefs
                    L2_2 = L2_2.Settings
                    L2_2 = L2_2.Other
                    L3_2 = A1_2.setting
                    L2_2.CameraYAxisInversionSwitch = L3_2
                  else
                    L2_2 = A0_2.setting_data
                    L2_2 = L2_2.setting_type
                    L3_2 = OtherSettingType
                    L3_2 = L3_2.CameraXAxisInversion
                    if L2_2 == L3_2 then
                      L2_2 = CS
                      L2_2 = L2_2.RPG
                      L2_2 = L2_2.Client
                      L2_2 = L2_2.Prefs
                      L2_2 = L2_2.Settings
                      L2_2 = L2_2.Other
                      L3_2 = A1_2.setting
                      L2_2.CameraXAxisInversionSwitch = L3_2
                    else
                      L2_2 = A0_2.setting_data
                      L2_2 = L2_2.setting_type
                      L3_2 = OtherSettingType
                      L3_2 = L3_2.EyeProtectionMode
                      if L2_2 == L3_2 then
                        L2_2 = CS
                        L2_2 = L2_2.RPG
                        L2_2 = L2_2.Client
                        L2_2 = L2_2.Prefs
                        L2_2 = L2_2.User
                        L3_2 = A1_2.setting
                        L2_2.EyeProtectionModeSwitchType = L3_2
                        L2_2 = G
                        L2_2 = L2_2.NotifyManager
                        L2_2 = L2_2.notify
                        L3_2 = G
                        L3_2 = L3_2.CS
                        L3_2 = L3_2.NotifyType
                        L3_2 = L3_2.UIEyeProtectionModeChange
                        L2_2(L3_2)
                      else
                        L2_2 = A0_2.setting_data
                        L2_2 = L2_2.setting_type
                        L3_2 = OtherSettingType
                        L3_2 = L3_2.IsAcceptFriendApply
                        if L2_2 == L3_2 then
                          L2_2 = A1_2.setting
                          L3_2 = CS
                          L3_2 = L3_2.RPG
                          L3_2 = L3_2.Client
                          L3_2 = L3_2.GlobalVars
                          L3_2 = L3_2.s_ModuleManager
                          L3_2 = L3_2.FriendModule
                          L3_2 = L3_2.IsAllowOtherApply
                          if L2_2 ~= L3_2 then
                            L2_2 = CS
                            L2_2 = L2_2.RPG
                            L2_2 = L2_2.Client
                            L2_2 = L2_2.NetworkManager
                            L2_2 = L2_2.OOGONDGGKMI
                            L3_2 = L2_2
                            L2_2 = L2_2.OCGNPLIMBLG
                            L4_2 = A1_2.setting
                            L2_2(L3_2, L4_2)
                            L3_2 = A0_2
                            L2_2 = A0_2.show_full_screen_block_for_packet
                            L4_2 = CS
                            L4_2 = L4_2.NIJNBICAPPA
                            L4_2 = L4_2.OGCJBFONMJK
                            L2_2(L3_2, L4_2)
                          end
                        else
                          L2_2 = A0_2.setting_data
                          L2_2 = L2_2.setting_type
                          L3_2 = OtherSettingType
                          L3_2 = L3_2.BottomShortCutHint
                          if L2_2 == L3_2 then
                            L2_2 = CS
                            L2_2 = L2_2.RPG
                            L2_2 = L2_2.Client
                            L2_2 = L2_2.Prefs
                            L2_2 = L2_2.Settings
                            L2_2 = L2_2.Other
                            L3_2 = A1_2.setting
                            L2_2.BottomShortCutHint = L3_2
                          else
                            L2_2 = A0_2.setting_data
                            L2_2 = L2_2.setting_type
                            L3_2 = OtherSettingType
                            L3_2 = L3_2.BottomShortCutHintForController
                            if L2_2 == L3_2 then
                              L2_2 = CS
                              L2_2 = L2_2.RPG
                              L2_2 = L2_2.Client
                              L2_2 = L2_2.Prefs
                              L2_2 = L2_2.Settings
                              L2_2 = L2_2.Other
                              L3_2 = A1_2.setting
                              L2_2.BottomShortCutHintForController = L3_2
                            else
                              L2_2 = A0_2.setting_data
                              L2_2 = L2_2.setting_type
                              L3_2 = OtherSettingType
                              L3_2 = L3_2.AvatarLookAt
                              if L2_2 == L3_2 then
                                L2_2 = G
                                L2_2 = L2_2.PlayerUtils
                                L2_2 = L2_2.set_close_avatar_look_at
                                L3_2 = A1_2.setting
                                L3_2 = not L3_2
                                L2_2(L3_2)
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_content_text
  L2_2(L3_2)
end
L0_1.set_content_text = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = OtherSettingType
  L3_2 = L3_2.SettingPhoneJoystick
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_current_data
    L4_2 = A0_2._other_setting_data
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_SettingManager
    L5_2 = L5_2.IsMobileGamePadMode
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = OtherSettingType
    L3_2 = L3_2.AIUltraSkill
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_current_data
      L4_2 = A0_2._other_setting_data
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.Prefs
      L5_2 = L5_2.Settings
      L5_2 = L5_2.Other
      L5_2 = L5_2.IsAIConsiderUltraSkill
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = OtherSettingType
      L3_2 = L3_2.BattleSpeed
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._get_current_data
        L4_2 = A0_2._other_setting_data
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.Prefs
        L5_2 = L5_2.Settings
        L5_2 = L5_2.Other
        L5_2 = L5_2.IsSaveBattleSpeed
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L1_2 = L2_2
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = OtherSettingType
        L3_2 = L3_2.AutoTalk
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._get_current_data
          L4_2 = A0_2._other_setting_data
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.Prefs
          L5_2 = L5_2.Settings
          L5_2 = L5_2.Other
          L5_2 = L5_2.IsTalkDefaultAuto
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          L1_2 = L2_2
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = OtherSettingType
          L3_2 = L3_2.WalkSwitch
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._get_current_data
            L4_2 = A0_2._other_setting_data
            L5_2 = CS
            L5_2 = L5_2.RPG
            L5_2 = L5_2.Client
            L5_2 = L5_2.GlobalVars
            L5_2 = L5_2.s_SettingManager
            L5_2 = L5_2.WalkSwitchValue
            L2_2 = L2_2(L3_2, L4_2, L5_2)
            L1_2 = L2_2
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = OtherSettingType
            L3_2 = L3_2.LightConeAutoLock
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._get_current_data
              L4_2 = A0_2._other_setting_data
              L5_2 = CS
              L5_2 = L5_2.RPG
              L5_2 = L5_2.Client
              L5_2 = L5_2.GlobalVars
              L5_2 = L5_2.s_ModuleManager
              L5_2 = L5_2.PlayerModule
              L5_2 = L5_2.PlayerSettingData
              L5_2 = L5_2.AutoProtectEquipmentRarity4
              L2_2 = L2_2(L3_2, L4_2, L5_2)
              L1_2 = L2_2
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = OtherSettingType
              L3_2 = L3_2.FastRunSwitch
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._get_current_data
                L4_2 = A0_2._other_setting_data
                L5_2 = CS
                L5_2 = L5_2.RPG
                L5_2 = L5_2.Client
                L5_2 = L5_2.Prefs
                L5_2 = L5_2.Settings
                L5_2 = L5_2.Other
                L5_2 = L5_2.FastRunSwitchForPC
                L2_2 = L2_2(L3_2, L4_2, L5_2)
                L1_2 = L2_2
              else
                L2_2 = A0_2.setting_data
                L2_2 = L2_2.setting_type
                L3_2 = OtherSettingType
                L3_2 = L3_2.ShowBattleActionDelay
                if L2_2 == L3_2 then
                  L3_2 = A0_2
                  L2_2 = A0_2._get_current_data
                  L4_2 = A0_2._other_setting_data
                  L5_2 = CS
                  L5_2 = L5_2.RPG
                  L5_2 = L5_2.Client
                  L5_2 = L5_2.Prefs
                  L5_2 = L5_2.Settings
                  L5_2 = L5_2.Other
                  L5_2 = L5_2.ShowBattleActionDelay
                  L2_2 = L2_2(L3_2, L4_2, L5_2)
                  L1_2 = L2_2
                else
                  L2_2 = A0_2.setting_data
                  L2_2 = L2_2.setting_type
                  L3_2 = OtherSettingType
                  L3_2 = L3_2.CameraYAxisInversion
                  if L2_2 == L3_2 then
                    L3_2 = A0_2
                    L2_2 = A0_2._get_current_data
                    L4_2 = A0_2._other_setting_data
                    L5_2 = CS
                    L5_2 = L5_2.RPG
                    L5_2 = L5_2.Client
                    L5_2 = L5_2.Prefs
                    L5_2 = L5_2.Settings
                    L5_2 = L5_2.Other
                    L5_2 = L5_2.CameraYAxisInversionSwitch
                    L2_2 = L2_2(L3_2, L4_2, L5_2)
                    L1_2 = L2_2
                  else
                    L2_2 = A0_2.setting_data
                    L2_2 = L2_2.setting_type
                    L3_2 = OtherSettingType
                    L3_2 = L3_2.CameraXAxisInversion
                    if L2_2 == L3_2 then
                      L3_2 = A0_2
                      L2_2 = A0_2._get_current_data
                      L4_2 = A0_2._other_setting_data
                      L5_2 = CS
                      L5_2 = L5_2.RPG
                      L5_2 = L5_2.Client
                      L5_2 = L5_2.Prefs
                      L5_2 = L5_2.Settings
                      L5_2 = L5_2.Other
                      L5_2 = L5_2.CameraXAxisInversionSwitch
                      L2_2 = L2_2(L3_2, L4_2, L5_2)
                      L1_2 = L2_2
                    else
                      L2_2 = A0_2.setting_data
                      L2_2 = L2_2.setting_type
                      L3_2 = OtherSettingType
                      L3_2 = L3_2.EyeProtectionMode
                      if L2_2 == L3_2 then
                        L3_2 = A0_2
                        L2_2 = A0_2._get_current_data
                        L4_2 = A0_2._other_setting_data
                        L5_2 = CS
                        L5_2 = L5_2.RPG
                        L5_2 = L5_2.Client
                        L5_2 = L5_2.Prefs
                        L5_2 = L5_2.User
                        L5_2 = L5_2.EyeProtectionModeSwitchType
                        L2_2 = L2_2(L3_2, L4_2, L5_2)
                        L1_2 = L2_2
                      else
                        L2_2 = A0_2.setting_data
                        L2_2 = L2_2.setting_type
                        L3_2 = OtherSettingType
                        L3_2 = L3_2.IsAcceptFriendApply
                        if L2_2 == L3_2 then
                          L3_2 = A0_2
                          L2_2 = A0_2._get_current_data
                          L4_2 = A0_2._other_setting_data
                          L5_2 = CS
                          L5_2 = L5_2.RPG
                          L5_2 = L5_2.Client
                          L5_2 = L5_2.GlobalVars
                          L5_2 = L5_2.s_ModuleManager
                          L5_2 = L5_2.FriendModule
                          L5_2 = L5_2.IsAllowOtherApply
                          L2_2 = L2_2(L3_2, L4_2, L5_2)
                          L1_2 = L2_2
                        else
                          L2_2 = A0_2.setting_data
                          L2_2 = L2_2.setting_type
                          L3_2 = OtherSettingType
                          L3_2 = L3_2.BottomShortCutHint
                          if L2_2 == L3_2 then
                            L3_2 = A0_2
                            L2_2 = A0_2._get_current_data
                            L4_2 = A0_2._other_setting_data
                            L5_2 = CS
                            L5_2 = L5_2.RPG
                            L5_2 = L5_2.Client
                            L5_2 = L5_2.Prefs
                            L5_2 = L5_2.Settings
                            L5_2 = L5_2.Other
                            L5_2 = L5_2.BottomShortCutHint
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            L1_2 = L2_2
                          else
                            L2_2 = A0_2.setting_data
                            L2_2 = L2_2.setting_type
                            L3_2 = OtherSettingType
                            L3_2 = L3_2.BottomShortCutHintForController
                            if L2_2 == L3_2 then
                              L3_2 = A0_2
                              L2_2 = A0_2._get_current_data
                              L4_2 = A0_2._other_setting_data
                              L5_2 = CS
                              L5_2 = L5_2.RPG
                              L5_2 = L5_2.Client
                              L5_2 = L5_2.Prefs
                              L5_2 = L5_2.Settings
                              L5_2 = L5_2.Other
                              L5_2 = L5_2.BottomShortCutHintForController
                              L2_2 = L2_2(L3_2, L4_2, L5_2)
                              L1_2 = L2_2
                            else
                              L2_2 = A0_2.setting_data
                              L2_2 = L2_2.setting_type
                              L3_2 = OtherSettingType
                              L3_2 = L3_2.AvatarLookAt
                              if L2_2 == L3_2 then
                                L3_2 = A0_2
                                L2_2 = A0_2._get_current_data
                                L4_2 = A0_2._other_setting_data
                                L5_2 = CS
                                L5_2 = L5_2.RPG
                                L5_2 = L5_2.Client
                                L5_2 = L5_2.GlobalVars
                                L5_2 = L5_2.s_ModuleManager
                                L5_2 = L5_2.PlayerModule
                                L5_2 = L5_2.PlayerSettingData
                                L5_2 = L5_2.IsCloseAvatarLookAt
                                L5_2 = not L5_2
                                L2_2 = L2_2(L3_2, L4_2, L5_2)
                                L1_2 = L2_2
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if L1_2 then
    L2_2 = L1_2.key
    A0_2._default_key = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.text_id
    L2_2(L3_2, L4_2)
  end
end
L0_1._update_content_text = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.setting
    if L8_2 == A2_2 then
      return L7_2
    end
  end
  L3_2 = #A2_2
  L4_2 = A1_2[1]
  L4_2 = L4_2.setting
  L4_2 = #L4_2
  if L3_2 < L4_2 then
    L3_2 = A1_2[1]
    return L3_2
  else
    L3_2 = #A2_2
    L4_2 = #A1_2
    L4_2 = A1_2[L4_2]
    L4_2 = L4_2.setting
    L4_2 = #L4_2
    if L3_2 > L4_2 then
      L3_2 = #A1_2
      L3_2 = A1_2[L3_2]
      return L3_2
    end
  end
end
L0_1._get_current_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_slider_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = OtherSettingType
  L2_2 = L2_2.BattleLock
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.Settings
    L1_2 = L1_2.Other
    L1_2 = L1_2.DragDistanceGearForChangeTarget
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = OtherSettingType
    L2_2 = L2_2.MouseFov
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.slider_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = L1_1.ZoomSpeedRatioGearSetting
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.setting_data
      L1_2 = L1_2.setting_type
      L2_2 = OtherSettingType
      L2_2 = L2_2.MouseRotation
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.slider_panel
        L2_2 = L1_2
        L1_2 = L1_2.setup_view
        L3_2 = L1_1.CameraRotationSpeedRatioGearSetting
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2.setting_data
        L1_2 = L1_2.setting_type
        L2_2 = OtherSettingType
        L2_2 = L2_2.GamepadFov
        if L1_2 == L2_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.slider_panel
          L2_2 = L1_2
          L1_2 = L1_2.setup_view
          L3_2 = L1_1.ZoomSpeedRatioGearSettingForController
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2.setting_data
          L1_2 = L1_2.setting_type
          L2_2 = OtherSettingType
          L2_2 = L2_2.GamepadRotation
          if L1_2 == L2_2 then
            L1_2 = A0_2._binder
            L1_2 = L1_2.slider_panel
            L2_2 = L1_2
            L1_2 = L1_2.setup_view
            L3_2 = L1_1.CameraRotationSpeedRatioGearSettingForController
            L1_2(L2_2, L3_2)
          else
            L1_2 = A0_2.setting_data
            L1_2 = L1_2.setting_type
            L2_2 = OtherSettingType
            L2_2 = L2_2.CustomIndent
            if L1_2 == L2_2 then
              L2_2 = A0_2
              L1_2 = A0_2._setup_custom_indent_slider_value
              L1_2(L2_2)
            else
              L1_2 = A0_2.setting_data
              L1_2 = L1_2.setting_type
              L2_2 = OtherSettingType
              L2_2 = L2_2.GamepadVibrationIntensity
              if L1_2 == L2_2 then
                L2_2 = A0_2
                L1_2 = A0_2._setup_vibration_intensity_slider_value
                L1_2(L2_2)
              end
            end
          end
        end
      end
    end
  end
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = OtherSettingType
  L2_2 = L2_2.GamepadVibrationIntensity
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.slider_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_min_max_value
    L3_2 = L4_1
    L4_2 = L5_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = OtherSettingType
    L2_2 = L2_2.CustomIndent
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.slider_panel
      L2_2 = L1_2
      L1_2 = L1_2.set_min_max_value
      L3_2 = L2_1
      L4_2 = L3_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._setup_slider_value = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_voice_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_safe_area_preview_root
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.Settings
  L4_2 = L4_2.Graphics
  L4_2 = L4_2.CustomHorizontalIndent
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  A0_2._cur_slider_value = L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAdaptUtils
  L4_2 = L4_2.GetMaxCustomHorizontalIndentValue
  L4_2 = L4_2()
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  if L2_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_panel
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_min_max_value
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_slider_value
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.reg_drag_start_callback
  L5_2 = A0_2
  L6_2 = A0_2._on_custom_indent_slider_drag_start
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel
  L4_2 = L3_2
  L3_2 = L3_2.reg_drag_finish_callback
  L5_2 = A0_2
  L6_2 = A0_2._on_custom_indent_slider_drag_end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_custom_indent_slider_value = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.GamepadVibrationIntensity
  A0_2._old_vibration_intensity = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_slider_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_on_img
  L4_2 = L6_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_off_img
  L4_2 = L7_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L1_1.GamepadVibrationIntensity
  L1_2(L2_2, L3_2)
end
L0_1._setup_vibration_intensity_slider_value = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_slider_value
  if A1_2 == L2_2 then
    return
  end
  A0_2._cur_slider_value = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_safearea_preview_root
  L2_2(L3_2)
end
L0_1._on_custom_indent_slider_value_changed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L1_1.GamepadVibrationIntensity = A1_2
  L2_2 = A0_2._old_vibration_intensity
  if L2_2 ~= A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L3_2 = L2_2
    L2_2 = L2_2.PostEvent
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_AudioManager
    L4_2 = L4_2.AudioConfig
    L4_2 = L4_2.Vibration
    L4_2 = L4_2.EventVibrationSetting
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1.GamepadVibrationIntensity
  A0_2._old_vibration_intensity = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_on_img
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_off_img
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 0
  L2_2(L3_2, L4_2)
end
L0_1._on_gamepad_vibration_intensity_slider_value_changed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._safe_area_preview_root
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.query
    L4_2 = "SafeAreaPreviewRoot"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._safe_area_preview_root = L2_2
  end
  L1_2 = A0_2._safe_area_preview_root
  return L1_2
end
L0_1._get_safe_area_preview_root = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_safe_area_preview_root
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_safearea_preview_root
  L1_2(L2_2)
end
L0_1._on_custom_indent_slider_drag_start = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_safe_area_preview_root
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_slider_value
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.Settings
  L2_2 = L2_2.Graphics
  L2_2 = L2_2.CustomHorizontalIndent
  if L1_2 == L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.Settings
  L1_2 = L1_2.Graphics
  L2_2 = A0_2._cur_slider_value
  L1_2.CustomHorizontalIndent = L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICustomIndentChanged
  L1_2(L2_2)
end
L0_1._on_custom_indent_slider_drag_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_root_indent_value
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAdaptUtils
  L2_2 = L2_2.AdjustRectIndent
  L4_2 = A0_2
  L3_2 = A0_2._get_safe_area_preview_root
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._cur_slider_value
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIUtils
  L5_2 = L5_2.UIScaleFactor
  L4_2 = L4_2 / L5_2
  L4_2 = L4_2 - L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_safearea_preview_root = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_root_indent_value
  return L1_2(L2_2)
end
L0_1._get_root_indent_value = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = ipairs
  L3_2 = A0_2._other_setting_data
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
  L2_2 = A0_2._default_key
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = A0_2._default_key
    L3_2 = L3_2 - 1
    L2_2.value = L3_2
  end
end
L0_1._init_drop_down_list = L8_1
return L0_1
