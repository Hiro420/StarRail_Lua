local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.Social.SocialSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SocialSettingInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
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
    L1_3 = A0_2._social_setting_data
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
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
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
  L3_2 = SocialSettingType
  L3_2 = L3_2.IsAcceptFriendApply
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._add_packet_handler
    L4_2 = CS
    L4_2 = L4_2.PBIBDHBOIGI
    L4_2 = L4_2.NAPNNFLJGKB
    L5_2 = A0_2._update_content_text
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2.setting_data
    L2_2 = L2_2.setting_type
    L3_2 = SocialSettingType
    L3_2 = L3_2.IsShowBirthday
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._add_notify_handler
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.BirthdayDisplayChanged
      L5_2 = A0_2._update_content_text
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = SocialSettingType
      L3_2 = L3_2.IsShowCollection
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._add_notify_handler
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.PlayerCollectionDisplayChanged
        L5_2 = A0_2._update_content_text
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = SocialSettingType
        L3_2 = L3_2.IsShowRecord
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._add_notify_handler
          L4_2 = G
          L4_2 = L4_2.CS
          L4_2 = L4_2.NotifyType
          L4_2 = L4_2.PlayerRecordDisplayChanged
          L5_2 = A0_2._update_content_text
          L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = SocialSettingType
          L3_2 = L3_2.RecordShowTag
          if L2_2 == L3_2 then
            L3_2 = A0_2
            L2_2 = A0_2._add_notify_handler
            L4_2 = G
            L4_2 = L4_2.CS
            L4_2 = L4_2.NotifyType
            L4_2 = L4_2.PlayerRecordDisplayTypeChanged
            L5_2 = A0_2._update_content_text
            L2_2(L3_2, L4_2, L5_2)
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = SocialSettingType
            L3_2 = L3_2.IsShowDiary
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._add_notify_handler
              L4_2 = G
              L4_2 = L4_2.CS
              L4_2 = L4_2.NotifyType
              L4_2 = L4_2.PlayerDiaryDisplayChanged
              L5_2 = A0_2._update_content_text
              L2_2(L3_2, L4_2, L5_2)
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = SocialSettingType
              L3_2 = L3_2.AllowRecordTeam
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._add_notify_handler
                L4_2 = G
                L4_2 = L4_2.CS
                L4_2 = L4_2.NotifyType
                L4_2 = L4_2.PlayerRecordTeamUploadChanged
                L5_2 = A0_2._update_content_text
                L2_2(L3_2, L4_2, L5_2)
              else
                L2_2 = A0_2.setting_data
                L2_2 = L2_2.setting_type
                L3_2 = SocialSettingType
                L3_2 = L3_2.DisplayOnlineStatus
                if L2_2 == L3_2 then
                  L3_2 = A0_2
                  L2_2 = A0_2._add_notify_handler
                  L4_2 = G
                  L4_2 = L4_2.CS
                  L4_2 = L4_2.NotifyType
                  L4_2 = L4_2.PlayerOnlineStatusDisplayChanged
                  L5_2 = A0_2._update_content_text
                  L2_2(L3_2, L4_2, L5_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
end
L0_1.force_rebuild = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.setup_title_view = L1_1
function L1_1(A0_2, A1_2)
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
  L2_2 = L2_2.get_social_data_by_type
  L4_2 = A0_2.setting_data
  L4_2 = L4_2.setting_type
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._social_setting_data = L2_2
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
L0_1.setup_content_view = L1_1
function L1_1(A0_2)
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
  L3_2 = A0_2._social_setting_data
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
L0_1._init_drop_down_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
L0_1._get_current_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = SocialSettingType
  L3_2 = L3_2.IsAcceptFriendApply
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_current_data
    L4_2 = A0_2._social_setting_data
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
    L3_2 = SocialSettingType
    L3_2 = L3_2.IsShowBirthday
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_current_data
      L4_2 = A0_2._social_setting_data
      L5_2 = G
      L5_2 = L5_2.PlayerUtils
      L5_2 = L5_2.is_display_birthday
      L5_2, L6_2 = L5_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2.setting_data
      L2_2 = L2_2.setting_type
      L3_2 = SocialSettingType
      L3_2 = L3_2.IsShowCollection
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._get_current_data
        L4_2 = A0_2._social_setting_data
        L5_2 = G
        L5_2 = L5_2.PlayerUtils
        L5_2 = L5_2.is_display_collection
        L5_2, L6_2 = L5_2()
        L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
        L1_2 = L2_2
      else
        L2_2 = A0_2.setting_data
        L2_2 = L2_2.setting_type
        L3_2 = SocialSettingType
        L3_2 = L3_2.IsShowRecord
        if L2_2 == L3_2 then
          L3_2 = A0_2
          L2_2 = A0_2._get_current_data
          L4_2 = A0_2._social_setting_data
          L5_2 = G
          L5_2 = L5_2.PlayerUtils
          L5_2 = L5_2.is_display_record
          L5_2, L6_2 = L5_2()
          L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
          L1_2 = L2_2
        else
          L2_2 = A0_2.setting_data
          L2_2 = L2_2.setting_type
          L3_2 = SocialSettingType
          L3_2 = L3_2.RecordShowTag
          if L2_2 == L3_2 then
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.GlobalVars
            L2_2 = L2_2.s_ModuleManager
            L2_2 = L2_2.PlayerModule
            L2_2 = L2_2.PlayerSettingData
            L2_2 = L2_2.DisplayRecordType
            L4_2 = A0_2
            L3_2 = A0_2._get_current_data
            L5_2 = A0_2._social_setting_data
            L6_2 = L2_2
            L3_2 = L3_2(L4_2, L5_2, L6_2)
            L1_2 = L3_2
          else
            L2_2 = A0_2.setting_data
            L2_2 = L2_2.setting_type
            L3_2 = SocialSettingType
            L3_2 = L3_2.IsShowDiary
            if L2_2 == L3_2 then
              L3_2 = A0_2
              L2_2 = A0_2._get_current_data
              L4_2 = A0_2._social_setting_data
              L5_2 = G
              L5_2 = L5_2.PlayerUtils
              L5_2 = L5_2.is_display_diary
              L5_2, L6_2 = L5_2()
              L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
              L1_2 = L2_2
            else
              L2_2 = A0_2.setting_data
              L2_2 = L2_2.setting_type
              L3_2 = SocialSettingType
              L3_2 = L3_2.AllowRecordTeam
              if L2_2 == L3_2 then
                L3_2 = A0_2
                L2_2 = A0_2._get_current_data
                L4_2 = A0_2._social_setting_data
                L5_2 = CS
                L5_2 = L5_2.RPG
                L5_2 = L5_2.Client
                L5_2 = L5_2.GlobalVars
                L5_2 = L5_2.s_ModuleManager
                L5_2 = L5_2.PlayerModule
                L5_2 = L5_2.PlayerSettingData
                L5_2 = L5_2.UploadRecordTeam
                L2_2 = L2_2(L3_2, L4_2, L5_2)
                L1_2 = L2_2
              else
                L2_2 = A0_2.setting_data
                L2_2 = L2_2.setting_type
                L3_2 = SocialSettingType
                L3_2 = L3_2.DisplayOnlineStatus
                if L2_2 == L3_2 then
                  L3_2 = A0_2
                  L2_2 = A0_2._get_current_data
                  L4_2 = A0_2._social_setting_data
                  L5_2 = CS
                  L5_2 = L5_2.RPG
                  L5_2 = L5_2.Client
                  L5_2 = L5_2.GlobalVars
                  L5_2 = L5_2.s_ModuleManager
                  L5_2 = L5_2.PlayerModule
                  L5_2 = L5_2.PlayerSettingData
                  L5_2 = L5_2.DisplayOnlineStatus
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
L0_1._update_content_text = L1_1
function L1_1(A0_2)
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
      L6_2 = A0_2._social_setting_data
      L7_2 = A0_2._default_key
      L8_2 = A0_2.setting_data
      L8_2 = L8_2.title_text_id
      L9_2 = L1_2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = A1_2.setting
  L4_2 = SocialSettingType
  L4_2 = L4_2.IsAcceptFriendApply
  if L2_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.FriendModule
    L4_2 = L4_2.IsAllowOtherApply
    if L3_2 ~= L4_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.NetworkManager
      L5_2 = L5_2.FFOMLPONIFB
      L6_2 = L5_2
      L5_2 = L5_2.BJJMHFLMKGI
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.show_full_screen_block_for_packet
      L7_2 = CS
      L7_2 = L7_2.PBIBDHBOIGI
      L7_2 = L7_2.NAPNNFLJGKB
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._report_setting_change_bool
      L7_2 = L2_2
      L8_2 = "AllowFriendApply"
      L9_2 = L4_2
      L10_2 = L3_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  else
    L4_2 = SocialSettingType
    L4_2 = L4_2.IsShowBirthday
    if L2_2 == L4_2 then
      L4_2 = G
      L4_2 = L4_2.PlayerUtils
      L4_2 = L4_2.is_display_birthday
      L4_2 = L4_2()
      if L3_2 ~= L4_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.NetworkManager
        L5_2 = L5_2.FFOMLPONIFB
        L6_2 = L5_2
        L5_2 = L5_2.KDKCCAEMLOO
        L7_2 = L3_2
        L5_2(L6_2, L7_2)
        L6_2 = A0_2
        L5_2 = A0_2.show_full_screen_block_for_packet
        L7_2 = CS
        L7_2 = L7_2.PBIBDHBOIGI
        L7_2 = L7_2.GDCIBIJFBLE
        L5_2(L6_2, L7_2)
        L6_2 = A0_2
        L5_2 = A0_2._report_setting_change_bool
        L7_2 = L2_2
        L8_2 = "IsShowBirthday"
        L9_2 = L4_2
        L10_2 = L3_2
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    else
      L4_2 = SocialSettingType
      L4_2 = L4_2.IsShowCollection
      if L2_2 == L4_2 then
        L4_2 = G
        L4_2 = L4_2.PlayerUtils
        L4_2 = L4_2.is_display_collection
        L4_2 = L4_2()
        if L3_2 ~= L4_2 then
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.NetworkManager
          L5_2 = L5_2.FFOMLPONIFB
          L6_2 = L5_2
          L5_2 = L5_2.IGOBNHAECCM
          L7_2 = L3_2
          L5_2(L6_2, L7_2)
          L6_2 = A0_2
          L5_2 = A0_2.show_full_screen_block_for_packet
          L7_2 = CS
          L7_2 = L7_2.PBIBDHBOIGI
          L7_2 = L7_2.GDCIBIJFBLE
          L5_2(L6_2, L7_2)
          L6_2 = A0_2
          L5_2 = A0_2._report_setting_change_bool
          L7_2 = L2_2
          L8_2 = "IsShowCollection"
          L9_2 = L4_2
          L10_2 = L3_2
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      else
        L4_2 = SocialSettingType
        L4_2 = L4_2.IsShowRecord
        if L2_2 == L4_2 then
          L4_2 = G
          L4_2 = L4_2.PlayerUtils
          L4_2 = L4_2.is_display_record
          L4_2 = L4_2()
          if L3_2 ~= L4_2 then
            L5_2 = CS
            L5_2 = L5_2.RPG
            L5_2 = L5_2.Client
            L5_2 = L5_2.NetworkManager
            L5_2 = L5_2.FFOMLPONIFB
            L6_2 = L5_2
            L5_2 = L5_2.MECFMGAPENA
            L7_2 = L3_2
            L5_2(L6_2, L7_2)
            L6_2 = A0_2
            L5_2 = A0_2.show_full_screen_block_for_packet
            L7_2 = CS
            L7_2 = L7_2.PBIBDHBOIGI
            L7_2 = L7_2.GDCIBIJFBLE
            L5_2(L6_2, L7_2)
            L6_2 = A0_2
            L5_2 = A0_2._report_setting_change_bool
            L7_2 = L2_2
            L8_2 = "IsShowRecord"
            L9_2 = L4_2
            L10_2 = L3_2
            L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          end
        else
          L4_2 = SocialSettingType
          L4_2 = L4_2.RecordShowTag
          if L2_2 == L4_2 then
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.Client
            L4_2 = L4_2.GlobalVars
            L4_2 = L4_2.s_ModuleManager
            L4_2 = L4_2.PlayerModule
            L4_2 = L4_2.PlayerSettingData
            L4_2 = L4_2.DisplayRecordType
            if L3_2 ~= L4_2 then
              L5_2 = CS
              L5_2 = L5_2.RPG
              L5_2 = L5_2.Client
              L5_2 = L5_2.NetworkManager
              L5_2 = L5_2.FFOMLPONIFB
              L6_2 = L5_2
              L5_2 = L5_2.NOCIGOLEDGI
              L7_2 = L3_2
              L5_2(L6_2, L7_2)
              L6_2 = A0_2
              L5_2 = A0_2.show_full_screen_block_for_packet
              L7_2 = CS
              L7_2 = L7_2.PBIBDHBOIGI
              L7_2 = L7_2.GDCIBIJFBLE
              L5_2(L6_2, L7_2)
              L6_2 = A0_2
              L5_2 = A0_2._report_setting_change_enum
              L7_2 = L2_2
              L8_2 = "RecordShowTag"
              L9_2 = L4_2
              L10_2 = L3_2
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
            end
          else
            L4_2 = SocialSettingType
            L4_2 = L4_2.IsShowDiary
            if L2_2 == L4_2 then
              L4_2 = G
              L4_2 = L4_2.PlayerUtils
              L4_2 = L4_2.is_display_diary
              L4_2 = L4_2()
              if L3_2 ~= L4_2 then
                L5_2 = CS
                L5_2 = L5_2.RPG
                L5_2 = L5_2.Client
                L5_2 = L5_2.NetworkManager
                L5_2 = L5_2.FFOMLPONIFB
                L6_2 = L5_2
                L5_2 = L5_2.MAHMBBIFEIO
                L7_2 = L3_2
                L5_2(L6_2, L7_2)
                L6_2 = A0_2
                L5_2 = A0_2.show_full_screen_block_for_packet
                L7_2 = CS
                L7_2 = L7_2.PBIBDHBOIGI
                L7_2 = L7_2.GDCIBIJFBLE
                L5_2(L6_2, L7_2)
                L6_2 = A0_2
                L5_2 = A0_2._report_setting_change_bool
                L7_2 = L2_2
                L8_2 = "IsShowDiary"
                L9_2 = L4_2
                L10_2 = L3_2
                L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
              end
            else
              L4_2 = SocialSettingType
              L4_2 = L4_2.AllowRecordTeam
              if L2_2 == L4_2 then
                L4_2 = CS
                L4_2 = L4_2.RPG
                L4_2 = L4_2.Client
                L4_2 = L4_2.GlobalVars
                L4_2 = L4_2.s_ModuleManager
                L4_2 = L4_2.PlayerModule
                L4_2 = L4_2.PlayerSettingData
                L4_2 = L4_2.UploadRecordTeam
                if L3_2 ~= L4_2 then
                  L5_2 = CS
                  L5_2 = L5_2.RPG
                  L5_2 = L5_2.Client
                  L5_2 = L5_2.NetworkManager
                  L5_2 = L5_2.FFOMLPONIFB
                  L6_2 = L5_2
                  L5_2 = L5_2.AEKJMNIGCOF
                  L7_2 = L3_2
                  L5_2(L6_2, L7_2)
                  L6_2 = A0_2
                  L5_2 = A0_2.show_full_screen_block_for_packet
                  L7_2 = CS
                  L7_2 = L7_2.PBIBDHBOIGI
                  L7_2 = L7_2.GDCIBIJFBLE
                  L5_2(L6_2, L7_2)
                  L6_2 = A0_2
                  L5_2 = A0_2._report_setting_change_bool
                  L7_2 = L2_2
                  L8_2 = "AllowRecordTeam"
                  L9_2 = L4_2
                  L10_2 = L3_2
                  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                end
              else
                L4_2 = SocialSettingType
                L4_2 = L4_2.DisplayOnlineStatus
                if L2_2 == L4_2 then
                  L4_2 = CS
                  L4_2 = L4_2.RPG
                  L4_2 = L4_2.Client
                  L4_2 = L4_2.GlobalVars
                  L4_2 = L4_2.s_ModuleManager
                  L4_2 = L4_2.PlayerModule
                  L4_2 = L4_2.PlayerSettingData
                  L4_2 = L4_2.DisplayOnlineStatus
                  if L3_2 ~= L4_2 then
                    L5_2 = CS
                    L5_2 = L5_2.RPG
                    L5_2 = L5_2.Client
                    L5_2 = L5_2.NetworkManager
                    L5_2 = L5_2.FFOMLPONIFB
                    L6_2 = L5_2
                    L5_2 = L5_2.AIAFLAEMOGO
                    L7_2 = L3_2
                    L5_2(L6_2, L7_2)
                    L6_2 = A0_2
                    L5_2 = A0_2.show_full_screen_block_for_packet
                    L7_2 = CS
                    L7_2 = L7_2.PBIBDHBOIGI
                    L7_2 = L7_2.GDCIBIJFBLE
                    L5_2(L6_2, L7_2)
                    L6_2 = A0_2
                    L5_2 = A0_2._report_setting_change_bool
                    L7_2 = L2_2
                    L8_2 = "DisplayOnlineStatus"
                    L9_2 = L4_2
                    L10_2 = L3_2
                    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._update_content_text
  L4_2(L5_2)
end
L0_1.set_content_text = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A3_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_7
    end
  end
  L5_2 = 0
  ::lbl_7::
  if A4_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_13
    end
  end
  L6_2 = 0
  ::lbl_13::
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.SDKLuaReportAdapter
  L7_2 = L7_2.ReportSocialSettingChange
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L5_2
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1._report_setting_change_bool = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = #A3_2
  L6_2 = #A4_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.SDKLuaReportAdapter
  L7_2 = L7_2.ReportSocialSettingChange
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L5_2
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1._report_setting_change_enum = L1_1
return L0_1
