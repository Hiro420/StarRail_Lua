local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Finish.RogueBuffTypeListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Finish.RogueBuffTypeListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Finish.RogueMiracleListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Finish.RogueMiracleListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessExploreFinishPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/Endless/RogueEndlessNormalBattleResultBookDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CustomButton
  L4_2 = "Btn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "HintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_click_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Bg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/LeftPanel/ResultTitle/SuccessResult"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_succ_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/LeftPanel/ResultTitle/RetireResult"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_fail_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/LeftPanel/BasicInfo/World/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_area = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/LeftPanel/ReachPointPanel/PointPanel/FloorNo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_room = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/LeftPanel/ReachPointPanel/PointPanel/TotalFloor"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_total_room_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RightPanel/BookFrame/CenterFrame/CurrencyPanel/SkillScorePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/RightPanel/BookFrame/CenterFrame/CurrencyPanel/SkillScorePanel/ScorePanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/RightPanel/BookFrame/CenterFrame/CurrencyPanel/SkillPointPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_talent_coin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/RightPanel/BookFrame/CenterFrame/CurrencyPanel/SkillPointPanel/ScorePanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_talent_coin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/RightPanel/BookFrame/CenterFrame/DisplayAvatarPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avata_root = L1_2
  L1_2 = A0_2.btn_avata_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2.panels_display_avatar = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = string
    L5_2 = L5_2.format
    L6_2 = "Content/RightPanel/BookFrame/CenterFrame/DisplayAvatarPanel/Avatar_0%d"
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._create_panel
    L8_2 = G
    L8_2 = L8_2.AvatarSelectIconPanel
    L9_2 = G
    L9_2 = L9_2.AvatarSelectIconPanelBinder
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.panels_display_avatar
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueBuffTypeListPanel
  L4_2 = G
  L4_2 = L4_2.RogueBuffTypeListPanelBinder
  L5_2 = "Content/RightPanel/BookFrame/CenterFrame/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/BuffListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueMiracleListPanel
  L4_2 = G
  L4_2 = L4_2.RogueMiracleListPanelBinder
  L5_2 = "Content/RightPanel/BookFrame/CenterFrame/ScrollPanel/ScrollViewMask/ScrollView/Viewport/Content/MiracleListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_miracle_list = L1_2
end
L0_1._on_bind = L1_1
return L0_1
