local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooHandbookSpecialFeatureIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooMutationMaterialExcelTable
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooChannelType
L4_1 = {}
L5_1 = L3_1.HatDecal
L4_1[L5_1] = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_HatColor_05.png"
L5_1 = L3_1.TailDecal
L4_1[L5_1] = "SpriteOutput/Quest/SpaceZoo/SpaceZooCakeIcon128/CakeIcon_BodyColor_03.png"
L5_1 = "SpaceZooFeatureItem_UnlockHint"
function L6_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._feature_id = A3_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._feature_id = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2, A1_2)
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L1_1.SpaceZooData
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
  L3_2 = L4_1[L3_2]
  if L3_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = L4_1[L1_2]
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_cat_image
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_feature_images
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_1.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = 0
    L6_2 = L4_2.ChangeFeatureList
    L6_2 = L6_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2.ChangeFeatureList
      L9_2 = L9_2[L8_2]
      L10_2 = A0_2._feature_id
      if L9_2 == L10_2 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.ItemExcelTable
        L9_2 = L9_2.GetData
        L10_2 = L4_2.ItemID
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2.ItemIconPath
        L11_2 = A0_2
        L10_2 = A0_2._async_load_sprite_to
        L12_2 = A0_2._binder
        L12_2 = L12_2.img_material
        L13_2 = L9_2
        L10_2(L11_2, L12_2, L13_2)
        return
      end
    end
  end
end
L0_1.refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L0_1.play_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L0_1.stop_anim = L6_1
return L0_1
