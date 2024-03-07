local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.MuseumActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.MuseumActivityPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResidentMuseumActivityPanel"
L2_1 = G
L2_1 = L2_1.MuseumActivityPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2.parent_page = A1_2
  A0_2.finish_count = 0
  A0_2._promise_end_count = 0
  A0_2._activity_data = A3_2
  A0_2._reward_items = nil
  L4_2 = {}
  A0_2.mission_data = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_resident = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_phase_reward_resident
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_phase_reward_resident
  L4_2 = A0_2._on_btn_phase_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumPhaseReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot_btn_phase_resident
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.goto_id = 228
  L2_2 = A0_2
  L1_2 = A0_2._setup_finish_hint
  L1_2(L2_2)
end
L0_1._setup_resident_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.all_finish_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.IsFinishConditionsCompleted
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_finish_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Count
  if 0 < L2_2 then
    L2_2 = A1_2[0]
    A0_2.pre_mission_data = L2_2
  end
  L2_2 = 1
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.mission_data
    L7_2 = A1_2[L5_2]
    L6_2[L5_2] = L7_2
    L6_2 = A1_2[L5_2]
    L6_2 = L6_2.IsFinish
    if L6_2 then
      L6_2 = A0_2.finish_count
      L6_2 = L6_2 + 1
      A0_2.finish_count = L6_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.sort_mission_data
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.finish_count
  L5_2 = A0_2.mission_id
  L5_2 = #L5_2
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.finish_count
  L5_2 = A0_2.mission_id
  L5_2 = #L5_2
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.finish_count
  L5_2 = A0_2.mission_id
  L5_2 = #L5_2
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_mission_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2.mission_id
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_mission_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_phase_reward_resident
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.pre_mission_data
  L4_2 = L4_2.IsFinish
  L2_2(L3_2, L4_2)
end
L0_1.receive_mission_data_callback = L1_1
return L0_1
