local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Friend.FriendApplicationDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendApplicationDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Friend_In_Handle_Limit"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FriendApplicationDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendDataUpdated
  L4_2 = A0_2._on_data_updated
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_apply_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._apply_players
  if L1_2 ~= nil then
    L1_2 = A0_2._apply_players
    L1_2 = #L1_2
    if not (0 < L1_2) then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_1.ShowRedDotFlag = false
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.ApplicationTime
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
  A0_2._is_descend = true
  L2_2 = A0_2
  L1_2 = A0_2._init_sort_type_list
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_sort
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._sort_type_table
  L4_2 = A0_2._sort_type_text_id_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_sort
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_sort_order_changed
  L5_2 = A0_2._on_sort_type_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_sort
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
  L1_1.ShowRedDotFlag = false
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_sort
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
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
  end
  L5_2 = A0_2._apply_players
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_select_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_item_selected
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_get_apply_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._sort
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_friend_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_friend_cur_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._apply_players
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_friend_max_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._refresh_friend_num = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetApplyList
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._apply_players = L1_2
end
L0_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.sort_apply_list
  L2_2 = A0_2._apply_players
  L3_2 = A0_2._sort_type
  L4_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._sort = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._apply_players
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_node = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
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
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_short_cut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._apply_players
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._apply_players
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
end
L0_1._on_data_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._apply_players
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._sort
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_list
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
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.player_list
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
  A0_2._selected_panel = A1_2
end
L0_1._on_item_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target_by_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone1
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._refresh_navigation = L3_1
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
  L2_2 = A0_2._selected_panel
  if L2_2 == nil then
    return
  end
  if A1_2 == "Menu_UnchangeRightTrigger" then
    L2_2 = A0_2._selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_assist_avatars_detail
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
return L0_1
