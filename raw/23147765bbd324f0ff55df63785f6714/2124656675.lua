local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Expedition.AvatarSelect.ExpeditionFriendSelectItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.AvatarSelect.ExpeditionFriendSelectItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionFriendSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "UIText_Assist_List_Default_Label"
L3_1 = "UIText_PlayerCard_Character_Empty"
function L4_1(A0_2)
  local L1_2
  A0_2._cur_select_index = 0
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FriendListRefreshed
  L4_2 = A0_2._refresh_friend_view
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_get_avatar_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_assists
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = A0_2._cur_select_index
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
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._cur_friend = nil
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_listener
  L4_2 = A0_2._cur_friend
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars_view
  L1_2(L2_2)
end
L0_1.try_unselect = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._expedition_data = A2_2
  A0_2._init_friend_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._expedition_data
  L5_2 = L5_2.IsActivity
  if L5_2 == true then
    L5_2 = "UIText_ActivityExpedition_BonusDamageType_Tip"
    if L5_2 then
      goto lbl_14
    end
  end
  L5_2 = "UIText_Assignment_BonusDamageType_Tip"
  ::lbl_14::
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_friend_view
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFriendList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._friend_datas = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = 0
    L8_2 = L6_2.AssistAvatarCount
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L12_2 = L6_2
      L11_2 = L6_2.GetAssistInfoByIndex
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = G
      L12_2 = L12_2.ExpeditionUtils
      L12_2 = L12_2.create_friend_data_by_player_brief_data
      L13_2 = L6_2
      L14_2 = L11_2.AvatarId
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = A0_2._friend_datas
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_friend_data
  L4_2 = A0_2._friend_datas
  L5_2 = A0_2._init_friend_data
  L5_2 = L5_2.uid
  L6_2 = A0_2._init_friend_data
  L6_2 = L6_2.avatar_id
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._cur_friend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_friend_datas
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_friend_data_index
  L4_2 = A0_2._friend_datas
  L5_2 = A0_2._init_friend_data
  L5_2 = L5_2.uid
  L6_2 = A0_2._init_friend_data
  L6_2 = L6_2.avatar_id
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if L2_2 ~= 0 then
    L2_2 = L2_2 - 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_assists
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._cur_select_index = L2_2
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L6_2 = A0_2
  L5_2 = A0_2.get_first_selected_object
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L0_1._refresh_friend_view = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.uid
    if L9_2 == A2_2 then
      L9_2 = L8_2.avatar_id
      if L9_2 == A3_2 then
        return L7_2
      end
    end
  end
  L4_2 = 0
  return L4_2
end
L0_1._get_friend_data_index = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._get_friend_data_index
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A1_2[L4_2]
  return L4_2
end
L0_1._get_friend_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._friend_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_occupied
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._is_occupied
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = not L2_3
      return L4_3
    end
    L4_3 = A0_2
    L5_3 = L4_3
    L4_3 = L4_3._is_bonus
    L6_3 = A0_3
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = A0_2
    L6_3 = L5_3
    L5_3 = L5_3._is_bonus
    L7_3 = A1_3
    L5_3 = L5_3(L6_3, L7_3)
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L6_3 = A0_3.avatar_level
    L7_3 = A1_3.avatar_level
    if L6_3 ~= L7_3 then
      L6_3 = A0_3.avatar_level
      L7_3 = A1_3.avatar_level
      L6_3 = L6_3 > L7_3
      return L6_3
    end
    L6_3 = A0_3.avatar_id
    L7_3 = A1_3.avatar_id
    if L6_3 ~= L7_3 then
      L6_3 = A0_3.avatar_id
      L7_3 = A1_3.avatar_id
      L6_3 = L6_3 < L7_3
      return L6_3
    end
    L6_3 = A0_3.uid
    L7_3 = A1_3.uid
    L8_3 = L6_3 < L7_3
    return L8_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort_friend_datas = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.BonusProfessionTypes
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.avatar_id
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.index_of_item
  L5_2 = L2_2
  L6_2 = L3_2.AvatarBaseType
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2 ~= nil
  return L4_2
end
L0_1._is_bonus = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ExpeditionModule
  L3_2 = L2_2
  L2_2 = L2_2.IsAssistAvatarInProgress
  L4_2 = A1_2.uid
  L5_2 = A1_2.avatar_id
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1._is_occupied = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._friend_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_assists
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._friend_datas
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatars_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ExpeditionFriendSelectItemPanel
    L8_2 = G
    L8_2 = L8_2.ExpeditionFriendSelectItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_member_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._friend_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_friend
  L8_2 = L8_2 == L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_recommend
  L9_2 = A0_2
  L8_2 = A0_2._is_bonus
  L10_2 = L5_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_occupied
  L9_2 = A0_2
  L8_2 = A0_2._is_occupied
  L10_2 = L5_2
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._cur_friend
  if L6_2 == L5_2 then
    A0_2._cur_select_index = A2_2
  end
  return L3_2
end
L0_1._on_get_avatar_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_friend
  if L2_2 == A1_2 then
    L2_2 = G
    L2_2 = L2_2.ExpeditionUtils
    L2_2 = L2_2.create_friend_data_by_player_brief_data
    L3_2 = nil
    L2_2 = L2_2(L3_2)
    A0_2._cur_friend = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._is_occupied
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_ActivityExpedition_AssistInOther"
      L2_2(L3_2, L4_2)
      return
    end
    A0_2._cur_friend = A1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._click_callback
  L4_2 = A0_2._click_listener
  L5_2 = A0_2._cur_friend
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_member_click = L4_1
return L0_1
