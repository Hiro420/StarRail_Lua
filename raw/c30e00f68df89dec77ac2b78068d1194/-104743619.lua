local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritMainDetailStatisticsPanelSingleItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._property_ui_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_info
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_plus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._property_ui_data
  L4_2 = L4_2.WithPlus
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_property_plus_value
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._property_ui_data
  L4_2 = L4_2.WithPlus
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._property_ui_data
  L2_2 = L2_2.WithPLus
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_property_with_plus
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_property
    L2_2(L3_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_property_icon
  L4_2 = A0_2._property_ui_data
  L4_2 = L4_2.UIData
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_property_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._property_ui_data
  L3_2 = L3_2.UIData
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_property_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._property_ui_data
  L3_2 = L3_2.UIData
  L3_2 = L3_2.Num
  L1_2(L2_2, L3_2)
end
L0_1._setup_property = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_property_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._property_ui_data
  L3_2 = L3_2.UIData
  L3_2 = L3_2.Num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_property_plus_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._property_ui_data
  L3_2 = L3_2.UIData
  L3_2 = L3_2.AddNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_property_with_plus = L1_1
return L0_1
