local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicFilterCombineMultiSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_list
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
  A0_2._filters = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._filters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.load
    L6_2(L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.reset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._filters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.clear
    L6_2(L7_2)
  end
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
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_filter_list
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  A0_2._active_filter_datas = L1_2
  L1_2 = pairs
  L2_2 = A0_2._filters
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_active_filter_table
    L6_2 = L6_2(L7_2)
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._active_filter_datas
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._active_filter_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_filter_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FilterItemPanel
    L8_2 = G
    L8_2 = L8_2.FilterItemPanelBinder
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
  L5_2 = A0_2._active_filter_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.FilterType
  L9_2 = L5_2.Name
  L10_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_click_filter_data
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_filter_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = pairs
  L4_2 = A0_2._filters
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.set_filter_state_by_type
    L10_2 = A1_2
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_filter_changed
  L3_2(L4_2)
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A2_2
  L5_2 = A0_2._active_filter_datas
  L5_2 = #L5_2
  L3_2 = L3_2(L4_2, L5_2)
  A2_2 = L3_2
  if A2_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_first_selected_object
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2._get_list_selectable_cmpt_by_index
    L7_2 = A2_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_filter_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._filters
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Common.FilterSort.CommonFilterDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = nil
  L5_2 = A0_2._filters
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_is_auto_filter_on_confirm
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_finish_filter_callback
  L4_2 = A0_2._on_filter_changed
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_bottom_tips
  L4_2 = "UIText_Relic_Filter_SetFilter_Hint_1"
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_filter_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_list
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
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L7_2 = A0_2
    L6_2 = A0_2.get_first_selected_object
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
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
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    if A2_3 then
      return
    end
    L3_3 = A0_3.moveDir
    L4_3 = CS
    L4_3 = L4_3.UnityEngine
    L4_3 = L4_3.EventSystems
    L4_3 = L4_3.MoveDirection
    L4_3 = L4_3.Up
    if L3_3 == L4_3 then
      L3_3 = A0_2._pre_panel
      if L3_3 ~= nil then
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.set_navigation_target
        L5_3 = A0_2._pre_panel
        L6_3 = L5_3
        L5_3 = L5_3.get_last_selectable_cmpt
        L5_3 = L5_3(L6_3)
        L5_3 = L5_3.gameObject
        L3_3(L4_3, L5_3)
      end
    end
    L3_3 = A0_3.moveDir
    L4_3 = CS
    L4_3 = L4_3.UnityEngine
    L4_3 = L4_3.EventSystems
    L4_3 = L4_3.MoveDirection
    L4_3 = L4_3.Down
    if L3_3 == L4_3 then
      L3_3 = A0_2._active_filter_datas
      L3_3 = #L3_3
      if 0 < L3_3 then
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.set_navigation_target
        L5_3 = A0_2
        L6_3 = L5_3
        L5_3 = L5_3._get_list_selectable_cmpt_by_index
        L7_3 = 0
        L5_3 = L5_3(L6_3, L7_3)
        L5_3 = L5_3.gameObject
        L3_3(L4_3, L5_3)
      else
        L3_3 = A0_2._next_panel
        if L3_3 ~= nil then
          L3_3 = A0_2
          L4_3 = L3_3
          L3_3 = L3_3.set_navigation_target
          L5_3 = A0_2._next_panel
          L6_3 = L5_3
          L5_3 = L5_3.get_first_selected_object
          L5_3, L6_3, L7_3 = L5_3(L6_3)
          L3_3(L4_3, L5_3, L6_3, L7_3)
        end
      end
    end
  end
  L1_2.OnNaviHandler = L2_2
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
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_first_selectable_cmpt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._active_filter_datas
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_list_selectable_cmpt_by_index
  L3_2 = A0_2._active_filter_datas
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
