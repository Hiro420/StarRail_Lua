local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtOptionAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtOptionAreaPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueRandomEvtOptionAreaPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueAeonOptionPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueOptionTalkPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.scroll_view_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_view = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoLoopListViewMoveHelper
  L4_2 = "ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.llv_helper = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "ButtomPanel/BtnReturn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.goto_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ButtomPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.btn_panel_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueRandomEvtOptionAreaPanel
  L4_2 = G
  L4_2 = L4_2.RogueRandomEvtOptionAreaPanelBinder
  L5_2 = "OptionPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.random_evt_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ButtomPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.aeon_talk_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueAeonOptionPanel
  L4_2 = G
  L4_2 = L4_2.RogueAeonOptionPanelBinder
  L5_2 = "ButtomPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.aeon_talk_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "ButtomPanel/SepLine"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.seperate_line = L1_2
end
L0_1._on_bind = L1_1
return L0_1
