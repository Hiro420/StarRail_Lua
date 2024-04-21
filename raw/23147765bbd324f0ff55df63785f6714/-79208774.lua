local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordMainPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TutorialPunkLordMainPanel"
L3_1 = G
L3_1 = L3_1.PunkLordMainPanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._punklord_datas = L1_2
  L1_2 = L0_1.PunkLordDatas
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.IsSummonedBySelf
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._punklord_datas
      L8_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2)
    end
  end
end
L1_1._get_punklord_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._state
  L3_2 = L1_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    A0_2._cur_punklord = A1_2
    L3_2 = A0_2
    L2_2 = A0_2._on_punklord_refresh
    L2_2(L3_2)
  end
end
L1_1._on_punklord_summoned = L2_1
return L1_1
