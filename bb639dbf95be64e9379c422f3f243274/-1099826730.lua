local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Ui.Component.DiscreteProgressBarBinder"
L1_1(L2_1)
L1_1 = require
L2_1 = "Ui.Component.DiscreteProgressBar"
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._equip_data = A1_2
  L2_2 = A0_2._equip_data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_light_cone
    L5_2 = A0_2._equip_data
    L5_2 = L5_2.EquipmentRow
    L5_2 = L5_2.ImagePath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._equip_data
    L2_2 = L2_2.EquipmentRow
    L2_2 = L2_2.Rarity
    L3_2 = A0_2._binder
    L3_2 = L3_2.rarity_stars_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = #L2_2
    L6_2 = #L2_2
    L7_2 = #L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarBaseTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._equip_data
    L4_2 = L4_2.EquipmentRow
    L4_2 = L4_2.AvatarBaseType
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_profession
    L7_2 = L3_2.BaseTypeIconSmall
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_profession_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.BaseTypeText
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
