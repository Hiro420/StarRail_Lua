local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueReviveSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatars = L1_2
  L1_2 = {}
  A0_2._selected_avatars = L1_2
  A0_2._is_auto_click = true
end
L0_1.ctor = L2_1
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
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._avatars = nil
  A0_2._click_listener = nil
  A0_2._on_select_avatar_changed = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.AvatarUtils
    L7_2 = L7_2.is_same_avatar
    L8_2 = L6_2.avatar_data
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1._has_been_selected = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2
  L4_2 = A0_2._has_been_selected
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == 0 then
    L6_2 = A0_2
    L5_2 = A0_2._select_avatar
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._unselect_avatar
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._process_select_callback
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L0_1._on_click_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_select_avatar_changed
  if L2_2 ~= nil then
    L2_2 = A0_2._on_select_avatar_changed
    L3_2 = A0_2._click_listener
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._process_select_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L4_2.avatar_data = A1_2
  L4_2.panel = A2_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._selected_avatars
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L5_2 = A2_2.setup_minus_btn
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1._select_avatar = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = table
  L4_2 = L4_2.remove
  L5_2 = A0_2._selected_avatars
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._unselect_view
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1._unselect_avatar = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.setup_minus_btn
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._unselect_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.AvatarSelectIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSelectIconPanelBinder
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
  L7_2 = A0_2._on_click_avatar
  L8_2 = A0_2
  L9_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_avatar_item
  L7_2 = L4_2
  L8_2 = A0_2._avatars
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_get_avatar_item = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_show_hp
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._setup_avatar_item = L2_1
function L2_1(A0_2)
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
L0_1._setup_avatars_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = table
  L1_2 = L1_2.getn
  L2_2 = A0_2._selected_avatars
  return L1_2(L2_2)
end
L0_1.get_selected_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2.avatar_data
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_all_selected_avatar_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._is_auto_click = A2_2
  A0_2._avatars = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatars_view
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByRowColumn
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.move_panel_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._selected_avatars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._unselect_view
    L8_2 = L5_2.panel
    L6_2(L7_2, L8_2)
  end
  L1_2 = {}
  A0_2._selected_avatars = L1_2
end
L0_1.unselect_all = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_listener = A1_2
  A0_2._on_select_avatar_changed = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
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
L0_1.get_first_avatar_item_object = L2_1
return L0_1
