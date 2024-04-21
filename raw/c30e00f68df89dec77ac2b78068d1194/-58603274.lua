local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.ActivityMonopolySelectFriendDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolySelectFriendItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.Components.ActivityMonopolySelectFriendItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MonopolyModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolySelectFriendDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolySelectFriendDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyEventSelectFriendFinish
  L4_2 = A0_2._on_select_friend_finish
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._friends = L1_2
  L1_2 = L0_1.IsBriefFriendInfoGot
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.GetFriendList
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._friends = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.BPJBLBIIEPJ
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.refresh_friend_data
    L1_2()
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.FriendListRefreshed
    L4_2 = A0_2._on_friend_list_refresh
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolyEventSelectFriendFinish
  L4_2 = A0_2._on_select_friend_finish
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2
  return
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolySelectFriendItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolySelectFriendItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._friends
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2._on_friend_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L2_1._on_item_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SendMonopolyEventSelectFriendCsReq
  L4_2 = false
  L5_2 = A1_2.UID
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.LHMBBCHOMHD
  L2_2(L3_2, L4_2)
end
L2_1._on_friend_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L2_1._on_select_friend_finish = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendListRefreshed
  L4_2 = A0_2._on_friend_list_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetFriendList
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._friends = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L2_1._on_friend_list_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendMonopolyEventSelectFriendCsReq
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LHMBBCHOMHD
  L1_2(L2_2, L3_2)
end
L2_1._send_quit_select_friend = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._friends
  L3_2 = #L3_2
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh_friend_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._friends
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UICenterToastMessageTextID
    L3_2 = "UIText_ActivityMonopoly_Event_Friends_NoFriendsTips"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._send_quit_select_friend
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_friend_list
    L1_2(L2_2)
  end
end
L2_1._refresh_view = L3_1
return L2_1
