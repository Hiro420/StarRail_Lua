local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ImageDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._container_capacity = 2
  A0_2._disappear_index = 0
  A0_2._appear_index = 0
  A0_2._swap_running_time = 0
  A0_2._swap_total_time = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._exec_valid = false
  A0_2._exec_is_show = false
  A0_2._exec_image_path = nil
  A0_2._disappear_index = 0
  A0_2._appear_index = 0
  A0_2._swap_running_time = 0
  A0_2._swap_total_time = 0
  L2_2 = A0_2
  L1_2 = A0_2._inti_image_alpha
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_tick_exec
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.on_clear_talk_image
  L3_2 = 0.5
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.exit_background = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2.TickInMonoBehaviour
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._inti_image_alpha
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_tick_exec
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._tick_exec
  L2_2(L3_2)
  L2_2 = A0_2._swap_running_time
  L3_2 = A0_2._swap_total_time
  if L2_2 >= L3_2 then
    return
  end
  L2_2 = A0_2._swap_running_time
  L2_2 = L2_2 + A1_2
  A0_2._swap_running_time = L2_2
  L2_2 = A0_2._swap_total_time
  if L2_2 == 0 then
    L2_2 = 1
    if L2_2 then
      goto lbl_25
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp01
  L3_2 = A0_2._swap_running_time
  L4_2 = A0_2._swap_total_time
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2(L3_2)
  ::lbl_25::
  L4_2 = A0_2
  L3_2 = A0_2._setup_view_alpha
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_hide_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.TickInMonoBehaviour = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1 - A1_2
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.images
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.images
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._disappear_index
    if L6_2 == L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2._setup_image_alpha
      L10_2 = L7_2
      L11_2 = L2_2
      L8_2(L9_2, L10_2, L11_2)
      if L2_2 <= 0 then
        L9_2 = A0_2
        L8_2 = A0_2._async_release_sprite_in
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    else
      L8_2 = A0_2._appear_index
      if L6_2 == L8_2 then
        L9_2 = A0_2
        L8_2 = A0_2._setup_image_alpha
        L10_2 = L7_2
        L11_2 = A1_2
        L8_2(L9_2, L10_2, L11_2)
      else
        L9_2 = A0_2
        L8_2 = A0_2._setup_image_alpha
        L10_2 = L7_2
        L11_2 = 0
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_bg_alpha
  L3_2(L4_2)
end
L0_1._setup_view_alpha = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._exec_fade_bg
  if L2_2 then
    L1_2 = 0
    L2_2 = 1
    L3_2 = A0_2._binder
    L3_2 = L3_2.images
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._binder
      L6_2 = L6_2.images
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2.color
      L7_2 = L7_2.a
      L1_2 = L1_2 + L7_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_image_alpha
  L4_2 = A0_2._binder
  L4_2 = L4_2.bg_image
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_bg_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 1 - A1_2
  if L2_2 <= 0 then
    L3_2 = A0_2._appear_index
    if L3_2 == 0 then
      L4_2 = A0_2
      L3_2 = A0_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._try_hide_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.color
  L3_2 = L3_2.a
  if L3_2 == A2_2 then
    return
  end
  L3_2 = A1_2.color
  L3_2.a = A2_2
  A1_2.color = L3_2
end
L0_1._setup_image_alpha = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.images
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.images
    L5_2 = L5_2[L4_2]
    L7_2 = A0_2
    L6_2 = A0_2._setup_image_alpha
    L8_2 = L5_2
    L9_2 = 0
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_image_alpha
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg_image
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._inti_image_alpha = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2
  L4_2 = A0_2._set_tick_exec
  L6_2 = true
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.on_show_talk_image = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._set_tick_exec
  L5_2 = false
  L6_2 = nil
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.on_clear_talk_image = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._exec_is_show
  if L5_2 == A1_2 then
    L5_2 = A0_2._exec_image_path
    if L5_2 == A2_2 then
      L6_2 = A0_2
      L5_2 = A0_2._clear_tick_exec
      L5_2(L6_2)
      return
    end
  end
  A0_2._exec_valid = true
  A0_2._exec_is_show = A1_2
  A0_2._exec_image_path = A2_2
  A0_2._exec_fade_time = A3_2
  A0_2._exec_fade_bg = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_bg_alpha
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.safe_set_active
  L7_2 = true
  L5_2(L6_2, L7_2)
end
L0_1._set_tick_exec = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._exec_valid = false
end
L0_1._clear_tick_exec = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._exec_valid
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._exec_is_show
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_image
    L3_2 = A0_2._exec_image_path
    L4_2 = A0_2._exec_fade_time
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._close_image
    L3_2 = A0_2._exec_fade_time
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._clear_tick_exec
  L1_2(L2_2)
end
L0_1._tick_exec = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._set_appear_image
  L6_2 = A0_2
  L5_2 = A0_2._get_next_index
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  if A2_2 <= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_view_alpha
    L5_2 = 1
    L3_2(L4_2, L5_2)
    A0_2._swap_total_time = 0
    A0_2._swap_running_time = 0
  else
    A0_2._swap_total_time = A2_2
    A0_2._swap_running_time = 0
  end
end
L0_1._show_image = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._set_appear_image
  L4_2 = 0
  L2_2(L3_2, L4_2)
  if A1_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_view_alpha
    L4_2 = 1
    L2_2(L3_2, L4_2)
    A0_2._swap_total_time = 0
    A0_2._swap_running_time = 0
  else
    A0_2._swap_total_time = A1_2
    A0_2._swap_running_time = 0
  end
end
L0_1._close_image = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._appear_index
  L1_2 = L1_2 + 1
  L2_2 = A0_2._container_capacity
  L1_2 = L1_2 % L2_2
  if L1_2 == 0 then
    L1_2 = A0_2._container_capacity
  end
  return L1_2
end
L0_1._get_next_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._appear_index
  A0_2._disappear_index = L3_2
  A0_2._appear_index = A1_2
  if not (A1_2 <= 0) then
    L3_2 = A0_2._container_capacity
    if not (A1_2 > L3_2) then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.Exists
  L4_2 = A2_2
  L3_2 = A2_2 ~= nil and L3_2
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.images
    L6_2 = L6_2[A1_2]
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = UNITY_EDITOR
    if L4_2 then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "[ImageDisplayPanel] TalkBackground ImagePath not exist: %s"
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._set_appear_image = L1_1
return L0_1
