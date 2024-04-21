local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Settings.Other.OtherSettingPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Other.OtherSettingInfoItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OtherSettingPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Setting_OtherSetting"
L2_1 = "SpriteOutput/TabIcon/Inventory/InventoryOtherIcon.png"
L3_1 = 201
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueClientExcelTable
L4_1 = L4_1.GetData
L5_1 = "Settings_EmergencyExit_ActiveGameModeType_Always"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.ArrayValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "Settings_EmergencyExit_ActiveGameModeType_TransferBanned"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.ArrayValue
function L6_1(A0_2)
  local L1_2, L2_2
  A0_2._selected_object = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.SettingsConfig
  A0_2._settings_config = L1_2
  L1_2 = {}
  A0_2.data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_input_mode_setting_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_battle_setting_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_system_setting_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_operate_control_setting_data
  L1_2(L2_2)
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_mobile_platform
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ConstValueClientExcelTable
    L2_2 = L2_2.GetData
    L3_2 = "PhoneJoystickEnable"
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Value
    L2_2 = L2_2.IntValue
    if 0 < L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIUtils
      L2_2 = L2_2.IsMobileGamePadModeBySetting
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.UIUtils
        L2_2 = L2_2.IsAccessGamePad
        if not L2_2 then
          goto lbl_48
        end
      end
      L2_2 = {}
      L1_2 = L2_2
      L2_2 = SettingItemType
      L2_2 = L2_2.Common
      L1_2.show_type = L2_2
      L2_2 = OtherSettingType
      L2_2 = L2_2.SettingPhoneJoystick
      L1_2.setting_type = L2_2
      L1_2.title_text_id = "UIText_Setting_PhoneJoystick_Option_Name"
      L1_2.setting_title_text_id = "UIText_Setting_PhoneJoystick_Option_Name"
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2.data_list
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
  ::lbl_48::
end
L0_1._init_input_mode_setting_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  L1_2.show_type = L2_2
  L2_2 = OtherSettingType
  L2_2 = L2_2.AIUltraSkill
  L1_2.setting_type = L2_2
  L1_2.setting_title_text_id = "UIText_Setting_Subtitle_Battle_Function"
  L1_2.title_text_id = "UIText_Setting_Other_AIUltraSkill"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  L1_2.show_type = L2_2
  L2_2 = OtherSettingType
  L2_2 = L2_2.BattleSpeed
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Other_SaveAutoFightConfig"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  L1_2.show_type = L2_2
  L2_2 = OtherSettingType
  L2_2 = L2_2.ShowBattleActionDelay
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Other_AvatarDelayForBattle"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  L1_2.show_type = L2_2
  L2_2 = OtherSettingType
  L2_2 = L2_2.EyeProtectionMode
  L1_2.setting_type = L2_2
  L2_2 = OtherSettingType2Title
  L3_2 = OtherSettingType
  L3_2 = L3_2.EyeProtectionMode
  L2_2 = L2_2[L3_2]
  L1_2.title_text_id = L2_2
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
  L2_2 = OtherSettingType
  L2_2 = L2_2.BattleLock
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Sensitivity_BattleLock"
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_battle_setting_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BattleGamePhase
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = {}
  L3_2 = L4_2
  L4_2 = SettingItemType
  L4_2 = L4_2.Common
  L3_2.show_type = L4_2
  L4_2 = OtherSettingType
  L4_2 = L4_2.AvatarLookAt
  L3_2.setting_type = L4_2
  L3_2.setting_title_text_id = "UIText_Setting_Subtitle_System_Function"
  L4_2 = OtherSettingType2Title
  L5_2 = OtherSettingType
  L5_2 = L5_2.AvatarLookAt
  L4_2 = L4_2[L5_2]
  L3_2.title_text_id = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2.data_list
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L3_2 = L4_2
  L4_2 = SettingItemType
  L4_2 = L4_2.Common
  L3_2.show_type = L4_2
  L4_2 = OtherSettingType
  L4_2 = L4_2.LightConeAutoLock
  L3_2.setting_type = L4_2
  L3_2.title_text_id = "UIText_Setting_Other_EquipmentAutoLock"
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2.data_list
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_mobile_platform
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_cloud_mobile_platform
    L4_2 = L4_2()
  end
  if L4_2 and not L2_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_mobile_gamepad_mode
    L4_2 = L4_2()
    if not L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAdaptUtils
      L4_2 = L4_2.GetMaxCustomHorizontalIndentValue
      L4_2 = L4_2()
      if 0 < L4_2 then
        L5_2 = {}
        L3_2 = L5_2
        L5_2 = SettingItemType
        L5_2 = L5_2.Slider
        L3_2.show_type = L5_2
        L5_2 = OtherSettingType
        L5_2 = L5_2.CustomIndent
        L3_2.setting_type = L5_2
        L5_2 = OtherSettingType2Title
        L6_2 = OtherSettingType
        L6_2 = L6_2.CustomIndent
        L5_2 = L5_2[L6_2]
        L3_2.title_text_id = L5_2
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = A0_2.data_list
        L7_2 = L3_2
        L5_2(L6_2, L7_2)
      end
    end
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_layout
  L4_2 = L4_2()
  if L4_2 and not L2_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_ps_platform
    L4_2 = L4_2()
    if L4_2 == false then
      L4_2 = {}
      L3_2 = L4_2
      L4_2 = SettingItemType
      L4_2 = L4_2.Common
      L3_2.show_type = L4_2
      L4_2 = OtherSettingType
      L4_2 = L4_2.BottomShortCutHint
      L3_2.setting_type = L4_2
      L4_2 = OtherSettingType2Title
      L5_2 = OtherSettingType
      L5_2 = L5_2.BottomShortCutHint
      L4_2 = L4_2[L5_2]
      L3_2.title_text_id = L4_2
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2.data_list
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_cloud_platform
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.Utils
      L4_2 = L4_2.is_cloud_use_gamepad
      L4_2 = L4_2()
      if not L4_2 then
        goto lbl_159
      end
    end
    L4_2 = {}
    L3_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L3_2.show_type = L4_2
    L4_2 = OtherSettingType
    L4_2 = L4_2.BottomShortCutHintForController
    L3_2.setting_type = L4_2
    L4_2 = OtherSettingType2Title
    L5_2 = OtherSettingType
    L5_2 = L5_2.BottomShortCutHintForController
    L4_2 = L4_2[L5_2]
    L3_2.title_text_id = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  ::lbl_159::
  L4_2 = false
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AdventureStatic
  L6_2 = L5_2
  L5_2 = L5_2.GetCurrentGameModeType
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._check_contain_game_mode
  L8_2 = L4_1
  L9_2 = #L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L4_2 = true
  else
    L7_2 = A0_2
    L6_2 = A0_2._check_contain_game_mode
    L8_2 = L5_1
    L9_2 = #L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.SystemOpenModule
      L6_2 = L6_2.IsOpen
      L7_2 = L3_1
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.GlobalVars
        L6_2 = L6_2.s_ModuleManager
        L6_2 = L6_2.BigMapModule
        L6_2 = L6_2.IsLockMapSwitch
        if not L6_2 then
          goto lbl_199
        end
      end
      L4_2 = true
    end
  end
  ::lbl_199::
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AdventureStatic
  L7_2 = L6_2
  L6_2 = L6_2.IsPlayingFakeAvatar
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L4_2 = false
  end
  if L4_2 then
    L6_2 = {}
    L3_2 = L6_2
    L6_2 = SettingItemType
    L6_2 = L6_2.Link
    L3_2.show_type = L6_2
    L6_2 = OtherSettingType
    L6_2 = L6_2.EmergencyExit
    L3_2.setting_type = L6_2
    L3_2.title_text_id = "UIText_Setting_Other_EmergencyExit "
    L3_2.link_text_id = "UIText_Setting_Other_EmergencyExitTransfer_Btn "
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.data_list
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_system_setting_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = false
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Common
    L1_2.show_type = L3_2
    L3_2 = OtherSettingType
    L3_2 = L3_2.FastRunSwitch
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_Other_FastRunSwitch"
    if L2_2 == false then
      L1_2.setting_title_text_id = "UIText_Setting_Subtitle_Control"
      L2_2 = true
    end
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = {}
  L1_2 = L3_2
  L3_2 = SettingItemType
  L3_2 = L3_2.Common
  L1_2.show_type = L3_2
  L3_2 = OtherSettingType
  L3_2 = L3_2.WalkSwitch
  L1_2.setting_type = L3_2
  L1_2.title_text_id = "UIText_Setting_Other_WalkSwitch"
  if L2_2 == false then
    L1_2.setting_title_text_id = "UIText_Setting_Subtitle_Control"
    L2_2 = true
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L1_2 = L3_2
  L3_2 = SettingItemType
  L3_2 = L3_2.Common
  L1_2.show_type = L3_2
  L3_2 = OtherSettingType
  L3_2 = L3_2.CameraYAxisInversion
  L1_2.setting_type = L3_2
  L3_2 = OtherSettingType2Title
  L4_2 = OtherSettingType
  L4_2 = L4_2.CameraYAxisInversion
  L3_2 = L3_2[L4_2]
  L1_2.title_text_id = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L1_2 = L3_2
  L3_2 = SettingItemType
  L3_2 = L3_2.Common
  L1_2.show_type = L3_2
  L3_2 = OtherSettingType
  L3_2 = L3_2.CameraXAxisInversion
  L1_2.setting_type = L3_2
  L3_2 = OtherSettingType2Title
  L4_2 = OtherSettingType
  L4_2 = L4_2.CameraXAxisInversion
  L3_2 = L3_2[L4_2]
  L1_2.title_text_id = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_ps_platform
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Slider
    L1_2.show_type = L3_2
    L3_2 = OtherSettingType
    L3_2 = L3_2.MouseFov
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_Sensitivity"
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Slider
    L1_2.show_type = L3_2
    L3_2 = OtherSettingType
    L3_2 = L3_2.MouseRotation
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_Rotation_Sensitivity"
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_pc_or_ps_or_mobile_gamepad_mode
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_cloud_platform
    L3_2 = L3_2()
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.is_cloud_use_gamepad
      L3_2 = L3_2()
      if not L3_2 then
        goto lbl_175
      end
    end
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Slider
    L1_2.show_type = L3_2
    L3_2 = OtherSettingType
    L3_2 = L3_2.GamepadFov
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_Gamepad_Sensitivity"
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Slider
    L1_2.show_type = L3_2
    L3_2 = OtherSettingType
    L3_2 = L3_2.GamepadRotation
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_Gamepad_Rotation_Sensitivity"
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Slider
    L1_2.show_type = L3_2
    L3_2 = OtherSettingType
    L3_2 = L3_2.GamepadVibrationIntensity
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_ControllerWave"
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  ::lbl_175::
end
L0_1._init_operate_control_setting_data = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.UintValue
    if L7_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_contain_game_mode = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.data_list
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.data_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.setting_type
    L7_2 = A1_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2.data_list
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.remove_items = L6_1
function L6_1(A0_2)
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
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2, A2_2)
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
    L8_2 = L8_2.OtherSettingInfoItem
    L9_2 = G
    L9_2 = L9_2.OtherSettingInfoItemBinder
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
L0_1._on_loop_list_view_change = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_normal_img
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_selected_img
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
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
L0_1._on_select = L6_1
function L6_1(A0_2)
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
L0_1._on_unselect = L6_1
function L6_1(A0_2)
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
  L1_2 = L1_2.s_ClientOnlyCommonConfig
  L2_2 = L1_2
  L1_2 = L1_2.SavePlayerPrefsConfig
  L1_2(L2_2)
end
L0_1._on_dispose = L6_1
return L0_1
