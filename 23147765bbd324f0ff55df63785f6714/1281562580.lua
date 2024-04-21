local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CoinCostPanelBinder"
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
  L3_2 = L3_2.Text
  L4_2 = "CoinPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cost_coin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CoinPanel/Splash"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_splash = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "CoinPanel/LevelNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_coin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "CoinPanel/IconPanel/Coin"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_coin = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2.text_cost_coin = nil
  A0_2.text_splash = nil
  A0_2.text_total_coin = nil
  A0_2.img_coin = nil
end
L0_1._on_dispose = L1_1
return L0_1
