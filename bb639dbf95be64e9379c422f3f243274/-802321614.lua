local L0_1, L1_1, L2_1, L3_1
L0_1 = 1.5
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyTopHintPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._text_str = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = L0_1
  end
  A0_2._time = L3_2
  A0_2._cur_time = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A0_2._text_str
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._add_tick
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_time
  L2_2 = L2_2 + A1_2
  A0_2._cur_time = L2_2
  L2_2 = A0_2._cur_time
  L3_2 = A0_2._time
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._remove_tick
    L2_2(L3_2)
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.exit
    L2_2(L3_2)
  end
end
L1_1._on_tick = L2_1
return L1_1
