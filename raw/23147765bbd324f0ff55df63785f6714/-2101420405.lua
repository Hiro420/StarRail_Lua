local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTargetContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "TargetTip_Shine"
L2_1 = "TargetTip_FadeIn"
function L3_1(A0_2)
  local L1_2
  A0_2._enable_refresh = true
  A0_2._pre_target = 0
  A0_2._cur_target = 0
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._enable_refresh
  if not L2_2 then
    return
  end
  A0_2._target_data = A1_2
  L2_2 = A0_2._cur_target
  L3_2 = A1_2.CurTarget
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._cur_target
    A0_2._pre_target = L2_2
    L2_2 = A1_2.CurTarget
    A0_2._cur_target = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_active
  if L2_2 == A1_2 then
    return
  end
  L2_2 = A0_2._is_active
  A0_2._is_active = A1_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if L2_2 == false and A1_2 == true then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.Sample
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_2
    L3_2 = L3_2.GetClip
    L5_2 = L2_1
    L3_2 = L3_2(L4_2, L5_2)
    L3_2 = L3_2.length
    L5_2 = A0_2
    L4_2 = A0_2.show_full_screen_block
    L6_2 = L3_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.set_panel_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pre_target
  if L1_2 ~= 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.pre_target_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._pre_target
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.target_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_target
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2, A1_2)
  A0_2._enable_refresh = A1_2
end
L0_1.enable_refresh = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._have_new_target
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.GetClip
    L3_2 = L1_1
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = L1_2.length
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block
    L4_2 = L1_2
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Sample
    L2_2(L3_2)
    L2_2 = true
    return L2_2
  end
  L1_2 = false
  return L1_2
end
L0_1.try_play_new_target_fade_in_anim = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.MuseumNewTargetHint
  if L1_2 then
    L1_2 = A0_2._cur_target
    if L1_2 then
      L1_2 = A0_2._pre_target
      L1_2 = L1_2 ~= 0
    end
  end
  return L1_2
end
L0_1._have_new_target = L3_1
return L0_1
