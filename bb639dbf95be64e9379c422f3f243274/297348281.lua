local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._all_avatars = L1_2
  L1_2 = {}
  A0_2._displayed_avatars = L1_2
  A0_2._use_async = true
  A0_2._first_sorted = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_sort
  L2_2 = L1_2
  L1_2 = L1_2.register_sort_change_callback
  L3_2 = A0_2._on_avatars_sorted
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._use_async = A1_2
end
L0_1.enable_async = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatars
  L4_2 = L3_2
  L3_2 = L3_2.SafeInitGridView
  L5_2 = 0
  L6_2 = A1_2
  L7_2 = nil
  L8_2 = nil
  L9_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_sort
  L4_2 = L3_2
  L3_2 = L3_2.register_locked_getter
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_top_avatar_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._sorted_callback = A1_2
  A0_2._sorted_handler = A2_2
end
L0_1.register_sorted_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._async_shown_callback = A1_2
  A0_2._async_shown_handler = A2_2
end
L0_1.register_async_shown_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_avatar_sort
  L4_2 = L3_2
  L3_2 = L3_2.set_customed_compare
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_customed_compare = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._all_avatars = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_avatar_sort
  L3_2 = L2_2
  L2_2 = L2_2.setup_sort_avatars
  L4_2 = A0_2._all_avatars
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.index_of_avatar
  L3_2 = A0_2._displayed_avatars
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatars
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemByIndex
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
end
L0_1.move_to_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._all_avatars
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._use_async
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_avatars
    L2_2 = L1_2
    L1_2 = L1_2.AsyncSetListItemCount
    L3_2 = A0_2._displayed_avatars
    L3_2 = #L3_2
    L4_2 = true
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.on_show_finish
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_avatars
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._displayed_avatars
    L3_2 = #L3_2
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_avatars
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
end
L0_1.refresh_displayed_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._use_async = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._async_shown_callback
  L3_2 = A0_2._async_shown_handler
  L1_2(L2_2, L3_2)
end
L0_1.on_show_finish = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._displayed_avatars
  return L1_2
end
L0_1.get_displayed_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._displayed_avatars = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_displayed_avatars
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._sorted_callback
  L4_2 = A0_2._sorted_handler
  L5_2 = A0_2._first_sorted
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._first_sorted
  if L2_2 then
    A0_2._first_sorted = false
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_avatars
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByRowColumn
    L4_2 = 0
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_avatars_sorted = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_selected_object
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.index_of_avatar
  L3_2 = A0_2._displayed_avatars
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.get_selected_object
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1.get_avatar_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatars
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L0_1.get_selected_object = L1_1
return L0_1
