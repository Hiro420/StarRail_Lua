local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.GameStartup.LanguageOverviewDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageSettingInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageStartupSettingInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Language.LanguageSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.SettingTitleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.SettingTitleItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.SettingModule.SettingEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguageOverviewDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Setting_Tab_Language"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LanguageOverviewDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2.data_list = L1_2
  L1_2 = {}
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  L1_2.show_type = L2_2
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Language
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Event_TextLanguage"
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_LocalizationManager
  L2_2 = L2_2.CurrentTextLanguageTextID
  L1_2.text_id = L2_2
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
  L2_2 = LanguageSettingType
  L2_2 = L2_2.Audio
  L1_2.setting_type = L2_2
  L1_2.title_text_id = "UIText_Setting_Event_VoiceLanguage "
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_LocalizationManager
  L2_2 = L2_2.CurrentAudioLanguageTextID
  L1_2.text_id = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2.data_list
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L2_2[1] = L3_2
  A0_2.listen_zooms = L2_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._obj = A2_2
  A0_2._callback = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_LocalizationManager
  L1_2 = L1_2.CurrentTextLanguage
  A0_2._current_text_language = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_LocalizationManager
  L1_2 = L1_2.CurrentAudioLanguage
  A0_2._current_audio_language = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_click_cancel_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_cancel_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_click_cancel_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_click_confirm_btn
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    if A2_2 == 0 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.LanguageSettingInfoItem
      L9_2 = G
      L9_2 = L9_2.LanguageSettingInfoItemBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L4_2 = L6_2
    elseif A2_2 == 1 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.LanguageStartupSettingInfoItem
      L9_2 = G
      L9_2 = L9_2.LanguageSettingInfoItemBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L4_2 = L6_2
    end
    L7_2 = L4_2
    L6_2 = L4_2.bind
    L8_2 = L5_2.transform
    L6_2(L7_2, L8_2)
    L5_2.UserObjectData = L4_2
  end
  if A2_2 == 0 then
    A0_2.text_panel = L4_2
  else
    A0_2.audio_panel = L4_2
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
L0_1._on_loop_list_view_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_LocalizationManager
  L2_2 = A0_2._current_text_language
  L1_2.CurrentTextLanguage = L2_2
  L1_2 = A0_2._obj
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._obj
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_cancel_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.audio_panel
  L2_2 = L1_2
  L1_2 = L1_2.apply_change
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_LocalizationManager
  L2_2 = L1_2
  L1_2 = L1_2.SavePrefs
  L1_2(L2_2)
  L1_2 = A0_2._obj
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._obj
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_confirm_btn = L2_1
return L0_1
