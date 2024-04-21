local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonDifficultTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "FinishPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_finished = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
