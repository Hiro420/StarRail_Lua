local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "TriggerTutorialUtils"
L0_1 = L0_1(L1_1)
L1_1 = "4029"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BattleGamePhase
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L2_2 = 0
  L3_2 = false
  L4_2 = 0
  L5_2 = A0_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.TeamModule
    L9_2 = L8_2
    L8_2 = L8_2.GetMainlineTeam
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.GetMemberCount
    L9_2 = L9_2(L10_2)
    if 0 < L9_2 then
      L2_2 = L2_2 + 1
      if 1 < L2_2 then
        L3_2 = true
        break
      end
    end
  end
  if not L3_2 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.TutorialTaskUnlock
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
end
L0_1.try_trigger_presets_team_tutorial = L2_1
return L0_1
