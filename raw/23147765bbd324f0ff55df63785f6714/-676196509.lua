local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.HeliobusActivityTabPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResidentHeliobusActivityTabPanel"
L2_1 = G
L2_1 = L2_1.HeliobusActivityTabPanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ActivityStateEnum
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_EntranceUnlock_SubMissionID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
function L3_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_resident = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._is_can_to_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2._display_node
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_resident_view
  L1_2(L2_2)
end
L0_1._display_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L4_2 = L3_2
  L3_2 = L3_2.IsFinishConditionsCompleted
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_resident_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_btn_phase_reward = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_btn_limit_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._activity_data
    L1_2 = L1_2.IsPreMissionComplete
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "HeliobusResidentGoto"
      L4_2 = nil
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_btn_go_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._bind_panel_reddot = L3_1
return L0_1
