local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._load_small_icon = true
  if A2_2 ~= nil then
    A0_2._load_small_icon = A2_2
  end
  A0_2._staff_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.staff_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._staff_data
  L5_2 = L5_2.ID
  L6_2 = A0_2._load_small_icon
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
return L0_1
