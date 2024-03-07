local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Contact.PhoneMessageGroupItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Contact.PhoneMessageGroupItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PhoneMessageContactItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._contact_data = nil
  L1_2 = {}
  A0_2._group_datas = L1_2
  A0_2._selected_group_id = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRefreshGroup
  L4_2 = A0_2._setup_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._select_title
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.invoke_callback
      L1_3 = A0_2._deselect_title_callback
      L2_3 = A0_2._deselect_title_self
      L3_3 = A0_2._index
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._has_battle
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_battle
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._group_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.ShowBattle
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L2_1._has_battle = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._contact_data = A1_2
  A0_2._selected_group_id = A3_2
  A0_2._index = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_contact_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_group_view
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_status
  L5_2(L6_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._contact_data
  L1_2 = L1_2.ID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PhoneMessage_ContactsID_Hero"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = L1_1.PlayerData
    L3_2 = L3_2.NickName
    L1_2(L2_2, L3_2)
    L1_2 = L1_1.PlayerData
    L1_2 = L1_2.HeroAvatarInfoData
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentHeroBasicType
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarExcelTable
    L2_2 = L2_2.GetData
    L3_2 = #L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img
      L6_2 = L2_2.AvatarSideIconPath
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L1_2 = A0_2._contact_data
    L1_2 = L1_2.ShownRow
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.Name
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img
    L5_2 = L1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PhoneMessageContract"
  L4_2 = A0_2._contact_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_contact_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_group_data
  L2_2(L3_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._sort_groups
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view_item
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._group_datas
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_expand_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_group_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.layout_item
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.layout_root
  L2_2(L3_2)
end
L2_1._setup_expand_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._group_datas = L1_2
  L1_2 = A0_2._contact_data
  L1_2 = L1_2.CurrentGroupIDs
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetMessageGroup
    L8_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._group_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L2_1._refresh_group_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._group_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_status_value
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_status_value
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    end
    L4_3 = A0_3.ShowBattle
    L5_3 = A1_3.ShowBattle
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.ShowBattle
      return L4_3
    end
    L4_3 = A0_3.LastTime
    L5_3 = A1_3.LastTime
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.LastTime
      L5_3 = A1_3.LastTime
      L4_3 = L4_3 > L5_3
      return L4_3
    end
    L4_3 = A0_3.GroupID
    L5_3 = A1_3.GroupID
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L2_1._sort_groups = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._select_title_callback = A1_2
  A0_2._select_title_self = A2_2
end
L2_1.register_select_title_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._deselect_title_callback = A1_2
  A0_2._deselect_title_self = A2_2
end
L2_1.register_deselect_title_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._contact_click_callback = A1_2
  A0_2._contact_click_handler = A2_2
end
L2_1.register_contact_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._group_click_callback = A1_2
  A0_2._group_click_handler = A2_2
end
L2_1.register_group_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._group_select_callback = A1_2
  A0_2._group_select_handler = A2_2
end
L2_1.register_group_select_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PhoneMessageGroupItemPanel
    L8_2 = G
    L8_2 = L8_2.PhoneMessageGroupItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_group_clicked
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_select_callback
    L7_2 = A0_2._on_group_selected
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._group_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._contact_data
  L10_2 = A0_2._selected_group_id
  L11_2 = L5_2.GroupID
  L10_2 = L10_2 == L11_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_order_view
  L8_2 = A2_2 + 1
  L8_2 = L8_2 == 1
  L9_2 = A2_2 + 1
  L10_2 = A0_2._group_datas
  L10_2 = #L10_2
  L9_2 = L9_2 == L10_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._selected_group_id = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view_item
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._group_datas
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._group_click_callback
  L5_2 = A0_2._group_click_handler
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L2_1._on_group_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_on_btn_click
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._select_title
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._contact_click_callback
  L3_2 = A0_2._contact_click_handler
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._do_on_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_title_fake_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._select_title_callback
  L3_2 = A0_2._select_title_self
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._select_title = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._group_select_callback
  L4_2 = A0_2._group_select_handler
  L5_2 = A0_2._index
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_group_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Status
  L3_2 = CS
  L3_2 = L3_2.PCHIIJEMIKI
  L3_2 = L3_2.PIIIFDKLGLA
  if L2_2 == L3_2 then
    L3_2 = 3
    return L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.PCHIIJEMIKI
    L3_2 = L3_2.GFEBLLNIBEP
    if L2_2 == L3_2 then
      L3_2 = 2
      return L3_2
    else
      L3_2 = CS
      L3_2 = L3_2.PCHIIJEMIKI
      L3_2 = L3_2.OJPJGLJDHKJ
      if L2_2 == L3_2 then
        L3_2 = 1
        return L3_2
      end
    end
  end
  L3_2 = 0
  return L3_2
end
L2_1._get_status_value = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L2_1.get_first_item_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_title_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_title_fake_object = L3_1
return L2_1
