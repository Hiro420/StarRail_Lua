local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.SettingsPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.CommonSettingItemDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.SettingTitleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Graphics.GraphicsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Audio.AudioPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Account.AccountPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeysPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Wheel.WheelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Other.OtherSettingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.PushMessage.PushMessageSettingPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SettingsPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SettingsPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._setting_type_to_uid = L1_2
  A0_2._setting_type = nil
  A0_2._default_tab_index = 1
  A0_2._wheel_panel = nil
  A0_2._wheel_unlock_id = 101206
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.SettingModule
  L3_2 = L2_2
  L2_2 = L2_2.init
  L2_2(L3_2)
  A0_2._setting_type = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      L1_2 = L1_2(L2_2)
    end
  end
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._setting_type
  if L1_2 then
    L1_2 = A0_2._setting_type_to_uid
    L2_2 = A0_2._setting_type
    L1_2 = L1_2[L2_2]
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._default_tab_index
  ::lbl_12::
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.update
  L4_2 = "SafeAreaPreviewRoot"
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_safearea_preview_root
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel_without_binder
  L4_2 = G
  L4_2 = L4_2.TabControl
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._tab_control = L2_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_btns_root
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_settings_tabs
  L2_2(L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._wheel_panel
  if L1_2 then
    L1_2 = A0_2._wheel_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_current_tab_item
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._wheel_panel
      L2_2 = L1_2
      L1_2 = L1_2.check_is_need_save
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.ConfirmDialogUtil
        L1_2 = L1_2.ShowConfirmDialog
        function L2_2(A0_3)
          local L1_3, L2_3
          if A0_3 then
            L1_3 = A0_2._wheel_panel
            L2_3 = L1_3
            L1_3 = L1_3.save_setting
            L1_3(L2_3)
            L1_3 = A0_2
            L2_3 = L1_3
            L1_3 = L1_3.exit
            L1_3(L2_3)
          else
            L1_3 = A0_2
            L2_3 = L1_3
            L1_3 = L1_3.exit
            L1_3(L2_3)
          end
        end
        L1_2 = L1_2(L2_2)
        L2_2 = DialogBtnMode
        L2_2 = L2_2.eOkCancel
        L1_2.Mode = L2_2
        L1_2.TextIDCancel = "UIText_BoxingClub_Challenge_ReStart"
        L3_2 = L1_2
        L2_2 = L1_2.GetComponentContent
        L2_2 = L2_2(L3_2)
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_Setting_Wheel_Tip_4"
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2
        L1_2 = A0_2.exit
        L1_2(L2_2)
      end
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit_btn_click
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 1
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AppUtils
  L2_2 = L2_2.IsCloudPlatform
  if L2_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2._init_graphics_tab_item
    L2_2(L3_2)
    L2_2 = A0_2._setting_type_to_uid
    L3_2 = SettingType
    L3_2 = L3_2.GraphicsSetting
    L2_2[L3_2] = L1_2
    L1_2 = L1_2 + 1
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_audio_tab_item
  L2_2(L3_2)
  L2_2 = A0_2._setting_type_to_uid
  L3_2 = SettingType
  L3_2 = L3_2.AudioSetting
  L2_2[L3_2] = L1_2
  L1_2 = L1_2 + 1
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_mobile_platform
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_push_message_setting_tab_item
    L2_2(L3_2)
    L2_2 = A0_2._setting_type_to_uid
    L3_2 = SettingType
    L3_2 = L3_2.PushSetting
    L2_2[L3_2] = L1_2
    L1_2 = L1_2 + 1
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_language_tab_item
  L2_2(L3_2)
  L2_2 = A0_2._setting_type_to_uid
  L3_2 = SettingType
  L3_2 = L3_2.LanguageSetting
  L2_2[L3_2] = L1_2
  L1_2 = L1_2 + 1
  L3_2 = A0_2
  L2_2 = A0_2._init_account_tab_item
  L2_2(L3_2)
  L2_2 = A0_2._setting_type_to_uid
  L3_2 = SettingType
  L3_2 = L3_2.AccountSetting
  L2_2[L3_2] = L1_2
  L1_2 = L1_2 + 1
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_pc_or_ps_or_mobile_gamepad_mode
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_cloud_web_mac
    L2_2 = L2_2()
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._init_hotkeys_tab_item
      L2_2(L3_2)
    end
    L2_2 = A0_2._setting_type_to_uid
    L3_2 = SettingType
    L3_2 = L3_2.HotkeysSetting
    L2_2[L3_2] = L1_2
    L1_2 = L1_2 + 1
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SystemOpenModule
    L2_2 = L2_2.IsOpen
    L3_2 = A0_2._wheel_unlock_id
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._init_wheel_setting_tab_item
      L2_2(L3_2)
      L2_2 = A0_2._setting_type_to_uid
      L3_2 = SettingType
      L3_2 = L3_2.WheelSetting
      L2_2[L3_2] = L1_2
      L1_2 = L1_2 + 1
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_other_setting_tab_item
  L2_2(L3_2)
  L2_2 = A0_2._setting_type_to_uid
  L3_2 = SettingType
  L3_2 = L3_2.OtherSetting
  L2_2[L3_2] = L1_2
end
L0_1._init_settings_tabs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GraphicsPanel
  L4_2 = G
  L4_2 = L4_2.GraphicsPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_graphics_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AudioPanel
  L4_2 = G
  L4_2 = L4_2.AudioPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_audio_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LanguagePanel
  L4_2 = G
  L4_2 = L4_2.LanguagePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_language_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AccountPanel
  L4_2 = G
  L4_2 = L4_2.AccountPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_account_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HotkeysPanel
  L4_2 = G
  L4_2 = L4_2.HotkeysPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_hotkeys_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.OtherSettingPanel
  L4_2 = G
  L4_2 = L4_2.OtherSettingPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_other_setting_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PushMessageSettingPanel
  L4_2 = G
  L4_2 = L4_2.PushMessageSettingPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._init_push_message_setting_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WheelPanel
  L4_2 = G
  L4_2 = L4_2.WheelPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  A0_2._wheel_panel = L1_2
end
L0_1._init_wheel_setting_tab_item = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
end
L0_1._on_dispose = L1_1
return L0_1
