local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeCustomizedSkillPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = "UI/Maze/Widget/PcMazeCustomizedSkillPanel.prefab"
    return L1_2
  else
    L1_2 = "UI/Maze/Widget/MazeCustomizedSkillPanel.prefab"
    return L1_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeActionBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_action_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeSkillBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeEvent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_event_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RushBtn"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rush_btn = L1_2
end
L0_1._on_bind = L1_1
return L0_1
