local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NpcMonsterInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Maze/Widget/NpcMonsterInfo.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.animation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/MonsterIcon/Icon/Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/LvPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_Level_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/LvPanel/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L1_2 = {}
  A0_2.node_elite_types = L1_2
  L1_2 = A0_2.node_elite_types
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Transform
  L5_2 = "Root/EliteInfoPanel/EliteType/Elite01"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2 = A0_2.node_elite_types
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Transform
  L5_2 = "Root/EliteInfoPanel/EliteType/Elite02"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[2] = L2_2
  L1_2 = A0_2.node_elite_types
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Transform
  L5_2 = "Root/EliteInfoPanel/EliteType/Elite03"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[3] = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/EliteInfoPanel/BackMonsters"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_multi_wave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/Frame/OutLineHintElite01"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_hint_elite_01 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/Frame/OutLineHintElite02"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_hint_elite_02 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/Frame/OutLineHintElite03"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_hint_elite_03 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.WeakPointListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Root/DamageTypePanel/DamageTypeLayout"
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.weak_point_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/BuffPanel/Line"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.line_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "Root/BuffPanel/BuffLayout"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Frame/DangerLight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_danger_light = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/EliteInfoPanel/EliteType/Elite01/DangerLight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_danger_light_elite01 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/EliteInfoPanel/EliteType/Elite02/DangerLight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_danger_light_elite02 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/EliteInfoPanel/EliteType/Elite03/DangerLight"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_danger_light_elite03 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
