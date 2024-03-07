local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseFanProgressBarItem"
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
  A0_2._pop_phase = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_pop_phase_bar_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.PopPhase
  L2_2 = L2_1
  if L1_2 == L2_2 then
    L2_2 = L2_1
    L1_2 = L2_2 - 1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bar_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A0_2._pop_phase
  L4_2 = L4_2 == L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._pop_phase
  if L1_2 > L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.bar
    L2_2.value = 1
    return
  end
  L2_2 = A0_2._pop_phase
  if L1_2 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.bar
    L2_2.value = 0
    return
  end
  L2_2 = G
  L2_2 = L2_2.HeliobusSNSUtils
  L2_2 = L2_2.get_pop_phase_fan_percent
  L3_2 = A0_2._pop_phase
  L4_2 = L1_1.Fans
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.bar
  L3_2.value = L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeAfterFrames
  L4_2 = 1
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.bar_point
    L1_3 = L0_3
    L0_3 = L0_3.SetProgress
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.bar_point
    L1_3 = L0_3
    L0_3 = L0_3.SetHandleProgress
    L2_3 = L2_2
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_bar_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_1.Fans
  L3_2(L4_2, L5_2)
end
L0_1._setup_cur_pop_phase_bar_info = L3_1
return L0_1
