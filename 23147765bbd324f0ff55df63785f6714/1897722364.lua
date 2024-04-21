local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeTargetPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Challenge.Target.ChallengeTargetInfoRowPanel"
  L6_2 = "Ui.Challenge.Target.ChallengeTargetInfoRowPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._challenge_target_panel = L1_2
  L1_2 = A0_2._challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_target_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_target_data = nil
  A0_2._show_progress = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._challenge_target_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_panel
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = false
  end
  A0_2._show_progress = L2_2
  L2_2 = A0_2._challenge_target_data
  if L2_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._challenge_target_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._challenge_target_panel
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_progress_active
    L10_2 = A0_2._show_progress
    L8_2(L9_2, L10_2)
  end
end
L0_1.set_show_progress = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._challenge_target_data
  if L2_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = A0_2._challenge_target_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._challenge_target_panel
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L7_2
    L8_2 = L7_2._show_status_panel
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
  end
end
L0_1.set_show_status_panel = L1_1
function L1_1(A0_2, A1_2)
  A0_2._history_challenge_target_data = A1_2
end
L0_1.set_history_target_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1._create_cs_AvatarData_array
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A0_2._challenge_target_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._should_refresh_by_team_data
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.UpdateChallengeTargetState
      L10_2 = L2_2
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_panel
  L3_2(L4_2)
end
L0_1.refresh_by_avatar_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_target_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_show_progress
  L3_2 = A0_2._show_progress
  L1_2(L2_2, L3_2)
end
L0_1._refresh_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._challenge_target_data
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2._history_challenge_target_data
  if L3_2 ~= nil then
    L3_2 = A0_2._history_challenge_target_data
    L3_2 = L3_2[A1_2]
    if L3_2 ~= nil then
      L4_2 = L3_2.ChallengeTargetState
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ChallengeTargetState
      L5_2 = L5_2.Success
      if L4_2 == L5_2 then
        L4_2 = false
        return L4_2
      end
    end
  end
  L3_2 = L2_2.ChallengeType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeType
  L4_2 = L4_2.AVATAR_BASE_TYPE_MORE
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1._should_refresh_by_team_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AvatarData
  L2_2 = L2_2(L3_2)
  L3_2 = #A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L5_2 - 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1._create_cs_AvatarData_array = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  if L1_2 ~= nil then
    L2_2 = L1_2.LastProgressBefore
    L2_2 = L2_2.ChallengeTargetDatas
    L3_2 = L1_2.CurrentProgress
    L3_2 = L3_2.ChallengeTargetDatas
    L4_2 = 0
    L5_2 = L3_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L8_2 = L8_2.ChallengeTargetState
      L9_2 = L2_2[L7_2]
      L9_2 = L9_2.ChallengeTargetState
      if L8_2 ~= L9_2 then
        L8_2 = A0_2._challenge_target_panel
        L9_2 = L8_2
        L8_2 = L8_2.get_panel_by_index
        L10_2 = L7_2 + 1
        L8_2 = L8_2(L9_2, L10_2)
        L10_2 = L8_2
        L9_2 = L8_2.play_state_animation
        L9_2(L10_2)
      end
    end
  end
end
L0_1.show_target_animation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChallengeModule
  L2_2 = L2_2.CurrentChallengeInstance
  if L2_2 ~= nil then
    L3_2 = L2_2.ChallengeDataRef
    L4_2 = L3_2
    L3_2 = L3_2.GetChallengeTargetDataList
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2.CachedTargetStatesBeforeChallenge
    L5_2 = A0_2._challenge_target_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.create_lua_table_from_cs_list
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = 0
    L6_2 = L3_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A0_2._challenge_target_panel
      L10_2 = L9_2
      L9_2 = L9_2.get_panel_by_index
      L11_2 = L8_2 + 1
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L3_2[L8_2]
      L10_2 = L10_2.ChallengeTargetState
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.Client
      L11_2 = L11_2.ChallengeTargetState
      L11_2 = L11_2.Success
      L10_2 = L10_2 == L11_2
      L11_2 = L10_2 or L11_2
      if L10_2 then
        L11_2 = L4_2[L8_2]
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.Client
        L12_2 = L12_2.ChallengeTargetState
        L12_2 = L12_2.Success
        L11_2 = L11_2 ~= L12_2
      end
      L13_2 = L9_2
      L12_2 = L9_2.set_progress_active
      L14_2 = false
      L12_2(L13_2, L14_2)
      if L11_2 and A1_2 then
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.Client
        L12_2 = L12_2.CoroutineUtils
        L12_2 = L12_2.InvokeAfterSeconds
        L13_2 = L8_2 + 1
        L13_2 = 0.1 * L13_2
        function L14_2()
          local L0_3, L1_3
          L0_3 = L9_2
          L1_3 = L0_3
          L0_3 = L0_3.play_success_result_animation
          L0_3(L1_3)
        end
        L12_2(L13_2, L14_2)
      end
      if not L10_2 then
        L13_2 = L9_2
        L12_2 = L9_2.show_fail_state
        L12_2(L13_2)
      end
    end
  end
end
L0_1.setup_view_challenge_result = L1_1
return L0_1
