local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChatModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Chat_Record_Space"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ChatHudPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishedMainMission
  L4_2 = A0_2._on_refresh_read
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatNewMessage
  L4_2 = A0_2._on_refresh_read
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChatRefreshReddot
  L4_2 = A0_2._on_refresh_read
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowFriendChatPage
  L4_2 = A0_2._on_show_friend_chat_page
  L1_2(L2_2, L3_2, L4_2)
  A0_2._contact_id = nil
  A0_2._is_blocked_by_hud_template = false
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChatEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot
  L6_2 = L6_2.transform
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.DataPrepared
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_entrance
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_blocked_by_hud_template = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_entrance
  L2_2(L3_2)
end
L3_1.set_hud_template = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ShowChatHUD
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._is_blocked_by_hud_template
    L1_2 = not L1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  if L1_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = 0.5
  ::lbl_24::
  L2_2.alpha = L3_2
end
L3_1._refresh_entrance = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_entrance
  L1_2(L2_2)
end
L3_1._on_refresh_read = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.CheckGotoType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.Chat
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllContacts
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  if not (0 < L1_2) then
    L1_2 = L1_1.CurFriendCount
    if not (0 < L1_2) then
      goto lbl_28
    end
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendChat.FriendChatPage"
  L1_2(L2_2)
  goto lbl_33
  ::lbl_28::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Friend.FriendChat.FriendChatAddPage"
  L1_2(L2_2)
  ::lbl_33::
end
L3_1._on_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_clicked
  L1_2(L2_2)
end
L3_1._on_show_friend_chat_page = L4_1
return L3_1
