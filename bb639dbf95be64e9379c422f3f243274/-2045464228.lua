local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DailyMission.Challenge.Common.HandbookChallengeSubTabItemBinderBase"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookChallengeStoryTabItemBinder"
L2_1 = G
L2_1 = L2_1.HandbookChallengeSubTabItemBinderBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_view_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LockPanel/LockStatusTip/TextPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_lock_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LockPanel/LockStatusTip/TextPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_lock_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LockPanel/LockStatusTip/TextPanel/BtnGo/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_btn_lock_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "LockPanel/LockStatusTip/TextPanel/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LockPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_lock_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LockPanel/LockStatusTip/TextPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_incontrol_btn_lock_jump = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "LockPanel/LockStatusTip/TextPanel/BtnGo/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_incontrol_tip_lock_jump = L1_2
end
L0_1._on_bind = L1_1
return L0_1
