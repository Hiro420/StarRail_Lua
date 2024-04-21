local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritSkillCoreEquipPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/AetherDivide/AetherDivideAssembleSkillPage.prefab"
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
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_core_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AetherDivideDetailPanel/AetherDivideSkillDetailInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_core_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AetherDivideDetailPanel/AssembleSkillTabList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_passive_skill_core_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AetherDivideDetailPanel/AssembleSkillTabList/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_prev_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/AetherDivideDetailPanel/AssembleSkillTabList/KeyMapInfo/Root/CopyLayout/Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_prev_slot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/AetherDivideDetailPanel/AssembleSkillTabList/KeyMapInfo/Root/CopyLayout/Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next_slot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/AetherDivideDetailPanel/AetherDivideSkillDetailInfo/FunctionBtnPanel/BtnComSecondIcon_Reverse"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_detach_all = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root/AetherDivideDetailPanel/AetherDivideSkillDetailInfo/FunctionBtnPanel/BtnReplace"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_save = L1_2
end
L0_1._on_bind = L1_1
return L0_1
