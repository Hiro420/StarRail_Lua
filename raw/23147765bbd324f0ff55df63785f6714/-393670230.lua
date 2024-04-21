local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeRushBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeRushBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeWolfBroActionPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_layout
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = "UI/Maze/Widget/PcMazeShootingPanel.prefab"
    return L1_2
  else
    L1_2 = "UI/Maze/Widget/MazeShootingPanel.prefab"
    return L1_2
  end
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeActionBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_maze_action = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeActionBtn/LockMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock_maze_action = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeActionBtn/SkillTag"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tag_maze_action = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MazeActionBtn/OutlineProgress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_out_line = L1_2
  L1_2 = {}
  A0_2.animation_bullet_list = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "MazeActionBtn/OutlineProgress/ProgressPanel/Outline%s"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_get_cmpt
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Animation
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.animation_bullet_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._common_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L1_2 = A0_2.btn_maze_event
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeEventBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MazeEventBtn/RefreshEffs"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_maze_event_refresh = L1_2
  L1_2 = A0_2.btn_maze_event
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeEventBtn/CountMaskPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_maze_event_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeEventBtn/CountMaskPanel/CountNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cd_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "MazeEventBtn/CountMaskPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_maze_event = L1_2
  L1_2 = A0_2.btn_maze_action
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.rebind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeRushBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeRushBtnPanelBinder
  L5_2 = "RushBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_rush_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeEventBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeEventBtn_Pre"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MazeEventBtn_Pre/RefreshEffs"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_maze_event_refresh = L1_2
  L1_2 = A0_2.btn_maze_event
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeEventBtn_Pre/CountMaskPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_maze_event_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeEventBtn_Pre/CountMaskPanel/CountNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cd_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "MazeEventBtn_Pre/CountMaskPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_maze_event = L1_2
  L1_2 = A0_2.btn_maze_action
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MazeRushBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeRushBtnPanelBinder
  L5_2 = "RushBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_rush_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "MazeEventBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeEventBtn/CountMaskPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_maze_event_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeEventBtn/CountMaskPanel/CountNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_cd_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Slider
  L4_2 = "MazeEventBtn/CountMaskPanel/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_maze_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "MazeEventBtn/RefreshEffs"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_maze_event_refresh = L1_2
  L1_2 = A0_2.btn_maze_action
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_pc_bind = L2_1
return L0_1
