local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaObtainLightConePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.add_hide_node_on_sharing
  L3_2 = A0_2._binder
  L3_2 = L3_2.light_cone_additional_item_panel
  L3_2 = L3_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._gacha_item_data = A1_2
  L2_2 = A0_2._gacha_item_data
  L2_2 = L2_2.EquipmentRow
  L3_2 = A0_2._binder
  L3_2 = L3_2.light_cone_obtain_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_light_cone_additional_item_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_new_light_cone_hint
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.conversion_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.Rarity
  L3_2 = #L3_2
  if L3_2 == 5 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarBaseTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.AvatarBaseType
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_eff_r5
    L7_2 = L3_2.BaseTypeIcon
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L2_2 = L1_2
  L1_2 = L1_2.HaveAdditionalItem
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.light_cone_additional_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._gacha_item_data
    L1_2 = L1_2.AdditionalItems
    L1_2 = L1_2[0]
    L2_2 = A0_2._binder
    L2_2 = L2_2.light_cone_additional_item_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.light_cone_additional_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_light_cone_additional_item_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_light_cone_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gacha_item_data
  L3_2 = L3_2.IsNew
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_light_cone_hint = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.setup_share_view = L1_1
return L0_1
