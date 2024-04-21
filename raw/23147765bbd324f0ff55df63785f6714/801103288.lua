local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideLevelUpHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
return L0_1
