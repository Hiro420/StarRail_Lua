local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureChapterChoicePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureChapterChoicePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureChapterRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureChapterRewardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterContainerPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureMainChapterPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/TravelBrochure/Widget/MainInfoPanel.prefab"
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
  L4_2 = "Content/Root/Content/Title/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureChapterChoicePanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureChapterChoicePanelBinder
  L5_2 = "Content/Root/Content/ContentPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_choice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureChapterRewardPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureChapterRewardPanelBinder
  L5_2 = "Content/Root/Content"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochurePasterContainerPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochurePasterContainerPanelBinder
  L5_2 = "Content/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Root/BG"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Root/PasterPanel/FrontEffect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_front = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/Root/Content/BtnShare"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/Root/Content/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_clear = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Content/Root/Content"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_share_hide = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Content/Root/Content/BtnShare/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_tip_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Content/Root/Content/BtnClear/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_tip_clear = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Content/Root/Content/BtnShare"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_btn_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlButton
  L4_2 = "Content/Root/Content/BtnClear"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_btn_clear = L1_2
end
L0_1._on_bind = L1_1
return L0_1
