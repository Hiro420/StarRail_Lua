local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingPauseDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Maze/MiniGame/ShootingTarget/MiniGameShootingTargetPauseDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnGiveUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_give_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnRestart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_restart = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnPanel/BtnContinue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_continue = L1_2
end
L0_1._on_bind = L1_1
return L0_1
