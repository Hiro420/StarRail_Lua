local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousBranchRedDotFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._level_filter = nil
  A0_2._series_filter = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RogueNousBranchParentNew"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.is_edit_dice_unlocked
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_surface_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_branch_red_dot
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.RogueNousDiceData
  L2_2 = L1_2
  L1_2 = L1_2.GetSurfaceList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.IsFirstTimeUnlock
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousSurfaceNew"
      L10_2 = L6_2.SurfaceID
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._update_surface_red_dot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.RogueNousDiceData
  L2_2 = L1_2
  L1_2 = L1_2.GetBranchList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.IsFirstTimeUnlock
    if L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousBranchNew"
      L10_2 = L6_2.BranchID
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.update_reddot
      L9_2 = "RogueNousBranchTagNew"
      L10_2 = L6_2.GenreTagValue
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._update_branch_red_dot = L1_1
return L0_1
