local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BaseVisitor"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterResistListPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterResistVisitor"
L2_1 = G
L2_1 = L2_1.BaseVisitor
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._have_resist_data = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.IsSubClassOf
  L3_2 = G
  L3_2 = L3_2.GetClass
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.MonsterResistListPanel
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A1_2
    L2_2 = A1_2.have_resist_data
    L2_2 = L2_2(L3_2)
    A0_2._have_resist_data = L2_2
  end
end
L0_1.visit = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._have_resist_data
  return L1_2
end
L0_1.have_resist_data = L1_1
return L0_1
