local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainRightListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ContentList/ScrollList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.loop_listview_quest = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LockedTipsItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LockedTipsItem/Root/Contents/ProgressLocked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_condtion_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LockedTipsItem/Root/Contents/ProgressLocked/ProgressLockedText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_condition_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LockedTipsItem/Root/Contents/TimeLocked"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "LockedTipsItem/Root/Contents/TimeLocked/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LockedTipsItem/Root/Contents/TimeLocked/TextLockedTimeTile"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_timer_lock = L1_2
end
L0_1._on_bind = L1_1
return L0_1
