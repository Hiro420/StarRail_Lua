local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalObtainSkinPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._skin_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkinExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._skin_id
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._skin_id
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2.AvatarID
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.AvatarCutinFrontImgPath
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_skin
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.avatar_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L4_2.AvatarName
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.skin_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L2_2.AvatarSkinName
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.rarity_stars_panel
  L7_2 = L6_2
  L6_2 = L6_2.rebind_child_node
  L8_2 = L3_2.Rarity
  L8_2 = #L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.rarity_stars_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L3_2.Rarity
  L8_2 = #L8_2
  L9_2 = L3_2.Rarity
  L9_2 = #L9_2
  L10_2 = L3_2.Rarity
  L10_2 = #L10_2
  L11_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_view = L1_1
return L0_1
