local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Friend.FriendItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.GameFriendListDecorator"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.PSFriendListDecorator"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendListTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "SpriteOutput/TabIcon/Friend/FriendListIcon.png"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.HIDCHKGDJAP
  L4_2 = A0_2._on_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendMarkStateChanged
  L4_2 = A0_2._on_friend_mark_state_changed
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_load = true
  L1_2 = G
  L1_2 = L1_2.New
  L2_2 = G
  L2_2 = L2_2.GameFriendListDecorator
  L1_2 = L1_2(L2_2)
  A0_2._game_friend_deco = L1_2
  L1_2 = L1_1.EnablePSFriendCmpt
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.New
    L2_2 = G
    L2_2 = L2_2.PSFriendListDecorator
    L1_2 = L1_2(L2_2)
    A0_2._ps_friend_deco = L1_2
  end
  L1_2 = A0_2._game_friend_deco
  A0_2._cur_friend_deco = L1_2
  L1_2 = A0_2._cur_friend_deco
  L2_2 = L1_2
  L1_2 = L1_2.get_switch_trigger
  L1_2 = L1_2(L2_2)
  A0_2._cur_anim_trigger = L1_2
  A0_2._is_first_switch = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_friend_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_sort
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.LogoutTime
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.InventorySortType
  L3_2 = L3_2.Level
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._sort_type_table = L1_2
  L1_2 = {}
  A0_2._sort_type_text_id_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._sort_type_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._sort_type_text_id_table
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.InventoryModule
    L7_2 = L7_2.GetSortTypeName
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2[L5_2] = L7_2
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_sort_type_from_cache
  L2_2 = A0_2.__name
  L3_2 = A0_2._sort_type_table
  L3_2 = L3_2[1]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.InventorySortType
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._sort_type = L1_2
end
L0_1._init_sort_type_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._panel_sort
  if L1_2 == nil then
    return
  end
  A0_2._is_descend = true
  L2_2 = A0_2
  L1_2 = A0_2._init_sort_type_list
  L1_2(L2_2)
  L1_2 = A0_2._panel_sort
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._sort_type_table
  L4_2 = A0_2._sort_type_text_id_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._panel_sort
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_sort_order_changed
  L5_2 = A0_2._on_sort_type_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._panel_sort
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_panel
  L3_2 = A0_2._sort_type
  L4_2 = A0_2._is_descend
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_sort = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._btn_switch = A1_2
  A0_2._btn_black_list = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._btn_switch
  L6_2 = A0_2._on_btn_switch
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._btn_black_list
  L6_2 = A0_2._on_btn_black_list
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_btns = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_tab_changed_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._anim_btn_switch = A1_2
end
L0_1.set_switch_animator = L3_1
function L3_1(A0_2, A1_2)
  A0_2._panel_sort = A1_2
end
L0_1.set_sort_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_friend_deco
  L2_2 = L1_2
  L1_2 = L1_2.deco
  L3_2 = A0_2._binder
  L4_2 = A0_2._sort_type
  L5_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_switch_anim_trigger
  L3_2 = A0_2._cur_friend_deco
  L4_2 = L3_2
  L3_2 = L3_2.get_switch_trigger
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L3_2 = A0_2._cur_friend_deco
  L4_2 = L3_2
  L3_2 = L3_2.is_list_empty
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "UIText_Friend_MyFriend_Title"
  return L1_2
end
L0_1.get_sub_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FriendApplyTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L5_2 = A0_2
  L4_2 = A0_2._is_showing_ps_friend_list
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L1_2 = not L1_2
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_data_refresh = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L5_2 = A0_2._owner
    L6_2 = L5_2
    L5_2 = L5_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FriendItemPanel
    L8_2 = G
    L8_2 = L8_2.FriendItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_select_callback
    L7_2 = A0_2
    L8_2 = A0_2._on_friend_panel_selected
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A0_2._cur_friend_deco
  L6_2 = L5_2
  L5_2 = L5_2.deco_panel
  L7_2 = L4_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_get_friend_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_anim_trigger
  if L2_2 == A1_2 then
    return
  end
  A0_2._cur_anim_trigger = A1_2
  L2_2 = A0_2._anim_btn_switch
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_btn_switch_anim_trigger = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._state
  L1_2 = not L1_2
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._cur_friend_deco
  L2_2 = L1_2
  L1_2 = L1_2.refresh_sort
  L3_2 = A0_2._sort_type
  L4_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._refresh_sort = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort
  L2_2(L3_2)
end
L0_1._on_sort_order_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._sort_type = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.save_sort_type_to_cache
  L3_2 = A0_2.__name
  L4_2 = #A1_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.InventorySortType
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort
  L2_2(L3_2)
end
L0_1._on_sort_type_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_friend_deco
  L2_2 = A0_2._game_friend_deco
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_switch_to_ps_friend_list
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_switch_to_game_friend_list
    L1_2(L2_2)
  end
end
L0_1._on_btn_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_first_switch
  if L1_2 then
    L1_2 = L1_1.IsPSDataReady
    if L1_2 then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.RefreshPSFriendInfoPromise
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2
      L1_2 = L1_2.ThenLuaAction
      function L3_2()
        local L0_3, L1_3
        A0_2._is_first_switch = false
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._try_switch_to_ps_friend_list
        L0_3(L1_3)
      end
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._is_first_switch
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.show_full_screen_block_for_packet
        L3_2 = CS
        L3_2 = L3_2.NIJNBICAPPA
        L3_2 = L3_2.ALPKGNPAACP
        L1_2(L2_2, L3_2)
      end
  end
  else
    L1_2 = A0_2._ps_friend_deco
    A0_2._cur_friend_deco = L1_2
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._callback
    L3_2 = A0_2._callback_self
    L5_2 = A0_2
    L4_2 = A0_2._is_showing_ps_friend_list
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.friend_list
    L2_2 = L1_2
    L1_2 = L1_2.PlayFadeIn
    L1_2(L2_2)
  end
end
L0_1._try_switch_to_ps_friend_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._game_friend_deco
  A0_2._cur_friend_deco = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L5_2 = A0_2
  L4_2 = A0_2._is_showing_ps_friend_list
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._try_switch_to_game_friend_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_friend_deco
  L2_2 = A0_2._ps_friend_deco
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_showing_ps_friend_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._game_friend_deco
  L2_2 = L1_2
  L1_2 = L1_2.refresh_friend_mark_info
  L1_2(L2_2)
end
L0_1._on_friend_mark_state_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_friend_deco
  L2_2 = L1_2
  L1_2 = L1_2.on_btn_black_list
  L1_2(L2_2)
end
L0_1._on_btn_black_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_load
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_empty = A1_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Friend_Control"
    L6_2 = "ActionGroup_Friend_Assist"
    L7_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L3_2 = A0_2._is_empty
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.get_state
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._cur_friend_deco
  L3_2 = A0_2._game_friend_deco
  if L2_2 == L3_2 then
    L2_2 = A0_2._selected_panel
    if L2_2 ~= nil then
      goto lbl_16
    end
  end
  do return end
  ::lbl_16::
  if A1_2 == "Menu_UnchangeRightTrigger" then
    L2_2 = A0_2._selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_assist_avatars_detail
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2, A1_2)
  A0_2._selected_panel = A1_2
end
L0_1._on_friend_panel_selected = L3_1
return L0_1
