local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicFilterToggleSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._filter = A1_2
end
L0_1.init_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._filter = A1_2
  L2_2 = A0_2._filter
  L3_2 = L2_2
  L2_2 = L2_2.save
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = A1_2
  L4_2 = A1_2.get_title_text_id
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.load
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
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
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_filter_list
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_filter_data
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_toggle_item_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_count
  L4_2 = #L1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_toggle_item_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.setup_view
      L10_2 = L6_2
      L11_2 = L6_2.Name
      L12_2 = L5_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L9_2 = L7_2
      L8_2 = L7_2.register_click_callback
      L10_2 = A0_2._on_toggle_item_click
      L11_2 = A0_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = L7_2._binder
      L8_2 = L8_2.btn_root
      L9_2 = L8_2
      L8_2 = L8_2.SetChecked
      L10_2 = A0_2._filter
      L11_2 = L10_2
      L10_2 = L10_2.get_cache
      L12_2 = L6_2.FilterType
      L10_2 = L10_2(L11_2, L12_2)
      if not L10_2 then
        L10_2 = false
      end
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.get_first_selectable_cmpt
      L8_2 = L8_2(L9_2)
      function L9_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3._on_navigation
        L5_3 = A0_3
        L6_3 = A1_3
        L7_3 = A2_3
        L8_3 = L5_2
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      end
      L8_2.OnNaviHandler = L9_2
    end
  end
end
L0_1._refresh_filter_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2.FilterType
  L4_2 = A0_2._filter
  L5_2 = L4_2
  L4_2 = L4_2.get_cache
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A0_2._filter
    L5_2 = L4_2
    L4_2 = L4_2.toggle_filter_state_by_type
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._filter
    L5_2 = L4_2
    L4_2 = L4_2.get_filter_data
    L4_2 = L4_2(L5_2)
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = A0_2._filter
      L11_2 = L10_2
      L10_2 = L10_2.set_filter_state_by_type
      L12_2 = L9_2.FilterType
      L13_2 = L9_2.FilterType
      L13_2 = L13_2 == L3_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_filter_list
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._callback
  L6_2 = A0_2._callback_self
  L4_2(L5_2, L6_2)
end
L0_1._on_toggle_item_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  if A3_2 then
    return
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Left
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.get_selectable_cmpt_by_index
    L7_2 = A4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L7_2 = A0_2
      L6_2 = A0_2.set_navigation_target
      L8_2 = L5_2.gameObject
      L6_2(L7_2, L8_2)
    end
    return
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Right
  if L5_2 == L6_2 then
    L6_2 = A0_2
    L5_2 = A0_2.get_selectable_cmpt_by_index
    L7_2 = A4_2 + 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L7_2 = A0_2
      L6_2 = A0_2.set_navigation_target
      L8_2 = L5_2.gameObject
      L6_2(L7_2, L8_2)
    end
    return
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Up
  if L5_2 == L6_2 then
    L5_2 = A0_2._pre_panel
    if L5_2 ~= nil then
      L5_2 = nil
      L6_2 = A0_2._pre_panel
      L6_2 = L6_2.get_selectable_cmpt_by_index
      if L6_2 ~= nil then
        L6_2 = A0_2._pre_panel
        L7_2 = L6_2
        L6_2 = L6_2.get_selectable_cmpt_by_index
        L8_2 = A4_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      else
        L6_2 = A0_2._pre_panel
        L7_2 = L6_2
        L6_2 = L6_2.get_last_selectable_cmpt
        L6_2 = L6_2(L7_2)
        L5_2 = L6_2
      end
      if L5_2 ~= nil then
        L7_2 = A0_2
        L6_2 = A0_2.set_navigation_target
        L8_2 = L5_2.gameObject
        L6_2(L7_2, L8_2)
      end
      return
    end
  end
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Down
  if L5_2 == L6_2 then
    L5_2 = A0_2._next_panel
    if L5_2 ~= nil then
      L5_2 = nil
      L6_2 = A0_2._next_panel
      L6_2 = L6_2.get_selectable_cmpt_by_index
      if L6_2 ~= nil then
        L6_2 = A0_2._next_panel
        L7_2 = L6_2
        L6_2 = L6_2.get_selectable_cmpt_by_index
        L8_2 = A4_2
        L6_2 = L6_2(L7_2, L8_2)
        L5_2 = L6_2
      else
        L6_2 = A0_2._next_panel
        L7_2 = L6_2
        L6_2 = L6_2.get_first_selected_object
        L6_2 = L6_2(L7_2)
        L5_2 = L6_2
      end
      if L5_2 ~= nil then
        L7_2 = A0_2
        L6_2 = A0_2.set_navigation_target
        L8_2 = L5_2.gameObject
        L6_2(L7_2, L8_2)
      end
    end
  end
end
L0_1._on_navigation = L1_1
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
end
L0_1.refresh_navi = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_toggle_item_list
  L3_2 = L2_2
  L2_2 = L2_2.get_panel_by_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selectable_cmpt
    return L3_2(L4_2)
  end
end
L0_1.get_selectable_cmpt_by_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_selectable_cmpt_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
