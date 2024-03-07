local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ItemTip.ItemTipsBottomListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemTip.ItemRoundIconPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemTipsBottomListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._config_id_list = nil
  A0_2._selected_index = 1
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_selected_object_by_index
  L3_2 = 0
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_selected_object_by_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L0_1.register_click_call_back = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_list
  L3_2 = L2_2
  L2_2 = L2_2.GetVisibleMinIndex
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_list
  L4_2 = L3_2
  L3_2 = L3_2.GetVisibleMaxIndex
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_list
  L5_2 = L4_2
  L4_2 = L4_2.GetShownItemByItemIndex
  L6_2 = A0_2._selected_index
  L6_2 = L6_2 - 1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.UserObjectData
    L6_2 = L5_2
    L5_2 = L5_2.set_checked
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._selected_index
  A0_2._selected_index = A1_2
  L6_2 = L2_2 + 1
  if A1_2 >= L6_2 then
    L6_2 = L3_2 + 1
    if A1_2 <= L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.scroll_list
      L7_2 = L6_2
      L6_2 = L6_2.GetShownItemByItemIndex
      L8_2 = A0_2._selected_index
      L8_2 = L8_2 - 1
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L8_2 = L7_2
        L7_2 = L7_2.set_checked
        L9_2 = true
        L7_2(L8_2, L9_2)
      end
  end
  else
    L6_2 = L2_2 + 1
    if A1_2 < L6_2 then
      L6_2 = A0_2._selected_index
      L6_2 = L2_2 + L6_2
      L6_2 = L6_2 - L5_2
      if L6_2 < 0 then
        L6_2 = 0
      end
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_list
      L8_2 = L7_2
      L7_2 = L7_2.MovePanelToItemIndex
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_list
      L8_2 = L7_2
      L7_2 = L7_2.GetShownItemByItemIndex
      L9_2 = A0_2._selected_index
      L9_2 = L9_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L8_2 = L7_2.UserObjectData
        L9_2 = L8_2
        L8_2 = L8_2.set_checked
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    else
      L6_2 = L3_2 + 1
      if A1_2 > L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_list
        L7_2 = L6_2
        L6_2 = L6_2.MovePanelToItemIndex
        L8_2 = A0_2._selected_index
        L8_2 = L2_2 + L8_2
        L8_2 = L8_2 - L5_2
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_list
        L7_2 = L6_2
        L6_2 = L6_2.GetShownItemByItemIndex
        L8_2 = A0_2._selected_index
        L8_2 = L8_2 - 1
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 ~= nil then
          L7_2 = L6_2.UserObjectData
          L8_2 = L7_2
          L7_2 = L7_2.set_checked
          L9_2 = true
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
end
L0_1.set_checked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2 or nil
  if not A1_2 then
    L3_2 = {}
  end
  A0_2._config_id_list = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._is_param_item = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._config_id_list
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemRoundIconPanel
    L8_2 = G
    L8_2 = L8_2.ItemRoundIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = A0_2
  L5_2 = A0_2._get_config_id
  L7_2 = A2_2 + 1
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_call_back
  L8_2 = A0_2._click_callback
  L9_2 = A0_2._click_callback_self
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = A0_2._selected_index
  L8_2 = L8_2 - 1
  L8_2 = A2_2 == L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._is_param_item
  if L2_2 then
    L2_2 = A0_2._config_id_list
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.ConfigID
    return L2_2
  else
    L2_2 = A0_2._config_id_list
    L2_2 = L2_2[A1_2]
    return L2_2
  end
end
L0_1._get_config_id = L1_1
return L0_1
