local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.CommandRobotPuzzleCommandDisplayPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommandRobotPuzzleCommandDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.set_direction = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._async_release_sprite_in
  L3_2 = A0_2._binder
  L3_2 = L3_2.img
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.reset_direction = L1_1
return L0_1
