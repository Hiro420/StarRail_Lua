local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradeResultDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/AetherDivide/AetherDivideLevelUpResultDialog.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/LevelPanel/LevelPre/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_level_before = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/LevelPanel/LevelNext/Level"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_level_now = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/SkillCardPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_slot_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/SkillCardPanel/AetherDivideSkillCardItem/TaskName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_new_slot_hint_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/SkillCardPanel/AetherDivideSkillCardItem/Progress/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_new_slot_value = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/StatusPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_status_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/Root/ScrollViewMask/ScrollView/Viewport/Content/AssembleSkilItemRowInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bonus_item = L1_2
end
L0_1._on_bind = L1_1
return L0_1
