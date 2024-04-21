local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSelectListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatars = L1_2
  A0_2._is_auto_click = true
  A0_2._use_async = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_get_avatar_item
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.move = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._avatars = nil
  A0_2._view_handler = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._trigger_callback = A1_2
  A0_2._trigger_listener = A2_2
end
L0_1.register_select_trigger_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._view_handler = A1_2
end
L0_1.register_view_handler = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._is_auto_click = A2_2
  A0_2._avatars = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatars_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._use_async
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_avatars
    L2_2 = L1_2
    L1_2 = L1_2.AsyncSetListItemCount
    L3_2 = A0_2._avatars
    L3_2 = #L3_2
    L4_2 = true
    L5_2 = A0_2.on_show_finish
    L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._use_async = false
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_avatars
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._avatars
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
L0_1._setup_avatars_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatars
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.on_show_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByRowColumn
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.move_panel_to_top = L1_1
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
    L7_2 = L7_2.AvatarItemIconLitePanel
    L8_2 = G
    L8_2 = L8_2.AvatarItemIconLitePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_auto_click
  L7_2 = A0_2._is_auto_click
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._click_callback
  L8_2 = A0_2._click_listener
  L9_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_trigger_callback
  L7_2 = A0_2._trigger_callback
  L8_2 = A0_2._trigger_listener
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_avatar_item
  L7_2 = L4_2
  L8_2 = A0_2._avatars
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._view_handler
  if L5_2 then
    L5_2 = A0_2._view_handler
    L6_2 = L4_2
    L7_2 = A0_2._avatars
    L8_2 = A2_2 + 1
    L7_2 = L7_2[L8_2]
    L5_2(L6_2, L7_2)
  end
  return L3_2
end
L0_1._on_get_avatar_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatars
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = A1_2 - 1
  L2_2(L3_2, L4_2)
end
L0_1.move_to_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_avatar_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_avatars
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      if L2_2 ~= nil then
        L2_2 = L1_2.UserObjectData
        L2_2 = L2_2._binder
        L2_2 = L2_2.btn_root
        L2_2 = L2_2.gameObject
        return L2_2
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_avatar_item_object = L1_1
return L0_1
