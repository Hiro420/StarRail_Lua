local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillDetailDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/AetherDivide/AetherDivideSkillDetailInfoDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "AvatarDetailCloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AetherDivideDetailPanel/StatusPanel/ScrollViewMask/ScrollView/Viewport/Content/LevelDescCurrent/LevelDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AetherDivideDetailPanel/CoreSkillTabList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AetherDivideDetailPanel/AssembleSkillTabList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_passive_skill_core_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "SkillDetailContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_detail_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
