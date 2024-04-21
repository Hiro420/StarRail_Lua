local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassLevelPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardDisplayPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattlePassRewardTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/BattlePass/Widget/BattlePassRewardContent.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardShowContainer/BtnPay"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_purchase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardShowContainer/UnlockTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_purchase_end = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "RewardShowContainer/BtnPay"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_purchase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RewardShowContainer/BtnPay/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_btn_purchase = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "ListPanel/MedalPanel/Medal2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassLevelPanel
  L4_2 = G
  L4_2 = L4_2.BattlePassLevelPanelBinder
  L5_2 = "LevelPanel/BattlePassLevelPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassRewardListPanel
  L4_2 = G
  L4_2 = L4_2.BattlePassRewardListPanelBinder
  L5_2 = "ListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_rewards = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattlePassRewardDisplayPanel
  L4_2 = G
  L4_2 = L4_2.BattlePassRewardDisplayPanelBinder
  L5_2 = "RewardShowContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_display = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardShowContainer/PayPopUpTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_purchase_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RewardShowContainer/PayPopUpTip/Content/Currency/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_purchase_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RewardShowContainer/PayPopUpTip/Content/Currency/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_purchase_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RewardShowContainer/PayPopUpTip/Effect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_purchase_hint_effect = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.go_reddot = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "UnSelected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.unselect_icon_image = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.tab_btn_root
  L4_2 = "Selected/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.select_icon_image = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
