local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "DisplayAvatarSelectPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_dict
  L4_2 = L0_1.AllAvatars
  L3_2 = L3_2(L4_2)
  A0_2._all_avatars = L3_2
  A0_2._selected_avatars = A1_2
  L3_2 = {}
  A0_2._displayed_avatars = L3_2
  A0_2._max_display_num = A2_2
end
L1_1.init = L2_1
function L2_1(A0_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_sort
  L2_2 = L1_2
  L1_2 = L1_2.register_sort_change_callback
  L3_2 = A0_2._on_avatars_sorted
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_sort
  L2_2 = L1_2
  L1_2 = L1_2.register_locked_getter
  L3_2 = A0_2._top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._selection_callback = A1_2
  A0_2._selection_handler = A2_2
end
L1_1.register_selection_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_sort
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_avatars
  L3_2 = A0_2._all_avatars
  L1_2(L2_2, L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._displayed_avatars
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
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
L1_1._setup_avatar = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
    L6_2 = L4_2
    L5_2 = L4_2.setup_auto_click
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_avatar
    L8_2 = A0_2
    L9_2 = A2_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A0_2._displayed_avatars
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._get_selected_order
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2 ~= nil
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L5_2
  L11_2 = false
  L12_2 = L7_2
  L13_2 = nil
  L14_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_order
  L10_2 = L7_2
  L11_2 = L6_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_show_hp
  L10_2 = false
  L8_2(L9_2, L10_2)
  return L3_2
end
L1_1._on_get_avatar_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.AvatarUtils
  L2_2 = L2_2.index_of_nonsequence_avatar
  L3_2 = A0_2._selected_avatars
  L4_2 = A1_2
  L5_2 = A0_2._max_display_num
  return L2_2(L3_2, L4_2, L5_2)
end
L1_1._get_selected_order = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L1_1._top_avatars = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._displayed_avatars = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_avatars
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByRowColumn
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._on_avatars_sorted = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._update_selected_avatars
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_avatar
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._selection_callback
  L6_2 = A0_2._selection_handler
  L7_2 = A0_2._selected_avatars
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._on_click_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_order
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._try_unselect_avatar
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._try_select_avatar
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._update_selected_avatars = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._selected_avatars
  L2_2[A1_2] = nil
end
L1_1._try_unselect_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._max_display_num
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_avatars
    L6_2 = L6_2[L5_2]
    if L6_2 == nil then
      L6_2 = A0_2._selected_avatars
      L6_2[L5_2] = A1_2
      return
    end
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIPileToastMessageTextID
  L4_2 = "UIText_ShowAvatar_Max"
  L2_2(L3_2, L4_2)
end
L1_1._try_select_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_selected_order
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_unselect_avatar
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatar
  L3_2(L4_2)
end
L1_1.unselect_avatar_by_out = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
