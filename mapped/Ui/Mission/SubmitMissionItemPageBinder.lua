local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSubmitHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSubmitItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SubmitMissionItemPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/GoodsSubmit/GoodSubmitPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionSubmitHintPanel
  L4_2 = G
  L4_2 = L4_2.MissionSubmitHintPanelBinder
  L5_2 = "TalkDialog"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.talk_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MissionSubmitItemPanel
  L4_2 = G
  L4_2 = L4_2.MissionSubmitItemPanelBinder
  L5_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.item_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InventoryPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_item_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.InventoryPanel
  L4_2 = G
  L4_2 = L4_2.InventoryPanelBinder
  L5_2 = "InventoryPanel/Panel/InventoryRightPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.item_detail_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_empty_bg = L1_2
end
L0_1._on_bind = L1_1
return L0_1
