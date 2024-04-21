local L0_1, L1_1, L2_1, L3_1
L0_1 = class
L1_1 = "UI3DControllerPattern"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
L1_1 = "Stages/Outputs/Common/EnviroProfile/Manikin_Area_01.enviroProfile.asset"
function L2_1(A0_2)
  local L1_2
  A0_2.prefab_path = nil
  A0_2.is_async_load = true
  A0_2.use_screen_transfer = true
  A0_2.join_ui_load = true
  L1_2 = L1_1
  A0_2.environment_profile_path = L1_2
  A0_2.use_global_camera = true
  A0_2.unload_scene = false
end
L0_1.ctor = L2_1
return L0_1
