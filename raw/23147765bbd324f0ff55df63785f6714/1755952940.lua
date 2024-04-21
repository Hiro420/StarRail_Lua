local L0_1, L1_1, L2_1, L3_1
L0_1 = "SpaceZoo_IconReached_FadeIn"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SpaceZooFeatureIconPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  A0_2._is_reached = false
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._feature_images = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_cat_image
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_feature_images
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_cat_image
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = not A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_not_reached
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A2_2
  L3_2(L4_2, L5_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reached
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_not_reached
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._is_reached
  if L3_2 ~= A1_2 then
    A0_2._is_reached = A1_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_reached
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    if A1_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.UIAnimationUtils
      L3_2 = L3_2.PlayFromBegin
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim_reached
      L5_2 = L0_1
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_not_reached
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not A1_2
    L3_2(L4_2, L5_2)
  end
end
L1_1.set_reached = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_reached
  return L1_2
end
L1_1.get_is_reached = L2_1
return L1_1
