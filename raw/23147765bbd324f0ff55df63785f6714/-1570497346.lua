local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/Heliobus/TestActivityEntryPerformance.prefab"
  L1_2 = A0_2.config
  L1_2.is_async_load = true
  L1_2 = A0_2.config
  L1_2.use_global_camera = true
  A0_2.is_init_finish = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.is_init_finish = true
end
L0_1._on_load = L1_1
return L0_1
