local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerTrustPointPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendGuestTrustPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendGuestTrustPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_Result_TrustUp"
L2_1 = "UIText_DrinkMaker_Result_TrustMax"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._trust_point_panels = L3_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._guest_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_guest_monster
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._guest_data
  L4_2 = L4_2.GuestRow
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.LastFaith
  L3_2 = A0_2._guest_data
  L3_2 = L3_2.GuestRow
  L3_2 = L3_2.MaxFaith
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_trust
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_trust
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = 1
  L3_2 = A0_2._guest_data
  L3_2 = L3_2.GuestRow
  L3_2 = L3_2.MaxFaith
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._trust_point_panels
    L6_2 = L6_2[L5_2]
    if L6_2 == nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.prefab_trust_point
      L7_2 = L7_2.Prefab
      L9_2 = A0_2
      L8_2 = A0_2.instantiate_object
      L10_2 = L7_2
      L11_2 = A0_2._binder
      L11_2 = L11_2.prefab_trust_point
      L11_2 = L11_2.transform
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = A0_2
      L9_2 = A0_2.create_panel
      L11_2 = G
      L11_2 = L11_2.DrinkMakerTrustPointPanel
      L12_2 = G
      L12_2 = L12_2.DrinkMakerTrustPointPanelBinder
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L6_2 = L9_2
      L10_2 = L6_2
      L9_2 = L6_2.bind
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._trust_point_panels
      L9_2[L5_2] = L6_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._guest_data
    L9_2 = L9_2.Faith
    L9_2 = L5_2 <= L9_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.setup_view = L3_1
return L0_1
