local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyCurrencySettlePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1.JackpotInfo
  L2_2 = L2_2.JackpotLevel
  L2_2 = 0 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_phase1
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_phase2
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_currency
  L4_2 = L3_2
  L3_2 = L3_2.setup_view_by_display
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L1_1.setup_view = L2_1
return L1_1
