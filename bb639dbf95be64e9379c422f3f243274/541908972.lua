local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueAeonDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Aeon.Panels.RogueAeonDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectAeonDetailPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/RoguePathEchoDetailPage.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_back = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/ArrowPanel/BtnArrowLeft"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_arrow_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/ArrowPanel/BtnArrowRight"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_arrow_right = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/Contents"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animation_switch = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueAeonDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueAeonDetailPanelBinder
  L5_2 = "Root/Contents/RoguePathEchoDetailInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueAeonDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueAeonDetailPanelBinder
  L5_2 = "Root/Contents/RoguePathEchoDetailInfo_1"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_detail_2 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueNousPathEchoBanPanel
  L4_2 = G
  L4_2 = L4_2.RogueNousPathEchoBanPanelBinder
  L5_2 = "Root/Contents/RoguePathEchoBanPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_banned_aeons = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/RoguePathEchoBanPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_ban = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/DialogBtnPanel/BtnConfirm"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_confirm = L1_2
end
L0_1._on_bind = L1_1
return L0_1
