local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Quest/AetherDivide/AetherDivideBattleMainPage.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/RelationInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_relation_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/BuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_buff_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Content/BuffPanel/DescTextPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buff_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Content/CenterPanel/LogoPanel/BattleTypeBG/BattleType"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_logo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AetherChallengePlayerPanel
  L4_2 = G
  L4_2 = L4_2.AetherChallengePlayerPanelBinder
  L5_2 = "Root/Content/LeftPanel/PlayerInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_left_player = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/LeftPanel/PlayerInfoPanel/InfoPanel/BtnChange"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_change_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AetherChallengePlayerPanel
  L4_2 = G
  L4_2 = L4_2.AetherChallengePlayerPanelBinder
  L5_2 = "Root/Content/RightPanel/PlayerInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_enemy_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/RightPanel/PlayerInfoPanel/InfoPanel/BtnInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_enemy_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Content/BottomBtnPanel/FunctionBtnPanel/BtnBattleStart"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_start = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/LeftPanel/PlayerInfoPanel/InfoPanel/TrialMark"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_trial_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Content/CenterPanel/LogoPanel/BattleTypeBG"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_logo = L1_2
end
L0_1._on_bind = L1_1
return L0_1