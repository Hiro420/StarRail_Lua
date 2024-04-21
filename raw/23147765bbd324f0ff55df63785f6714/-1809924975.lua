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
L1_1 = "Ui.Rogue.Talk.Components.RogueRandomEvtPerformancePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.Components.RogueTalkLeftGraphPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRandomEvtPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/RogueRandomTalkPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L3_2 = L3_2.RogueTalkBgPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalkBgPanelBinder
  L5_2 = "Root/Contents/RandomEventPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_event_bg = L1_2
  L1_2 = A0_2.panel_event_bg
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/LeftPanel_1"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/FullScreenBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RogueOptionTalkPanel
  L5_2 = G
  L5_2 = L5_2.RogueOptionTalkPanelBinder
  L6_2 = "Root/Contents/RightPanel"
  L7_2 = false
  L8_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.panel_talk = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animator
  L5_2 = "Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.anim_root = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanel
  L5_2 = G
  L5_2 = L5_2.TopBarAreaPanelBinder
  L6_2 = "Root/TopBarArea"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.panel_top_bar = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = G
  L4_2 = L4_2.RogueRandomEvtPerformancePanel
  L5_2 = G
  L5_2 = L5_2.RogueRandomEvtPerformancePanelBinder
  L6_2 = "Root/Contents/EventScroll"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.random_panel = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.root_animation = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Button
  L5_2 = "Root/BtnClose"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.exit_btn = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.RPGAnimationEvent
  L5_2 = "Root"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.anim_event = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L5_2 = "Root/Contents/PageInfo/Title/TitleText"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.game_mode_title = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.PrefabLoadMeta
  L5_2 = "Root/Contents/NousValue/NousValuePanelRoot"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.node_nous_value_slot = L2_2
end
L0_1._on_bind = L1_1
return L0_1
