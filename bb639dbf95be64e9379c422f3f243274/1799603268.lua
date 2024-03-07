local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PopupPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_showing = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_showing
  return L1_2
end
L0_1.is_showing = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A1_2
  L5_2 = A0_2._on_show_btn_click
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_show_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A1_2
  L5_2 = A0_2._on_close_btn_click
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_close_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_showing
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_fadein_anim
  L1_2(L2_2)
  A0_2._is_showing = true
end
L0_1._on_show_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_showing
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_fadeout_anim
  L1_2(L2_2)
  A0_2._is_showing = false
end
L0_1._on_close_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fade_anim
  L1_2 = L1_2.EntranceAnimationClip
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L1_2.name
  L2_2(L3_2, L4_2)
end
L0_1._play_fadein_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.fade_anim
  L1_2 = L1_2.ExitAnimationClip
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L1_2.name
  L2_2(L3_2, L4_2)
end
L0_1._play_fadeout_anim = L1_1
