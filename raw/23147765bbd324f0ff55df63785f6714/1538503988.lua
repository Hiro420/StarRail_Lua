local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradePageUpGradePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AssembleSkilItemPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_slot_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "CoinCostPanel/CoinPanel/IconPanel/IconLite"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mat = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CoinCostPanel/CoinPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mat_own = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CoinCostPanel/CoinPanel/LevelNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mat_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "DisableHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "DisableHintPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_disable_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "BtnPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_upgrade = L1_2
end
L0_1._on_bind = L1_1
return L0_1