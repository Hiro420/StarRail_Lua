local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BoxingClubModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BoxingClubResonanceResidentEnterPanelFilter"
L3_1 = G
L3_1 = L3_1.BaseFilter
L4_1 = G
L1_1 = L1_1(L2_1, L3_1, L4_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "ResidentBoxingClubEnterPanel"
  return L1_2
end
L1_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_resident_quest_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_enter_panel_red_dot
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ResonanceResidentRedDotQuestList
  L2_2 = L1_2.Count
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "ResidentBoxingClubResonanceEnterPanel"
    L2_2(L3_2, L4_2)
  end
end
L1_1._refresh_resident_quest_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L0_1.BoxingClubLevelDict
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
          L7_2 = L7_2.Second
          if L6_2 == L7_2 then
            L6_2 = L0_1
            L7_2 = L6_2
            L6_2 = L6_2.IsResonanceTabUnlock
            L6_2 = L6_2(L7_2)
            if L6_2 then
              L6_2 = G
              L6_2 = L6_2.RedDotModule
              L6_2 = L6_2.Instance
              L7_2 = L6_2
              L6_2 = L6_2.update_reddot
              L8_2 = "ResidentBoxingClubResonanceEnterPanel"
              L6_2(L7_2, L8_2)
          end
          else
            L6_2 = L5_2.ActivityType
            L7_2 = CS
            L7_2 = L7_2.RPG
            L7_2 = L7_2.GameCore
            L7_2 = L7_2.BoxingClubActivityType
            L7_2 = L7_2.First
            if L6_2 == L7_2 then
              L6_2 = L0_1
              L7_2 = L6_2
              L6_2 = L6_2.IsNormalTabUnlock
              L6_2 = L6_2(L7_2)
              if L6_2 then
                L6_2 = G
                L6_2 = L6_2.RedDotModule
                L6_2 = L6_2.Instance
                L7_2 = L6_2
                L6_2 = L6_2.update_reddot
                L8_2 = "ResidentBoxingClubEnterPanel"
                L6_2(L7_2, L8_2)
              end
            end
          end
        end
      end
    end
  end
end
L1_1._refresh_enter_panel_red_dot = L2_1
return L1_1
