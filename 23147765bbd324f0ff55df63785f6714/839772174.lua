local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.QuestUtils
L1_1 = "UIText_ActivityFight_Locked"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "CommonActivityRewardTabHintPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_hint_view = L3_1
function L3_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    A2_2 = L1_1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2
  L6_2, L7_2, L8_2 = ...
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SetTargetTimeByTimeStamp
  L5_2 = A1_2.BeginTimeStamp
  L6_2 = A0_2._on_remain_timer_expire
  L7_2 = A0_2
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L2_1.setup_schedule_locked = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.setup_title
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.setup_lock_quest_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._timer_expire_cbk = A1_2
  A0_2._timer_expire_cbk_self = A2_2
end
L2_1.register_timer_expire_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._timer_expire_cbk
  L3_2 = A0_2._timer_expire_cbk_self
  L1_2(L2_2, L3_2)
end
L2_1._on_remain_timer_expire = L3_1
return L2_1
