local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChroniclePathDetailUnlockConditionItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Mission = 1
L1_1.NextDayTime = 2
L1_1.PlayerLevel = 3
L1_1.WorldLevel = 4
L1_1.Message = 5
L1_1.GoToInteraction = 6
L1_1.EnterMap = 7
L1_1.LeaveMap = 8
L1_1.MuseumLevel = 9
L1_1.AlleyLevel = 10
L1_1.HeliobusLevel = 11
L1_1.MissionScheduleStartTime = 12
L2_1 = "UIText_AdventureMissionPage_Location"
L3_1 = "UIText_Chronicle_MissionUnlock_FinishMission"
L4_1 = "UIText_Chronicle_MissionUnlock_Time"
L5_1 = "UIText_Chronicle_MissionUnlock_PlayerLevel"
L6_1 = "UIText_Chronicle_MissionUnlock_WorldLevel"
L7_1 = "UIText_Chronicle_MissionUnlock_PhoneMessage"
L8_1 = "UIText_Chronicle_MissionUnlock_EntityInScene"
L9_1 = "UIText_Chronicle_MissionUnlock_EnterFloor"
L10_1 = "UIText_Chronicle_MissionUnlock_LeaveFloor"
L11_1 = "UIText_Chronicle_MissionUnlock_Museum"
L12_1 = "UIText_Chronicle_MissionUnlock_Alley"
L13_1 = "UIText_Chronicle_MissionUnlock_Heliobus"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_enable_click = false
  A0_2._condition = A1_2
  L2_2 = A1_2.PathData
  A0_2._path_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_nodes
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
end
L0_1.setup_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_disable_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1._hide_nodes = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._condition
  L1_2 = L1_2.Type
  L2_2 = L1_1.Mission
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_mission_conditon
    L1_2(L2_2)
  else
    L1_2 = A0_2._condition
    L1_2 = L1_2.Type
    L2_2 = L1_1.NextDayTime
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._condition
      L1_2 = L1_2.Type
      L2_2 = L1_1.MissionScheduleStartTime
      if L1_2 ~= L2_2 then
        goto lbl_22
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2._setup_time_remaining
    L1_2(L2_2)
    goto lbl_93
    ::lbl_22::
    L1_2 = A0_2._condition
    L1_2 = L1_2.Type
    L2_2 = L1_1.PlayerLevel
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_player_level
      L1_2(L2_2)
    else
      L1_2 = A0_2._condition
      L1_2 = L1_2.Type
      L2_2 = L1_1.WorldLevel
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_world_level
        L1_2(L2_2)
      else
        L1_2 = A0_2._condition
        L1_2 = L1_2.Type
        L2_2 = L1_1.Message
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._setup_message
          L1_2(L2_2)
        else
          L1_2 = A0_2._condition
          L1_2 = L1_2.Type
          L2_2 = L1_1.GoToInteraction
          if L1_2 == L2_2 then
            L2_2 = A0_2
            L1_2 = A0_2._setup_go_to_interaction
            L1_2(L2_2)
          else
            L1_2 = A0_2._condition
            L1_2 = L1_2.Type
            L2_2 = L1_1.EnterMap
            if L1_2 == L2_2 then
              L2_2 = A0_2
              L1_2 = A0_2._setup_enter_map
              L1_2(L2_2)
            else
              L1_2 = A0_2._condition
              L1_2 = L1_2.Type
              L2_2 = L1_1.LeaveMap
              if L1_2 == L2_2 then
                L2_2 = A0_2
                L1_2 = A0_2._setup_leave_map
                L1_2(L2_2)
              else
                L1_2 = A0_2._condition
                L1_2 = L1_2.Type
                L2_2 = L1_1.MuseumLevel
                if L1_2 == L2_2 then
                  L2_2 = A0_2
                  L1_2 = A0_2._setup_museum_level
                  L1_2(L2_2)
                else
                  L1_2 = A0_2._condition
                  L1_2 = L1_2.Type
                  L2_2 = L1_1.AlleyLevel
                  if L1_2 == L2_2 then
                    L2_2 = A0_2
                    L1_2 = A0_2._setup_alley_level
                    L1_2(L2_2)
                  else
                    L1_2 = A0_2._condition
                    L1_2 = L1_2.Type
                    L2_2 = L1_1.HeliobusLevel
                    if L1_2 == L2_2 then
                      L2_2 = A0_2
                      L1_2 = A0_2._setup_heliobus_level
                      L1_2(L2_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_93::
end
L0_1._setup_info = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._condition
  L1_2 = L1_2.Param
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._mission_data = L3_2
  L3_2 = A0_2._mission_data
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.IsStart
  if L3_2 then
    L3_2 = A0_2._mission_data
    L3_2 = L3_2 ~= nil and L3_2
  end
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_normal
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_normal
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_1
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L2_2.Name
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_disable
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_disable_lock
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_disable
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_1
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L2_2.Name
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  A0_2._is_enable_click = true
end
L0_1._setup_mission_conditon = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_time_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._condition
  L3_2 = L3_2.Param
  L4_2 = A0_2._on_next_day_time_up
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_time_remaining = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MissionChronicleUnlockTimeUp
  L3_2 = A0_2._path_data
  L1_2(L2_2, L3_2)
end
L0_1._on_next_day_time_up = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L4_2 = A0_2._condition
  L4_2 = L4_2.Param
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_player_level = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L6_1
  L4_2 = A0_2._condition
  L4_2 = L4_2.Param
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_world_level = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L7_1
  L4_2 = A0_2._condition
  L4_2 = L4_2.Param
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_enable_click = true
end
L0_1._setup_message = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_target_location_textID
  L3_2 = A0_2._condition
  L3_2 = L3_2.Param
  L3_2 = L3_2.FloorID
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_1
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L8_1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  A0_2._is_enable_click = true
end
L0_1._setup_go_to_interaction = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_target_location_textID
  L3_2 = A0_2._condition
  L3_2 = L3_2.Param
  L3_2 = L3_2.FloorID
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_1
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L2_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._condition
  L4_2 = L4_2.ForceDisable
  L4_2 = L4_2 ~= nil
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_display_only
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_display_only
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L9_1
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_normal
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_normal
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L9_1
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = not L4_2
  A0_2._is_enable_click = L5_2
end
L0_1._setup_enter_map = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_target_location_textID
  L3_2 = A0_2._condition
  L3_2 = L3_2.Param
  L3_2 = L3_2.FloorID
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_1
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_display_only
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L10_1
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_leave_map = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.get_location_name_by_floor_id
  L3_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_target_location_textID = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L11_1
  L4_2 = A0_2._condition
  L4_2 = L4_2.Param
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_museum_level = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L12_1
  L4_2 = A0_2._condition
  L4_2 = L4_2.Param
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_alley_level = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_display_only
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L13_1
  L4_2 = A0_2._condition
  L4_2 = L4_2.Param
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_heliobus_level = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_enable_click
  if not L1_2 then
    return
  end
  L1_2 = nil
  L2_2 = nil
  L3_2 = A0_2._condition
  L3_2 = L3_2.Type
  L4_2 = L1_1.Mission
  if L3_2 == L4_2 then
    L3_2 = A0_2._mission_data
    if L3_2 ~= nil then
      L3_2 = A0_2._mission_data
      L3_2 = L3_2.IsStart
      if L3_2 then
        L3_2 = A0_2._mission_data
        L3_2 = L3_2.IsShow
        if L3_2 then
          L3_2 = G
          L3_2 = L3_2.MissionUtils
          L3_2 = L3_2.jump_to_mission
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.MainMissionType
          L4_2 = L4_2.None
          L4_2 = #L4_2
          L5_2 = A0_2._mission_data
          L5_2 = L5_2.ID
          L3_2(L4_2, L5_2)
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.GotoType
          L3_2 = L3_2.Mission
          L1_2 = #L3_2
          L3_2 = A0_2._mission_data
          L2_2 = L3_2.ID
      end
      else
        L3_2 = G
        L3_2 = L3_2.NotifyManager
        L3_2 = L3_2.notify
        L4_2 = G
        L4_2 = L4_2.CS
        L4_2 = L4_2.NotifyType
        L4_2 = L4_2.UIPileToastMessageTextID
        L5_2 = "UIText_Chronicle_Tip_Unlock_ClickTips"
        L3_2(L4_2, L5_2)
      end
  end
  else
    L3_2 = A0_2._condition
    L3_2 = L3_2.Type
    L4_2 = L1_1.Message
    if L3_2 == L4_2 then
      L3_2 = A0_2._path_data
      L3_2 = L3_2.MainMissionData
      L4_2 = G
      L4_2 = L4_2.MissionUtils
      L4_2 = L4_2.common_jump_to_mission_by_main_mission
      L5_2 = L3_2
      L4_2(L5_2)
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.GotoType
      L4_2 = L4_2.PhoneMessage
      L1_2 = #L4_2
      L4_2 = A0_2._condition
      L2_2 = L4_2.Param
    else
      L3_2 = A0_2._condition
      L3_2 = L3_2.Type
      L4_2 = L1_1.GoToInteraction
      if L3_2 == L4_2 then
        L3_2 = G
        L3_2 = L3_2.GotoManager
        L3_2 = L3_2.GotoByType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.GotoType
        L4_2 = L4_2.AreaSwitch
        L4_2 = #L4_2
        L5_2 = {}
        L6_2 = A0_2._condition
        L6_2 = L6_2.Param
        L6_2 = L6_2.EntryID
        L7_2 = nil
        L8_2 = A0_2._condition
        L8_2 = L8_2.Param
        L8_2 = L8_2.SubMissionID
        L5_2[1] = L6_2
        L5_2[2] = L7_2
        L5_2[3] = L8_2
        L3_2(L4_2, L5_2)
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.GotoType
        L3_2 = L3_2.BigMap
        L1_2 = #L3_2
        L3_2 = A0_2._condition
        L3_2 = L3_2.Param
        L2_2 = L3_2.EntryID
      else
        L3_2 = A0_2._condition
        L3_2 = L3_2.Type
        L4_2 = L1_1.EnterMap
        if L3_2 == L4_2 then
          L3_2 = G
          L3_2 = L3_2.GotoManager
          L3_2 = L3_2.GotoByType
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.GotoType
          L4_2 = L4_2.AreaSwitch
          L4_2 = #L4_2
          L5_2 = {}
          L6_2 = A0_2._condition
          L6_2 = L6_2.Param
          L6_2 = L6_2.EntryID
          L7_2 = nil
          L8_2 = nil
          L5_2[1] = L6_2
          L5_2[2] = L7_2
          L5_2[3] = L8_2
          L3_2(L4_2, L5_2)
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.GotoType
          L3_2 = L3_2.BigMap
          L1_2 = #L3_2
          L3_2 = A0_2._condition
          L3_2 = L3_2.Param
          L2_2 = L3_2.EntryID
        end
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SDKLuaReportAdapter
  L3_2 = L3_2.ReportMissionChroniclePathGoto
  L4_2 = A0_2._path_data
  L4_2 = L4_2.ID
  L5_2 = G
  L5_2 = L5_2.MissionChronicleUtils
  L5_2 = L5_2.get_path_status_report_value
  L6_2 = A0_2._path_data
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = A0_2._owner
  L8_2 = L8_2.belong_path_chapter_id
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_click_root = L14_1
return L0_1
