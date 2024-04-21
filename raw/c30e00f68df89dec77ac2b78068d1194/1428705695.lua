local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateConditionPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.ActivityStateEnum
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CommonActivityStateConditionPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._activity_data = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_condition
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._activity_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_condition
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L2_2 = L1_2.CurState
  L3_2 = L0_1.Locked
  L2_2 = L2_2 == L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_condition
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_condition
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L6_2 = A0_2
    L5_2 = A0_2._collect_pre_missions
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._setup_condition = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.StateData
  L2_2 = L2_2.ConditionConfig
  L2_2 = L2_2.PreConditions
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ConditionType
    L9_2 = L9_2.FinishMainMission
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = tonumber
      L11_2 = L7_2.Param
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L1_2
end
L1_1._collect_pre_missions = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.pre_mission
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._collect_pre_missions
    L1_2 = L1_2(L2_2)
  end
  A0_2.pre_mission = L1_2
  L1_2 = pairs
  L2_2 = A0_2.pre_mission
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.MissionModule
    L7_2 = L6_2
    L6_2 = L6_2.TryGetMainMissionData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.IsFinish
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L1_2 = true
  return L1_2
end
L1_1.is_all_finish = L2_1
return L1_1
