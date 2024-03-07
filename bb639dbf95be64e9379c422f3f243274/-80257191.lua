local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzleIdentifyStrategy"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.is_enable_identify
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_GamePhaseManager
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentPhase
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.GetMainWorld
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GameWorldStatic
    L4_2 = L4_2.TriggerCustomStringEvent
    L5_2 = L3_2
    L6_2 = A0_2.OwnerEntity
    L7_2 = A0_2.CustomEvent
    L4_2(L5_2, L6_2, L7_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_PhotoGraph_Forbid"
    L2_2(L3_2, L4_2)
  end
end
L0_1.execute = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.PhotoGraphUtils
  L0_2.is_enable_puzzle_func_identify = true
end
L0_1.on_show = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.PhotoGraphUtils
  L0_2.is_enable_puzzle_func_identify = false
end
L0_1.on_hide = L1_1
return L0_1
