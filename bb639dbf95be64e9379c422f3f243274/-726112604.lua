local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Entrance.Components.DrinkMakerMonsterGuestPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendFreeModePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_content_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerMonsterGuestPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerMonsterGuestPanelBinder
  L5_2 = "Content/GuestMonsterQuestPanel/IconGuestMonster"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_guest = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Content/GuestMonsterQuestPanel/Root/QuestTip/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_request_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Content/GuestMonsterQuestPanel/Root/QuestList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.list_request_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Content/GuestMonsterQuestPanel/Root/QuestList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/GuestMonsterQuestPanel/Root"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_quest_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendTagDisplayPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerBartendTagDisplayPanelBinder
  L5_2 = "Content/TagPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_tag_display = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/GuestMonsterQuestPanel/Root/QuestTip/Line"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_line = L1_2
end
L0_1._on_bind = L1_1
return L0_1
