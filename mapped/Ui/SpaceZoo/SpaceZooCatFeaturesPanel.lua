local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCatFeaturesPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpaceZooBreedFeature_SelectedL"
L2_1 = "SpaceZooBreedFeature_UnselectedL"
L3_1 = "SpaceZooBreedFeature_SelectedR"
L4_1 = "SpaceZooBreedFeature_UnselectedR"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._cat_data = A1_2
  A0_2._is_show = false
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._cat_data
    L9_2 = L8_2
    L8_2 = L8_2.GetFeatureID
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.SpaceZooCatData
    L9_2 = L9_2.GetDefaultFeatureID
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L8_2 ~= L9_2 then
      A0_2._is_show = true
      break
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = A0_2._is_show
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_show
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_feature_images
    L5_2 = A0_2._cat_data
    L6_2 = L5_2
    L5_2 = L5_2.GetBreedDisplayImages
    L7_2 = A2_2
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._is_show
  if not L3_2 then
    return
  end
  if A2_2 then
    if A1_2 then
      L3_2 = L1_1
      if L3_2 then
        goto lbl_13
      end
    end
    L3_2 = L2_1
    ::lbl_13::
    A0_2._anim = L3_2
  else
    if A1_2 then
      L3_2 = L3_1
      if L3_2 then
        goto lbl_21
      end
    end
    L3_2 = L4_1
    ::lbl_21::
    A0_2._anim = L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = A0_2._anim
  L3_2(L4_2, L5_2)
end
L0_1.play_select_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_show
  if L1_2 then
    L1_2 = A0_2._anim
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = A0_2._anim
  L1_2(L2_2, L3_2)
end
L0_1.skip_anim = L5_1
return L0_1
