local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BaseToastData"
L2_1 = nil
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.custom_data = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = ...
  L1_2[1] = L2_2
  A0_2.custom_data = L1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = unpack
  L2_2 = A0_2.custom_data
  return L1_2(L2_2)
end
L0_1.get_param = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.get_type = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.merge = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  return L1_2
end
L0_1.get_filter_list = L1_1
return L0_1
