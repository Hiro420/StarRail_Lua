local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityMonsterPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityMonsterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_option_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._try_show_monster_tips_dialog
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._monster_lists
  L3_2 = A0_2._difficulty_level
  L2_2 = L2_2[L3_2]
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.MonsterData
    L8_2 = L2_2[L6_2]
    L9_2 = A0_2._stage_rows
    L10_2 = A0_2._difficulty_level
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.Level
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Monster.MonsterTipsDialog"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._try_show_monster_tips_dialog = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._monster_lists = A1_2
  A0_2._stage_rows = A2_2
  A0_2._difficulty_level = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.monster_icon_list
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._monster_lists
  L7_2 = A0_2._difficulty_level
  L6_2 = L6_2[L7_2]
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.monster_icon_list
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L0_1.refresh_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_icon_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._monster_lists
  L8_2 = A0_2._difficulty_level
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._stage_rows
  L9_2 = A0_2._difficulty_level
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.Level
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_fellow_monsters
  L7_2 = A0_2._monster_lists
  L8_2 = A0_2._difficulty_level
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_monster_item_change = L1_1
return L0_1
