local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "FriendUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ChatModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.NetworkManager
L3_1 = L3_1.FFOMLPONIFB
L4_1 = CS
L4_1 = L4_1.LCNCCKJBFIP
L4_1 = L4_1.KMOLEEHDPBD
L0_1._friend_apply_source = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1.CurFriendCount
  L1_2 = L1_1.MaxFriendCount
  L0_2 = L0_2 == L1_2
  return L0_2
end
L0_1.is_friend_full = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.LCNCCKJBFIP
  L0_2 = L0_2.KMOLEEHDPBD
  L0_1._friend_apply_source = L0_2
end
L0_1.clear_friend_apply_source = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetFriendBriefData
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.GetDisplayName
    return L2_2(L3_2)
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetPlayerBriefData
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Name
    return L3_2
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetPlayerDetailInfo
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetDisplayName
    return L4_2(L5_2)
  end
  L4_2 = ""
  return L4_2
end
L0_1.get_display_name_by_uid = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsFriend
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  if A1_2 == nil then
    A1_2 = L0_1._friend_apply_source
  end
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.EEGABGFOJMP
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.do_add_friend = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsFriend
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  if not A1_2 then
    A1_2 = 1
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = L3_1
      L2_3 = L1_3
      L1_3 = L1_3.BBCLLEHMHPG
      L3_3 = A0_2
      L4_3 = A1_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetComponentContent
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Friend_Func_Remove_Confirm"
  L6_2 = L0_1.get_display_name_by_uid
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.do_delete_friend = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsInApplyList
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.LBAJFMIPPMN
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.do_accept_friend = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowOkCancelHint
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = L3_1
        L2_3 = L1_3
        L1_3 = L1_3.BHDOEEKJCBA
        L3_3 = A0_2
        L1_3(L2_3, L3_3)
      end
    end
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.GetComponentContent
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Friend_Func_BlackList_Confirm"
    L6_2 = L0_1.get_display_name_by_uid
    L7_2 = A0_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.BMEEBMOFFMI
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.do_handle_blacklist = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.IHHGLPEJLCN
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.do_search_player = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.NCFPKFOLIGB
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.do_set_friend_remark_name = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.KANNFDNLKAM
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = ""
  end
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.do_report_player = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = L1_1.IsFriendMarkLimit
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = "UIText_Friend_Mark_Max_Hint"
      L2_2(L3_2, L4_2)
      return
    end
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsMarked
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == A1_2 then
    return
  end
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.ABHLKGCKJIG
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.do_handle_mark_friend = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L1_2 = L0_2
  L0_2 = L0_2.RefreshFriendList
  L0_2(L1_2)
end
L0_1.refresh_friend_data = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L1_2 = L0_2
  L0_2 = L0_2.RefreshApplyList
  L0_2(L1_2)
end
L0_1.refresh_friend_apply_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.SupportRewardDialog"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.show_assist_reward_dialog = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetPlayerDetailInfoPromise
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaActionOneParam
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A1_2
    if L1_3 ~= nil then
      L1_3 = A1_2
      L0_1._friend_apply_source = L1_3
    end
    L1_3 = G
    L1_3 = L1_3.UIManager
    L1_3 = L1_3.load_and_async_show
    L2_3 = "Ui.PlayerInfo.PlayerInfoPage"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1.show_friend_detail_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPlayerDetailInfoPromise
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = G
    L1_3 = L1_3.new
    L2_3 = "Ui.PlayerInfo.PlayerInfoPage"
    L1_3 = L1_3(L2_3)
    L3_3 = L1_3
    L2_3 = L1_3.init
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    L1_3.in_psn = true
    L3_3 = L1_3
    L2_3 = L1_3.async_show
    L2_3(L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1.show_friend_detail_info_ps = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetPlayerDetailInfoPromise
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaActionOneParam
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = G
    L1_3 = L1_3.new
    L2_3 = "Ui.Avatar.AvatarMainPage"
    L1_3 = L1_3(L2_3)
    L2_3 = G
    L2_3 = L2_3.Utils
    L2_3 = L2_3.create_lua_table_from_cs_list
    L4_3 = A0_3
    L3_3 = A0_3.GetAssistAvatarDatas
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L3_3 = L2_3[1]
    L5_3 = L1_3
    L4_3 = L1_3.set_avatar_data_list
    L6_3 = L2_3
    L4_3(L5_3, L6_3)
    L4_3 = ipairs
    L5_3 = L2_3
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    for L7_3, L8_3 in L4_3, L5_3, L6_3 do
      L9_3 = L8_3.RealID
      L10_3 = A1_2
      if L9_3 == L10_3 then
        L3_3 = L8_3
        break
      end
    end
    L5_3 = L1_3
    L4_3 = L1_3.init
    L6_3 = nil
    L7_3 = nil
    L8_3 = nil
    L9_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_3 = L1_3
    L4_3 = L1_3.async_show
    L4_3(L5_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1.show_friend_assist_avatar_detail = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.ClearFriendAssistList
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Promises
  L3_2 = L3_2.Promise
  L3_2 = L3_2.All
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.RefreshFriendListWithPromise
  L4_2 = L4_2(L5_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetStrangerAssistList
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.GetFriendAssistList
  L8_2 = 0
  L9_2 = nil
  L10_2 = nil
  L11_2 = tonumber
  L12_2 = G
  L12_2 = L12_2.Utils
  L12_2 = L12_2.get_sort_type_from_cache
  L13_2 = "FriendAssistAvatarSelectTabItem"
  L14_2 = AssistSortType
  L14_2 = L14_2.Level
  L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = L3_2
  L4_2 = L3_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = G
    L0_3 = L0_3.new
    L1_3 = "Ui.Team.AssistMemberEditPage"
    L0_3 = L0_3(L1_3)
    L2_3 = L0_3
    L1_3 = L0_3.init
    L3_3 = A0_2
    L1_3(L2_3, L3_3)
    L2_3 = L0_3
    L1_3 = L0_3.set_exit_callback
    L3_3 = A1_2
    L4_3 = A2_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = G
    L1_3 = L1_3.UIManager
    L1_3 = L1_3.show
    L2_3 = L0_3
    L3_3 = true
    L1_3(L2_3, L3_3)
  end
  L4_2(L5_2, L6_2)
end
L0_1.show_assist_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendNameEditDialog"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.set_remark_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddContactPrivate
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendChat.FriendChatPage"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.go_private_chat = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.SafeRemoveContactPrivate
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.quit_chat = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.ReportDialog"
  L3_2 = A0_2
  L4_2 = L0_1.get_display_name_by_uid
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.show_report_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsFriend
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.is_friend = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsAlreadySendApply
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.is_already_send_apply = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsInApplyList
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.is_receive_apply = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsInBlackList
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.is_in_black_list = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1._ps_default_head_icon_id
  if L0_2 == nil then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.GameCore
    L0_2 = L0_2.ConstValueCommonExcelTable
    L0_2 = L0_2.GetData
    L1_2 = "PlayerIcon_DefaultID"
    L0_2 = L0_2(L1_2)
    L0_2 = L0_2.Value
    L0_2 = L0_2.IntValue
    L0_1._ps_default_head_icon_id = L0_2
  end
  L0_2 = L0_1._ps_default_head_icon_id
  return L0_2
end
L0_1.get_ps_player_default_head_icon_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetPSPlayerDisplayData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = {}
    L8_2.UUID = L6_2
    L8_2.DisplayData = L7_2
    L9_2 = #L1_2
    L9_2 = L9_2 + 1
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
L0_1.get_display_datas_by_ps_uuid_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetFriendBriefData
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.AJPBKIAKCIH
    L2_2 = L2_2.KMOLEEHDPBD
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetPlayingState
  return L2_2(L3_2)
end
L0_1.get_playing_state = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.IsMarked
    L3_3 = A1_3.IsMarked
    if L2_3 ~= L3_3 then
      return L2_3
    end
    L3_3 = A1_2
    L4_3 = CS
    L4_3 = L4_3.RPG
    L4_3 = L4_3.GameCore
    L4_3 = L4_3.InventorySortType
    L4_3 = L4_3.LogoutTime
    if L3_3 == L4_3 then
      L3_3 = L0_1._sort_by_logout_time
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = A2_2
      return L3_3(L4_3, L5_3, L6_3)
    else
      L3_3 = A1_2
      L4_3 = CS
      L4_3 = L4_3.RPG
      L4_3 = L4_3.GameCore
      L4_3 = L4_3.InventorySortType
      L4_3 = L4_3.Level
      if L3_3 == L4_3 then
        L3_3 = L0_1._sort_by_level
        L4_3 = A0_3
        L5_3 = A1_3
        L6_3 = A2_2
        return L3_3(L4_3, L5_3, L6_3)
      end
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1.sort_friend_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A1_2
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.GameCore
    L3_3 = L3_3.InventorySortType
    L3_3 = L3_3.ApplicationTime
    if L2_3 == L3_3 then
      L2_3 = L0_1._sort_by_apply_time
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = A2_2
      return L2_3(L3_3, L4_3, L5_3)
    else
      L2_3 = A1_2
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.GameCore
      L3_3 = L3_3.InventorySortType
      L3_3 = L3_3.Level
      if L2_3 == L3_3 then
        L2_3 = L0_1._sort_by_level
        L3_3 = A0_3
        L4_3 = A1_3
        L5_3 = A2_2
        return L2_3(L3_3, L4_3, L5_3)
      end
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1.sort_apply_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.Level
  L4_2 = A1_2.Level
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.CompareTo
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2 == -1
    return L3_2
  end
  if A2_2 then
    L3_2 = A0_2.Level
    L4_2 = A1_2.Level
    L3_2 = L3_2 > L4_2
    return L3_2
  else
    L3_2 = A0_2.Level
    L4_2 = A1_2.Level
    L3_2 = L3_2 < L4_2
    return L3_2
  end
end
L0_1._sort_by_level = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.IsOnline
  L4_2 = A1_2.IsOnline
  if L3_2 ~= L4_2 then
    if A2_2 then
      L3_2 = A0_2.IsOnline
      return L3_2
    else
      L3_2 = A0_2.IsOnline
      L3_2 = not L3_2
      return L3_2
    end
  end
  L3_2 = A0_2.IsOnline
  if not L3_2 then
    L3_2 = A0_2.LastLogoutTimeStamp
    L4_2 = A1_2.LastLogoutTimeStamp
    if L3_2 ~= L4_2 then
      if A2_2 then
        L3_2 = A0_2.LastLogoutTimeStamp
        L4_2 = A1_2.LastLogoutTimeStamp
        L3_2 = L3_2 > L4_2
        return L3_2
      else
        L3_2 = A0_2.LastLogoutTimeStamp
        L4_2 = A1_2.LastLogoutTimeStamp
        L3_2 = L3_2 < L4_2
        return L3_2
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.CompareTo
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2 == -1
  return L3_2
end
L0_1._sort_by_logout_time = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.ApplyTimeStamp
  L4_2 = A1_2.ApplyTimeStamp
  if L3_2 == L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.CompareTo
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L5_2 == -1
    return L5_2
  end
  if A2_2 then
    L5_2 = L3_2 > L4_2
    return L5_2
  else
    L5_2 = L3_2 < L4_2
    return L5_2
  end
end
L0_1._sort_by_apply_time = L4_1
L4_1 = {}
L4_1.DetailInfo = 1
L4_1.SetRemarkName = 2
L4_1.DeleteFriend = 3
L4_1.AddBlacklist = 4
L4_1.Report = 5
L4_1.GoChat = 6
L4_1.QuitChat = 7
L4_1.DetailInfoPS = 8
L4_1.MarkFriend = 9
L4_1.CancelMarkFriend = 10
L4_1.AddFriend = 11
L0_1.OptionList = L4_1
L4_1 = {}
L5_1 = L0_1.OptionList
L5_1 = L5_1.DetailInfo
L6_1 = L0_1.show_friend_detail_info
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.DetailInfoPS
L6_1 = L0_1.show_friend_detail_info_ps
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.SetRemarkName
L6_1 = L0_1.set_remark_name
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.DeleteFriend
L6_1 = L0_1.do_delete_friend
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.AddBlacklist
L6_1 = L0_1.do_handle_blacklist
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.Report
L6_1 = L0_1.show_report_dialog
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.GoChat
L6_1 = L0_1.go_private_chat
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.QuitChat
L6_1 = L0_1.quit_chat
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.MarkFriend
L6_1 = L0_1.do_handle_mark_friend
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.CancelMarkFriend
L6_1 = L0_1.do_handle_mark_friend
L4_1[L5_1] = L6_1
L5_1 = L0_1.OptionList
L5_1 = L5_1.AddFriend
L6_1 = L0_1.do_add_friend
L4_1[L5_1] = L6_1
L0_1.FunctionTable = L4_1
L4_1 = {}
L5_1 = L0_1.OptionList
L5_1 = L5_1.DetailInfo
L4_1[L5_1] = "UIText_Friend_Func_ViewFile"
L5_1 = L0_1.OptionList
L5_1 = L5_1.DetailInfoPS
L4_1[L5_1] = "UIText_Friend_Func_ViewFile"
L5_1 = L0_1.OptionList
L5_1 = L5_1.SetRemarkName
L4_1[L5_1] = "UIText_Friend_Func_EditRemark"
L5_1 = L0_1.OptionList
L5_1 = L5_1.DeleteFriend
L4_1[L5_1] = "UIText_Friend_Func_DeleteFriend"
L5_1 = L0_1.OptionList
L5_1 = L5_1.AddBlacklist
L4_1[L5_1] = "UIText_Friend_Func_AddBlackList"
L5_1 = L0_1.OptionList
L5_1 = L5_1.Report
L4_1[L5_1] = "UIText_Friend_Func_Report"
L5_1 = L0_1.OptionList
L5_1 = L5_1.GoChat
L4_1[L5_1] = "UIText_Chat_Begin_Button"
L5_1 = L0_1.OptionList
L5_1 = L5_1.QuitChat
L4_1[L5_1] = "UIText_Chat_Close_Button"
L5_1 = L0_1.OptionList
L5_1 = L5_1.MarkFriend
L4_1[L5_1] = "UIText_Friend_Mark"
L5_1 = L0_1.OptionList
L5_1 = L5_1.CancelMarkFriend
L4_1[L5_1] = "UIText_Friend_Mark_Cancel"
L5_1 = L0_1.OptionList
L5_1 = L5_1.AddFriend
L4_1[L5_1] = "UIText_Chat_AddFriend_Button"
L0_1.OptionNameTable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = L0_1.create_friend_option_data_for_ps_player
    L3_2 = A0_2
    return L2_2(L3_2)
  end
  L2_2 = {}
  L3_2 = #L2_2
  L3_2 = L3_2 + 1
  L4_2 = L0_1._create_single_option_data
  L5_2 = L0_1.OptionList
  L5_2 = L5_2.DetailInfo
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L2_2[L3_2] = L4_2
  L3_2 = L0_1.is_friend
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = #L2_2
    L4_2 = L4_2 + 1
    L5_2 = L0_1._create_single_option_data
    L6_2 = L0_1.OptionList
    L6_2 = L6_2.SetRemarkName
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    L2_2[L4_2] = L5_2
    L4_2 = L2_1.EnableChat
    if L4_2 then
      L4_2 = #L2_2
      L4_2 = L4_2 + 1
      L5_2 = L0_1._create_single_option_data
      L6_2 = L0_1.OptionList
      L6_2 = L6_2.GoChat
      L7_2 = A0_2
      L5_2 = L5_2(L6_2, L7_2)
      L2_2[L4_2] = L5_2
    end
    L4_2 = #L2_2
    L4_2 = L4_2 + 1
    L5_2 = L0_1._create_single_option_data
    L6_2 = L0_1.OptionList
    L6_2 = L6_2.DeleteFriend
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    L2_2[L4_2] = L5_2
  end
  L4_2 = L0_1.is_in_black_list
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = #L2_2
    L4_2 = L4_2 + 1
    L5_2 = L0_1._create_single_option_data
    L6_2 = L0_1.OptionList
    L6_2 = L6_2.AddBlacklist
    L7_2 = A0_2
    L8_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L2_2[L4_2] = L5_2
  end
  L4_2 = #L2_2
  L4_2 = L4_2 + 1
  L5_2 = L0_1._create_single_option_data
  L6_2 = L0_1.OptionList
  L6_2 = L6_2.Report
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  L2_2[L4_2] = L5_2
  if L3_2 then
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.IsMarked
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = #L2_2
      L4_2 = L4_2 + 1
      L5_2 = L0_1._create_single_option_data
      L6_2 = L0_1.OptionList
      L6_2 = L6_2.CancelMarkFriend
      L7_2 = A0_2
      L8_2 = false
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L2_2[L4_2] = L5_2
    else
      L4_2 = #L2_2
      L4_2 = L4_2 + 1
      L5_2 = L0_1._create_single_option_data
      L6_2 = L0_1.OptionList
      L6_2 = L6_2.MarkFriend
      L7_2 = A0_2
      L8_2 = true
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L2_2[L4_2] = L5_2
    end
  end
  return L2_2
end
L0_1.create_friend_option_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = L0_1.is_friend
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L0_1._create_single_option_data
    L5_2 = L0_1.OptionList
    L5_2 = L5_2.SetRemarkName
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    L1_2[L3_2] = L4_2
    L3_2 = L2_1.EnableChat
    if L3_2 then
      L3_2 = #L1_2
      L3_2 = L3_2 + 1
      L4_2 = L0_1._create_single_option_data
      L5_2 = L0_1.OptionList
      L5_2 = L5_2.GoChat
      L6_2 = A0_2
      L4_2 = L4_2(L5_2, L6_2)
      L1_2[L3_2] = L4_2
    end
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L0_1._create_single_option_data
    L5_2 = L0_1.OptionList
    L5_2 = L5_2.DeleteFriend
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    L1_2[L3_2] = L4_2
  end
  L3_2 = L0_1.is_in_black_list
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L0_1._create_single_option_data
    L5_2 = L0_1.OptionList
    L5_2 = L5_2.AddBlacklist
    L6_2 = A0_2
    L7_2 = true
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L1_2[L3_2] = L4_2
  end
  L3_2 = #L1_2
  L3_2 = L3_2 + 1
  L4_2 = L0_1._create_single_option_data
  L5_2 = L0_1.OptionList
  L5_2 = L5_2.Report
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L1_2[L3_2] = L4_2
  if L2_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.IsMarked
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = #L1_2
      L3_2 = L3_2 + 1
      L4_2 = L0_1._create_single_option_data
      L5_2 = L0_1.OptionList
      L5_2 = L5_2.CancelMarkFriend
      L6_2 = A0_2
      L7_2 = false
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L1_2[L3_2] = L4_2
    else
      L3_2 = #L1_2
      L3_2 = L3_2 + 1
      L4_2 = L0_1._create_single_option_data
      L5_2 = L0_1.OptionList
      L5_2 = L5_2.MarkFriend
      L6_2 = A0_2
      L7_2 = true
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L1_2[L3_2] = L4_2
    end
  end
  return L1_2
end
L0_1.create_friend_info_option_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = L0_1._create_single_option_data
  L3_2 = L0_1.OptionList
  L3_2 = L3_2.DetailInfoPS
  L4_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  return L1_2
end
L0_1.create_friend_option_data_for_ps_player = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.DetailInfo
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.SetRemarkName
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.DeleteFriend
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L2_2 = L0_1.is_in_black_list
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = L0_1._create_single_option_data
    L4_2 = L0_1.OptionList
    L4_2 = L4_2.AddBlacklist
    L5_2 = A0_2
    L6_2 = true
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2[L2_2] = L3_2
  end
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.Report
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.QuitChat
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  return L1_2
end
L0_1.create_friend_chat_option_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.DetailInfo
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsMarked
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = L0_1._create_single_option_data
    L4_2 = L0_1.OptionList
    L4_2 = L4_2.CancelMarkFriend
    L5_2 = A0_2
    L6_2 = false
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2[L2_2] = L3_2
  else
    L2_2 = #L1_2
    L2_2 = L2_2 + 1
    L3_2 = L0_1._create_single_option_data
    L4_2 = L0_1.OptionList
    L4_2 = L4_2.MarkFriend
    L5_2 = A0_2
    L6_2 = true
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2[L2_2] = L3_2
  end
  return L1_2
end
L0_1.create_friend_assist_option_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.DetailInfo
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2[L2_2] = L3_2
  L2_2 = #L1_2
  L2_2 = L2_2 + 1
  L3_2 = L0_1._create_single_option_data
  L4_2 = L0_1.OptionList
  L4_2 = L4_2.AddFriend
  L5_2 = A0_2
  L6_2 = CS
  L6_2 = L6_2.LCNCCKJBFIP
  L6_2 = L6_2.JKGIBNFBGOL
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  return L1_2
end
L0_1.create_stranger_assist_option_data = L4_1
function L4_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = L0_1.OptionNameTable
  L2_2 = L2_2[A0_2]
  L1_2.Name = L2_2
  L2_2 = L0_1.FunctionTable
  L2_2 = L2_2[A0_2]
  L1_2.Callback = L2_2
  L2_2 = {}
  L3_2 = ...
  L2_2[1] = L3_2
  L1_2.Param = L2_2
  return L1_2
end
L0_1._create_single_option_data = L4_1
return L0_1
