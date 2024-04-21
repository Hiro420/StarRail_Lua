local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Target.ChallengeTargetInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeTargetInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_star_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_target_data = nil
  A0_2._state = nil
  A0_2._cur_progress = nil
  A0_2._total_progress = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._challenge_target_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_target_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_complete_status
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L6_2 = unpack
  L7_2 = A2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_text = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_set_trigger
    L4_2 = "Succeed"
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_set_trigger
    L4_2 = "Failed"
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_progress_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChallengeTargetState
  L2_2 = L2_2.Success
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "Play Challenge Target Animation: ChallengeMission_Success"
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._try_set_trigger
    L3_2 = "SuccessHint"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._state
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChallengeTargetState
    L2_2 = L2_2.Fail
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.SuperDebug
      L1_2 = L1_2.Log
      L2_2 = "Play Challenge Target Animation: ChallengeMission_Failure"
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._try_set_trigger
      L3_2 = "FailHint"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.play_state_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._challenge_target_data
  L2_2 = L1_2
  L1_2 = L1_2.GetNameParam
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._challenge_target_data
  L5_2 = L5_2.Name
  L6_2 = unpack
  L7_2 = L2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_name = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_target_data
  L1_2 = L1_2.ChallengeTargetState
  A0_2._state = L1_2
  L1_2 = A0_2._challenge_target_data
  L1_2 = L1_2.CurrentProgress
  A0_2._cur_progress = L1_2
  L1_2 = A0_2._challenge_target_data
  L1_2 = L1_2.TotalProgress
  A0_2._total_progress = L1_2
end
L0_1._update_target_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_star_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_status_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._state
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChallengeTargetState
  L2_2 = L2_2.Success
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_set_trigger
    L3_2 = "Succeed"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._state
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChallengeTargetState
    L2_2 = L2_2.Fail
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._try_set_trigger
      L3_2 = "Failed"
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._try_set_trigger
      L3_2 = "Pending"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_complete_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChallengeTargetState
  L2_2 = L2_2.Success
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_set_trigger
    L4_2 = "Succeed"
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChallengeTargetState
    L2_2 = L2_2.Fail
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._try_set_trigger
      L4_2 = "Failed"
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._try_set_trigger
      L4_2 = "Pending"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_complete_status_by_target_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._last_trigger_name
  if L2_2 ~= nil then
    L2_2 = A0_2._last_trigger_name
    if L2_2 ~= A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator_root
      L3_2 = L2_2
      L2_2 = L2_2.ResetTrigger
      L4_2 = A0_2._last_trigger_name
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_root
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._last_trigger_name = A1_2
end
L0_1._try_set_trigger = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_target_data
  L1_2 = L1_2.ChallengeType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeType
  L2_2 = L2_2.None
  L1_2 = L1_2 ~= L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_cur_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._cur_progress
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_total_progress
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._total_progress
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_set_trigger
  L3_2 = "SuccessHintDelay"
  L1_2(L2_2, L3_2)
end
L0_1.play_success_result_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_set_trigger
  L3_2 = "Failed"
  L1_2(L2_2, L3_2)
end
L0_1.show_fail_state = L1_1
return L0_1
