local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeSellPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._need_fade_in = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_item_selected
  L5_2 = A0_2._on_item_selected
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_item_selected
  L3_2 = A0_2._on_item_navi_in
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._max_selection_count = A1_2
  A0_2._need_fade_in = true
  L3_2 = A0_2
  L2_2 = A0_2._get_all_item
  L2_2 = L2_2(L3_2)
  A0_2._item_table = L2_2
  L2_2 = {}
  A0_2._selected_materials = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._notify_material_changed
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._selected_materials = L1_2
end
L0_1.clear = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A2_2
  A0_2._callback_self = A1_2
end
L0_1.set_material_changed_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._except_item = A1_2
end
L0_1.set_except_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._cache_sort_type = A1_2
  A0_2._cache_descend = A2_2
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._item_table
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A0_3.IsProtected
    L3_3 = A1_3.IsProtected
    if L2_3 ~= L3_3 then
      L2_3 = A1_3.IsProtected
      return L2_3
    end
    L2_3 = G
    L2_3 = L2_3.InventoryUtils
    L2_3 = L2_3.compare_sort_equip
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A1_2
    L6_3 = A2_2
    L7_3 = nil
    L8_3 = nil
    return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.sort_items = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_detail_panel
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_detail_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_item_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_item
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._cur_item
  L1_2 = L1_2.IsProtected
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._remove_item
    L3_2 = A0_2._cur_item
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._notify_material_changed
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_materials
  return L1_2
end
L0_1.get_selected_materials = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._item_table
  return L1_2
end
L0_1.get_all_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._selected_materials = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.move_to_first_selected_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_material_changed
  L1_2(L2_2)
end
L0_1.clear_all = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  A0_2._selected_materials = L3_2
  A0_2._cache_sort_type = A1_2
  A0_2._cache_descend = A2_2
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._item_table
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A0_3.IsProtected
    L3_3 = A1_3.IsProtected
    if L2_3 ~= L3_3 then
      L2_3 = A1_3.IsProtected
      return L2_3
    end
    L2_3 = G
    L2_3 = L2_3.InventoryUtils
    L2_3 = L2_3.compare_sort_equip
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = A1_2
    L6_3 = A2_2
    L7_3 = nil
    L8_3 = nil
    return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.move_to_first_selected_item
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._notify_material_changed
  L3_2(L4_2)
end
L0_1.clear_and_sort = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = ipairs
  L2_2 = A0_2._selected_materials
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = A0_2._item_table
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L5_2.item
      L11_2 = L11_2.UID
      L12_2 = L10_2.UID
      if L11_2 == L12_2 then
        L11_2 = L10_2.IsProtected
        if L11_2 then
          L12_2 = A0_2
          L11_2 = A0_2._remove_item
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.move_to_first_selected_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_material_changed
  L1_2(L2_2)
end
L0_1.try_clear_lock_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._is_selected_limit
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = {}
  A0_2._selected_materials = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._is_selected_limit
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = L5_2.IsProtected
    if not L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._add_item
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.move_to_first_selected_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._notify_material_changed
  L1_2(L2_2)
end
L0_1.select_all = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.get_all_lightcone_items
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = 1
  L4_2 = #L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L9_2 = A0_2
    L8_2 = A0_2._is_lightcone_display
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L2_2[L8_2] = L7_2
    end
  end
  return L2_2
end
L0_1._get_all_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._except_item
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.IsSellable
  if L2_2 then
    L2_2 = A1_2.BelongAvatarID
    if L2_2 == 0 then
      goto lbl_14
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_14::
  L2_2 = A1_2.Rarity
  L2_2 = L2_2 <= 4
  return L2_2
end
L0_1._is_lightcone_display = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._selected_materials
  L5_2 = A0_2._item_table
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.item_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_first_item_panel
    L2_2 = L2_2(L3_2)
    A0_2._cur_item_panel = L2_2
  end
  L2_2 = A0_2._need_fade_in
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.item_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_fade_in
    L2_2(L3_2)
    A0_2._need_fade_in = false
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_item_panel = A2_2
  A0_2._cur_item = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._is_item_selected
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_list_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_cur_select
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._remove_item
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._is_selected_limit
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = "UIText_ItemSell_Toast_CountMax"
      L4_2(L5_2, L6_2)
      return
    else
      L4_2 = A1_2.IsProtected
      if L4_2 then
        L4_2 = G
        L4_2 = L4_2.NotifyManager
        L4_2 = L4_2.notify
        L5_2 = G
        L5_2 = L5_2.CS
        L5_2 = L5_2.NotifyType
        L5_2 = L5_2.UIPileToastMessageTextID
        L6_2 = "UIText_ItemSell_Hint_Lock"
        L4_2(L5_2, L6_2)
        return
      end
      L5_2 = A0_2
      L4_2 = A0_2._add_item
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.item_list_panel
    L5_2 = L4_2
    L4_2 = L4_2.refresh_short_cut_hint
    L6_2 = not L3_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A2_2
  L4_2 = A2_2.set_minus_btn
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._notify_material_changed
  L4_2(L5_2)
end
L0_1._on_item_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_item_panel = A2_2
  A0_2._cur_item = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.refresh_short_cut_hint
  L6_2 = A0_2
  L5_2 = A0_2._is_item_selected
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_cur_select
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_item_navi_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._selected_materials
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_item_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L2_2.item = A1_2
  L2_2.count = 1
  L3_2 = A0_2._selected_materials
  L4_2 = A0_2._selected_materials
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = L2_2
end
L0_1._add_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._selected_materials
  L1_2 = #L1_2
  L2_2 = A0_2._max_selection_count
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L0_1._is_selected_limit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._selected_materials
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.item
    if L7_2 == A1_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._selected_materials
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._remove_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2._item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Count
    if L6_2 == 0 then
      L6_2 = false
      return L6_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._is_item_table_valid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._callback_self
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_self
    L3_2 = A0_2._selected_materials
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._callback
    L2_2 = A0_2._selected_materials
    L1_2(L2_2)
  end
end
L0_1._notify_material_changed = L1_1
return L0_1
