local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipsDetailTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipsDetailTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMonsterSkillTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMonsterSkillTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterTipsDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Monster/MonsterDetailTipsDialog.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L4_2 = "Root/MonsterPanel/RightPanel/TabRow/KeyMapInfo_Left/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_pre = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/MonsterPanel/RightPanel/TabRow/KeyMapInfo_Right/GamepadBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/LeftPanel/RewardList/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.SuperScrollView
  L3_2 = L3_2.LoopListView2
  L4_2 = "Root/LeftPanel/MonsterListPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.monster_floor_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Root/LeftPanel/MonsterListPanel/ScrollViewMask/ScrollView"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftPanel/RewardList"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MonsterPanel/RightPanel/TabRow/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MonsterPanel/RightPanel/Content/MonsterDetailPanelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/MonsterPanel/RightPanel/Content/MonsterSkillPanelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_tab_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/LeftPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_left_panel = L1_2
end
L0_1._on_bind = L1_1
return L0_1
