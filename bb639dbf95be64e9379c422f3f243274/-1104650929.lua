local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterWavePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterWavePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterFloorListPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Monster/WidgetV2/MonsterFloorList.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "BossMonsterInfo/BossMonsterIcon/IconAvatar/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_boss_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossMonsterInfo/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_boss_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "MonsterFloorListInfo"
  L6_2 = G
  L6_2 = L6_2.MonsterWavePanel
  L7_2 = G
  L7_2 = L7_2.MonsterWavePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.monster_wave_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BossMonsterInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_boss_info = L1_2
  L1_2 = A0_2.node_boss_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
