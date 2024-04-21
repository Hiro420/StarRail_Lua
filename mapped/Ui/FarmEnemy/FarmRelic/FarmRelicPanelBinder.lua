local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmRelicPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.PreviewMonsterPanelBinder
  L5_2 = "ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewRewardPanel
  L4_2 = G
  L4_2 = L4_2.PreviewRewardPanelBinder
  L5_2 = "ChallengeRewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonEnvBuffPanel
  L4_2 = G
  L4_2 = L4_2.CommonEnvBuffPanelBinder
  L5_2 = "ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.env_buff_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
