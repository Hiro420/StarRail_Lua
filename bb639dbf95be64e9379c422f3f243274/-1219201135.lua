local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordMonsterIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordMonsterIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordListTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordListTitlePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordMonsterListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._select_index = -1
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._select_index
  if 0 <= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_punklord_list
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = A0_2._select_index
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.button
      if L2_2 then
        L2_2 = L1_2.UserObjectData
        L2_2 = L2_2._binder
        L2_2 = L2_2.button
        L2_2 = L2_2.gameObject
      end
      return L2_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_punklord_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_punklord_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._punklord_datas = nil
  A0_2._click_callback_handler = nil
  A0_2._click_callback_listener = nil
  A0_2._expire_callback_handler = nil
  A0_2._expire_callback_listener = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._punklord_datas = A1_2
  A0_2._cur_punklord = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._filter_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  A0_2._is_waiting_refresh = false
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_handler = A1_2
  A0_2._click_callback_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._expire_callback_handler = A1_2
  A0_2._expire_callback_listener = A2_2
end
L0_1.register_expire_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._self_summoned_count = 0
  A0_2._other_summoned_count = 0
  L1_2 = pairs
  L2_2 = A0_2._punklord_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsSummonedBySelf
    if L6_2 then
      L6_2 = A0_2._self_summoned_count
      L6_2 = L6_2 + 1
      A0_2._self_summoned_count = L6_2
    else
      L6_2 = A0_2._other_summoned_count
      L6_2 = L6_2 + 1
      A0_2._other_summoned_count = L6_2
    end
  end
end
L0_1._filter_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_punklord_list
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_punklord_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_list_item_count
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_punklord_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_punklord_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._punklord_datas
  L1_2 = #L1_2
  L2_2 = A0_2._self_summoned_count
  if L2_2 == 0 then
    L1_2 = L1_2 + 1
  end
  L2_2 = A0_2._other_summoned_count
  if L2_2 == 0 then
    L1_2 = L1_2 + 1
  end
  L2_2 = L1_2 + 2
  return L2_2
end
L0_1._get_list_item_count = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._is_title
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_list_item_title
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_empty
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_list_item_empty
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._select_index
  if L3_2 < 0 then
    A0_2._select_index = A2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_list_item_punklord
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_punklord_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == 0
  return L2_2
end
L0_1._is_self_summoned_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = A0_2._self_summoned_count
  L3_2 = L3_2 + 1
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._is_other_summoned_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_self_summoned_title
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_other_summoned_title
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
  end
  return L2_2
end
L0_1._is_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._self_summoned_count
  L2_2 = L2_2 == 0 and A1_2 == 1
  return L2_2
end
L0_1._is_self_summoned_empty_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._other_summoned_count
  L2_2 = L2_2 == 0
  return L2_2
end
L0_1._is_other_summoned_empty_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_self_summoned_empty_node
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_other_summoned_empty_node
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
  end
  return L2_2
end
L0_1._is_empty = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.IsInstanceOf
    L6_2 = L4_2
    L7_2 = G
    L7_2 = L7_2.PunkLordListTitlePanel
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_26
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.PunkLordListTitlePanel
  L8_2 = G
  L8_2 = L8_2.PunkLordListTitlePanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_26::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L8_2 = A0_2
  L7_2 = A0_2._is_self_summoned_title
  L9_2 = A2_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._setup_list_item_title = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.IsInstanceOf
    L6_2 = L4_2
    L7_2 = G
    L7_2 = L7_2.PunkLordMonsterIconPanel
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_26
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.PunkLordMonsterIconPanel
  L8_2 = G
  L8_2 = L8_2.PunkLordMonsterIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_26::
  L6_2 = L4_2
  L5_2 = L4_2.set_show_empty
  L7_2 = true
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._setup_list_item_empty = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.IsInstanceOf
    L6_2 = L4_2
    L7_2 = G
    L7_2 = L7_2.PunkLordMonsterIconPanel
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_26
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.PunkLordMonsterIconPanel
  L8_2 = G
  L8_2 = L8_2.PunkLordMonsterIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_26::
  L6_2 = A0_2
  L5_2 = A0_2._get_punklord_data_by_index
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_punklord
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2._on_punklord_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_expire_callback
  L8_2 = A0_2._on_punklord_expire
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_show_empty
  L8_2 = false
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._setup_list_item_punklord = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._self_summoned_count
  if L2_2 == 0 then
    L2_2 = A0_2._punklord_datas
    L3_2 = A1_2 - 2
    L2_2 = L2_2[L3_2]
    return L2_2
  end
  L2_2 = A0_2._self_summoned_count
  if A1_2 <= L2_2 then
    L2_2 = A0_2._punklord_datas
    L2_2 = L2_2[A1_2]
    return L2_2
  end
  L2_2 = A0_2._punklord_datas
  L3_2 = A1_2 - 1
  L2_2 = L2_2[L3_2]
  return L2_2
end
L0_1._get_punklord_data_by_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_punklord = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._click_callback_handler
  if L2_2 then
    L2_2 = A0_2._click_callback_handler
    L3_2 = A0_2._click_callback_listener
    L4_2 = A0_2._cur_punklord
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_punklord_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_waiting_refresh
  if L2_2 then
    return
  end
  A0_2._is_waiting_refresh = true
  L2_2 = A0_2._expire_callback_handler
  if L2_2 then
    L2_2 = A0_2._expire_callback_handler
    L3_2 = A0_2._expire_callback_handler
    L4_2 = A0_2._expire_callback_listener
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_punklord_expire = L1_1
return L0_1
