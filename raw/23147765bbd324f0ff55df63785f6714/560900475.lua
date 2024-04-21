local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ClockParkGamePlayRaidLevelPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/ClockPark/ClockParkGamePlayRaidLevelPage.prefab"
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
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/TopTabPanel/TopTabArea/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/TopTabPanel/TopTabArea/TabControl/StreetEventTab"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_street_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/TopTabPanel/TopTabArea/TabControl/RaidTab"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_raid = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/MainPanel/StreetEventPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_street_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/MainPanel/RaidLevelPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_raid = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
end
L0_1._on_bind = L1_1
return L0_1
