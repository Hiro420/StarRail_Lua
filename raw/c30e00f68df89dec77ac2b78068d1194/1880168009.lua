local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyPlayerIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.ActivityMonopolyPlayerIconPanelIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlayerNode/Female"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.female_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "PlayerNode/Male"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.male_icon = L1_2
end
L0_1._on_bind = L2_1
return L0_1
