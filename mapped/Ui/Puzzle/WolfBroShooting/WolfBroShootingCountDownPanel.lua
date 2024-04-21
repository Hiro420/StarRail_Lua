local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingCountDownPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingCountDownPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_minute
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "00"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_second
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "00"
  L1_2(L2_2, L3_2)
end
L0_1.init_count_down = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2 / 60
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.ceil
  L5_2 = L2_2 % 60
  L4_2 = L4_2(L5_2)
  if L4_2 == 60 then
    L3_2 = L3_2 + 1
    L4_2 = 0
  end
  L5_2 = nil
  L6_2 = nil
  if L3_2 < 10 then
    L7_2 = "0"
    L8_2 = tostring
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L5_2 = L7_2 .. L8_2
  else
    L7_2 = tostring
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
  end
  if L4_2 < 10 then
    L7_2 = "0"
    L8_2 = tostring
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L6_2 = L7_2 .. L8_2
  else
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_minute
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_second
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1.setup_count_down = L1_1
return L0_1
