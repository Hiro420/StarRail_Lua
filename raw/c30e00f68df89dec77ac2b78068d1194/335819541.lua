local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffRarityPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffRarityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffExtraEffectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffExtraEffectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueSelectBuffDescPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessMarkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuBuffRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/Widget/RogueTabBeneV2.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RogueTabBeneTitle"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "RogueTabBeneTitle/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AnimatorButton
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/TextTitle/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_buff_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/RogueBuffItemV2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_buff_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueBuffRarityPanel
  L4_2 = G
  L4_2 = L4_2.RogueBuffRarityPanelBinder
  L5_2 = "Root/RogueBuffItemV2/RarityStarPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff_rarity = L1_2
  L1_2 = {}
  A0_2.node_bg_normal_table = L1_2
  L1_2 = {}
  A0_2.node_bg_up_table = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._safe_find
    L7_2 = "Root/RogueBuffItemV2/Frame/Rank"
    L8_2 = L4_2
    L7_2 = L7_2 .. L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.node_bg_normal_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._safe_find
    L8_2 = "Root/RogueBuffItemV2/Frame/Rank"
    L9_2 = L4_2
    L10_2 = "UP"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.node_bg_up_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueEndlessMarkPanel
  L4_2 = G
  L4_2 = L4_2.RogueEndlessMarkPanelBinder
  L5_2 = "Root/RogueBuffItemV2/Mark"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_endless_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TextTitle/RogueUpdateLabel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_update = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueSelectBuffDescPanel
  L4_2 = G
  L4_2 = L4_2.RogueSelectBuffDescPanelBinder
  L5_2 = "Root/DetailInfo/TextDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Root"
  L6_2 = "Ui.Rogue.Buff.Panels.RogueBuffExtraEffectPanel"
  L7_2 = "Ui.Rogue.Buff.Panels.RogueBuffExtraEffectPanelBinder"
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.buff_extra_effect_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_arrow_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/ArrowPanel/UpArrow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_up_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/ArrowPanel/DownArrow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_down_arrow = L1_2
end
L0_1._on_bind = L1_1
return L0_1
