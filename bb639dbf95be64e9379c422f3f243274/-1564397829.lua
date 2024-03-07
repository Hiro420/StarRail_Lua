local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchaseTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchaseTypePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardLightconePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardLightconePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePassPurchasePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/BattlePass/BattlePassOrderPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/MedaLoadingWheelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_product_loading = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassPurchaseTypePanel
  L4_2 = G
  L4_2 = L4_2.BattlePassPurchaseTypePanelBinder
  L5_2 = "Root/Contents/MedalPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_type1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassPurchaseTypePanel
  L4_2 = G
  L4_2 = L4_2.BattlePassPurchaseTypePanelBinder
  L5_2 = "Root/Contents/HonoraryCeremonyPanel/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_type2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/BtnHandle/Button"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassRewardLightconePanel
  L4_2 = G
  L4_2 = L4_2.BattlePassRewardLightconePanelBinder
  L5_2 = "Root/Contents/LightConePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/TipsPanel/Tips1/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActiveDetection
  L4_2 = "FadeBlock"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_detect_block = L1_2
end
L0_1._on_bind = L1_1
return L0_1
