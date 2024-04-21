local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroChapterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroChapterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureArrowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureArrowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureFirstPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/TravelBrochure/TravelBrochureGuildPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/InvitationPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_invitation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/InvitationPanel/MainPageInvitationPanel/Root/Content/Content/Root/BtnToIntroduction"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_invitation_off = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/IntroductionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_introduction = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/IntroductionPanel/IntroductionPanel/Content/Root/Content/BtnToDirectory"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_introduction_off = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureIntroChapterPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureIntroChapterPanelBinder
  L5_2 = "Root/Contents/IntroductionPanel/IntroductionPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/Contents/IntroductionPanel/IntroductionPanel/Content/Root/Content/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureArrowPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureArrowPanelBinder
  L5_2 = "Root/Contents/IntroductionPanel/FrontBg/Frame/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/IntroductionPanel/FrontBg/Frame/ArrowPanel/ArrowLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_last = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/IntroductionPanel/FrontBg/Frame/ArrowPanel/ArrowRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
end
L0_1._on_bind = L1_1
return L0_1
