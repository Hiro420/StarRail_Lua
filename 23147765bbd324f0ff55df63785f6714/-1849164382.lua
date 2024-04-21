local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeActionAreaPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeSkillPanel
  L4_2 = G
  L4_2 = L4_2.MazeSkillPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel = L1_2
  L1_2 = A0_2._panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_action_root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._panel
  L4_2 = L3_2
  L3_2 = L3_2.set_hud_template
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_hud_template = L1_1
return L0_1
