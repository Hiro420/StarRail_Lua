local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumMarketStaffItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Museum/Widget/MarketMemberInfoRow.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumStaffInfoPanel
  L4_2 = G
  L4_2 = L4_2.MuseumStaffInfoPanelBinder
  L5_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/InfoPanel/PricePanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_price = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/InfoPanel/PricePanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_cost_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatusPanel/SoldOut"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.sold_out_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reddot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
