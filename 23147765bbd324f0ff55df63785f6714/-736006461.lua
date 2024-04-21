local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatMessageItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatMessageItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatMessageDividerItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Friend.FriendChat.FriendChatMessageDividerItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueClientExcelTable
L0_1 = L0_1.GetData
L1_1 = "Chat_Record_Space"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.IntValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChatModule
L2_1 = 4082608
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "FriendChatMessageListPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  A0_2._contact_data = nil
  L1_2 = {}
  A0_2._message_datas = L1_2
  L1_2 = {}
  A0_2._achievement_indexs = L1_2
  A0_2._has_achieved = false
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_message_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.OnReboundEvent
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.SuperDebug
    L1_3 = L1_3.LogFormat
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.LogTag
    L2_3 = L2_3.UI
    L3_3 = "chat _on_rebound direct {0}"
    L4_3 = tostring
    L5_3 = A0_3
    L4_3, L5_3 = L4_3(L5_3)
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_rebound
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    A0_2._top_shown_protected = false
    L0_3 = A0_2._protect_timer
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
    L0_3 = A0_2._protect_timer
    L1_3 = L0_3
    L0_3 = L0_3.reset
    L0_3(L1_3)
  end
  L4_2 = 0.2
  L5_2 = 0.2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._protect_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_scroll
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._top_shown_callback = A1_2
  A0_2._top_shown_handler = A2_2
end
L3_1.register_top_shown_callback = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._message_datas
  L1_2 = L1_2 == nil
  return L1_2
end
L3_1.is_empty = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._contact_data = A1_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh_view
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._contact_data
  if L3_2 == nil then
    return
  end
  A0_2._top_shown_protected = true
  L3_2 = A0_2._protect_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._protect_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_message_datas
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_message_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1.refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._message_datas
  L1_2 = #L1_2
  A0_2._old_count = L1_2
  L1_2 = A0_2._message_datas
  L1_2 = L1_2[1]
  A0_2._old_top_data = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._contact_data
  L3_2 = L2_2
  L2_2 = L2_2.GetHistoryMessage
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2._message_datas = L1_2
  L1_2 = A0_2._message_datas
  L1_2 = #L1_2
  L2_2 = 2
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._message_datas
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.TimeStamp
    L6_2 = A0_2._message_datas
    L7_2 = L4_2 - 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.TimeStamp
    L5_2 = L5_2 - L6_2
    L6_2 = L0_1
    if L5_2 > L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._message_datas
      L8_2 = L4_2
      L10_2 = A0_2
      L9_2 = A0_2._gen_divider_data
      L11_2 = A0_2._message_datas
      L11_2 = L11_2[L4_2]
      L11_2 = L11_2.TimeStamp
      L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L3_1._refresh_message_datas = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = {}
  L2_2.IsDivider = true
  L2_2.TimeStamp = A1_2
  return L2_2
end
L3_1._gen_divider_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormat
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.UI
  L5_2 = "chat _refresh_message_view toLast {0} keepPos {1}"
  L6_2 = tostring
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = tostring
  L8_2 = A2_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = A0_2._message_datas
  L3_2 = #L3_2
  if A1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.SetListItemCount
    L6_2 = L3_2
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.RefreshAllShownItem
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.MovePanelToByItemIndexAndOffsetPercent
    L6_2 = L3_2 - 1
    L7_2 = 1.0
    L4_2(L5_2, L6_2, L7_2)
  elseif A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_rect
    L5_2 = L4_2
    L4_2 = L4_2.StopMovement
    L4_2(L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.SetListItemCount
    L6_2 = L3_2
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.RefreshAllShownItem
    L4_2(L5_2)
    L4_2 = A0_2._old_count
    if L3_2 ~= L4_2 then
      L4_2 = ipairs
      L5_2 = A0_2._message_datas
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.ChatMessageData
        L9_2 = L9_2.IsSame
        L10_2 = L8_2
        L11_2 = A0_2._old_top_data
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L9_2 = L7_2 - 1
          L10_2 = CS
          L10_2 = L10_2.RPG
          L10_2 = L10_2.SuperDebug
          L10_2 = L10_2.LogFormat
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.LogTag
          L11_2 = L11_2.UI
          L12_2 = "chat keepPos count {0} old count {1} newIndex {2} content {3}"
          L13_2 = tostring
          L14_2 = L3_2
          L13_2 = L13_2(L14_2)
          L14_2 = tostring
          L15_2 = A0_2._old_count
          L14_2 = L14_2(L15_2)
          L15_2 = tostring
          L16_2 = L9_2
          L15_2 = L15_2(L16_2)
          L16_2 = tostring
          L17_2 = A0_2._message_datas
          L18_2 = L9_2 + 1
          L17_2 = L17_2[L18_2]
          L17_2 = L17_2.Content
          L16_2, L17_2, L18_2 = L16_2(L17_2)
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
          L10_2 = A0_2._binder
          L10_2 = L10_2.list_view
          L11_2 = L10_2
          L10_2 = L10_2.MovePanelToByItemIndexAndOffsetPercent
          L12_2 = L9_2
          L13_2 = 0.0
          L14_2 = false
          L10_2(L11_2, L12_2, L13_2, L14_2)
        end
      end
    end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.SetListItemCount
    L6_2 = L3_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view
    L5_2 = L4_2
    L4_2 = L4_2.RefreshAllShownItem
    L4_2(L5_2)
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.CoroutineUtils
  L4_2 = L4_2.InvokeAfterFrames
  L5_2 = 2
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_achieve
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2)
end
L3_1._refresh_message_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._message_datas
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.IsDivider
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._on_message_divider_item
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._on_message_history_item
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  end
end
L3_1._on_message_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._message_datas
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.IsSenderPlayer
  if L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.NewListViewItem
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_15
    end
  end
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  ::lbl_15::
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.FriendChatMessageItemPanel
    L9_2 = G
    L9_2 = L9_2.FriendChatMessageItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.is_achievement_emoji
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.index_of_item
    L7_2 = A0_2._achievement_indexs
    L8_2 = A2_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = nil ~= L6_2
    if not L6_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._achievement_indexs
      L9_2 = A2_2 + 1
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L4_2
end
L3_1._on_message_history_item = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FriendChatMessageDividerItemPanel
    L8_2 = G
    L8_2 = L8_2.FriendChatMessageDividerItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._message_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.TimeStamp
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L3_1._on_message_divider_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_achieve
  L1_2(L2_2)
end
L3_1._on_scroll = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._has_achieved
  if not L1_2 then
    L1_2 = A0_2._achievement_indexs
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetVisibleMinIndex
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 + 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetVisibleMaxIndex
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  if L1_2 > L2_2 then
    return
  end
  L3_2 = ipairs
  L4_2 = A0_2._achievement_indexs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 >= L1_2 and L7_2 <= L2_2 then
      A0_2._has_achieved = true
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.GlobalVars
      L8_2 = L8_2.s_ModuleManager
      L8_2 = L8_2.AchievementModule
      L9_2 = L8_2
      L8_2 = L8_2.SendFinishClientAchievementCsReq
      L10_2 = L2_1
      L8_2(L9_2, L10_2)
      return
    end
  end
end
L3_1._try_achieve = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.EventSystems
  L2_2 = L2_2.MoveDirection
  L2_2 = L2_2.Up
  if A1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2._top_shown_protected
  if not L2_2 then
    A0_2._top_shown_protected = true
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.invoke_callback
    L3_2 = A0_2._top_shown_callback
    L4_2 = A0_2._top_shown_handler
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._protect_timer
    if L2_2 ~= nil then
      L2_2 = A0_2._protect_timer
      L3_2 = L2_2
      L2_2 = L2_2.reset
      L2_2(L3_2)
      L2_2 = A0_2._protect_timer
      L3_2 = L2_2
      L2_2 = L2_2.start
      L2_2(L3_2)
    end
  end
end
L3_1._on_rebound = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._contact_data
  if L1_2 ~= nil then
    L1_2 = A0_2._message_datas
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_10
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.IsItemWithinViewport
  L3_2 = A0_2._message_datas
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 0.8
  return L1_2(L2_2, L3_2, L4_2)
end
L3_1.is_latest_shown = L4_1
return L3_1
