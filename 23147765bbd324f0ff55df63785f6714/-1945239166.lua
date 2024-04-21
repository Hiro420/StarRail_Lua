local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.Graphics.GraphicsSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GraphicsSettingInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Setting_GoTo"
function L2_1(A0_2, A1_2, A2_2)
  A0_2._refresh_callback_obj = A1_2
  A0_2._refresh_callback_func = A2_2
end
L0_1.reg_refresh_call_back = L2_1
function L2_1(A0_2)
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
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._graphics_data
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.set_content_text_and_refresh
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_content_text
  L1_2(L2_2)
  L1_2 = A0_2._default_key
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_drop_down_pc
    L2_2 = A0_2._default_key
    L2_2 = L2_2 - 1
    L1_2.value = L2_2
  end
end
L0_1.refresh_content_text = L2_1
function L2_1(A0_2, A1_2)
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
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
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
L0_1.setup_title_view = L2_1
function L2_1(A0_2, A1_2)
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
  L2_2 = L2_2.slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
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
  A0_2._default_key = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.title_text_id
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.SettingModule
  L3_2 = L2_2
  L2_2 = L2_2.get_graphics_data_by_type
  L4_2 = A0_2.setting_data
  L4_2 = L4_2.setting_type
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._graphics_data = L2_2
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
      L2_2 = L2_2.text_link
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_1
      L2_2(L3_2, L4_2)
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
        L2_2 = L2_2.slider_panel
        L3_2 = L2_2
        L2_2 = L2_2.safe_set_active
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
L0_1.setup_content_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = GraphicsSettingType
  L2_2 = L2_2.HDRCheck
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = GraphicsSettingType
    L2_2 = L2_2.BrightnessAdjust
    if L1_2 ~= L2_2 then
      goto lbl_20
    end
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Settings.HDRSettingsPage"
  L3_2 = false
  L1_2(L2_2, L3_2)
  goto lbl_65
  ::lbl_20::
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
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = GraphicsSettingType
    L2_2 = L2_2.SwitchGraphicsAPI
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Settings.CommonSettingItemDialog"
      L3_2 = A0_2
      L4_2 = A0_2.set_content_text_and_refresh
      L5_2 = A0_2._graphics_data
      L6_2 = A0_2._default_key
      L7_2 = GraphicsSettingType2Title
      L8_2 = A0_2.setting_data
      L8_2 = L8_2.setting_type
      L7_2 = L7_2[L8_2]
      L8_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Settings.CommonSettingItemDialog"
      L3_2 = A0_2
      L4_2 = A0_2.set_content_text_and_refresh
      L5_2 = A0_2._graphics_data
      L6_2 = A0_2._default_key
      L7_2 = GraphicsSettingType2Title
      L8_2 = A0_2.setting_data
      L8_2 = L8_2.setting_type
      L7_2 = L7_2[L8_2]
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
  ::lbl_65::
end
L0_1._on_btn_root_click = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._setup_slider_value = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_content_text
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._refresh_callback_func
  L3_2 = A0_2._refresh_callback_obj
  L2_2(L3_2)
end
L0_1.set_content_text_and_refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = GraphicsSettingType
  L3_2 = L3_2.GraphicsQuality
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_can_setting
    L4_2 = A1_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.RPGQualitySettings
    L5_2 = L5_2.GraphicsQuality
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.RPGQualitySettings
      L3_2 = A1_2.setting
      L2_2.GraphicsQuality = L3_2
    end
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.ResolutionQuality
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._is_can_setting
      L4_2 = A1_2
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.RPGQualitySettings
      L5_2 = L5_2.ResolutionQuality
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.RPGQualitySettings
        L2_2 = L2_2.ResolutionQuality
        L3_2 = A1_2.setting
        if L2_2 ~= L3_2 then
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.RPGQualitySettings
          L3_2 = A1_2.setting
          L2_2.ResolutionQuality = L3_2
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.RPGQualitySettings
          L2_2 = L2_2.Save
          L2_2()
        end
      end
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = GraphicsSettingType
      L3_2 = L3_2.PCResolution
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._is_can_setting
        L4_2 = A1_2
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.RPGQualitySettings
        L5_2 = L5_2.PCResolution
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._is_pc_resolution_equal
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.Client
          L4_2 = L4_2.RPGQualitySettings
          L4_2 = L4_2.PCResolution
          L5_2 = A1_2.setting
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          if not L2_2 then
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.RPGQualitySettings
            L3_2 = A1_2.setting
            L2_2.PCResolution = L3_2
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.RPGQualitySettings
            L2_2 = L2_2.Save
            L2_2()
          end
        end
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = GraphicsSettingType
        L3_2 = L3_2.FPS
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._is_can_setting
          L4_2 = A1_2
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.RPGQualitySettings
          L5_2 = L5_2.FPS
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          if L2_2 then
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.RPGQualitySettings
            L3_2 = A1_2.setting
            L2_2.FPS = L3_2
          end
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = GraphicsSettingType
          L3_2 = L3_2.EnableVSync
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._is_can_setting
            L4_2 = A1_2
            L5_2 = CS
            L5_2 = L5_2.RPG
            L5_2 = L5_2.Client
            L5_2 = L5_2.RPGQualitySettings
            L5_2 = L5_2.EnableVSync
            L2_2 = L2_2(L3_2, L4_2, L5_2)
            if L2_2 then
              L2_2 = CS
              L2_2 = L2_2.RPG
              L2_2 = L2_2.Client
              L2_2 = L2_2.RPGQualitySettings
              L3_2 = A1_2.setting
              L2_2.EnableVSync = L3_2
            end
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = GraphicsSettingType
            L3_2 = L3_2.RenderingPrecision
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._is_can_setting
              L4_2 = A1_2
              L5_2 = CS
              L5_2 = L5_2.RPG
              L5_2 = L5_2.Client
              L5_2 = L5_2.RPGQualitySettings
              L5_2 = L5_2.RenderScale
              L2_2 = L2_2(L3_2, L4_2, L5_2)
              if L2_2 then
                L2_2 = CS
                L2_2 = L2_2.RPG
                L2_2 = L2_2.Client
                L2_2 = L2_2.RPGQualitySettings
                L3_2 = A1_2.setting
                L2_2.RenderScale = L3_2
              end
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = GraphicsSettingType
              L3_2 = L3_2.ShadowQuality
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._is_can_setting
                L4_2 = A1_2
                L5_2 = CS
                L5_2 = L5_2.RPG
                L5_2 = L5_2.Client
                L5_2 = L5_2.RPGQualitySettings
                L5_2 = L5_2.ShadowQuality
                L2_2 = L2_2(L3_2, L4_2, L5_2)
                if L2_2 then
                  L2_2 = CS
                  L2_2 = L2_2.RPG
                  L2_2 = L2_2.Client
                  L2_2 = L2_2.RPGQualitySettings
                  L3_2 = A1_2.setting
                  L2_2.ShadowQuality = L3_2
                end
              else
                L2_2 = A0_2.setting_data
                L2_2 = L2_2.setting_type
                L3_2 = GraphicsSettingType
                L3_2 = L3_2.ReflectionQuality
                if L2_2 == L3_2 then
                  L3_2 = A0_2
                  L2_2 = A0_2._is_can_setting
                  L4_2 = A1_2
                  L5_2 = CS
                  L5_2 = L5_2.RPG
                  L5_2 = L5_2.Client
                  L5_2 = L5_2.RPGQualitySettings
                  L5_2 = L5_2.ReflectionQuality
                  L2_2 = L2_2(L3_2, L4_2, L5_2)
                  if L2_2 then
                    L2_2 = CS
                    L2_2 = L2_2.RPG
                    L2_2 = L2_2.Client
                    L2_2 = L2_2.RPGQualitySettings
                    L3_2 = A1_2.setting
                    L2_2.ReflectionQuality = L3_2
                  end
                else
                  L2_2 = A0_2.setting_data
                  L2_2 = L2_2.setting_type
                  L3_2 = GraphicsSettingType
                  L3_2 = L3_2.CharacterQuality
                  if L2_2 == L3_2 then
                    L3_2 = A0_2
                    L2_2 = A0_2._is_can_setting
                    L4_2 = A1_2
                    L5_2 = CS
                    L5_2 = L5_2.RPG
                    L5_2 = L5_2.Client
                    L5_2 = L5_2.RPGQualitySettings
                    L5_2 = L5_2.CharacterQuality
                    L2_2 = L2_2(L3_2, L4_2, L5_2)
                    if L2_2 then
                      L2_2 = CS
                      L2_2 = L2_2.RPG
                      L2_2 = L2_2.Client
                      L2_2 = L2_2.RPGQualitySettings
                      L3_2 = A1_2.setting
                      L2_2.CharacterQuality = L3_2
                    end
                  else
                    L2_2 = A0_2.setting_data
                    L2_2 = L2_2.setting_type
                    L3_2 = GraphicsSettingType
                    L3_2 = L3_2.EnvDetailQuality
                    if L2_2 == L3_2 then
                      L3_2 = A0_2
                      L2_2 = A0_2._is_can_setting
                      L4_2 = A1_2
                      L5_2 = CS
                      L5_2 = L5_2.RPG
                      L5_2 = L5_2.Client
                      L5_2 = L5_2.RPGQualitySettings
                      L5_2 = L5_2.EnvDetailQuality
                      L2_2 = L2_2(L3_2, L4_2, L5_2)
                      if L2_2 then
                        L2_2 = CS
                        L2_2 = L2_2.RPG
                        L2_2 = L2_2.Client
                        L2_2 = L2_2.RPGQualitySettings
                        L3_2 = A1_2.setting
                        L2_2.EnvDetailQuality = L3_2
                      end
                    else
                      L2_2 = A0_2.setting_data
                      L2_2 = L2_2.setting_type
                      L3_2 = GraphicsSettingType
                      L3_2 = L3_2.SFXQuality
                      if L2_2 == L3_2 then
                        L3_2 = A0_2
                        L2_2 = A0_2._is_can_setting
                        L4_2 = A1_2
                        L5_2 = CS
                        L5_2 = L5_2.RPG
                        L5_2 = L5_2.Client
                        L5_2 = L5_2.RPGQualitySettings
                        L5_2 = L5_2.SFXQuality
                        L2_2 = L2_2(L3_2, L4_2, L5_2)
                        if L2_2 then
                          L2_2 = CS
                          L2_2 = L2_2.RPG
                          L2_2 = L2_2.Client
                          L2_2 = L2_2.RPGQualitySettings
                          L3_2 = A1_2.setting
                          L2_2.SFXQuality = L3_2
                        end
                      else
                        L2_2 = A0_2.setting_data
                        L2_2 = L2_2.setting_type
                        L3_2 = GraphicsSettingType
                        L3_2 = L3_2.BloomQuality
                        if L2_2 == L3_2 then
                          L3_2 = A0_2
                          L2_2 = A0_2._is_can_setting
                          L4_2 = A1_2
                          L5_2 = CS
                          L5_2 = L5_2.RPG
                          L5_2 = L5_2.Client
                          L5_2 = L5_2.RPGQualitySettings
                          L5_2 = L5_2.BloomQuality
                          L2_2 = L2_2(L3_2, L4_2, L5_2)
                          if L2_2 then
                            L2_2 = CS
                            L2_2 = L2_2.RPG
                            L2_2 = L2_2.Client
                            L2_2 = L2_2.RPGQualitySettings
                            L3_2 = A1_2.setting
                            L2_2.BloomQuality = L3_2
                          end
                        else
                          L2_2 = A0_2.setting_data
                          L2_2 = L2_2.setting_type
                          L3_2 = GraphicsSettingType
                          L3_2 = L3_2.AAMode
                          if L2_2 == L3_2 then
                            L3_2 = A0_2
                            L2_2 = A0_2._is_can_setting
                            L4_2 = A1_2
                            L5_2 = CS
                            L5_2 = L5_2.RPG
                            L5_2 = L5_2.Client
                            L5_2 = L5_2.RPGQualitySettings
                            L5_2 = L5_2.AAMode
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            if L2_2 then
                              L2_2 = CS
                              L2_2 = L2_2.RPG
                              L2_2 = L2_2.Client
                              L2_2 = L2_2.RPGQualitySettings
                              L3_2 = A1_2.setting
                              L2_2.AAMode = L3_2
                            end
                          else
                            L2_2 = A0_2.setting_data
                            L2_2 = L2_2.setting_type
                            L3_2 = GraphicsSettingType
                            L3_2 = L3_2.LightQuality
                            if L2_2 == L3_2 then
                              L3_2 = A0_2
                              L2_2 = A0_2._is_can_setting
                              L4_2 = A1_2
                              L5_2 = CS
                              L5_2 = L5_2.RPG
                              L5_2 = L5_2.Client
                              L5_2 = L5_2.RPGQualitySettings
                              L5_2 = L5_2.LightQuality
                              L2_2 = L2_2(L3_2, L4_2, L5_2)
                              if L2_2 then
                                L2_2 = CS
                                L2_2 = L2_2.RPG
                                L2_2 = L2_2.Client
                                L2_2 = L2_2.RPGQualitySettings
                                L3_2 = A1_2.setting
                                L2_2.LightQuality = L3_2
                              end
                            else
                              L2_2 = A0_2.setting_data
                              L2_2 = L2_2.setting_type
                              L3_2 = GraphicsSettingType
                              L3_2 = L3_2.MetalFX
                              if L2_2 == L3_2 then
                                L3_2 = A0_2
                                L2_2 = A0_2._is_can_setting
                                L4_2 = A1_2
                                L5_2 = CS
                                L5_2 = L5_2.RPG
                                L5_2 = L5_2.Client
                                L5_2 = L5_2.RPGQualitySettings
                                L5_2 = L5_2.EnableMetalFXSU
                                L2_2 = L2_2(L3_2, L4_2, L5_2)
                                if L2_2 then
                                  L2_2 = CS
                                  L2_2 = L2_2.RPG
                                  L2_2 = L2_2.Client
                                  L2_2 = L2_2.RPGQualitySettings
                                  L2_2 = L2_2.EnableMetalFXSU
                                  if L2_2 == false then
                                    L2_2 = A1_2.setting
                                    if L2_2 then
                                      L2_2 = G
                                      L2_2 = L2_2.NotifyManager
                                      L2_2 = L2_2.notify
                                      L3_2 = G
                                      L3_2 = L3_2.CS
                                      L3_2 = L3_2.NotifyType
                                      L3_2 = L3_2.UICenterToastMessageTextID
                                      L4_2 = "UIText_Setting_HighPerformance_Hint"
                                      L2_2(L3_2, L4_2)
                                    end
                                  end
                                  L2_2 = CS
                                  L2_2 = L2_2.RPG
                                  L2_2 = L2_2.Client
                                  L2_2 = L2_2.RPGQualitySettings
                                  L3_2 = A1_2.setting
                                  L2_2.EnableMetalFXSU = L3_2
                                end
                              else
                                L2_2 = A0_2.setting_data
                                L2_2 = L2_2.setting_type
                                L3_2 = GraphicsSettingType
                                L3_2 = L3_2.SwitchGraphicsAPI
                                if L2_2 == L3_2 then
                                  L2_2 = CS
                                  L2_2 = L2_2.RPG
                                  L2_2 = L2_2.Client
                                  L2_2 = L2_2.UIUtils
                                  L3_2 = A1_2.setting
                                  L2_2.IsAndroidUseVulkan = L3_2
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
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RPGQualitySettings
  L2_2 = L2_2.OnGraphicSettingChanged
  L2_2()
  L3_2 = A0_2
  L2_2 = A0_2._update_content_text
  L2_2(L3_2)
end
L0_1.set_content_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.setting
  if L3_2 ~= A2_2 then
    L3_2 = A1_2.setting_extra
    if not L3_2 then
      goto lbl_12
    end
    L3_2 = A1_2.setting_extra
    if L3_2 ~= A2_2 then
      goto lbl_12
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_12::
  L3_2 = true
  return L3_2
end
L0_1._is_can_setting = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = GraphicsSettingType
  L3_2 = L3_2.GraphicsQuality
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_current_data
    L4_2 = A0_2._graphics_data
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.RPGQualitySettings
    L5_2 = L5_2.GraphicsQuality
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.ResolutionQuality
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_current_data
      L4_2 = A0_2._graphics_data
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.RPGQualitySettings
      L5_2 = L5_2.ResolutionQuality
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = GraphicsSettingType
      L3_2 = L3_2.PCResolution
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._get_current_data
        L4_2 = A0_2._graphics_data
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.RPGQualitySettings
        L5_2 = L5_2.PCResolution
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L1_2 = L2_2
        L3_2 = A0_2
        L2_2 = A0_2._update_pc_resolution_content_text
        L2_2(L3_2)
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = GraphicsSettingType
        L3_2 = L3_2.FPS
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._get_current_data
          L4_2 = A0_2._graphics_data
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.RPGQualitySettings
          L5_2 = L5_2.FPS
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          L1_2 = L2_2
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = GraphicsSettingType
          L3_2 = L3_2.EnableVSync
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._get_current_data
            L4_2 = A0_2._graphics_data
            L5_2 = CS
            L5_2 = L5_2.RPG
            L5_2 = L5_2.Client
            L5_2 = L5_2.RPGQualitySettings
            L5_2 = L5_2.EnableVSync
            L2_2 = L2_2(L3_2, L4_2, L5_2)
            L1_2 = L2_2
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = GraphicsSettingType
            L3_2 = L3_2.RenderingPrecision
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._get_current_data
              L4_2 = A0_2._graphics_data
              L5_2 = CS
              L5_2 = L5_2.RPG
              L5_2 = L5_2.Client
              L5_2 = L5_2.RPGQualitySettings
              L5_2 = L5_2.RenderScale
              L2_2 = L2_2(L3_2, L4_2, L5_2)
              L1_2 = L2_2
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = GraphicsSettingType
              L3_2 = L3_2.ShadowQuality
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._get_current_data
                L4_2 = A0_2._graphics_data
                L5_2 = CS
                L5_2 = L5_2.RPG
                L5_2 = L5_2.Client
                L5_2 = L5_2.RPGQualitySettings
                L5_2 = L5_2.ShadowQuality
                L2_2 = L2_2(L3_2, L4_2, L5_2)
                L1_2 = L2_2
              else
                L2_2 = A0_2.setting_data
                L2_2 = L2_2.setting_type
                L3_2 = GraphicsSettingType
                L3_2 = L3_2.ReflectionQuality
                if L2_2 == L3_2 then
                  L3_2 = A0_2
                  L2_2 = A0_2._get_current_data
                  L4_2 = A0_2._graphics_data
                  L5_2 = CS
                  L5_2 = L5_2.RPG
                  L5_2 = L5_2.Client
                  L5_2 = L5_2.RPGQualitySettings
                  L5_2 = L5_2.ReflectionQuality
                  L2_2 = L2_2(L3_2, L4_2, L5_2)
                  L1_2 = L2_2
                else
                  L2_2 = A0_2.setting_data
                  L2_2 = L2_2.setting_type
                  L3_2 = GraphicsSettingType
                  L3_2 = L3_2.CharacterQuality
                  if L2_2 == L3_2 then
                    L3_2 = A0_2
                    L2_2 = A0_2._get_current_data
                    L4_2 = A0_2._graphics_data
                    L5_2 = CS
                    L5_2 = L5_2.RPG
                    L5_2 = L5_2.Client
                    L5_2 = L5_2.RPGQualitySettings
                    L5_2 = L5_2.CharacterQuality
                    L2_2 = L2_2(L3_2, L4_2, L5_2)
                    L1_2 = L2_2
                  else
                    L2_2 = A0_2.setting_data
                    L2_2 = L2_2.setting_type
                    L3_2 = GraphicsSettingType
                    L3_2 = L3_2.EnvDetailQuality
                    if L2_2 == L3_2 then
                      L3_2 = A0_2
                      L2_2 = A0_2._get_current_data
                      L4_2 = A0_2._graphics_data
                      L5_2 = CS
                      L5_2 = L5_2.RPG
                      L5_2 = L5_2.Client
                      L5_2 = L5_2.RPGQualitySettings
                      L5_2 = L5_2.EnvDetailQuality
                      L2_2 = L2_2(L3_2, L4_2, L5_2)
                      L1_2 = L2_2
                    else
                      L2_2 = A0_2.setting_data
                      L2_2 = L2_2.setting_type
                      L3_2 = GraphicsSettingType
                      L3_2 = L3_2.SFXQuality
                      if L2_2 == L3_2 then
                        L3_2 = A0_2
                        L2_2 = A0_2._get_current_data
                        L4_2 = A0_2._graphics_data
                        L5_2 = CS
                        L5_2 = L5_2.RPG
                        L5_2 = L5_2.Client
                        L5_2 = L5_2.RPGQualitySettings
                        L5_2 = L5_2.SFXQuality
                        L2_2 = L2_2(L3_2, L4_2, L5_2)
                        L1_2 = L2_2
                      else
                        L2_2 = A0_2.setting_data
                        L2_2 = L2_2.setting_type
                        L3_2 = GraphicsSettingType
                        L3_2 = L3_2.BloomQuality
                        if L2_2 == L3_2 then
                          L3_2 = A0_2
                          L2_2 = A0_2._get_current_data
                          L4_2 = A0_2._graphics_data
                          L5_2 = CS
                          L5_2 = L5_2.RPG
                          L5_2 = L5_2.Client
                          L5_2 = L5_2.RPGQualitySettings
                          L5_2 = L5_2.BloomQuality
                          L2_2 = L2_2(L3_2, L4_2, L5_2)
                          L1_2 = L2_2
                        else
                          L2_2 = A0_2.setting_data
                          L2_2 = L2_2.setting_type
                          L3_2 = GraphicsSettingType
                          L3_2 = L3_2.AAMode
                          if L2_2 == L3_2 then
                            L3_2 = A0_2
                            L2_2 = A0_2._get_current_data
                            L4_2 = A0_2._graphics_data
                            L5_2 = CS
                            L5_2 = L5_2.RPG
                            L5_2 = L5_2.Client
                            L5_2 = L5_2.RPGQualitySettings
                            L5_2 = L5_2.AAMode
                            L2_2 = L2_2(L3_2, L4_2, L5_2)
                            L1_2 = L2_2
                          else
                            L2_2 = A0_2.setting_data
                            L2_2 = L2_2.setting_type
                            L3_2 = GraphicsSettingType
                            L3_2 = L3_2.LightQuality
                            if L2_2 == L3_2 then
                              L3_2 = A0_2
                              L2_2 = A0_2._get_current_data
                              L4_2 = A0_2._graphics_data
                              L5_2 = CS
                              L5_2 = L5_2.RPG
                              L5_2 = L5_2.Client
                              L5_2 = L5_2.RPGQualitySettings
                              L5_2 = L5_2.LightQuality
                              L2_2 = L2_2(L3_2, L4_2, L5_2)
                              L1_2 = L2_2
                            else
                              L2_2 = A0_2.setting_data
                              L2_2 = L2_2.setting_type
                              L3_2 = GraphicsSettingType
                              L3_2 = L3_2.MetalFX
                              if L2_2 == L3_2 then
                                L3_2 = A0_2
                                L2_2 = A0_2._get_current_data
                                L4_2 = A0_2._graphics_data
                                L5_2 = CS
                                L5_2 = L5_2.RPG
                                L5_2 = L5_2.Client
                                L5_2 = L5_2.RPGQualitySettings
                                L5_2 = L5_2.EnableMetalFXSU
                                L2_2 = L2_2(L3_2, L4_2, L5_2)
                                L1_2 = L2_2
                              else
                                L2_2 = A0_2.setting_data
                                L2_2 = L2_2.setting_type
                                L3_2 = GraphicsSettingType
                                L3_2 = L3_2.SwitchGraphicsAPI
                                if L2_2 == L3_2 then
                                  L3_2 = A0_2
                                  L2_2 = A0_2._get_current_data
                                  L4_2 = A0_2._graphics_data
                                  L5_2 = CS
                                  L5_2 = L5_2.RPG
                                  L5_2 = L5_2.Client
                                  L5_2 = L5_2.UIUtils
                                  L5_2 = L5_2.IsAndroidUseVulkan
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
  end
  if L1_2 then
    L2_2 = L1_2.key
    A0_2._default_key = L2_2
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.PCResolution
    if L2_2 ~= L3_2 then
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = GraphicsSettingType
      L3_2 = L3_2.RenderingPrecision
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_content
        L3_2 = L2_2
        L2_2 = L2_2.SetCustomizedText
        L4_2 = L1_2.text_id
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_content
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L1_2.text_id
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._update_content_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGQualitySettings
  L1_2 = L1_2.PCResolution
  L2_2 = L1_2.isFullScreen
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Setting_Level_FullScreen"
    L5_2 = tostring
    L6_2 = L1_2.width
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = L1_2.height
    L6_2, L7_2 = L6_2(L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_content
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Setting_GraphicsResolution"
    L5_2 = tostring
    L6_2 = L1_2.width
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = L1_2.height
    L6_2, L7_2 = L6_2(L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._update_pc_resolution_content_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.setting_data
  L3_2 = L3_2.setting_type
  L4_2 = GraphicsSettingType
  L4_2 = L4_2.PCResolution
  if L3_2 == L4_2 then
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2.setting
      L8_2 = L8_2.isFullScreen
      L9_2 = A2_2.isFullScreen
      if L8_2 == L9_2 then
        L8_2 = L7_2.setting
        L8_2 = L8_2.width
        L9_2 = A2_2.width
        if L8_2 == L9_2 then
          L8_2 = L7_2.setting
          L8_2 = L8_2.height
          L9_2 = A2_2.height
          if L8_2 == L9_2 then
            return L7_2
          end
        end
      end
    end
  else
    L3_2 = A0_2.setting_data
    L3_2 = L3_2.setting_type
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.RenderingPrecision
    if L3_2 == L4_2 then
      L3_2 = pairs
      L4_2 = A1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L9_2 = A0_2
        L8_2 = A0_2._is_setting_equal
        L10_2 = L7_2.setting
        L11_2 = A2_2
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        if L8_2 then
          return L7_2
        end
      end
    else
      L3_2 = pairs
      L4_2 = A1_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = L7_2.setting
        if L8_2 ~= A2_2 then
          L8_2 = L7_2.setting_extra
          if L8_2 ~= A2_2 then
            goto lbl_61
          end
        end
        do return L7_2 end
        ::lbl_61::
      end
    end
  end
end
L0_1._get_current_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = GraphicsSettingType
  L3_2 = L3_2.RenderingPrecision
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
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.PCResolution
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.System
      L2_2 = L2_2.Collections
      L2_2 = L2_2.Generic
      L2_2 = L2_2.List
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.SuperDropDown
      L3_2 = L3_2.LocalizedOptionData
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2()
      L1_2 = L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.System
      L2_2 = L2_2.Collections
      L2_2 = L2_2.Generic
      L2_2 = L2_2.List
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TextID
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2()
      L1_2 = L2_2
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2._graphics_data
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
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = GraphicsSettingType
  L3_2 = L3_2.RenderingPrecision
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = L2_2
    L2_2 = L2_2.AddOptions
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = L2_2
    L2_2 = L2_2.AddOptions
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._default_key
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_drop_down_pc
    L3_2 = A0_2._default_key
    L3_2 = L3_2 - 1
    L2_2.value = L3_2
  end
end
L0_1._init_drop_down_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = type
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "number" then
    L3_2 = G
    L3_2 = L3_2.MathUtils
    L3_2 = L3_2.float_equal
    L4_2 = A1_2
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2 == A2_2
  return L3_2
end
L0_1._is_setting_equal = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2.width
  L4_2 = A2_2.width
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1._is_pc_resolution_equal = L2_1
return L0_1
