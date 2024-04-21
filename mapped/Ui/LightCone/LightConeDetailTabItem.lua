local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeDetailTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Equipment_Detail"
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._equip_data = A3_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  return L2_2
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._equip_data = A1_2
  L2_2 = A0_2._state
  L3_2 = A0_2.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.light_cone_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.light_cone_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.enable_promotion_preview
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_name_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_name_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_can_to_special_zoom
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.on_click_tab
  L3_2 = A0_2.uid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.setup_short_cut_hint_panel
  L3_2 = 126
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
