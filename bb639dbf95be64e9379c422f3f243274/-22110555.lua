local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpExpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpExpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpMaterialListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpMaterialListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpItemListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.CoinCostPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicUpgradeTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/Relic/Widget/RelicLevelUpPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicLevelUpPanel/Contents/RelicInfoDetail/TitlePanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_relic_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "RelicLevelUpPanel/Contents/FunctionPanel/BtnLevelUp/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "RelicLevelUpPanel/Contents/FunctionPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ResBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.res_bar_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicLevelUpPanel/Contents/FunctionPanel/LevelMaxHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level_max_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicLevelUpItemListPanel
  L4_2 = G
  L4_2 = L4_2.RelicLevelUpItemListPanelBinder
  L5_2 = "ItemListArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.item_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicLevelUpExpPanel
  L4_2 = G
  L4_2 = L4_2.RelicLevelUpExpPanelBinder
  L5_2 = "RelicLevelUpPanel/Contents/ExpPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.exp_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicLevelUpMaterialListPanel
  L4_2 = G
  L4_2 = L4_2.RelicLevelUpMaterialListPanelBinder
  L5_2 = "RelicLevelUpPanel/Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.material_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RelicStatusPanel
  L4_2 = G
  L4_2 = L4_2.RelicLevelUpStatusPanelBinder
  L5_2 = "RelicLevelUpPanel/Contents/RelicStatusPanel/ScrollViewMask/ScrollView/Viewport/RelicStatusInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CoinCostPanel
  L4_2 = G
  L4_2 = L4_2.CoinCostPanelBinder
  L5_2 = "RelicLevelUpPanel/Contents/CoinCostPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.coin_cost_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "RelicLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarity"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rarity_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "RelicLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.auto_fill_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "RelicLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.auto_clear_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarity/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.rarity_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.auto_fill_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RelicLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnClear/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.auto_clear_in_control_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1
