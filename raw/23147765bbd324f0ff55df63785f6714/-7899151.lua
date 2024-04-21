local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MissionModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MessageModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ChallengeUtils
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "HandbookChallengeStoryLockPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2
  L9_2 = A0_2
  L8_2 = A0_2._try_set_node_active
  L10_2 = A1_2
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._try_set_textid
  L10_2 = A2_2
  L11_2 = "UIText_GameplayGuide_ChallengeMazeCountDown"
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._try_set_node_active
  L10_2 = A6_2
  L11_2 = false
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._try_set_node_active
  L10_2 = A3_2
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._try_set_remain_timer
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = true
  return L8_2
end
L3_1.try_setup_schedule_lock_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_finish_pre_main_mission
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_finish_pre_world_level
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._is_finish_sub_mission
      L1_2 = L1_2(L2_2)
    end
  end
  return L1_2
end
L3_1.is_unlock = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.GetChallengeStoryUnlockPreMainMission_1
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L3_1._is_finish_pre_main_mission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.GetChallengeStoryUnlockPreMainMission_2
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L3_1._is_finish_pre_world_level = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ChallengeUtils
  L1_2 = L1_2.get_challenge_story_unlock_sub_mission_id
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= nil and L3_2
  return L3_2
end
L3_1._is_finish_sub_mission = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = A0_2
  L6_2 = A0_2._try_setup_pre_mission_level_lock_status
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L6_2 then
    L6_2 = true
    return L6_2
  end
  L7_2 = A0_2
  L6_2 = A0_2._try_setup_story_mission_lock_status
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L3_1.try_setup_lock_status = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L7_2 = A0_2
  L6_2 = A0_2._is_finish_pre_main_mission
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._is_finish_pre_world_level
  L7_2 = L7_2(L8_2)
  if L6_2 and L7_2 then
    L8_2 = false
    return L8_2
  end
  L8_2 = nil
  if not L6_2 and not L7_2 then
    L8_2 = "UIText_GameplayGuide_Recent_ChallengeStoryPre1"
  elseif not L7_2 then
    L8_2 = "UIText_GameplayGuide_Recent_ChallengeStoryPre2"
  else
    L8_2 = "UIText_GameplayGuide_Recent_ChallengeStoryPre3"
  end
  L9_2 = L2_1.GetChallengeStoryUnlockPreMainMission_1
  L9_2 = L9_2()
  L11_2 = A0_2
  L10_2 = A0_2._try_set_node_active
  L12_2 = A1_2
  L13_2 = true
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2
  L10_2 = A0_2._try_set_textid
  L12_2 = A2_2
  L13_2 = L8_2
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2
  L10_2 = A0_2._try_set_node_active
  L12_2 = A4_2
  L13_2 = not L6_2
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2
  L10_2 = A0_2._try_set_textid
  L12_2 = A5_2
  L13_2 = "UIText_Activity_Museum_TrackMission"
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2
  L10_2 = A0_2._try_bind_btn
  L12_2 = A4_2
  function L13_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._trace_mission
    L2_3 = L9_2
    L0_3(L1_3, L2_3)
  end
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2
  L10_2 = A0_2._try_set_node_active
  L12_2 = A3_2
  L13_2 = false
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = true
  return L10_2
end
L3_1._try_setup_pre_mission_level_lock_status = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L7_2 = A0_2
  L6_2 = A0_2._is_finish_sub_mission
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = G
  L6_2 = L6_2.ChallengeUtils
  L6_2 = L6_2.get_challenge_story_unlock_main_mission_id
  L6_2 = L6_2()
  L8_2 = A0_2
  L7_2 = A0_2._try_set_node_active
  L9_2 = A1_2
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._try_set_textid
  L9_2 = A2_2
  L10_2 = G
  L10_2 = L10_2.ChallengeUtils
  L10_2 = L10_2.get_challenge_story_unlock_mission_tips
  L10_2 = L10_2()
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._try_set_node_active
  L9_2 = A4_2
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._try_set_textid
  L9_2 = A5_2
  L10_2 = "UIText_Activity_Museum_TrackMission"
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._try_bind_btn
  L9_2 = A4_2
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._trace_mission
    L2_3 = L6_2
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._try_set_node_active
  L9_2 = A3_2
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = true
  return L7_2
end
L3_1._try_setup_story_mission_lock_status = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L3_1._try_set_node_active = L4_1
function L4_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetTextID
    L5_2 = A2_2
    L6_2 = ...
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._try_set_textid = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._bind_btn_callback
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1._try_bind_btn = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    L5_2 = A1_2
    L4_2 = A1_2.SetTargetTime
    L6_2 = A2_2
    L7_2 = A3_2
    L8_2 = A0_2
    L9_2 = 2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L3_1._try_set_remain_timer = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.MainMissionDataPromised
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.TryGetMainMissionData
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    if L0_3 == nil then
      return
    end
    L1_3 = L0_3.IsStart
    if L1_3 then
      L1_3 = G
      L1_3 = L1_3.MissionUtils
      L1_3 = L1_3.common_jump_to_mission_by_main_mission
      L2_3 = L0_3
      L1_3(L2_3)
    else
      L1_3 = G
      L1_3 = L1_3.MissionUtils
      L1_3 = L1_3.jump_to_main_mission
      L2_3 = G
      L2_3 = L2_3.TextmapStatic
      L2_3 = L2_3.GetText
      L3_3 = "UIText_ActivityCommon_Panel_MainMissionTrackTip"
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L3_1._trace_mission = L4_1
return L3_1
