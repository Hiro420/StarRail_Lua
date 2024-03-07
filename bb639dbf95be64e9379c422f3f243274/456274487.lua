local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicRecommendPropertyInfoRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.PropertyType
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_property_icon
    L6_2 = L2_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_property_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.PropertyName
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.Percent
    L3_2 = L3_2 / 10
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_rate
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_AvatarRelic_Recommend_PercentageValue"
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "%.1f"
    L9_2 = L3_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
