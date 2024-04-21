local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooUI3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "ManikinArea/SpaceZoo/SpaceZooUI3D.prefab"
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SpaceZooUI3DController
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ui3d_controller = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d_controller
  L2_2 = L1_2
  L1_2 = L1_2.GetTargetTexture
  return L1_2(L2_2)
end
L0_1.get_texture = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._ui3d_controller
  L4_2 = L3_2
  L3_2 = L3_2.CreateRenderTexture
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = A2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.create_texture = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d_controller
  L3_2 = L2_2
  L2_2 = L2_2.SetupCatModel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_cat = L1_1
return L0_1
