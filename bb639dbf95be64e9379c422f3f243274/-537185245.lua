local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffRarityPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_star
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_bg
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loader_star
  L2_2 = L2_2.transform
  L3_2 = L2_2.childCount
  if A1_2 > L3_2 then
    L4_2 = L3_2
    L5_2 = A1_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L9_2 = A0_2
      L8_2 = A0_2.instantiate_object
      L10_2 = A0_2._binder
      L10_2 = L10_2.loader_star
      L10_2 = L10_2.Prefab
      L11_2 = A0_2._binder
      L11_2 = L11_2.loader_star
      L11_2 = L11_2.transform
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L4_2 = L2_2.childCount
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = L2_2
    L9_2 = L2_2.GetChild
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.SafeSetActive
    L12_2 = A1_2 > L8_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._setup_star = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == nil then
    return
  end
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = L6_2 == A1_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_bg = L1_1
return L0_1
