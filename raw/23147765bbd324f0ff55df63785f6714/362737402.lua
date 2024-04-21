local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueTalkBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueTalkBgPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueOptionTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueOptionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.Components.RogueTalkLeftGraphPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAeonTalkPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Rogue/RogueRandomTalkPage.prefab"
  return L0_2
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
  L4_2 = "Root/Contents/FullScreenBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fullscreen_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueTalkLeftGraphPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalkLeftGraphPanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.left_graph_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.RogueOptionTalkPanel
  L4_2 = G
  L4_2 = L4_2.RogueOptionTalkPanelBinder
  L5_2 = "Root/Contents/RightPanel"
  L6_2 = nil
  L7_2 = A0_2.fullscreen_btn
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_talk = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_top_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L5_2 = "Root/TopBarArea"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_top_bar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnBufflist"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.game_mode_title = L1_2
end
L0_1._on_bind = L1_1
return L0_1
