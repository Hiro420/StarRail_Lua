local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendCommand"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._command_type = A1_2
  A0_2._data = A2_2
end
L0_1.set_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._command_type
  return L1_2
end
L0_1.get_command_type = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  return L1_2
end
L0_1.get_data = L1_1
return L0_1
