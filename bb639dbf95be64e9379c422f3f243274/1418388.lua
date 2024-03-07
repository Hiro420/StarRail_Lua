local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.BaseAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.AvatarSelectStrategyBuilder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarElementFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarClassFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AvatarModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BaseAvatarSelectPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = 0.1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._show_hp = false
  L5_2 = G
  L5_2 = L5_2.AvatarSelectStrategyBuilder
  L5_2 = L5_2.get_strategy
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  A0_2._strategy = L5_2
  A0_2._is_auto_click = A4_2
  L5_2 = {}
  A0_2._all_avatars = L5_2
  L5_2 = {}
  A0_2._displayed_avatars = L5_2
  L5_2 = {}
  A0_2._selected_avatars = L5_2
  A0_2._click_item_callback = nil
  A0_2._last_selected_panel = nil
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_all_avatars
  L1_2 = L1_2(L2_2)
  A0_2._all_avatars = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_sort
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_avatars
  L3_2 = A0_2._all_avatars
  L1_2(L2_2, L3_2)
end
L1_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_close
    L4_2 = A0_2._on_btn_close
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_avatar
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_view_handler
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.setup_icon_view
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2(L2_2, L3_2)
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
  L3_2 = A0_2.get_top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._show_hp = nil
  A0_2._strategy = nil
  A0_2._all_avatars = nil
  A0_2._selected_avatars = nil
  A0_2._click_item_callback = nil
end
L1_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars_view
  L1_2(L2_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._displayed_avatars
  L4_2 = A0_2._is_auto_click
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_avatars_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._displayed_avatars = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._displayed_avatars
  L4_2 = #L4_2
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.move_panel_to_top
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._sorted_callback
  L4_2 = A0_2._sorted_handler
  L2_2(L3_2, L4_2)
end
L1_1._on_avatars_sorted = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = false
  end
  A0_2._show_hp = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars_view
  L2_2(L3_2)
end
L1_1.show_hp = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._strategy
  L1_2 = L1_2.max_selection
  if 1 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_first_avatar_item_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._last_selected_panel
    if L1_2 then
      L1_2 = A0_2._last_selected_panel
      L1_2 = L1_2._binder
      L1_2 = L1_2.btn_root
      L1_2 = L1_2.gameObject
      L2_2 = G
      L2_2 = L2_2.UIUtils
      L2_2 = L2_2.is_active
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        return L1_2
      else
        L3_2 = A0_2
        L2_2 = A0_2.get_first_avatar_item_object
        return L2_2(L3_2)
      end
    else
      L1_2 = nil
      return L1_2
    end
  end
end
L1_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_avatar_item_object
  return L1_2(L2_2)
end
L1_1.get_first_avatar_item_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_avatars
  return L1_2
end
L1_1.get_selected_avatars = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = A0_2._strategy
  L2_2 = L2_2.max_selection
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._selected_avatars
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L1_1.is_selection_empty = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar_sort
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_avatars
  L3_2 = A0_2._all_avatars
  L1_2(L2_2, L3_2)
end
L1_1.refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._move_to_avatar = A1_2
  L2_2 = nil
  L3_2 = ipairs
  L4_2 = A0_2._displayed_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = G
    L8_2 = L8_2.AvatarUtils
    L8_2 = L8_2.is_same_avatar
    L9_2 = L7_2
    L10_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L2_2 = L6_2
      break
    end
  end
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.avatar_list_panel
    L4_2 = L3_2
    L3_2 = L3_2.move_to_index
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1.move_to_avatar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L1_1.refresh_without_sort = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._sorted_callback = A1_2
  A0_2._sorted_handler = A2_2
end
L1_1.register_sorted_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._click_item_callback = A1_2
end
L1_1.register_click_item_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._strategy
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_avatars
  L4_2 = A0_2._selected_avatars
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._selected_avatars = L2_2
end
L1_1.set_selected_avatar = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._strategy
  if L4_2 ~= nil then
    L4_2 = A0_2._strategy
    L4_2 = L4_2.get_selected_avatars
    if L4_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L5_2 = A0_2
  L4_2 = A0_2.customized_click_check
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = A0_2._strategy
  L5_2 = L4_2
  L4_2 = L4_2.get_selected_avatars
  L6_2 = A0_2._selected_avatars
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._selected_avatars = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._update_last_selected_panel
  L6_2 = A2_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._strategy
  L4_2 = L4_2.auto_refresh_on_click
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_view
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.setup_icon_view
    L6_2 = A2_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2._click_item_callback
  if L4_2 then
    L4_2 = A0_2._click_item_callback
    L5_2 = A1_2
    L4_2(L5_2)
  end
end
L1_1._on_click_avatar = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      A0_2._last_selected_panel = A1_2
      A0_2._last_selected_avatar = A2_2
    end
  end
end
L1_1._update_last_selected_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._strategy
  L3_2 = L3_2.max_selection
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._selected_avatars
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = G
      L6_2 = L6_2.AvatarUtils
      L6_2 = L6_2.is_same_avatar
      L7_2 = A1_2
      L8_2 = A0_2._selected_avatars
      L8_2 = L8_2[L5_2]
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        return L5_2
      end
    end
  end
  L2_2 = 0
  return L2_2
end
L1_1._get_selected_order = L3_1
function L3_1(A0_2, A1_2)
  A0_2._close_callback = A1_2
end
L1_1.register_close_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._close_callback
  if L1_2 then
    L1_2 = A0_2._close_callback
    L1_2()
  end
end
L1_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = L0_1.AllAvatars
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L1_1.get_all_avatars = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  return L1_2
end
L1_1.get_top_avatars = L3_1
function L3_1(A0_2, A1_2, A2_2)
end
L1_1.setup_icon_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L1_1.customized_click_check = L3_1
return L1_1
