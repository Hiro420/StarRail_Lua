local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoMultiMainMissionPageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = A0_2.get_params
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L2_2
    L9_2 = L2_2.TryGetMainMissionData
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.IsShow
      if L10_2 then
        L10_2 = G
        L10_2 = L10_2.UIManager
        L10_2 = L10_2.load_and_async_show
        L11_2 = "Ui.Mission.MissionPage"
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.GameCore
        L12_2 = L12_2.MainMissionType
        L12_2 = L12_2.None
        L12_2 = #L12_2
        L13_2 = L8_2
        L10_2(L11_2, L12_2, L13_2)
        return
      end
    end
  end
end
L0_1.execute = L1_1
return L0_1
