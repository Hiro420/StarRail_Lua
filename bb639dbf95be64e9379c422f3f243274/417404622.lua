local L0_1, L1_1
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ResBarAreaPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResBarAreaFactory"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A2_2
  L5_2 = A2_2.instantiate_object
  L7_2 = A0_2.Prefab
  L8_2 = A0_2.transform
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A2_2
  L6_2 = A2_2.create_panel
  L8_2 = G
  L8_2 = L8_2.ResBarAreaPanel
  L9_2 = G
  L9_2 = L9_2.ResBarAreaPanelBinder
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if A4_2 ~= nil then
    L8_2 = L6_2
    L7_2 = L6_2.set_fresh_list_by_scale
    L9_2 = A4_2
    L7_2(L8_2, L9_2)
  end
  L8_2 = L6_2
  L7_2 = L6_2.bind
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.setup_view
  L9_2 = A1_2
  L10_2 = A3_2
  L7_2(L8_2, L9_2, L10_2)
  return L6_2
end
L0_1.CreateResBarArea = L1_1
return L0_1
