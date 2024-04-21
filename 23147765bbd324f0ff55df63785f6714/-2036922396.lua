local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoguePageBgPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._instantiate_bg
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.setup_default_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._instantiate_bg
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1.setup_chessrogue_bg = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._instantiate_bg
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.load_bg_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_loader
  L4_2 = L4_2.MultiPrefabList
  L4_2 = L4_2[A1_2]
  L5_2 = A0_2._binder
  L5_2 = L5_2.prefab_loader
  L5_2 = L5_2.transform
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._instantiate_bg = L1_1
return L0_1
