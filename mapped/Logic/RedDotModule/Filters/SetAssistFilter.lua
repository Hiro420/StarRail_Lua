local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SetAssistFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = "AssistEdit"
  return L1_2
end
L0_1.get_associate_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._player_utils
  if L1_2 == nil then
    L1_2 = require
    L2_2 = "Utilities.PlayerUtils"
    L1_2 = L1_2(L2_2)
    A0_2._player_utils = L1_2
  end
  L1_2 = A0_2._player_utils
  L1_2 = L1_2.is_not_finish_assist_set
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "AssistEdit"
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.refresh = L2_1
return L0_1
