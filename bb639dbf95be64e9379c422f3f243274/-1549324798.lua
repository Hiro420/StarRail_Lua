local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainPostPhasePanel"
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
L2_1 = {}
L2_1[1] = "UIText_Heliobus_ActionDay_Phase1"
L2_1[2] = "UIText_Heliobus_ActionDay_Phase2"
L2_1[3] = "UIText_Heliobus_ActionDay_Phase3"
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.PostPhase
  L1_2 = #L1_2
  A0_2._phase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_phase_info
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PostPhase
  L1_2 = #L1_2
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_phase_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1[2]
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_phase_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1[1]
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "IsInMission"
  L4_2 = L1_1.PostPhase
  L4_2 = #L4_2
  L4_2 = 1 < L4_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_phase_info = L3_1
return L0_1
