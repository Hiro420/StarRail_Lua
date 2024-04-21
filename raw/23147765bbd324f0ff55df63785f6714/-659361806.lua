local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ClockParkRoundType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkGamePlayProgressNodeItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = not A2_2 and not A3_2 and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_normal
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_game
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_check
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_branch_select
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_txt
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_index
    L7_2 = L6_2
    L6_2 = L6_2.SetCustomizedText
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L1_1.setup_view = L2_1
return L1_1
