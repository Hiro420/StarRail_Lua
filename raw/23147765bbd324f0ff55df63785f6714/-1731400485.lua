local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.MazeEnvBuffToastPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeEnvBuffToastPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "EnvBuffAddHint"
function L2_1(A0_2)
  local L1_2
  A0_2._time = 0
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.MessageOne
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._play
  L2_2(L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._time
  L2_2 = L2_2 - A1_2
  A0_2._time = L2_2
  L2_2 = A0_2._time
  if L2_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2._complete
    L2_2(L3_2)
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIEnvBuffDialogExit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._exit
  L1_2(L2_2)
end
L0_1._complete = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._play = L2_1
return L0_1
