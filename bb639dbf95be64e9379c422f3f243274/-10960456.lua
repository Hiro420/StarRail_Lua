local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonHpPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonHpPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonTeamPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarTeam/BtnTeam"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Buff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_property = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "Buff/CheckerboardBoardBuffNum1/ExtDescTitle/TitleText"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.text_attack = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "Buff/CheckerboardBoardBuffNum2/ExtDescTitle/TitleText"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.text_defence = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "Buff/CheckerboardBoardBuffNum1/ExtDescTitle2/TitleText"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.text_atk_ex = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Image
  L5_2 = "Buff/CheckerboardBoardBuffNum1/ExtDescTitle2/BuffIcon/Buff"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2.img_atk_ex = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonHpPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonHpPanelBinder
  L5_2 = "AvatarTeam/HPBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_hp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "Buff/CheckerboardBoardBuffNum1/ExtDescTitle/BuffIcon/BuffHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.partical_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "Buff/CheckerboardBoardBuffNum2/ExtDescTitle/BuffIcon/BuffHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.partical_defence = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Buff/CheckerboardBoardBuffNum1/ExtDescTitle/BuffIcon/Buff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_attack_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Buff/CheckerboardBoardBuffNum2/ExtDescTitle/BuffIcon/Buff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_defence_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Buff/CheckerboardBoardBuffNum1"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout_attack = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Buff/CheckerboardBoardBuffNum2"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout_defence = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarTeam/PopUpTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hp_explore_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Buff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_property_hint = L1_2
end
L0_1._on_bind = L1_1
return L0_1
