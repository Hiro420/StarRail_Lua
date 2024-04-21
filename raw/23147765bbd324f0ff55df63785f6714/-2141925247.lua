local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Account.AccountPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Account.AccountSettingInfoItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AccountPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/TabIcon/Settings/SettingsAccount.png"
L2_1 = "UIText_Setting_Tab_Account"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._selected_object = nil
  L4_2 = {}
  A0_2.data_list = L4_2
  L4_2 = false
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_AccountManager
  L7_2 = L5_2
  L6_2 = L5_2.HasUserCenter
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = {}
    L7_2 = SettingItemType
    L7_2 = L7_2.Link
    L6_2.show_type = L7_2
    L7_2 = AccountSettingType
    L7_2 = L7_2.UserCenter
    L6_2.setting_type = L7_2
    L6_2.title_text_id = "UIText_Setting_Event_AccountCenter"
    if L4_2 == false then
      L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
      L4_2 = true
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.data_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L6_2 = OVERSEA_BUILD
  if L6_2 then
    L7_2 = L5_2
    L6_2 = L5_2.IsShowConsentBannerEdit
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = {}
      data = L6_2
      L6_2 = data
      L7_2 = SettingItemType
      L7_2 = L7_2.Link
      L6_2.show_type = L7_2
      L6_2 = data
      L7_2 = AccountSettingType
      L7_2 = L7_2.ConsentBanner
      L6_2.setting_type = L7_2
      L6_2 = data
      L6_2.title_text_id = "UIText_Setting_Event_Consent"
      if L4_2 == false then
        L6_2 = data
        L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
        L4_2 = true
      end
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2.data_list
      L8_2 = data
      L6_2(L7_2, L8_2)
    end
  end
  if not A3_2 then
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_ps_platform
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = {}
      data = L6_2
      L6_2 = data
      L7_2 = SettingItemType
      L7_2 = L7_2.Link
      L6_2.show_type = L7_2
      L6_2 = data
      L7_2 = AccountSettingType
      L7_2 = L7_2.UserAgreement
      L6_2.setting_type = L7_2
      L6_2 = data
      L6_2.title_text_id = "UIText_Setting_Event_UserAgreement"
      if L4_2 == false then
        L6_2 = data
        L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
        L4_2 = true
      end
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2.data_list
      L8_2 = data
      L6_2(L7_2, L8_2)
    end
    L6_2 = OVERSEA_BUILD
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.Utils
      L6_2 = L6_2.is_ps_platform
      L6_2 = L6_2()
      if L6_2 then
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.Client
        L6_2 = L6_2.GlobalVars
        L6_2 = L6_2.s_NetworkManager
        L7_2 = L6_2
        L6_2 = L6_2.PGDHGAICOKG
        L8_2 = "PrivacyInGameUrl"
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L6_2 = {}
          data = L6_2
          L6_2 = data
          L7_2 = SettingItemType
          L7_2 = L7_2.Link
          L6_2.show_type = L7_2
          L6_2 = data
          L7_2 = AccountSettingType
          L7_2 = L7_2.Privacy
          L6_2.setting_type = L7_2
          L6_2 = data
          L6_2.title_text_id = "UIText_Setting_Event_PrivacyPolicy"
          if L4_2 == false then
            L6_2 = data
            L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
            L4_2 = true
          end
          L6_2 = table
          L6_2 = L6_2.insert
          L7_2 = A0_2.data_list
          L8_2 = data
          L6_2(L7_2, L8_2)
        end
      end
    else
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_NetworkManager
      L7_2 = L6_2
      L6_2 = L6_2.PGDHGAICOKG
      L8_2 = "PrivacyInGameUrl"
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = {}
        data = L6_2
        L6_2 = data
        L7_2 = SettingItemType
        L7_2 = L7_2.Link
        L6_2.show_type = L7_2
        L6_2 = data
        L7_2 = AccountSettingType
        L7_2 = L7_2.Privacy
        L6_2.setting_type = L7_2
        L6_2 = data
        L6_2.title_text_id = "UIText_Setting_Event_PrivacyPolicy"
        if L4_2 == false then
          L6_2 = data
          L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
          L4_2 = true
        end
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2.data_list
        L8_2 = data
        L6_2(L7_2, L8_2)
      end
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_NetworkManager
      L7_2 = L6_2
      L6_2 = L6_2.PGDHGAICOKG
      L8_2 = "TeenagerPrivacyInGameUrl"
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = {}
        data = L6_2
        L6_2 = data
        L7_2 = SettingItemType
        L7_2 = L7_2.Link
        L6_2.show_type = L7_2
        L6_2 = data
        L7_2 = AccountSettingType
        L7_2 = L7_2.ChildPrivacy
        L6_2.setting_type = L7_2
        L6_2 = data
        L6_2.title_text_id = "UIText_Setting_Event_teenagerprivacy"
        if L4_2 == false then
          L6_2 = data
          L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
          L4_2 = true
        end
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2.data_list
        L8_2 = data
        L6_2(L7_2, L8_2)
      end
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_NetworkManager
      L7_2 = L6_2
      L6_2 = L6_2.PGDHGAICOKG
      L8_2 = "PersonalInformationInGameUrl"
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = G
        L6_2 = L6_2.Utils
        L6_2 = L6_2.is_mobile_platform
        L6_2 = L6_2()
        if L6_2 then
          L6_2 = G
          L6_2 = L6_2.Utils
          L6_2 = L6_2.is_cloud_platform
          L6_2 = L6_2()
          if not L6_2 then
            L6_2 = {}
            data = L6_2
            L6_2 = data
            L7_2 = SettingItemType
            L7_2 = L7_2.Link
            L6_2.show_type = L7_2
            L6_2 = data
            L7_2 = AccountSettingType
            L7_2 = L7_2.PersonalInfo
            L6_2.setting_type = L7_2
            L6_2 = data
            L6_2.title_text_id = "UIText_Setting_Event_personalinformation"
            if L4_2 == false then
              L6_2 = data
              L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
              L4_2 = true
            end
            L6_2 = table
            L6_2 = L6_2.insert
            L7_2 = A0_2.data_list
            L8_2 = data
            L6_2(L7_2, L8_2)
          end
        end
      end
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_NetworkManager
      L7_2 = L6_2
      L6_2 = L6_2.PGDHGAICOKG
      L8_2 = "ThirdPrivacyInGameUrl"
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = {}
        data = L6_2
        L6_2 = data
        L7_2 = SettingItemType
        L7_2 = L7_2.Link
        L6_2.show_type = L7_2
        L6_2 = data
        L7_2 = AccountSettingType
        L7_2 = L7_2.ThirdPrivacy
        L6_2.setting_type = L7_2
        L6_2 = data
        L6_2.title_text_id = "UIText_Setting_Event_thirdprivacy"
        if L4_2 == false then
          L6_2 = data
          L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
          L4_2 = true
        end
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2.data_list
        L8_2 = data
        L6_2(L7_2, L8_2)
      end
    end
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_ps_platform
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = {}
      data = L6_2
      L6_2 = data
      L7_2 = SettingItemType
      L7_2 = L7_2.Common
      L6_2.show_type = L7_2
      L6_2 = data
      L7_2 = AccountSettingType
      L7_2 = L7_2.PlayWithPsnOnly
      L6_2.setting_type = L7_2
      L6_2 = data
      L6_2.title_text_id = "UIText_PS_CrossPlaySwitch"
      if L4_2 == false then
        L6_2 = data
        L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
        L4_2 = true
      end
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2.data_list
      L8_2 = data
      L6_2(L7_2, L8_2)
    end
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.is_mobile_platform
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = OVERSEA_BUILD
      if not L6_2 then
        L6_2 = {}
        data = L6_2
        L6_2 = data
        L7_2 = SettingItemType
        L7_2 = L7_2.Link
        L6_2.show_type = L7_2
        L6_2 = data
        L7_2 = AccountSettingType
        L7_2 = L7_2.ICP
        L6_2.setting_type = L7_2
        L6_2 = data
        L6_2.title_text_id = "ICP_FilingsCode_19018275"
        if L4_2 == false then
          L6_2 = data
          L6_2.setting_title_text_id = "UIText_Setting_Title_Account"
          L4_2 = true
        end
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2.data_list
        L8_2 = data
        L6_2(L7_2, L8_2)
      else
      end
    end
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
    L8_2 = L8_2.AccountSettingInfoItem
    L9_2 = G
    L9_2 = L9_2.AccountSettingInfoItemBinder
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
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
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
end
L0_1._on_dispose = L3_1
return L0_1
