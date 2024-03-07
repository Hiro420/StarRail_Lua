local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Settings.Account.AccountSettingInfoItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AccountSettingInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Setting_GoTo"
L2_1 = "https://beian.miit.gov.cn"
function L3_1(A0_2)
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
    L1_3 = A0_2._account_setting_data
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
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.ClearAnimationState
  L2_2(L3_2)
  A0_2.setting_data = A1_2
  L2_2 = G
  L2_2 = L2_2.SettingModule
  L3_2 = L2_2
  L2_2 = L2_2.get_account_setting_data_by_type
  L4_2 = A0_2.setting_data
  L4_2 = L4_2.setting_type
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._account_setting_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_title_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_content_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
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
L0_1.setup_title_view = L3_1
function L3_1(A0_2, A1_2)
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
  A0_2.setting_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.title_text_id
  L2_2(L3_2, L4_2)
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
        L2_2 = L2_2.node_exchange_mini
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
end
L0_1.setup_content_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_type
  L2_2 = AccountSettingType
  L2_2 = L2_2.UserCenter
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsCloudPlatform
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowConfirmDialog
      L1_2 = L1_2()
      L2_2 = DialogBtnMode
      L2_2 = L2_2.eOk
      L1_2.Mode = L2_2
      L3_2 = L1_2
      L2_2 = L1_2.GetComponentContent
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_CloudHyperLinkError_Local"
      L2_2(L3_2, L4_2)
    else
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_AccountManager
      L2_2 = L1_2
      L1_2 = L1_2.OpenUserCenter
      L1_2(L2_2)
    end
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.setting_type
    L2_2 = AccountSettingType
    L2_2 = L2_2.Privacy
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.OpeUtil
      L1_2 = L1_2.OpenDispatchUrl
      L2_2 = "PrivacyInGameUrl"
      L3_2 = false
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2.setting_data
      L1_2 = L1_2.setting_type
      L2_2 = AccountSettingType
      L2_2 = L2_2.ChildPrivacy
      if L1_2 == L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.OpeUtil
        L1_2 = L1_2.OpenDispatchUrl
        L2_2 = "TeenagerPrivacyInGameUrl"
        L3_2 = false
        L4_2 = true
        L1_2(L2_2, L3_2, L4_2)
      else
        L1_2 = A0_2.setting_data
        L1_2 = L1_2.setting_type
        L2_2 = AccountSettingType
        L2_2 = L2_2.PersonalInfo
        if L1_2 == L2_2 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.GlobalVars
          L1_2 = L1_2.s_AccountManager
          L2_2 = L1_2
          L1_2 = L1_2.OpenPersonalInfo
          L1_2(L2_2)
        else
          L1_2 = A0_2.setting_data
          L1_2 = L1_2.setting_type
          L2_2 = AccountSettingType
          L2_2 = L2_2.ThirdPrivacy
          if L1_2 == L2_2 then
            L1_2 = CS
            L1_2 = L1_2.RPG
            L1_2 = L1_2.Client
            L1_2 = L1_2.OpeUtil
            L1_2 = L1_2.OpenDispatchUrl
            L2_2 = "ThirdPrivacyInGameUrl"
            L3_2 = false
            L4_2 = true
            L1_2(L2_2, L3_2, L4_2)
          else
            L1_2 = A0_2.setting_data
            L1_2 = L1_2.setting_type
            L2_2 = AccountSettingType
            L2_2 = L2_2.PlayWithPsnOnly
            if L1_2 == L2_2 then
              L1_2 = A0_2._binder
              L1_2 = L1_2.node_drop_down_pc
              L2_2 = L1_2
              L1_2 = L1_2.Show
              L1_2(L2_2)
            else
              L1_2 = A0_2.setting_data
              L1_2 = L1_2.setting_type
              L2_2 = AccountSettingType
              L2_2 = L2_2.UserAgreement
              if L1_2 == L2_2 then
                L1_2 = CS
                L1_2 = L1_2.RPG
                L1_2 = L1_2.Client
                L1_2 = L1_2.OpeUtil
                L1_2 = L1_2.OpenDispatchUrl
                L2_2 = "UserAgreementUrl"
                L3_2 = false
                L4_2 = true
                L1_2(L2_2, L3_2, L4_2)
              else
                L1_2 = A0_2.setting_data
                L1_2 = L1_2.setting_type
                L2_2 = AccountSettingType
                L2_2 = L2_2.ICP
                if L1_2 == L2_2 then
                  L1_2 = CS
                  L1_2 = L1_2.RPG
                  L1_2 = L1_2.Client
                  L1_2 = L1_2.OpeUtil
                  L1_2 = L1_2.OpenURLInExternalBrowser
                  L2_2 = L2_1
                  L3_2 = nil
                  L1_2(L2_2, L3_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = AccountSettingType
  L3_2 = L3_2.PlayWithPsnOnly
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_current_data
    L4_2 = A0_2._account_setting_data
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.Prefs
    L5_2 = L5_2.Settings
    L5_2 = L5_2.Account
    L5_2 = L5_2.IsPlayWithPsnOnly
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  end
  if L1_2 then
    L2_2 = L1_2.key
    A0_2._default_key = L2_2
  end
end
L0_1._update_content_text = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
L0_1._get_current_data = L3_1
function L3_1(A0_2)
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
  L3_2 = A0_2._account_setting_data
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
L0_1._init_drop_down_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.setting_data
  L2_2 = L2_2.setting_type
  L3_2 = AccountSettingType
  L3_2 = L3_2.PlayWithPsnOnly
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.Settings
    L2_2 = L2_2.Account
    L2_2 = L2_2.IsPlayWithPsnOnly
    L3_2 = A1_2.setting
    if L2_2 ~= L3_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.IsPlayWithPsnOnlyChanged
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.Settings
      L2_2 = L2_2.Account
      L3_2 = A1_2.setting
      L2_2.IsPlayWithPsnOnly = L3_2
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.Settings
      L2_2 = L2_2.Account
      L2_2 = L2_2.IsPlayWithPsnOnly
      if L2_2 then
        L2_2 = 1
        if L2_2 then
          goto lbl_46
        end
      end
      L2_2 = 2
      ::lbl_46::
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.SDKLuaReportAdapter
      L3_2 = L3_2.ReportPlayWithPsnOnlyState
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L0_1.set_content_text = L3_1
return L0_1
