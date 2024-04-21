local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RarityStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.RarityStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeArchiveItemPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/LightConeInfo/NamePanel/LightConeNameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/IconPanel/LightConeRoot/LightConeIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/LightConeInfo/Profession/LightProfessionIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_profession = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/LightConeInfo/RarityStarPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_rarity = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LockPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lock = L1_2
  L1_2 = {}
  A0_2.node_rarity_map = L1_2
  L1_2 = 3
  L2_2 = 5
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = "Root/RarityPanel/Rank"
    L6_2 = L4_2
    L5_2 = L5_2 .. L6_2
    L6_2 = A0_2.node_rarity_map
    L8_2 = A0_2
    L7_2 = A0_2._safe_find
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2[L4_2] = L7_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_red_dot = L1_2
end
L0_1._on_bind = L1_1
return L0_1
