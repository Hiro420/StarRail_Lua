local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordMonsterInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BossInfo/StatePanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/Normal/TextPanel/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/Normal/BoxLevel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BossInfo/BoxStars/Star1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare_star_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BossInfo/BoxStars/Star2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare_star_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BossInfo/BoxStars/Star3"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_rare_star_3 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "BossInfo/StatePanel/Normal/PropertyPanel/PropertyIcon"
  L6_2 = "Ui.Monster.MonsterDamageTypePanel"
  L7_2 = "Ui.Monster.MonsterDamageTypePanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.weak_point_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.SmoothMask
  L4_2 = "BossInfo/StatePanel/Normal/BoxHpBar/ProgressBar/Bar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_progress_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/Normal/BoxHpBar/ProgressBar/TextPanel/TxtValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cur_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/Normal/BoxHpBar/ProgressBar/TextPanel/TxtTotal"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_max_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/Normal/BoxHpBar/ProgressBar/TextPanel/TxtExt"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_hp_percent = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "BossInfo/StatePanel/Normal/TextPanel/RemainTimeIcon/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.remain_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BossInfo/StatePanel/KillDone"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_killed = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/KillDone/TextPanel/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name_killed = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/KillDone/TextPanel/BoxLevel/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level_killed = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BossInfo/StatePanel/KillDone/StarTxtPanel/TxtScore"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_score = L1_2
end
L0_1._on_bind = L1_1
return L0_1