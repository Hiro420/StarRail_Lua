local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberSpIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Bag/Widget/ConsumablesUsePowerPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UltraSPInfoWithNature/Max"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_maxsp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UltraSPInfoWithNature/Max/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_maxsp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SPProgress
  L4_2 = "UltraSPInfoWithNature/InCharge/Progress"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.progress_sp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UltraSPInfoWithNature/OutlineProgress/ProgressBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.outline_progress = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UltraSPInfoWithNature/EffContainerFront"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_effect_container_front = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UltraSPInfoWithNature/SpIcon/SkillIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_sp_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "UltraSPInfoWithNature/SpIcon/SkillIcon_UltraOn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_sp_icon_ultra_on = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "UltraSPInfoWithNature"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_nature = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UltraSPInfoWithNature"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_sp_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SpecialUltraSPInfoContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_special_sp_icon = L1_2
end
L0_1._on_bind = L1_1
return L0_1
