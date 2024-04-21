local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Story.GenderConfirmPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Story.GenderConfirmPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SelectGenderPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/ChangeGenderBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_change_gender = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/ConfirmBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
end
L0_1._on_bind = L1_1
return L0_1
