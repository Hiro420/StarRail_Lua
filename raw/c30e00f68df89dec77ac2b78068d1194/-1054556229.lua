local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._need_change_mouse = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.super
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._native
  L3_2 = A0_2._need_change_mouse
  L2_2.NeedChangeMouse = L3_2
end
L0_1.show = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1.super
  L3_2 = L3_2.show
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._native
  L4_2 = A0_2._need_change_mouse
  L3_2.NeedChangeMouse = L4_2
end
L0_1.async_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2.on_exit_final_step
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.on_exit_final_step = L1_1
return L0_1
