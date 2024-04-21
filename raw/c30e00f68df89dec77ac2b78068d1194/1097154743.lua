local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Social.SocialSettingPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Social.SocialSettingInfoItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SocialSettingPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/TabIcon/Settings/SettingSocialIcon.png"
L2_1 = "UIText_Setting_Social_Title"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._selected_object = nil
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordDisplayChanged
  L4_2 = A0_2._on_display_record_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_loop_list_view_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
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
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_setting_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_setting_data_inited
  if L1_2 then
    return
  end
  A0_2._is_setting_data_inited = true
  L2_2 = A0_2
  L1_2 = A0_2._update_setting_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._init_setting_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2.data_list = L1_2
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
  if L2_2 then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = {}
  L6_2 = SettingItemType
  L6_2 = L6_2.Common
  L5_2.show_type = L6_2
  L6_2 = SocialSettingType
  L6_2 = L6_2.IsAcceptFriendApply
  L5_2.setting_type = L6_2
  L5_2.title_text_id = "UIText_Friends_Not_Accept_Option_Title"
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = {}
  L6_2 = SettingItemType
  L6_2 = L6_2.Common
  L5_2.show_type = L6_2
  L6_2 = SocialSettingType
  L6_2 = L6_2.IsShowCollection
  L5_2.setting_type = L6_2
  L5_2.title_text_id = "UIText_Social_Setting_CollectionShow"
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = {}
  L6_2 = SettingItemType
  L6_2 = L6_2.Common
  L5_2.show_type = L6_2
  L6_2 = SocialSettingType
  L6_2 = L6_2.IsShowRecord
  L5_2.setting_type = L6_2
  L5_2.title_text_id = "UIText_Social_Setting_RecordShow"
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.PlayerModule
  L3_2 = L3_2.PlayerSettingData
  L3_2 = L3_2.DisplayRecord
  if L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2.data_list
    L5_2 = {}
    L6_2 = SettingItemType
    L6_2 = L6_2.Common
    L5_2.show_type = L6_2
    L6_2 = SocialSettingType
    L6_2 = L6_2.RecordShowTag
    L5_2.setting_type = L6_2
    L5_2.title_text_id = "UIText_Social_Setting_RecordOption"
    L3_2(L4_2, L5_2)
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = {}
  L6_2 = SettingItemType
  L6_2 = L6_2.Common
  L5_2.show_type = L6_2
  L6_2 = SocialSettingType
  L6_2 = L6_2.IsShowDiary
  L5_2.setting_type = L6_2
  L5_2.title_text_id = "UIText_Social_Setting_UpdatesShow"
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = {}
  L6_2 = SettingItemType
  L6_2 = L6_2.Common
  L5_2.show_type = L6_2
  L6_2 = SocialSettingType
  L6_2 = L6_2.AllowRecordTeam
  L5_2.setting_type = L6_2
  L5_2.title_text_id = "UIText_Social_Setting_RecordUpload"
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data_list
  L5_2 = {}
  L6_2 = SettingItemType
  L6_2 = L6_2.Common
  L5_2.show_type = L6_2
  L6_2 = SocialSettingType
  L6_2 = L6_2.DisplayOnlineStatus
  L5_2.setting_type = L6_2
  L5_2.title_text_id = "UIText_Social_Setting_PlayingState"
  L3_2(L4_2, L5_2)
end
L0_1._update_setting_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
end
L0_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SocialSettingInfoItem
    L8_2 = G
    L8_2 = L8_2.SocialSettingInfoItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2.data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.force_rebuild
  L6_2(L7_2)
  return L3_2
end
L0_1._on_loop_list_view_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_setting_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_display_record_changed = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.__name
  return L1_2
end
L0_1._get_transform_name = L3_1
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
return L0_1
