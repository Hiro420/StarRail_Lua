local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPContainerPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideMonsterDetailTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Battle/AetherDivide/MonsterDetailPanelForAD.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleStatusPanel
  L4_2 = G
  L4_2 = L4_2.BattleAvatarStatusPanelBinder
  L5_2 = "NormalStatusList/Viewport/Content/BuffList"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.status_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "NormalStatusList/Viewport/Content/PropertyList"
  L6_2 = "Ui.Battle.TeamInfo.BattleResistItemPanel"
  L7_2 = "Ui.Battle.TeamInfo.BattleResistItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.resist_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "MonsterInfo/UltraSkillPointList"
  L6_2 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideDotPanel"
  L7_2 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideDotPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.sp_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MonsterInfo/TextPanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "MonsterInfo/TextPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "MonsterInfo/UltraSkillPanel/AttributeType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_sprte_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAetherDivideSPContainerPanel
  L4_2 = G
  L4_2 = L4_2.BattleAetherDivideSPContainerPanelBinder
  L5_2 = "MonsterInfo/UltraSkillPanel/UltraSPInfoForAd/OutlineProgress"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.sp_container_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffCounter/BuffList/BuffNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_buff_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "BuffCounter/BuffList/DeBuffNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_debuff_num = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.HPBar
  L4_2 = "MonsterInfo/HpDetailPanel/HPInfo/HPPanel/HPBar"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.hp_bar = L1_2
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
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "LeftBorder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_round = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "LeftNormal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RightBorder"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_round = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find_in_btn
  L3_2 = "RightNormal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_right_normal = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
