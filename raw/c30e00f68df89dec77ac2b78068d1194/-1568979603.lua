local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Graphics.GraphicsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Graphics.GraphicsSettingInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MathUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GraphicsPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Setting_Tab_Image"
L2_1 = "SpriteOutput/TabIcon/Settings/SettingsImageIcon.png"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._selected_object = nil
  L1_2 = {}
  A0_2.data_list = L1_2
  L1_2 = {}
  L2_2 = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AppUtils
  L3_2 = L3_2.IsPS5Platform
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.HDROutputSettings
    L3_2 = L3_2.available
    if L3_2 then
      L3_2 = {}
      L1_2 = L3_2
      L3_2 = SettingItemType
      L3_2 = L3_2.Link
      L1_2.show_type = L3_2
      L3_2 = GraphicsSettingType
      L3_2 = L3_2.HDRCheck
      L1_2.setting_type = L3_2
      L1_2.title_text_id = "UIText_Setting_HDRCheck"
      L1_2.setting_title_text_id = "UIText_Setting_Title_Image"
      L2_2 = true
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2.data_list
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_ps_platform
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Common
    L1_2.show_type = L3_2
    L3_2 = GraphicsSettingType
    L3_2 = L3_2.GraphicsQuality
    L1_2.setting_type = L3_2
    L1_2.title_text_id = "UIText_Setting_Event_ImageQualitty"
    L1_2.setting_title_text_id = "UIText_Setting_Title_Image"
    L2_2 = true
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_ps_platform
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = {}
    L1_2 = L3_2
    L3_2 = SettingItemType
    L3_2 = L3_2.Common
    L1_2.show_type = L3_2
    L3_2 = UNITY_EDITOR
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.is_pc_mode
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = GraphicsSettingType
        L3_2 = L3_2.PCResolution
        L1_2.setting_type = L3_2
      else
        L3_2 = GraphicsSettingType
        L3_2 = L3_2.ResolutionQuality
        L1_2.setting_type = L3_2
      end
    else
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.is_mobile_platform
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = GraphicsSettingType
        L3_2 = L3_2.ResolutionQuality
        L1_2.setting_type = L3_2
      else
        L3_2 = GraphicsSettingType
        L3_2 = L3_2.PCResolution
        L1_2.setting_type = L3_2
      end
    end
    L1_2.title_text_id = "UIText_Setting_Event_DisplayMode"
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = true
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_ps_platform
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AppUtils
    L4_2 = L4_2.IsRelease
    L3_2 = not L4_2
  end
  if L3_2 then
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.FPS
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_FrameRate"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_mobile_platform
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_pc_or_ps_platform
    L4_2 = L4_2()
    if L4_2 then
      L4_2 = {}
      L1_2 = L4_2
      L4_2 = SettingItemType
      L4_2 = L4_2.Common
      L1_2.show_type = L4_2
      L4_2 = GraphicsSettingType
      L4_2 = L4_2.EnableVSync
      L1_2.setting_type = L4_2
      L1_2.title_text_id = "UIText_Setting_Event_VSync"
      if not L2_2 then
        L1_2.setting_title_text_id = "UIText_Setting_Title_Image"
      end
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2.data_list
      L6_2 = L1_2
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_pc_mode
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.RenderingPrecision
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Rendering_Precision_Title"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
  if L3_2 then
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.ShadowQuality
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_ShadowQuality"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.ReflectionQuality
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_ReflectionQuality"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.CharacterQuality
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_AvatarQuality"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.EnvDetailQuality
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_SceneDetails"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.SFXQuality
    L1_2.setting_type = L4_2
    L4_2 = GraphicsSettingType2Title
    L5_2 = GraphicsSettingType
    L5_2 = L5_2.SFXQuality
    L4_2 = L4_2[L5_2]
    L1_2.title_text_id = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.BloomQuality
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_Bloom"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.AAMode
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_AntiAlias"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.LightQuality
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_Event_LightQuality"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AppUtils
    L4_2 = L4_2.IsApplePlatform
    if L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.AppUtils
      L4_2 = L4_2.SupportMetalFX
      if L4_2 then
        L4_2 = {}
        L1_2 = L4_2
        L4_2 = SettingItemType
        L4_2 = L4_2.Common
        L1_2.show_type = L4_2
        L4_2 = GraphicsSettingType
        L4_2 = L4_2.MetalFX
        L1_2.setting_type = L4_2
        L4_2 = GraphicsSettingType2Title
        L5_2 = GraphicsSettingType
        L5_2 = L5_2.MetalFX
        L4_2 = L4_2[L5_2]
        L1_2.title_text_id = L4_2
        L4_2 = table
        L4_2 = L4_2.insert
        L5_2 = A0_2.data_list
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AppUtils
  L4_2 = L4_2.IsAndroidPlatform
  if L4_2 then
    L4_2 = {}
    L1_2 = L4_2
    L4_2 = SettingItemType
    L4_2 = L4_2.Common
    L1_2.show_type = L4_2
    L4_2 = GraphicsSettingType
    L4_2 = L4_2.SwitchGraphicsAPI
    L1_2.setting_type = L4_2
    L1_2.title_text_id = "UIText_Setting_API_Title"
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2.data_list
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
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
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.GraphicsSettingInfoItem
    L9_2 = G
    L9_2 = L9_2.GraphicsSettingInfoItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.reg_refresh_call_back
    L8_2 = A0_2
    L9_2 = A0_2._refresh_item_content_text
    L6_2(L7_2, L8_2, L9_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L5_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L4_2
end
L0_1._on_loop_list_view_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L1_2 = L1_2.ItemTotalCount
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.loop_list_view
    L1_2 = L1_2.ItemTotalCount
    if 0 < L1_2 then
      L1_2 = 0
      L2_2 = A0_2._binder
      L2_2 = L2_2.loop_list_view
      L2_2 = L2_2.ItemTotalCount
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._binder
        L5_2 = L5_2.loop_list_view
        L6_2 = L5_2
        L5_2 = L5_2.GetShownItemByItemIndex
        L7_2 = L4_2
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = L5_2.UserObjectData
          L7_2 = L6_2
          L6_2 = L6_2.refresh_content_text
          L6_2(L7_2)
        end
      end
    end
  end
end
L0_1._refresh_item_content_text = L3_1
function L3_1(A0_2)
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
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
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
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L3_1
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
  L1_2 = L1_2.RPGQualitySettings
  L1_2 = L1_2.Save
  L1_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L2_2 = L1_2
  L1_2 = L1_2.SaveSettings
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
return L0_1
