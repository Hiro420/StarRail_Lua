local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonopolyUI3DTouchPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyDragMapCmpt
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._cmpt = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonopolyUI3DTouch
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._touch_controller = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cmpt
  L1_2 = L1_2.IsCameraMoved
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cmpt
  L2_2 = L1_2
  L1_2 = L1_2.ResetCamera
  L1_2(L2_2)
end
L0_1.try_reset_camera = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._touch_controller
  L2_2.enabled = A1_2
end
L0_1.set_drag_enabled = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._touch_controller
  L3_2 = L2_2
  L2_2 = L2_2.SimulateTouch
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.simulate_touch = L1_1
return L0_1
