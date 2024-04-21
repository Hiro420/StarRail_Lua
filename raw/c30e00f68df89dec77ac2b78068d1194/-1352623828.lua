local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDimensionInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerHeroPath.PlayerHeroPathDimensionInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathDimensionGroupPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._select_dimension_callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._dimension_data_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = A0_2._dimension_data_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._dimension_data_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.Level
    L7_2 = L5_2.Row
    L7_2 = L7_2.MaxLevel
    L8_2 = A0_2._dimension_data_list
    L8_2 = #L8_2
    L9_2 = L4_2 - 1
    L8_2 = L8_2 - L9_2
    if 7 <= L8_2 then
      L8_2 = 0
    end
    L9_2 = A0_2._binder
    L9_2 = L9_2.radar_dimension
    L10_2 = L9_2
    L9_2 = L9_2.SetAbilityValue
    L11_2 = L8_2
    L12_2 = L6_2 / L7_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.dimension_panel_list
    L9_2 = L9_2[L4_2]
    L10_2 = L9_2
    L9_2 = L9_2.register_click_callback
    L11_2 = A0_2._select_dimension_callback
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.dimension_panel_list
    L9_2 = L9_2[L4_2]
    L10_2 = L9_2
    L9_2 = L9_2.setup_view
    L11_2 = L5_2
    L12_2 = L4_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._select_dimension_callback = nil
end
L0_1._on_dispose = L1_1
return L0_1
