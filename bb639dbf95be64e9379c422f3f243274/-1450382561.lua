local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnTabLeftPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnJourneyPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/PlayerReturn/Widget/PlayerReturnJourneyPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Content/List"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_item_list = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_in_btn
  L3_2 = G
  L3_2 = L3_2.PlayerReturnTabLeftPanel
  L4_2 = G
  L4_2 = L4_2.PlayerReturnTabLeftPanelBinder
  L5_2 = A0_2.tab_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.tab_btn_panel = L1_2
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_title
  L3_2 = "UIText_PlayerReturn_Title05"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_icon
  L3_2 = "SpriteOutput/TabIcon/PlayerReturn/PlayerReturnJourneyIcon.png"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PlayerReturnQuestionnaireReward"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
