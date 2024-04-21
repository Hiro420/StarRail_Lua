local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffArrowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.EnumStatusType
L1_1 = L1_1.Buff
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.EnumStatusType
L2_1 = L2_1.Debuff
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L2_2 = A1_2 == L2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_buff
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L1_1
    L5_2 = A1_2 == L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_debuff
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_1
    L5_2 = A1_2 == L5_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L3_1
return L0_1
