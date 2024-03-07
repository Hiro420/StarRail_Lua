local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "UI3DChallengeCrystalPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._owner = A1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._anchor_transform = A1_2
end
L0_1.set_crystal_ui_anchor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._anchor_transform = A1_2
  A0_2._connect_line_transform = A2_2
  A0_2._aureole_transform = A3_2
end
L0_1.set_crystal_transform = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._anchor_transform
  return L1_2
end
L0_1.get_anchor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._anchor_transform
  if L3_2 then
    L3_2 = A0_2._anchor_transform
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._connect_line_transform
  if L3_2 then
    L3_2 = A0_2._connect_line_transform
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._aureole_transform
  if L3_2 then
    L3_2 = A0_2._aureole_transform
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_active
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_crystal_active = L1_1
return L0_1
