local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattleCollege.BattleCollegeLevelAimItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattleCollege.BattleCollegeLevelAimItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeAimListTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BattleCollege_InBattleAim"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BattleCollegeModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_normal_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_selected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = G
  L5_2 = L5_2.BattleCollegeLevelAimItemPanel
  L6_2 = G
  L6_2 = L6_2.BattleCollegeLevelAimItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.aim_list = L1_2
  L1_2 = A0_2.aim_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_aim_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_aim_data
  L1_2(L2_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.data = L1_2
  L1_2 = L2_1.CurrentBattleCollegeData
  A0_2.battle_college_data = L1_2
  L1_2 = A0_2.battle_college_data
  L1_2 = L1_2.AimDataList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.data
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_aim_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.aim_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.data
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
return L0_1
