local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterElitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterElitePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherCommonBossIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/General/CommonBossIcon.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/MonsterHead/HeadIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.button = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/InfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/InfoPanel/PropertyPanel/PropertyIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_weak_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/InfoPanel/TextPanel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterElitePanel
  L4_2 = G
  L4_2 = L4_2.MonsterElitePanelBinder
  L5_2 = "Root/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.elite_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
