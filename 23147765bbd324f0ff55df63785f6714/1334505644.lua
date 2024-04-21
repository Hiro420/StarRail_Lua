local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradeResultDialogSinglePropertyItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._property_data = A1_2
  L2_2 = A0_2._property_data
  L2_2 = L2_2.CurPromotion
  L3_2 = A0_2._property_data
  L3_2 = L3_2.NewPromotion
  L2_2 = L2_2 ~= L3_2
  L4_2 = A0_2
  L3_2 = A0_2._set_property_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_info
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_property_before_value
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_up_arrow
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_property_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarPropertyExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._property_data
  L2_2 = L2_2.Type
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_property_icon
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_property_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.PropertyName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_property_before_value
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._property_data
  L4_2 = L4_2.BeforeValue
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_property_current_value
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._property_data
  L4_2 = L4_2.CurrentValue
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Convert
  L2_2 = L2_2.ToUInt32
  L3_2 = A0_2._property_data
  L3_2 = L3_2.BeforeValue
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Convert
  L3_2 = L3_2.ToUInt32
  L4_2 = A0_2._property_data
  L4_2 = L4_2.CurrentValue
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_up_arrow
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 < L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_info = L1_1
return L0_1
