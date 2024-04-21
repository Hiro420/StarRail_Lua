local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidCollectionEntranceDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/MiniGame/MiniGameSpaceDetailDialog.prefab"
  return L1_2
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
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RightPanel/RightPanel/BtnPanel/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_start = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanel/RightPanel/BtnPanel/TipPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanel/RightPanel/BtnPanel/TipPanel/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel/ChallengeHardLevelTabList/ScrollView/Viewport/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanel/RightPanel/NamePanel/Root/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanel/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel/SubTitlePanel/Root/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_target = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonEnvBuffPanel
  L4_2 = G
  L4_2 = L4_2.CommonEnvBuffPanelBinder
  L5_2 = "Root/Contents/RightPanel/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.PreviewMonsterPanelBinder
  L5_2 = "Root/Contents/RightPanel/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewRewardPanel
  L4_2 = G
  L4_2 = L4_2.PreviewRewardPanelBinder
  L5_2 = "Root/Contents/RightPanel/RightPanel/ChallengeRewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.IntroButton
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTip_ResBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/RightPanel/RightPanel/ScrollPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/Contents/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
end
L0_1._on_bind = L1_1
return L0_1
