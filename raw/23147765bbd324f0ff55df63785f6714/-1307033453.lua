local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeGroupInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_group_data = nil
  A0_2._expire_call_back_self = nil
  A0_2._expire_call_back_func = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._challenge_group_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.button
  L5_2 = A0_2._on_click
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_schedule
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
end
L0_1.bind_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._expire_call_back_self = A1_2
  A0_2._expire_call_back_func = A2_2
end
L0_1.register_expire_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_click_item
  if L2_2 then
    L2_2 = A0_2._click_event_listner
    if L2_2 then
      L2_2 = A0_2._on_click_item
      L3_2 = A0_2._click_event_listner
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.GroupName
  L1_2(L2_2, L3_2)
end
L0_1._setup_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.IsScheduleChallenge
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.IsScheduleChallenge
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._challenge_group_data
    L3_2 = L3_2.ScheduleData
    L3_2 = L3_2.EndTimeDate
    L4_2 = A0_2._on_challenge_group_expire
    L5_2 = A0_2
    L6_2 = 1
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_schedule = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "ChallengeGroup Expired, GroupID: "
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.ID
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2._expire_call_back_func
  if nil ~= L1_2 then
    L1_2 = A0_2._expire_call_back_func
    L2_2 = A0_2._expire_call_back_self
    L1_2(L2_2)
  end
end
L0_1._on_challenge_group_expire = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._target_progress_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.Stars
  L4_2 = L0_1._max_progress_stars
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_progress = L1_1
return L0_1
