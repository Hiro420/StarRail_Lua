local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PSFriendListDecorator"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._binder = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_node
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_list
  L2_2(L3_2)
end
L0_1.deco = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_empty
  return L1_2
end
L0_1.is_list_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.IsPSDataReady
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.BlackListDialog"
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.on_btn_black_list = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "SwitchRight"
  return L1_2
end
L0_1.get_switch_trigger = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._friends
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetPSPlayerDisplayData
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.show_friend_statu
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.show_chat
  L7_2 = false
  L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_empty_view
  L7_2 = L4_2 == nil
  L5_2(L6_2, L7_2)
  L6_2 = A1_2
  L5_2 = A1_2.setup_view
  L7_2 = L4_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  if L4_2 == nil then
    L6_2 = A1_2
    L5_2 = A1_2.set_uuid
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.deco_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._friends
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  A0_2._is_empty = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_ps_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_empty
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_empty
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_star_friend_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._friends
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.friend_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.friend_list
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
end
L0_1._refresh_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.IsPSDataReady
  if not L1_2 then
    L1_2 = {}
    A0_2._friends = L1_2
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetPSUUIDFriendList
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._friends = L1_2
  end
end
L0_1._refresh_data = L2_1
return L0_1
