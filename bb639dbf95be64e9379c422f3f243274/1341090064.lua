local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterWavePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Monster/WidgetV2/MonsterListInfo.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MonsterFloorInfo/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_wave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "ListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MonsterFloorInfo/EliteBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_boss_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MonsterFloorInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_wave_index = L1_2
end
L0_1._on_bind = L1_1
return L0_1
