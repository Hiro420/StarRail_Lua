local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterSkillIconRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterSkillIconRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterSkillListPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.MonsterExcelTable
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MonsterSkillListPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.SkillList
  L4_2 = {}
  A0_2._skill_table = L4_2
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._skill_table
    L10_2 = L3_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_skill_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeInitGridView
  L6_2 = A0_2._skill_table
  L6_2 = #L6_2
  L7_2 = A0_2._on_buff_item_change
  L8_2 = nil
  L9_2 = nil
  L10_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skill_list
  L1_2(L2_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonsterSkillIconRowPanel
    L8_2 = G
    L8_2 = L8_2.MonsterSkillIconRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._skill_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_buff_item_change = L2_1
return L1_1
