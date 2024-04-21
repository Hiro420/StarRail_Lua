local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "WayPointUtils"
L0_1 = L0_1(L1_1)
L1_1 = "UIText_AdventureDistance_Meter"
L2_1 = "UIText_AdventureDistance_Kilometer"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = nil
  if 999 < A0_2 then
    L1_2 = L2_1
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 / 1000
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L1_2 = L1_1
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 + 0.5
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L0_1.get_distance_text = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAdventureWaypointsContainer
  L2_2 = L2_2.GetDistance
  L3_2 = A0_2.Target
  L3_2 = L3_2.GetTargetEntityPos
  L4_2 = A1_2.transform
  L4_2 = L4_2.position
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.get_distance = L3_1
function L3_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L1_2 = L0_2.TeamManager
    if L1_2 then
      L1_2 = L0_2.TeamManager
      L1_2 = L1_2.CurrentTeamLeader
      if L1_2 then
        L1_2 = L0_2.TeamManager
        L1_2 = L1_2.CurrentTeamLeader
        L1_2 = L1_2.UnityGO
      end
    end
  end
  return L1_2
end
L0_1.get_player_GO = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.ShowRangeMin
  if L3_2 < 0 or L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2.ShowRangeMin
  if L3_2 ~= 0 then
    L3_2 = A0_2.ShowRangeMin
    if A1_2 < L3_2 then
      L3_2 = A0_2.Target
      L3_2 = L3_2.TargetEntity
      if L3_2 == nil then
        L3_2 = false
        return L3_2
      else
        L4_2 = L2_2
        L3_2 = L2_2.GetMapLayerManager
        L3_2 = L3_2(L4_2)
        L4_2 = L3_2
        L3_2 = L3_2.GetLayer
        L5_2 = A0_2.Target
        L5_2 = L5_2.TargetEntity
        L3_2 = L3_2(L4_2, L5_2)
        L5_2 = L2_2
        L4_2 = L2_2.GetMapLayerManager
        L4_2 = L4_2(L5_2)
        L5_2 = L4_2
        L4_2 = L4_2.GetLocalAvatarLayer
        L4_2 = L4_2(L5_2)
        if L3_2 == L4_2 then
          L3_2 = false
          return L3_2
        end
      end
      A0_2.IsInMinRange = true
  end
  else
    A0_2.IsInMinRange = false
  end
  L3_2 = A0_2.ShowRangeMax
  if L3_2 ~= 0 then
    L3_2 = A0_2.ShowRangeMax
    if A1_2 > L3_2 then
      L3_2 = false
      return L3_2
    end
  end
  L3_2 = true
  return L3_2
end
L0_1.is_way_point_in_range = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = true
  L3_2 = A0_2.WaypointType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AdventureWaypointType
  L4_2 = L4_2.Mission
  if L3_2 == L4_2 then
    L3_2 = G
    L3_2 = L3_2.WayPointUtils
    L3_2 = L3_2.is_way_point_in_range
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L3_2 = A0_2.WaypointType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AdventureWaypointType
    L4_2 = L4_2.MappingInfo
    if L3_2 == L4_2 then
      L3_2 = A0_2.IsTeleport
      if not L3_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ConstValueClientExcelTable
        L3_2 = L3_2.GetData
        L4_2 = "MappingInfo_Track_RangeMin"
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.Value
        L3_2 = L3_2.IntValue
        if A1_2 < L3_2 then
          L2_2 = false
          L4_2 = G
          L4_2 = L4_2.NotifyManager
          L4_2 = L4_2.notify
          L5_2 = G
          L5_2 = L5_2.CS
          L5_2 = L5_2.NotifyType
          L5_2 = L5_2.UIHideMappingInfoTrace
          L4_2(L5_2)
          L4_2 = G
          L4_2 = L4_2.NotifyManager
          L4_2 = L4_2.notify
          L5_2 = G
          L5_2 = L5_2.CS
          L5_2 = L5_2.NotifyType
          L5_2 = L5_2.UIPileToastMessageTextID
          L6_2 = "UIText_MappingInfo_Track_Toast_AutoCancel"
          L4_2(L5_2, L6_2)
          A0_2.IsInMinRange = true
        else
          A0_2.IsInMinRange = false
        end
      end
    else
      L3_2 = A0_2.WaypointType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.AdventureWaypointType
      L4_2 = L4_2.MissionAssist
      if L3_2 == L4_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ConstValueClientExcelTable
        L3_2 = L3_2.GetData
        L4_2 = "Mission_AssistWayPoint_FinishDistance"
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.Value
        L3_2 = L3_2.IntValue
        L4_2 = A0_2.ShowRangeMin
        if 0 < L4_2 then
          L3_2 = A0_2.ShowRangeMin
        end
        if A1_2 < L3_2 then
          L2_2 = false
          L4_2 = A0_2.IsInMinRange
          if not L4_2 then
            L4_2 = G
            L4_2 = L4_2.NotifyManager
            L4_2 = L4_2.notify
            L5_2 = G
            L5_2 = L5_2.CS
            L5_2 = L5_2.NotifyType
            L5_2 = L5_2.AssistWayPointInRange
            L4_2(L5_2)
          end
          A0_2.IsInMinRange = true
        else
          L4_2 = A0_2.IsInMinRange
          if L4_2 then
            L4_2 = G
            L4_2 = L4_2.NotifyManager
            L4_2 = L4_2.notify
            L5_2 = G
            L5_2 = L5_2.CS
            L5_2 = L5_2.NotifyType
            L5_2 = L5_2.AssistWayPointOutRange
            L4_2(L5_2)
          end
          A0_2.IsInMinRange = false
        end
      end
    end
  end
  return L2_2
end
L0_1.tick_waypoint_active = L3_1
return L0_1
