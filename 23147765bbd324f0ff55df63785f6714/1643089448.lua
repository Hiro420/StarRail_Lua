local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialAlleyPackTaskItem"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2.key = A1_2
  A0_2._is_trigger_task_unlock = A2_2
  A0_2.pre_task_item_key = A3_2
  A0_2.is_finish = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.key = nil
  A0_2.is_finish = false
  A0_2._is_trigger_task_unlock = nil
  A0_2.pre_task_item_key = nil
end
L0_1.dtor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    A0_2.is_finish = true
    L3_2 = A0_2
    L2_2 = A0_2._trigger_unlock
    L2_2(L3_2)
  end
end
L0_1.update_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_trigger_task_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._trigger_task_unlock
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._trigger_custom_str
    L1_2(L2_2)
  end
end
L0_1._trigger_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "\233\135\145\228\186\186\229\183\183\230\145\134\232\180\167\229\188\149\229\175\188\229\174\140\230\136\144\239\188\140Task Unlock, key: "
  L3_2 = A0_2.key
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = A0_2.key
  L1_2(L2_2, L3_2)
end
L0_1._trigger_task_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "\233\135\145\228\186\186\229\183\183\230\145\134\232\180\167\229\188\149\229\175\188\229\174\140\230\136\144\239\188\140Custom Str, key: "
  L3_2 = A0_2.key
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = A0_2.key
  L1_2(L2_2)
end
L0_1._trigger_custom_str = L1_1
return L0_1
