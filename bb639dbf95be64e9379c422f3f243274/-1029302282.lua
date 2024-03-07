local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Settings.HDRSettingsPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HDRSettingsPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 32
L2_1 = 32
L3_1 = 0.3
L4_1 = 0.02
L5_1 = 300
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HDRSettingsPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = GraphicsSettingType
  L1_2 = L1_2.HDRCheck
  A0_2._cur_setting_type = L1_2
  A0_2._is_initial_setting = false
  A0_2._exit_call_back_func = nil
  A0_2._exit_call_back_object = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L1_2 = L1_2.PSLowerMaxLuminance
  A0_2._lower_max_luminance = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L1_2 = L1_2.PSHighestMaxLuminance
  A0_2._highest_max_luminance = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L1_2 = L1_2.PSLowestPaperWhite
  A0_2._lowest_paper_white = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L1_2 = L1_2.PSHighestPaperWhite
  A0_2._highest_paper_white = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.HDROutputSettings
  L1_2 = L1_2.maxLuminance
  A0_2._last_max_luminance = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.HDROutputSettings
  L1_2 = L1_2.paperWhite
  A0_2._last_paper_white = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = GraphicsSettingType
  L4_2 = L4_2.HDRCheck
  A0_2._cur_setting_type = L4_2
  A0_2._is_initial_setting = A1_2
  A0_2._exit_call_back_func = A2_2
  A0_2._exit_call_back_object = A3_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._change_setting_type
  L3_2 = A0_2._cur_setting_type
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_setting_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_initial_setting
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cur_setting_type = A1_2
  L2_2 = A0_2._cur_setting_type
  L3_2 = GraphicsSettingType
  L3_2 = L3_2.HDRCheck
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_hdr_check
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_brightness_adjust
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Setting_HDRCheck"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_hdr_check
    L2_2.minValue = 1
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_hdr_check
    L3_2 = L1_1
    L2_2.maxValue = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_hdr_check
    L4_2 = A0_2
    L3_2 = A0_2._get_setting_level
    L5_2 = A0_2._lower_max_luminance
    L6_2 = A0_2._highest_max_luminance
    L7_2 = A0_2._last_max_luminance
    L8_2 = L1_1
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2.value = L3_2
  else
    L2_2 = A0_2._cur_setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.BrightnessAdjust
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_SettingManager
      L2_2 = L2_2.PSLowestPaperWhite
      A0_2._lowest_paper_white = L2_2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_SettingManager
      L2_2 = L2_2.PSHighestPaperWhite
      A0_2._highest_paper_white = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_hdr_check
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_brightness_adjust
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_Setting_Brightness"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.slider_brightness_adjust
      L2_2.minValue = 1
      L2_2 = A0_2._binder
      L2_2 = L2_2.slider_brightness_adjust
      L3_2 = L2_1
      L2_2.maxValue = L3_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.slider_brightness_adjust
      L4_2 = A0_2
      L3_2 = A0_2._get_setting_level
      L5_2 = A0_2._lowest_paper_white
      L6_2 = A0_2._highest_paper_white
      L7_2 = A0_2._last_paper_white
      L8_2 = L2_1
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2.value = L3_2
      L2_2 = A0_2._is_initial_setting
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = 154
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = 155
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._change_setting_type = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_initial_setting
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_short_cut_hint_panel
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_hdr_check
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_slider_hdr_check_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hdr_check_minus
  L4_2 = A0_2._on_btn_hdr_check_minus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hdr_check_minus
  L4_2 = A0_2._on_btn_hdr_check_minus_click
  L5_2 = nil
  L6_2 = L3_1
  L7_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hdr_check_add
  L4_2 = A0_2._on_btn_hdr_check_add_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hdr_check_add
  L4_2 = A0_2._on_btn_hdr_check_add_click
  L5_2 = nil
  L6_2 = L3_1
  L7_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_brightness_adjust
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_slider_brightness_adjust_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_brightness_adjust_minus
  L4_2 = A0_2._on_btn_brightness_adjust_minus_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_brightness_adjust_minus
  L4_2 = A0_2._on_btn_brightness_adjust_minus_click
  L5_2 = nil
  L6_2 = L3_1
  L7_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_brightness_adjust_add
  L4_2 = A0_2._on_btn_brightness_adjust_add_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_brightness_adjust_add
  L4_2 = A0_2._on_btn_brightness_adjust_add_click
  L5_2 = nil
  L6_2 = L3_1
  L7_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.HDROutputSettings
  L4_2 = A0_2
  L3_2 = A0_2._log_lerp
  L5_2 = A0_2._lower_max_luminance
  L6_2 = A0_2._highest_max_luminance
  L7_2 = L1_1
  L7_2 = A1_2 / L7_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.maxLuminance = L3_2
end
L0_1._on_slider_hdr_check_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider_delta_value
  L3_2 = -1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_hdr_check_minus_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider_delta_value
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_hdr_check_add_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.HDROutputSettings
  L4_2 = A0_2
  L3_2 = A0_2._log_lerp
  L5_2 = A0_2._lowest_paper_white
  L6_2 = A0_2._highest_paper_white
  L7_2 = L2_1
  L7_2 = A1_2 / L7_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.paperWhite = L3_2
end
L0_1._on_slider_brightness_adjust_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider_delta_value
  L3_2 = -1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_brightness_adjust_minus_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slider_delta_value
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_brightness_adjust_add_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_setting_type
  L3_2 = GraphicsSettingType
  L3_2 = L3_2.HDRCheck
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_hdr_check
    L3_2 = A0_2._binder
    L3_2 = L3_2.slider_hdr_check
    L3_2 = L3_2.value
    L3_2 = L3_2 + A1_2
    L2_2.value = L3_2
  else
    L2_2 = A0_2._cur_setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.BrightnessAdjust
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.slider_brightness_adjust
      L3_2 = A0_2._binder
      L3_2 = L3_2.slider_brightness_adjust
      L3_2 = L3_2.value
      L3_2 = L3_2 + A1_2
      L2_2.value = L3_2
    end
  end
end
L0_1._setup_slider_delta_value = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._cur_setting_type
  L2_2 = GraphicsSettingType
  L2_2 = L2_2.HDRCheck
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L1_2.maxLuminance = -1
    L2_2 = A0_2
    L1_2 = A0_2._get_setting_level
    L3_2 = A0_2._lower_max_luminance
    L4_2 = A0_2._highest_max_luminance
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_SettingManager
    L5_2 = L5_2.PSDefaultMaxLuminance
    L6_2 = L1_1
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.slider_hdr_check
    L2_2.value = L1_2
  else
    L1_2 = A0_2._cur_setting_type
    L2_2 = GraphicsSettingType
    L2_2 = L2_2.BrightnessAdjust
    if L1_2 == L2_2 then
      L1_2 = math
      L1_2 = L1_2.min
      L2_2 = L5_1
      L3_2 = A0_2._highest_paper_white
      L1_2 = L1_2(L2_2, L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._get_setting_level
      L4_2 = A0_2._lowest_paper_white
      L5_2 = A0_2._highest_paper_white
      L6_2 = L1_2
      L7_2 = L2_1
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.slider_brightness_adjust
      L3_2.value = L2_2
    end
  end
end
L0_1._on_btn_reset_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_setting_type
  L2_2 = GraphicsSettingType
  L2_2 = L2_2.HDRCheck
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.Settings
    L1_2 = L1_2.Graphics
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.HDROutputSettings
    L2_2 = L2_2.maxLuminance
    L1_2.MaxLuminance = L2_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L1_2 = L1_2.maxLuminance
    A0_2._last_max_luminance = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._change_setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.BrightnessAdjust
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L2_2 = math
    L2_2 = L2_2.min
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.HDROutputSettings
    L3_2 = L3_2.paperWhite
    L4_2 = A0_2._highest_paper_white
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.paperWhite = L2_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.Settings
    L1_2 = L1_2.Graphics
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.HDROutputSettings
    L2_2 = L2_2.paperWhite
    L1_2.PaperWhite = L2_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L1_2 = L1_2.paperWhite
    A0_2._last_paper_white = L1_2
  else
    L1_2 = A0_2._cur_setting_type
    L2_2 = GraphicsSettingType
    L2_2 = L2_2.BrightnessAdjust
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.Prefs
      L1_2 = L1_2.Settings
      L1_2 = L1_2.Graphics
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.HDROutputSettings
      L2_2 = L2_2.paperWhite
      L1_2.PaperWhite = L2_2
      L1_2 = A0_2._is_initial_setting
      if L1_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.Prefs
        L1_2 = L1_2.Settings
        L1_2 = L1_2.Graphics
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.HDROutputSettings
        L2_2 = L2_2.systemCalibratedMaxLuminance
        L1_2.SystemCalibratedMaxLuminance = L2_2
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.Prefs
        L1_2 = L1_2.Settings
        L1_2 = L1_2.Graphics
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.HDROutputSettings
        L2_2 = L2_2.systemCalibratedFullFrameMaxLuminance
        L1_2.SystemCalibratedFullFrameMaxLuminance = L2_2
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.Prefs
        L1_2 = L1_2.Settings
        L1_2 = L1_2.Graphics
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.HDROutputSettings
        L2_2 = L2_2.systemCalibratedMinLuminance
        L1_2.SystemCalibratedMinLuminance = L2_2
      end
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_confirm_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "Menu_UnchangeX" then
    L2_2 = A0_2._cur_setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.BrightnessAdjust
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._change_setting_type
      L4_2 = GraphicsSettingType
      L4_2 = L4_2.HDRCheck
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._is_initial_setting
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = {}
        L2_2(L3_2, L4_2)
      else
        L3_2 = A0_2
        L2_2 = A0_2.setup_short_cut_hint_panel
        L4_2 = 2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_initial_setting
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L2_2 = A0_2._last_max_luminance
    L1_2.maxLuminance = L2_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.Settings
    L1_2 = L1_2.Graphics
    L2_2 = A0_2._last_max_luminance
    L1_2.MaxLuminance = L2_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.HDROutputSettings
    L2_2 = math
    L2_2 = L2_2.min
    L3_2 = A0_2._last_paper_white
    L4_2 = A0_2._highest_paper_white
    L2_2 = L2_2(L3_2, L4_2)
    L1_2.paperWhite = L2_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.Settings
    L1_2 = L1_2.Graphics
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.HDROutputSettings
    L2_2 = L2_2.paperWhite
    L1_2.PaperWhite = L2_2
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = math
  L4_2 = L4_2.exp
  L5_2 = math
  L5_2 = L5_2.log
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 * A3_2
  L6_2 = math
  L6_2 = L6_2.log
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = 1 - A3_2
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2 + L6_2
  return L4_2(L5_2)
end
L0_1._log_lerp = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = math
  L5_2 = L5_2.log
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.log
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 - L6_2
  L6_2 = math
  L6_2 = L6_2.log
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.log
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 - L7_2
  L5_2 = L5_2 / L6_2
  L6_2 = L5_2 * A4_2
  return L6_2
end
L0_1._get_setting_level = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._exit_call_back_func
  if L1_2 then
    L1_2 = A0_2._exit_call_back_func
    L2_2 = A0_2._exit_call_back_object
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L6_1
return L0_1
