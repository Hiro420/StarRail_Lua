local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffRarityPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueBuffRarityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessMarkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessBuffIconPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/Endless/Widget/RogueEndlessBuffInfoRow.prefab"
  return L1_2
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
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RogueBuffItemV2/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Desc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueBuffRarityPanel
  L4_2 = G
  L4_2 = L4_2.RogueBuffRarityPanelBinder
  L5_2 = "RogueBuffItemV2/RarityStarPanel"
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
    L7_2 = "RogueBuffItemV2/Frame/Rank"
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
    L8_2 = "RogueBuffItemV2/Frame/Rank"
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
  L5_2 = "RogueBuffItemV2/Mark"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_endless_mark = L1_2
end
L0_1._on_bind = L1_1
return L0_1
