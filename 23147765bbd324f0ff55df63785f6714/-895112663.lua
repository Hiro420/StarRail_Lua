local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Maze.MazeJumpingTextBuffDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeJumpingTextBuffDialog"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.tar_target
  L4_2.FollowTarget = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.tar_target
  L4_2.WorldOffset = A2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A3_2.BuffEffect
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_buff
  L7_2 = A3_2.BuffIcon
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_buffglow
  L7_2 = A3_2.BuffIcon
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.play_animation
  L6_2 = "Maze_ShowBuff"
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.buff_arrow_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A3_2.MazeBuffIconType
  L4_2(L5_2, L6_2)
end
L0_1.init_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.ani_animation
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.ani_animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.play_animation = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._refresh = L3_1
return L0_1
