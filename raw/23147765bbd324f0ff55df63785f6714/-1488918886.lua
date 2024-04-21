local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCatImagePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
  end
  L3_2 = A1_2.IsSpecial
  if L3_2 then
    L3_2 = A1_2.SpecialCatRow
    if A2_2 then
      L4_2 = L3_2.LargeImagePath
      if L4_2 then
        goto lbl_13
      end
    end
    L4_2 = L3_2.ImagePath
    ::lbl_13::
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.combined_img
    L6_2 = L5_2
    L5_2 = L5_2.Hide
    L5_2(L6_2)
    return
  end
  if A2_2 then
    L4_2 = A1_2
    L3_2 = A1_2.GetFeatureLargeImagePaths
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_31
    end
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetFeatureImagePaths
  L3_2 = L3_2(L4_2)
  ::lbl_31::
  L4_2 = A0_2._binder
  L4_2 = L4_2.combined_img
  L5_2 = L4_2
  L4_2 = L4_2.Show
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.combined_img
  L3_2 = L2_2
  L2_2 = L2_2.Show
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view_by_feature_images = L1_1
return L0_1
