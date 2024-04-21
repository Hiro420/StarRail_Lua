local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCatUI3DPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.5
L2_1 = 3
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui3d_controller
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui3d_controller
  L2_2 = L1_2
  L1_2 = L1_2.GetTargetTexture
  return L1_2(L2_2)
end
L0_1.get_texture = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_mobile_platform
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = L1_1
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = L2_1
  ::lbl_11::
  L4_2 = A0_2._binder
  L4_2 = L4_2.ui3d_controller
  L5_2 = L4_2
  L4_2 = L4_2.CreateRenderTexture
  L6_2 = math
  L6_2 = L6_2.floor
  L7_2 = A1_2 * L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = A2_2 * L3_2
  L7_2, L8_2 = L7_2(L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.create_texture = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.ui3d_controller
  L3_2 = L2_2
  L2_2 = L2_2.SetupCatModel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_cat = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.ui3d_controller
  L3_2 = L2_2
  L2_2 = L2_2.SetBG
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_bg = L3_1
return L0_1
