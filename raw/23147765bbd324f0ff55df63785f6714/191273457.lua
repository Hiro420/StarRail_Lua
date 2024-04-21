local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ProperNounDescriptionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._proper_noun_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._proper_noun_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._proper_noun_data
  L1_2 = L1_2.DescParam
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._proper_noun_data
    L3_2 = L3_2.Desc
    L4_2 = table
    L4_2 = L4_2.unpack
    L5_2 = A0_2._proper_noun_data
    L5_2 = L5_2.DescParam
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._proper_noun_data
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
end
L0_1._setup_desc = L1_1
return L0_1
