local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterElitePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterElitePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterDamageTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterDamageTypePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MonsterInfoPanel/NamePanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_monster_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StoryPanel/ScrollViewMask/ScrollView/Viewport/Content/StoryDesc"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MonsterInfoPanel/EncounterPanel/NumText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_kill_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.StaticListView
  L4_2 = "MonsterInfoPanel/ResistNode/ResistList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.resist_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MonsterInfoPanel/ResistNode"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_resist_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MonsterInfoPanel/WeakPointPanel/EmptyTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "MonsterInfoPanel/WeakPointPanel/WeakPointList"
  L6_2 = G
  L6_2 = L6_2.MonsterDamageTypePanel
  L7_2 = G
  L7_2 = L7_2.MonsterDamageTypePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.weak_point_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterElitePanel
  L4_2 = G
  L4_2 = L4_2.MonsterElitePanelBinder
  L5_2 = "MonsterInfoPanel/NamePanel/EliteType"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.elite_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
