local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLevelUpPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/LightCone/Widget/LightConeLevelUpPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeLevelUpExpPanel
  L4_2 = G
  L4_2 = L4_2.LightConeLevelUpExpPanelBinder
  L5_2 = "LightConeLevelUpPanel/Contents/ExpPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.levelup_exp_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CoinCostPanel
  L4_2 = G
  L4_2 = L4_2.CoinCostPanelBinder
  L5_2 = "LightConeLevelUpPanel/Contents/CoinCostPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.coin_cost_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L5_2 = "LightConeLevelUpPanel/Contents/StatusPanel/HP/StatusDetailInfoCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.hp_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L5_2 = "LightConeLevelUpPanel/Contents/StatusPanel/Attack/StatusDetailInfoCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.attack_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.StatusDetailInfoCompare
  L4_2 = G
  L4_2 = L4_2.StatusDetailInfoCompareBinder
  L5_2 = "LightConeLevelUpPanel/Contents/StatusPanel/Defence/StatusDetailInfoCompare"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.defence_compare_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ItemListArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_item_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ItemListArea/CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_item_list_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeLevelUpPanel/Contents/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_material_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "ResBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_res_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_auto_fill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_auto_clear = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarity/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_auto_fill_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarity"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_auto_fill_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnAutoFilterPanelPC
  L4_2 = G
  L4_2 = L4_2.BtnAutoFilterPanelPCBinder
  L5_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarityPC"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.auto_fill_filter_panel_pc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarity"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_auto_fill_filter = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "LightConeLevelUpPanel/Contents/BtnPanel/BtnLevelUp"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_level_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ItemListArea"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_list_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarityPC"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.rarity_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.auto_fill_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.auto_clear_in_control_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnRarityPC/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.rarity_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnAuto/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.auto_fill_in_control_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeLevelUpPanel/Contents/MaterialListPanel/BtnPanel/BtnClear/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.auto_clear_in_control_tip = L1_2
end
L0_1._on_bind = L1_1
return L0_1
