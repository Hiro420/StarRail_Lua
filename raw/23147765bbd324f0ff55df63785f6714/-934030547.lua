local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.BuffInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeAvatarDialogBuffRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.MazeBuff = 1
L1_1.BattleBuff = 2
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = nil
  L6_2 = "Ui.Battle.AvatarDialogBuffRowBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._buff_list = L1_2
  L1_2 = A0_2._buff_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = #A1_2
  L3_2 = L3_2 == 0
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_status
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1.MazeBuff
  if A2_2 == L4_2 then
    L4_2 = A0_2._buff_list
    L4_2.node_class_name = "Ui.Maze.MazeAvatarDialogBuffRow"
  else
    L4_2 = L1_1.BattleBuff
    if A2_2 == L4_2 then
      L4_2 = A0_2._buff_list
      L4_2.node_class_name = "Ui.Battle.AvatarDialogBuffRow"
    end
  end
  L4_2 = A0_2._buff_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L2_1
return L0_1
