local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Choice.TravelBrochurChoiceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Choice.TravelBrochurChoiceItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureChapterChoicePanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/IntroductionPanel/Content/ScrollView/Viewport/Content/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/IntroductionPanel/Content/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlMove
  L4_2 = "Root/IntroductionPanel/Content/ScrollView/Viewport/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_move = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/OptionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_options = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Root/OptionPanel"
  L6_2 = G
  L6_2 = L6_2.TravelBrochurChoiceItemPanel
  L7_2 = G
  L7_2 = L7_2.TravelBrochurChoiceItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.list_options = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_to_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnDetail/TextPanel/IconPanel/NeedHideRoot/Icon/Up"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_up = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BtnDetail/TextPanel/IconPanel/NeedHideRoot/Icon/Down"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "BtnDetail/TextPanel/KeyMapInfo/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation = L1_2
end
L0_1._on_bind = L1_1
return L0_1
