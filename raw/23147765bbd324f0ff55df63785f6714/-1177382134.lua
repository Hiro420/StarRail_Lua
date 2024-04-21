local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleConditionListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_condition_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.get_battle_condition_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._condition_list = L2_2
  L2_2 = A0_2._condition_list
  L2_2 = #L2_2
  if L2_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.condition_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._condition_list
  L2_2(L3_2, L4_2)
end
L0_1._setup_condition_list = L1_1
return L0_1
