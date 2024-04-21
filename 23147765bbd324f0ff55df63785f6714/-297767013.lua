local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalObtainLightConePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._new_lightcone_info = A1_2
  L2_2 = A0_2._new_lightcone_info
  L2_2 = L2_2.NewLightConeData
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
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._new_lightcone_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.light_cone_additional_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = A0_2._new_lightcone_info
  L3_2 = L3_2.AdditionalItemList
  L3_2 = L3_2.Count
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._new_lightcone_info
  L1_2 = L1_2.AdditionalItemList
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L1_2 = A0_2._new_lightcone_info
    L1_2 = L1_2.AdditionalItemList
    L1_2 = L1_2.AdditionalItems
    L1_2 = L1_2[0]
    L2_2 = A0_2._binder
    L2_2 = L2_2.light_cone_additional_item_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_light_cone_additional_item_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._new_lightcone_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_light_cone_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._new_lightcone_info
  L3_2 = L3_2.IsNew
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_light_cone_hint = L1_1
return L0_1
