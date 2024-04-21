local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeTargetPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeTargetPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
function L2_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidTargetConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.TargetID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_mission
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TargetName
  L6_2 = L2_2.TargetParam1
  L7_2 = L2_2.TargetParam2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2.IsTargetFinished
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view_by_raid_target = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BattleTargetConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.TargetID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_mission
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TargetName
  L6_2 = L2_2.TargetParam
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.IsTargetFinished
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.ResetTrigger
    L5_2 = "Succeed"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.state_animator
    L4_2 = L3_2
    L3_2 = L3_2.SetTrigger
    L5_2 = "Pending"
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view_by_battle_target = L2_1
return L0_1
