local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterEliteMarkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterEliteMarkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPoint"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleWeakPointBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarStatusPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterTipsDetailTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Monster/WidgetV2/MonsterDetailTipsPanel.prefab"
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
  L3_2 = L3_2.Text
  L4_2 = "MonsterInfo/TitlePanel/TextPanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MonsterInfo/TitlePanel/TextPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "NormalStatusList/Viewport/Content/StoryPanel/DescStory"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "MonsterInfo/UltraSkillPanelForAD/AttributeType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_aether_attribute = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MonsterInfo/TitlePanel/WeakPointInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_weak_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "MonsterInfo/UltraSkillPanelForAD"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_aether_attribute = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "MonsterInfo/TitlePanel/WeakPointInfo/WeakPointList"
  L6_2 = G
  L6_2 = L6_2.AvatarDialogWeakPoint
  L7_2 = G
  L7_2 = L7_2.BattleWeakPointBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.weak_point_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "NormalStatusList/Viewport/Content/PropertyList"
  L6_2 = "Ui.Battle.TeamInfo.BattleResistItemPanel"
  L7_2 = "Ui.Battle.TeamInfo.BattleResistItemPanelBinder"
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.resist_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleStatusPanel
  L4_2 = G
  L4_2 = L4_2.BattleAvatarStatusPanelBinder
  L5_2 = "NormalStatusList/Viewport/Content/BuffList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MonsterEliteMarkPanel
  L4_2 = G
  L4_2 = L4_2.MonsterEliteMarkPanelBinder
  L5_2 = "MonsterInfo/EliteType"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_elite_mark = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "TextPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_title = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
