local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeBuffIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2.play_after_return_to_top = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._owner_is_top_page
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.play_hint_anim
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    A0_2.play_after_return_to_top = true
    A0_2._anim = A2_2
    A0_2._time = A1_2
  end
end
L0_1.set_play_anim = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2._play
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._play
      L2_3 = A2_2
      L0_3(L1_3, L2_3)
    end
    L6_2 = A1_2
    L7_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A0_2.timer = L3_2
    L3_2 = A0_2.timer
    L4_2 = L3_2
    L3_2 = L3_2.start
    L3_2(L4_2)
  end
end
L0_1.play_hint_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.play_after_return_to_top
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.play_hint_anim
    L3_2 = A0_2._time
    L4_2 = A0_2._anim
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2.play_after_return_to_top = false
end
L0_1._play = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = 0 < A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_count = L1_1
return L0_1
