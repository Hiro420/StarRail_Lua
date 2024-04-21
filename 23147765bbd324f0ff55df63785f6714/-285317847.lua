local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailPageNumPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseDetailPageNumPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = 5
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._page_num = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_page_num_selected
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L6_2 = "node_page_"
    L7_2 = L4_2
    L8_2 = "_selected"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._page_num
    L7_2 = L4_2 == L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "node_page_"
    L7_2 = L4_2
    L8_2 = "_unselected"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._page_num
    L7_2 = L4_2 ~= L7_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_page_num_selected = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
