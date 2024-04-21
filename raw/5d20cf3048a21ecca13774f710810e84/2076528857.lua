local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = "MissionTab_{0}"
L2_1 = "MissionOne"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MissionModule
function L4_1(A0_2)
  local L1_2
  A0_2._reddot_missions_id_to_type = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._reddot_missions_id_to_type = nil
end
L0_1.dtor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = "MissionTab_All"
  return L1_2
end
L0_1.get_associate_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._reddot_missions_id_to_type
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._update_reddot_all_mission
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._reddot_missions_id_to_type
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L4_2 ~= nil and L5_2 ~= nil then
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = G
      L6_2 = L6_2.RedDotModule
      L6_2 = L6_2.Instance
      L7_2 = L6_2
      L6_2 = L6_2.update_reddot
      L8_2 = L2_1
      L9_2 = L4_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L0_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.PBEFIBALMEM
  L4_2 = L0_1._update_reddot_all_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.DIOGIBHHDJL
  L4_2 = L0_1._update_reddot_all_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CPKHNHCJLGJ
  L4_2 = L0_1._on_cmd_get_mission_status_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshMissionID
  L4_2 = L0_1._update_reddot_one_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.register_events = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.PBEFIBALMEM
  L4_2 = L0_1._update_reddot_all_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.DIOGIBHHDJL
  L4_2 = L0_1._update_reddot_all_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CPKHNHCJLGJ
  L4_2 = L0_1._on_cmd_get_mission_status_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReddotRefreshMissionID
  L4_2 = L0_1._update_reddot_one_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.unregister_events = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetMissionStatusScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    return
  end
  L3_2 = L2_2.SubMissionStatusList
  if L3_2 ~= nil then
    L3_2 = L2_2.SubMissionStatusList
    L3_2 = L3_2.Count
    if 0 < L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._update_reddot_all_mission
      L3_2(L4_2)
      return
    end
  end
  L3_2 = L2_2.FinishedMainMissionIdList
  if L3_2 ~= nil then
    L3_2 = 0
    L4_2 = L2_2.FinishedMainMissionIdList
    L4_2 = L4_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2._update_reddot_one_mission
      L9_2 = L2_2.FinishedMainMissionIdList
      L9_2 = L9_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = L2_2.UnfinishedMainMissionIdList
  if L3_2 ~= nil then
    L3_2 = 0
    L4_2 = L2_2.UnfinishedMainMissionIdList
    L4_2 = L4_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2._update_reddot_one_mission
      L9_2 = L2_2.UnfinishedMainMissionIdList
      L9_2 = L9_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  return
end
L0_1._on_cmd_get_mission_status_sc_rsp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_reddot_mission_id_to_type
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L1_2 = L1_2.AllMainMissions
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = L6_2.Row
      if L7_2 ~= nil then
        L7_2 = L6_2.IsShowRedDot
        if L7_2 then
          L8_2 = A0_2
          L7_2 = A0_2._is_mission_reddot
          L9_2 = L6_2
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2._set_reddot_mission_id_to_type
            L9_2 = L6_2.ID
            L10_2 = CS
            L10_2 = L10_2.RPG
            L10_2 = L10_2.StrUtils
            L10_2 = L10_2.Format
            L11_2 = L1_1
            L12_2 = L6_2.MainMissionType
            L12_2 = #L12_2
            L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          end
        end
      end
    end
  end
end
L0_1._update_reddot_all_mission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._reddot_missions_id_to_type = L1_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.ClearRedDotMission
  L1_2(L2_2)
end
L0_1._clear_reddot_mission_id_to_type = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._reddot_missions_id_to_type
  L3_2[A1_2] = A2_2
  if A2_2 ~= nil then
    L3_2 = L3_1
    L4_2 = L3_2
    L3_2 = L3_2.AddRedDotMission
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = L3_1
    L4_2 = L3_2
    L3_2 = L3_2.RemoveRedDotMission
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._set_reddot_mission_id_to_type = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._reddot_missions_id_to_type
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_mission_reddot
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_reddot_mission_id_to_type
    L5_2 = L2_2.ID
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.StrUtils
    L6_2 = L6_2.Format
    L7_2 = L1_1
    L8_2 = L2_2.MainMissionType
    L8_2 = #L8_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._set_reddot_mission_id_to_type
    L5_2 = L2_2.ID
    L6_2 = nil
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._update_reddot_one_mission = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = A1_2.IsFinish
    if not L2_2 then
      L2_2 = A1_2.IsShow
      if L2_2 then
        L2_2 = G
        L2_2 = L2_2.Utils
        L2_2 = L2_2.is_main_mission_new
        L3_2 = A1_2.ID
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L2_2 = true
          return L2_2
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_mission_reddot = L4_1
return L0_1
