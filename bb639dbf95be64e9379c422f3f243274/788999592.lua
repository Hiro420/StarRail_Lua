local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureArrowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureArrowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureOperationPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureOperationPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaWaterMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphWaterMarkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochurePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/TravelBrochure/TravelBrochureMainPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/FrontBg/Frame/TBBtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/Root/InvitationPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_intro = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/Root/MainInfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_main = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/Root/CGPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_final = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/FrontBg/StickerTabPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_paster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/FrontBg/StickerTabPanel/BtnStick/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_paster_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/FrontBg/StickerTabPanel/BtnStick"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_paster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/FrontBg/Frame/ArrowPanel/ArrowLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_last = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/FrontBg/Frame/ArrowPanel/ArrowRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureArrowPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureArrowPanelBinder
  L5_2 = "Root/Contents/FrontBg/Frame/ArrowPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_arrow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureOperationPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureOperationPanelBinder
  L5_2 = "Root/Contents/FrontBg/StickerTabPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_operation = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TravelBrochureDirectoryItemPanel
  L4_2 = G
  L4_2 = L4_2.TravelBrochureDirectoryItemPanelBinder
  L5_2 = "Root/Contents/Root/Effect/ChapterInfoCover"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_in_directory = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/BtnClose"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = "Root/Contents/FrontBg/Frame/TBBtnBack"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_find
  L6_2 = "Root/Contents/FrontBg/Frame/ArrowPanel"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._safe_find
  L7_2 = "Root/PageInfo"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  A0_2.nodes_not_share = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoInControlTip
  L4_2 = "Root/Contents/FrontBg/Frame/TBBtnBack/TextPanel/KeyMapInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.incontrol_tip_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GachaWaterMarkPanel
  L4_2 = G
  L4_2 = L4_2.PhotoGraphWaterMarkPanelBinder
  L5_2 = "Root/WaterMark"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.water_mark_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
