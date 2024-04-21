local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterRank
L1_1 = L1_1.Elite
L1_1 = #L1_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._monster_data_list = A1_2
  L2_2 = {}
  A0_2._monster_ids = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._monster_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._monster_ids
    L8_2 = A0_2._monster_ids
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = L6_2.MonsterID
    L7_2[L8_2] = L9_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.UserObjectData
  L3_2 = L1_2
  L2_2 = L1_2.show_monster_tips_dialog
  L2_2(L3_2)
end
L0_1.show_monster_tips_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._monster_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.CommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._monster_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.MonsterID
  L7_2 = L5_2.Level
  L8_2 = L5_2.TemplateRow
  L8_2 = L8_2.Rank
  L8_2 = #L8_2
  L9_2 = L1_1
  L8_2 = L8_2 >= L9_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_view
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L4_2
  L9_2 = L4_2.setup_fellow_monsters
  L11_2 = A0_2._monster_ids
  L9_2(L10_2, L11_2)
  L10_2 = L4_2
  L9_2 = L4_2.rebuild_info_layout
  L9_2(L10_2)
  return L3_2
end
L0_1._on_monster_item_changed = L2_1
return L0_1
