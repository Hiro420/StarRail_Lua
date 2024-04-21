local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SpaceZooModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.SpaceZooChannelType
L2_1 = {}
L3_1 = L1_1.BodyColor
L2_1[L3_1] = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_HatColor_03.png"
L3_1 = L1_1.BodyDecal
L2_1[L3_1] = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_BodyColor_03.png"
L3_1 = L1_1.EyeDecal
L2_1[L3_1] = nil
L3_1 = L1_1.HatColor
L2_1[L3_1] = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_BodyColor_03.png"
L3_1 = "SpaceZooFeatureItem_UnlockHint"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "SpaceZooHandbookFeatureIconPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._feature_id = A3_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._feature_id = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L4_1._set_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.SpaceZooData
  L2_2 = L1_2
  L1_2 = L1_2.GetFeatureData
  L3_2 = A0_2._feature_id
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_state
  L4_2 = L1_2.IsUnlock
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = L1_2.Row
  L5_2 = L5_2.ImagePath
  L3_2(L4_2, L5_2)
  L3_2 = L1_2.Row
  L3_2 = L3_2.Channel
  L3_2 = L2_1[L3_2]
  if L3_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = L2_1[L1_2]
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_cat_image
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_feature_images
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1.refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1.play_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1.stop_anim = L5_1
return L4_1
