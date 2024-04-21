local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSubPropertyFilterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_include
  L4_2 = A0_2._on_btn_include
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exclude
  L4_2 = A0_2._on_btn_exclude
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._filter = nil
  A0_2._callback = nil
  A0_2._callback_self = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._filter = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_include
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Relic_Filter_SubAffix_Option_Positive"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_exclude
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Relic_Filter_SubAffix_Option_Negative"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_filter_changed_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_filter_changed_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.set_select_include
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
end
L0_1.clear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_filter
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_select_include
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_include
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_exclude
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_include_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_btn_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_select_include
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_active_filter_table
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._filter
  L4_2 = L3_2
  L3_2 = L3_2.clear
  L3_2(L4_2)
  L3_2 = A0_2._filter
  L4_2 = L3_2
  L3_2 = L3_2.set_select_include
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._callback
    L5_2 = A0_2._callback_self
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_include = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_select_include
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_active_filter_table
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._filter
  L4_2 = L3_2
  L3_2 = L3_2.clear
  L3_2(L4_2)
  L3_2 = A0_2._filter
  L4_2 = L3_2
  L3_2 = L3_2.set_select_include
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.invoke_callback
    L4_2 = A0_2._callback
    L5_2 = A0_2._callback_self
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_exclude = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._filter
  L1_2(L2_2, L3_2)
end
L0_1._refresh_filter = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._pre_panel = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_pre_navi_panel
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1.set_pre_navi_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._next_panel = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_next_navi_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_next_navi_panel = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_include
  return L1_2
end
L0_1.get_first_selectable_cmpt = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_include
  return L1_2
end
L0_1.get_last_selectable_cmpt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_include
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_navigation
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnNaviHandler = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_exclude
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_navigation
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L1_2.OnNaviHandler = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_navi
  L1_2(L2_2)
end
L0_1.refresh_navi = L1_1
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
  L5_2 = L5_2.Right
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_exclude
    L6_2 = L6_2.gameObject
    L4_2(L5_2, L6_2)
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Left
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_include
    L6_2 = L6_2.gameObject
    L4_2(L5_2, L6_2)
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Down
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L6_2 = A0_2._binder
    L6_2 = L6_2.filter_panel
    L7_2 = L6_2
    L6_2 = L6_2.get_first_selectable_cmpt
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.gameObject
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_navigation = L1_1
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
