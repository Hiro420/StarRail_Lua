local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyCheatDiceDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.ActivityMonopolyCheatDiceDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Monopoly/MonopolyRemoteDiceDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
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
  L1_2 = {}
  L2_2 = A0_2.value_btn_1
  L1_2[1] = L2_2
  L2_2 = A0_2.value_btn_2
  L1_2[2] = L2_2
  L2_2 = A0_2.value_btn_3
  L1_2[3] = L2_2
  L2_2 = A0_2.value_btn_4
  L1_2[4] = L2_2
  L2_2 = A0_2.value_btn_5
  L1_2[5] = L2_2
  L2_2 = A0_2.value_btn_6
  L1_2[6] = L2_2
  A0_2.dice_value_btn_tb = L1_2
end
L0_1._on_bind = L2_1
return L0_1
