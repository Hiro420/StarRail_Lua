local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueDLCEntranceDisplayDataItem"
L0_1 = L0_1(L1_1)
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2.row = A1_2
  L2_2 = A0_2.row
  L2_2 = L2_2.SubType
  A0_2.sub_mode = L2_2
  A0_2.state_provider = nil
  A0_2.click_action = nil
  A0_2.lock_data_provider = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.state_provider
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2.state_provider
    L1_2(L2_2)
    A0_2.state_provider = nil
  end
  L1_2 = A0_2.click_action
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2.click_action
    L1_2(L2_2)
    A0_2.click_action = nil
  end
  L1_2 = A0_2.lock_data_provider
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2.lock_data_provider
    L1_2(L2_2)
    A0_2.lock_data_provider = nil
  end
end
L0_1.dtor = L1_1
return L0_1
