local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.SelectFilterNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.SelectFilterNodeBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousFilterDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.data = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_filter_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._filter = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_title_view
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.get_filter_data
  L2_2 = L2_2(L3_2)
  A0_2.data = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.order_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2.data
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.get_title_text_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_title_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2.data
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.order_list
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.set_selected
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = A0_2._filter
  L2_2 = L1_2
  L1_2 = L1_2.set_all_filter_state
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._filter_changed_cbk
  L3_2 = A0_2._filter_changed_cbk_self
  L1_2(L2_2, L3_2)
end
L0_1.unselect_all = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_list
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
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_list
  return L1_2
end
L0_1.get_static_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._filter_changed_cbk = A1_2
  A0_2._filter_changed_cbk_self = A2_2
end
L0_1.register_filter_changed_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 0
  L3_2 = A0_2.data
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.order_list
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2.data
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
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._filter_changed_cbk
  L4_2 = A0_2._filter_changed_cbk_self
  L2_2(L3_2, L4_2)
end
L0_1._unselect_all_except = L1_1
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
  end
  L5_2 = A0_2.data
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
  L3_2 = L3_2.is_must_select
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._filter
    L4_2 = L3_2
    L3_2 = L3_2.get_cache
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      return
    end
  end
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
  L4_2 = A0_2._filter_changed_cbk
  L5_2 = A0_2._filter_changed_cbk_self
  L3_2(L4_2, L5_2)
end
L0_1._on_filter_click = L1_1
return L0_1
