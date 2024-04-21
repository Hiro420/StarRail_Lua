local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeLevelAimItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_aim_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Row
  L4_2 = L4_2.AimDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.TotalValue
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_current_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.CurrentValue
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2.TotalValue
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
return L0_1
