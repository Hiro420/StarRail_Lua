local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendMaterialList"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._mat_data_rows = L1_2
  A0_2._show_mat_name = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._title_text = A1_2
  A0_2._mat_type = A2_2
end
L0_1.set_list_info = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._title_text
  return L1_2
end
L0_1.get_list_title = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._mat_type
  return L1_2
end
L0_1.get_mat_type = L1_1
function L1_1(A0_2, A1_2)
  A0_2._show_mat_name = A1_2
end
L0_1.set_is_show_mat_name = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._show_mat_name
  return L1_2
end
L0_1.get_is_show_mat_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._mat_data_rows
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.add_mat_row = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._mat_data_rows
  return L1_2
end
L0_1.get_mat_rows = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._mat_data_rows
  L1_2 = #L1_2
  return L1_2
end
L0_1.get_mat_count = L1_1
return L0_1
