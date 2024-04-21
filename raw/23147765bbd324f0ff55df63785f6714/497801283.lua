local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeDroneActionPanelBinder"
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
    L1_2 = "UI/Maze/Widget/PcMazeFlyingaPanel.prefab"
    return L1_2
  else
    L1_2 = "UI/Maze/Widget/MazeFlyingPanel.prefab"
    return L1_2
  end
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "MazeEventBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MazeEventBtn/SkillTag/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "MazeFlyingBackBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_quit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MazeEventBtn/EventBtnLoopEffs"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_loop_effect = L1_2
end
L0_1._common_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "FlyingMovePanel/MovePanel/MoveUpBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "FlyingMovePanel/MovePanel/MoveDownBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_down = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._common_bind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "FlyingUpBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "FlyingDownBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FlyingUpBtn/NormalFrame/BtnPressHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_up_moving = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FlyingDownBtn/NormalFrame/BtnPressHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_down_moving = L1_2
end
L0_1._on_pc_bind = L1_1
return L0_1
