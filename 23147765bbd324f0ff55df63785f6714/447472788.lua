local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = "HpAvatarPanel_Add"
L1_1 = "HpAvatarPanel_Cut"
L2_1 = "HpAvatarPanel_Dead"
L3_1 = "HpAvatarPanel_FadeIn"
L4_1 = 0.3
L5_1 = 0.155
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "TreasureDungeonAvatarHpPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2
  A0_2._in_tick = false
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._member_data = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._get_ratio
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._last_ratio = L4_2
  A0_2._in_tick = false
  L6_2 = A0_2
  L5_2 = A0_2._setup_hp
  L7_2 = L4_2
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  if A3_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayToEnd
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L3_1
    L5_2(L6_2, L7_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L2_1
    L5_2(L6_2, L7_2)
  elseif A2_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L3_1
    L5_2(L6_2, L7_2)
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayToEnd
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L3_1
    L5_2(L6_2, L7_2)
  end
end
L6_1.setup_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._current_ratio
  L3_2 = L3_2 == 0
  L4_2 = 0 < A1_2
  A0_2._current_ratio = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_alive
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_dead
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = L5_1
    if A1_2 <= L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_dying
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      if not A2_2 then
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.UIAnimationUtils
        L5_2 = L5_2.PlayFromBegin
        L6_2 = A0_2._binder
        L6_2 = L6_2.anim_dying
        L7_2 = "CommonFlicker_3s"
        L5_2(L6_2, L7_2)
      end
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_dying
      L5_2.fillAmount = A1_2
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_danger
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_normal
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
    else
      L5_2 = L4_1
      if A1_2 <= L5_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_danger
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_danger
        L5_2.fillAmount = A1_2
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_dying
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_normal
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_normal
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_normal
        L5_2.fillAmount = A1_2
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_dying
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_danger
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
      end
    end
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayToEnd
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L2_1
    L5_2(L6_2, L7_2)
  end
  if A2_2 and not L4_2 and not L3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_alive
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_dying
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_danger
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_normal
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_dead
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.UIAnimationUtils
    L5_2 = L5_2.PlayFromBegin
    L6_2 = A0_2._binder
    L6_2 = L6_2.anim_root
    L7_2 = L2_1
    L5_2(L6_2, L7_2)
  end
end
L6_1._setup_hp = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.IsAlive
  if L2_2 then
    L2_2 = A1_2.LeftHPRatio
    L3_2 = L2_2
    L2_2 = L2_2.ToFloat
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = 0
  ::lbl_10::
  return L2_2
end
L6_1._get_ratio = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._in_tick
  if L1_2 then
    L1_2 = A0_2._current_ratio
    A0_2._last_ratio = L1_2
  end
  A0_2._in_tick = true
  L2_2 = A0_2
  L1_2 = A0_2._get_ratio
  L3_2 = A0_2._member_data
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._target_ratio = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._target_ratio
  L2_2 = A0_2._last_ratio
  if L1_2 > L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._target_ratio
    L2_2 = A0_2._last_ratio
    if L1_2 < L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
    else
    end
  end
end
L6_1.setup_change_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._current_ratio
  L3_2 = A0_2._target_ratio
  L4_2 = A0_2._last_ratio
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 * A1_2
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._current_ratio
  L4_2 = A0_2._target_ratio
  if L3_2 < L4_2 then
    L3_2 = math
    L3_2 = L3_2.min
    L4_2 = L2_2
    L5_2 = A0_2._target_ratio
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L3_2 = A0_2._current_ratio
    L4_2 = A0_2._target_ratio
    if L3_2 > L4_2 then
      L3_2 = math
      L3_2 = L3_2.max
      L4_2 = L2_2
      L5_2 = A0_2._target_ratio
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    else
      L2_2 = A0_2._target_ratio
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_hp
  L5_2 = L2_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
L6_1.tick_change = L7_1
return L6_1
