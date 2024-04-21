local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.HP.BattleMultiHpUnitPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMultiHpUnitPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = 0
  ::lbl_7::
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar
  L3_2.fillAmount = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar
  L3_2.bgAmount = L2_2
end
L0_1.setup_enable = L1_1
return L0_1
