local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Mail.MailDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.MailModule
L0_1 = L0_1.Instance
L1_1 = "Mail_delete_confirm"
L2_1 = "UIText_SysMail_AttachItemsOverCapacity"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.TextmapStatic
L4_1 = "UIText_Mail_TimeCode"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "MailDetailPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L5_1._on_enter_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_in_control_button_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L5_1._on_leave_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.delete_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.delete_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L5_1.setup_in_control_button_enable = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_delete
  L4_2 = A0_2._on_btn_delete
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_gamepad_link
  L4_2 = A0_2._trigger_gamepad_link_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._text_href_click
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.onClick = L2_2
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  A0_2._mail_data = nil
  A0_2._config_id_list = nil
  A0_2._item_table = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_item
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L1_2.onClick = nil
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_gamepad_link
  L1_2 = L1_2.gameObject
  return L1_2
end
L5_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._mail_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L3_1.CompileActivityName
  L5_2 = A1_2.Title
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_mail_owner
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.Sender
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_LocalizationManager
  L2_2 = L2_2.CurrentTextLanguage
  if L2_2 == "jp" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L2_2.lineSpacing = 1.67
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L2_2.lineSpacing = 1.34
  end
  L2_2 = A1_2.Content
  L3_2 = L3_1.CompileActivityName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = L3_1.CompileLocalizedTime
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = os
  L3_2 = L3_2.date
  L4_2 = "%Y"
  L5_2 = A1_2.RecieveTime
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%m"
  L6_2 = A1_2.RecieveTime
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = os
  L5_2 = L5_2.date
  L6_2 = "%d"
  L7_2 = A1_2.RecieveTime
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = os
  L6_2 = L6_2.date
  L7_2 = "%H"
  L8_2 = A1_2.RecieveTime
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = os
  L7_2 = L7_2.date
  L8_2 = "%M"
  L9_2 = A1_2.RecieveTime
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.text_recieve_date
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetTextID
  L10_2 = L4_1
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = L6_2
  L15_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = A1_2.MailItems
  L8_2 = nil ~= L8_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_achievement_list_panel
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L10_2 = A1_2
  L9_2 = A1_2.has_reward
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_get
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = true
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_delete
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = false
    L9_2(L10_2, L11_2)
  else
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_get
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = false
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_delete
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = true
    L9_2(L10_2, L11_2)
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.scroll_item
  L10_2 = L9_2
  L9_2 = L9_2.SafeInitGridView
  L11_2 = 0
  L12_2 = A0_2._on_item_changed
  L13_2 = nil
  L14_2 = nil
  L15_2 = A0_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = A0_2
  L9_2 = A0_2._refresh_attach_items
  L9_2(L10_2)
end
L5_1.refresh_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._item_table = L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = pairs
  L2_2 = A0_2._mail_data
  L2_2 = L2_2.MailItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._item_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_id_list
    L8_2 = L5_2.ConfigID
    L6_2(L7_2, L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.sort_reward_item
  L2_2 = A0_2._item_table
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L5_1._refresh_attach_items = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLite
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLiteBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._item_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view_by_display_data
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.set_attachment_getted
  L10_2 = A0_2._mail_data
  L10_2 = L10_2.IsRead
  L8_2(L9_2, L10_2)
  return L5_2
end
L5_1._on_item_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L1_2 = L1_2.m_HrefInfos
  L2_2 = L1_2.Count
  if L2_2 == 0 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2[0]
  return L2_2
end
L5_1._get_cur_href_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_href_info
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = math
  L2_2 = L2_2.maxinteger
  L3_2 = math
  L3_2 = L3_2.mininteger
  L4_2 = 0
  L5_2 = L1_2.boxes
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = math
    L8_2 = L8_2.min
    L9_2 = L2_2
    L10_2 = L1_2.boxes
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.yMin
    L8_2 = L8_2(L9_2, L10_2)
    L2_2 = L8_2
    L8_2 = math
    L8_2 = L8_2.max
    L9_2 = L3_2
    L10_2 = L1_2.boxes
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.yMax
    L8_2 = L8_2(L9_2, L10_2)
    L3_2 = L8_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_text_content
  L4_2 = L4_2.rect
  L4_2 = L4_2.width
  L5_2 = L3_2 - L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_gamepad_link
  L7_2 = L6_2
  L6_2 = L6_2.SetSizeWithCurrentAnchors
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.RectTransform
  L8_2 = L8_2.Axis
  L8_2 = L8_2.Horizontal
  L9_2 = L4_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_gamepad_link
  L7_2 = L6_2
  L6_2 = L6_2.SetSizeWithCurrentAnchors
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.RectTransform
  L8_2 = L8_2.Axis
  L8_2 = L8_2.Vertical
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_gamepad_link
  L6_2 = L6_2.localPosition
  L7_2 = A0_2._binder
  L7_2 = L7_2.rect_gamepad_link
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.Vector3
  L9_2 = L6_2.x
  L10_2 = A0_2._binder
  L10_2 = L10_2.rect_text_content
  L10_2 = L10_2.localPosition
  L10_2 = L10_2.y
  L10_2 = L3_2 + L10_2
  L11_2 = L6_2.z
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L7_2.localPosition = L8_2
end
L5_1._reset_gamepad_link_pos = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_href_info
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._text_href_click
  L4_2 = L1_2.type
  L5_2 = L1_2.name
  L2_2(L3_2, L4_2, L5_2)
end
L5_1._trigger_gamepad_link_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_href_info
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L5_1.has_link = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_gamepad_link_pos
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_href_info
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L3_2 = L2_2
  L2_2 = L2_2.LuaGetWorldCorners
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gamepad_link
  L4_2 = L3_2
  L3_2 = L3_2.LuaGetWorldCorners
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2[0]
  L4_2 = L4_2.y
  L5_2 = L3_2[1]
  L5_2 = L5_2.y
  L4_2 = L4_2 <= L5_2
  return L4_2
end
L5_1.has_gamepad_link_in_sight = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mail_data
  L2_2 = L1_2
  L1_2 = L1_2.has_optional_reward
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_optional_reward
    L1_2(L2_2)
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.get_mail_attachment
  L3_2 = A0_2._mail_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L5_1._on_btn_get = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattlePassRewardPointData
  L1_2 = L1_2.CreateDataFromItemUse
  L2_2 = A0_2._mail_data
  L2_2 = L2_2.MailItems
  L2_2 = L2_2[1]
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.BattlePass.BattlePassRewardChoiceDialog"
  L4_2 = L1_2
  L5_2 = false
  L6_2 = A0_2._on_option_chosen
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L5_1._get_optional_reward = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    return
  end
  L3_2 = A2_2[0]
  L3_2 = L3_2.OptionalRewardId
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.get_mail_attachment
  L6_2 = A0_2._mail_data
  L6_2 = L6_2.ID
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L5_1._on_option_chosen = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = L1_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.delete_mail
      L3_3 = A0_2._mail_data
      L3_3 = L3_3.ID
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_btn_delete = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.open_url
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L5_1._text_href_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L5_1._on_in_control_action_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._config_id_list
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L5_1._on_left_stick_button_click = L6_1
return L5_1
