local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.SelectFilterNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.SelectFilterNodeBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicFilterMultiTogglePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_filter_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._filter = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._filter
  L3_2 = L2_2
  L2_2 = L2_2.save
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.load
  L1_2(L2_2)
end
L0_1.reset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.clear = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_filter_changed_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_filter_data
  L1_2 = L1_2(L2_2)
  A0_2._data = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.SelectFilterNode
    L8_2 = G
    L8_2 = L8_2.SelectFilterNodeBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.get_first_selectable_cmpt
    L5_2 = L5_2(L6_2)
    function L6_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._on_navigation
      L5_3 = A0_3
      L6_3 = A1_3
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L5_2.OnNaviHandler = L6_2
  end
  L5_2 = A0_2._data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._on_filter_click
  L10_2 = A2_2 + 1
  L11_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._filter
  L9_2 = L8_2
  L8_2 = L8_2.is_selected
  L10_2 = L5_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L4_2
  L6_2 = L4_2.enable_color_img
  L8_2 = A0_2._filter
  L9_2 = L8_2
  L8_2 = L8_2.is_use_color_img
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L0_1._on_filter_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._filter
  L4_2 = L3_2
  L3_2 = L3_2.toggle_filter_state_by_type
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = A0_2._filter
  L6_2 = L5_2
  L5_2 = L5_2.get_cache
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._filter
  L4_2 = L3_2
  L3_2 = L3_2.is_multi_select
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._unselect_all_except
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._callback
  L5_2 = A0_2._callback_self
  L3_2(L4_2, L5_2)
end
L0_1._on_filter_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.option_list
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._data
    L8_2 = L5_2 + 1
    L7_2 = L7_2[L8_2]
    if L6_2 ~= nil then
      L8_2 = L7_2.FilterType
      if L8_2 ~= A1_2 then
        L8_2 = L6_2.UserObjectData
        L10_2 = L8_2
        L9_2 = L8_2.set_selected
        L11_2 = false
        L9_2(L10_2, L11_2)
      end
    end
  end
  L2_2 = A0_2._filter
  L3_2 = L2_2
  L2_2 = L2_2.set_all_filter_state
  L4_2 = false
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._unselect_all_except = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A3_2 then
    return
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Up
  if L4_2 == L5_2 then
    L4_2 = A0_2._pre_panel
    if L4_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2.set_navigation_target
      L6_2 = A0_2._pre_panel
      L7_2 = L6_2
      L6_2 = L6_2.get_last_selectable_cmpt
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.gameObject
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Down
  if L4_2 == L5_2 then
    L4_2 = A0_2._next_panel
    if L4_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2.set_navigation_target
      L6_2 = A0_2._next_panel
      L7_2 = L6_2
      L6_2 = L6_2.get_first_selected_object
      L6_2, L7_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._on_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.option_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selectable_cmpt
    return L3_2(L4_2)
  end
end
L0_1._get_list_selectable_cmpt_by_index = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.refresh_navi = L1_1
function L1_1(A0_2, A1_2)
  A0_2._pre_panel = A1_2
end
L0_1.set_pre_navi_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._next_panel = A1_2
end
L0_1.set_next_navi_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_list_selectable_cmpt_by_index
  L3_2 = 0
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selectable_cmpt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_list_selectable_cmpt_by_index
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  return L1_2(L2_2, L3_2)
end
L0_1.get_last_selectable_cmpt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_first_selectable_cmpt
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
