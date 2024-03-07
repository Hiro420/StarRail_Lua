local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
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
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ChallengeModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ChallengeUtils
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "HandbookChallengeMemoryLockPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = G
  L6_2 = L6_2.ChallengeUtils
  L6_2 = L6_2.get_challenge_memory_resident_unlock_player_level
  L6_2 = L6_2()
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.PlayerModule
  L7_2 = L7_2.PlayerData
  L7_2 = L7_2.Level
  if L6_2 > L7_2 then
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
    L10_2 = L10_2.get_challenge_memory_resident_unlock_player_level_tips
    L10_2 = L10_2()
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = A0_2
    L7_2 = A0_2._try_set_node_active
    L9_2 = A4_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._try_set_node_active
    L9_2 = A3_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = true
    return L7_2
  end
  L7_2 = G
  L7_2 = L7_2.ChallengeUtils
  L7_2 = L7_2.get_challenge_memory_resident_unlock_message_group_id
  L7_2 = L7_2()
  L8_2 = L1_1
  L9_2 = L8_2
  L8_2 = L8_2.TryGetMessageGroup
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 ~= nil then
    L9_2 = L8_2.Status
    L10_2 = CS
    L10_2 = L10_2.PCHIIJEMIKI
    L10_2 = L10_2.GFEBLLNIBEP
    if L9_2 ~= L10_2 then
      L10_2 = A0_2
      L9_2 = A0_2._try_set_node_active
      L11_2 = A1_2
      L12_2 = true
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = A0_2
      L9_2 = A0_2._try_set_textid
      L11_2 = A2_2
      L12_2 = G
      L12_2 = L12_2.ChallengeUtils
      L12_2 = L12_2.get_challenge_memory_resident_unlock_mission_tips
      L12_2 = L12_2()
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = A0_2
      L9_2 = A0_2._try_set_node_active
      L11_2 = A4_2
      L12_2 = true
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = A0_2
      L9_2 = A0_2._try_set_textid
      L11_2 = A5_2
      L12_2 = "UIText_ActivityCommon_Panel_GoToActivity"
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = A0_2
      L9_2 = A0_2._try_bind_btn
      L11_2 = A4_2
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = G
        L0_3 = L0_3.GotoManager
        L0_3 = L0_3.GotoByType
        L1_3 = CS
        L1_3 = L1_3.RPG
        L1_3 = L1_3.GameCore
        L1_3 = L1_3.GotoType
        L1_3 = L1_3.PhoneNotice
        L1_3 = #L1_3
        L2_3 = {}
        L3_3 = L7_2
        L2_3[1] = L3_3
        L0_3(L1_3, L2_3)
      end
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = A0_2
      L9_2 = A0_2._try_set_node_active
      L11_2 = A3_2
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = true
      return L9_2
    end
  end
  L9_2 = L3_1.IsChallengeMemoryPreMissionUnlock
  L9_2 = L9_2()
  if not L9_2 then
    L10_2 = A0_2
    L9_2 = A0_2._try_set_node_active
    L11_2 = A1_2
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._try_set_textid
    L11_2 = A2_2
    L12_2 = G
    L12_2 = L12_2.ChallengeUtils
    L12_2 = L12_2.get_challenge_memory_resident_unlock_mission_tips
    L12_2 = L12_2()
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._try_set_node_active
    L11_2 = A4_2
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._try_set_textid
    L11_2 = A5_2
    L12_2 = "UIText_Activity_Museum_TrackMission"
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._try_bind_btn
    L11_2 = A4_2
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L3_1.GetChallengeMemoryUnlockMainMissionIDList
      L0_3 = L0_3()
      if L0_3 ~= nil then
        L1_3 = L0_3.Count
        if 0 < L1_3 then
          L1_3 = L0_3[0]
          L2_3 = A0_2
          L3_3 = L2_3
          L2_3 = L2_3._trace_mission
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
        end
      end
    end
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._try_set_node_active
    L11_2 = A3_2
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = true
    return L9_2
  end
  L9_2 = false
  return L9_2
end
L4_1.try_setup_lock_status = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = A0_2
  L6_2 = A0_2.try_setup_lock_status
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L6_2 then
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2._try_set_node_active
  L8_2 = A1_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_set_textid
  L8_2 = A2_2
  L9_2 = G
  L9_2 = L9_2.ChallengeUtils
  L9_2 = L9_2.get_challenge_memory_schedule_unlock_prev_challenge_level_tips
  L9_2 = L9_2()
  L10_2 = G
  L10_2 = L10_2.ChallengeUtils
  L10_2 = L10_2.get_challenge_memory_schedule_unlock_prev_challenge_level_tips_param
  L10_2, L11_2, L12_2 = L10_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_set_node_active
  L8_2 = A4_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_set_textid
  L8_2 = A5_2
  L9_2 = "UIText_HandbookGuide_Goto"
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_bind_btn
  L8_2 = A4_2
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.GetNoneScheduleChallengeGroupData
    L0_3 = L0_3(L1_3)
    if L0_3 ~= nil then
      L1_3 = L0_3.Count
      if 0 < L1_3 then
        L1_3 = G
        L1_3 = L1_3.ChallengeUtils
        L1_3 = L1_3.try_goto_challenge_memory
        L2_3 = L0_3[0]
        L2_3 = L2_3.ID
        L1_3(L2_3)
      end
    end
  end
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._try_set_node_active
  L8_2 = A3_2
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
end
L4_1.try_setup_schedule_lock_status = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L4_1._try_set_node_active = L5_1
function L5_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.SafeSetTextID
    L5_2 = A2_2
    L6_2 = ...
    L3_2(L4_2, L5_2, L6_2)
  end
end
L4_1._try_set_textid = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._bind_btn_callback
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L4_1._try_bind_btn = L5_1
function L5_1(A0_2, A1_2)
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
L4_1._trace_mission = L5_1
return L4_1
