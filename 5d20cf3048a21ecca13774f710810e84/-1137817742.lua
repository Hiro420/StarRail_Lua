local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEntrancePanelFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BoxingClubModule
function L2_1(A0_2)
  local L1_2
  L1_2 = "ActivityBoxingClubChallenge"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_entrance_panel
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = L1_1.BoxingClubLevelDict
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.IsUnlocked
    if L6_2 then
      L6_2 = L5_2.IsNewLevel
      if L6_2 then
        L6_2 = L5_2.HasTakenReward
        if not L6_2 then
          L6_2 = L5_2.ActivityType
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.GameCore
          L7_2 = L7_2.BoxingClubActivityType
          L7_2 = L7_2.First
          if L6_2 == L7_2 then
            L6_2 = G
            L6_2 = L6_2.RedDotModule
            L6_2 = L6_2.Instance
            L7_2 = L6_2
            L6_2 = L6_2.update_reddot
            L8_2 = "ActivityBoxingClubChallenge"
            L9_2 = L5_2.BoxingClubChallengeID
            L6_2(L7_2, L8_2, L9_2)
          end
        end
      end
    end
  end
end
L0_1._refresh_entrance_panel = L2_1
return L0_1
