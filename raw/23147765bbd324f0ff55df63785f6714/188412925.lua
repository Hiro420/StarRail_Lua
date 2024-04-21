local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "SilverWolfUtils"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SilverWolfUtils
  L0_2 = L0_2.GetGotoCompanionMissionIDList
  L0_2 = L0_2()
  L1_2 = 0
  L2_2 = L0_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.MissionModule
    L6_2 = L5_2
    L5_2 = L5_2.TryGetMainMissionData
    L7_2 = L0_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.IsStart
      if L6_2 then
        L6_2 = G
        L6_2 = L6_2.GotoManager
        L6_2 = L6_2.Goto
        L7_2 = 700
        L8_2 = {}
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.MainMissionType
        L9_2 = L9_2.Companion
        L9_2 = #L9_2
        L10_2 = L0_2[L4_2]
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L6_2(L7_2, L8_2)
        return
      end
    end
  end
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 700
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.Companion
  L4_2 = #L4_2
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1.goto_companion_mission = L1_1
return L0_1
