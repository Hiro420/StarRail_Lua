local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MessageModule"
L3_1 = "Logic.BaseModule"
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneNoticeShowDirect
  L4_2 = L1_1._on_phone_notice_show_direct
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneNoticeShowWithHint
  L4_2 = L1_1._on_phone_notice_show_with_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastQueueEmpty
  L4_2 = L1_1._try_show_message_notice
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIToastMainPage
  L4_2 = L1_1._try_show_message_notice
  L1_2(L2_2, L3_2, L4_2)
  A0_2._group_id = nil
  A0_2._with_hint = false
end
L1_1.InitNotify = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._group_id = A1_2
  A0_2._with_hint = false
  L3_2 = A0_2
  L2_2 = A0_2._try_show_message_notice
  L2_2(L3_2)
end
L1_1._on_phone_notice_show_direct = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._group_id = A1_2
  A0_2._with_hint = true
  L3_2 = A0_2
  L2_2 = A0_2._try_show_message_notice
  L2_2(L3_2)
end
L1_1._on_phone_notice_show_with_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._group_id
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._in_main_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.ToastModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.has_toast_in_queue
    L3_2 = "FullScreenToast"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ShowMessageNoticePage
  L3_2 = A0_2._group_id
  L4_2 = A0_2._with_hint
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    A0_2._group_id = nil
  end
end
L1_1._try_show_message_notice = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L1_2 = L1_2.PageStackCount
  L1_2 = L1_2 == 1
  return L1_2
end
L1_1._in_main_page = L2_1
return L1_1
