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
L1_1 = "Ui.FarmEnemy.FarmDifficultyTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmDifficultyTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonEnvBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.Widget.FarmWavePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.Widget.FarmWavePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FarmCocoonPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Adventure/FarmCocoonPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/LeftPanel/ChallengeStoryDescPanel/DescTextPanel/DescText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel/CostTip/TipPanel/Item1/CostNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_cost = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel/CostTip/TipPanel/Item1/IconPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_stamina = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel/BtnChallenge"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_start = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.CanvasGroup
  L4_2 = "Root/Contents/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.canvas_group_zoom_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FarmDifficultyTabPanel
  L4_2 = G
  L4_2 = L4_2.FarmDifficultyTabPanelBinder
  L5_2 = "Root/Contents/LeftPanel/ChallengeHardLevelTabList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_difficulty_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_environment = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_environment = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/TeamLevelWarning"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_combat_power_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.PreviewMonsterPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeMonsterPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewRewardPanel
  L4_2 = G
  L4_2 = L4_2.PreviewRewardPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeRewardPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.FarmWavePanel
  L4_2 = G
  L4_2 = L4_2.FarmWavePanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeExchangePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_wave = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/NamePanel/NameText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHardLevelInfoPanel/HardLevel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_difficulty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/OpenTime/Normal/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_available_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/OpenTime/Disable/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_available_time_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/OpenTime"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_available_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/WorldLevel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_world_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_layout = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/UnlockTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/UnlockTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_locked_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/BtnPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.btns_node = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.env_buff_desc_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.CommonEnvBuffPanel
  L4_2 = G
  L4_2 = L4_2.CommonEnvBuffPanelBinder
  L5_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/ChallengeEnvBuffPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.env_buff_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_multiple_drop_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/BoxTitle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_text_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/BoxTitle/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_remain_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/BoxTitle/TotalNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_description = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/SpecialBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.special_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_multiple_drop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon_multiple_drop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/SpecialFestivalIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_theme_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/Contents/RightPanelBlurRoot/RightPanel/ChallengeHintPanel/DescriptionTip/TextPanel/SpecialFestivalIcon/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.theme_icon = L1_2
end
L0_1._on_bind = L1_1
return L0_1