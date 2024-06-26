local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PreviewMonsterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._monster_level = nil
  L1_2 = {}
  A0_2._monster_btns = L1_2
  A0_2._allow_special_navi = false
  A0_2._hiden_count = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monsters
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monsters
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monsters
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    return L1_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monsters
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_item_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monsters
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_monster_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A2_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._setup_level
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._setup_level_by_display_id
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_array
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_monster_datas
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._monster_data_list = L6_2
  L6_2 = A0_2._monster_data_list
  A0_2._visible_monster_datas = L6_2
  A0_2._hiden_count = 0
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_monsters
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L8_2 = A0_2._monster_data_list
  L8_2 = #L8_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_monsters
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = G
  L3_2 = L3_2.RaidUtils
  L3_2 = L3_2.get_monsters_data
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_level_by_display_id
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = {}
  A0_2._monster_data_list = L4_2
  L4_2 = {}
  A0_2._visible_monster_datas = L4_2
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = A0_2
    L9_2 = A0_2._get_monster_levels
    L11_2 = L8_2.ID
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.MonsterData
    L11_2 = L8_2.ID
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L8_2.IsHide
    if L11_2 then
      A0_2._hiden_count = L7_2
    else
      L11_2 = A0_2._visible_monster_datas
      L12_2 = A0_2._visible_monster_datas
      L12_2 = #L12_2
      L12_2 = L12_2 + 1
      L11_2[L12_2] = L10_2
    end
    L11_2 = A0_2._monster_data_list
    L12_2 = A0_2._monster_data_list
    L12_2 = #L12_2
    L12_2 = L12_2 + 1
    L11_2[L12_2] = L10_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_monsters
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._monster_data_list
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_monsters
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L0_1.setup_view_by_raid = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._monster_data_provider = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.get_preview_monster_data_list
  L2_2 = L2_2(L3_2)
  A0_2._monster_data_list = L2_2
  L2_2 = A0_2._monster_data_list
  A0_2._visible_monster_datas = L2_2
  A0_2._hiden_count = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_monsters
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._monster_data_list
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_monsters
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1.setup_view_by_provider = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2._get_monster_levels
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.MonsterData
    L10_2 = L7_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = #L2_2
    L10_2 = L10_2 + 1
    L2_2[L10_2] = L9_2
  end
  return L2_2
end
L0_1._get_monster_datas = L1_1
function L1_1(A0_2, A1_2)
  A0_2._trigger_special_navi_input = A1_2
  A0_2._allow_special_navi = true
end
L0_1.open_special_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetHorizontalScrollPercent
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.reset_scroll_view_position = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.StageExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.Level
    A0_2._monster_level = L3_2
  else
    A0_2._monster_level = nil
  end
end
L0_1._setup_level = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L3_2 = G
  L3_2 = L3_2.RaidUtils
  L3_2 = L3_2.get_show_monster_level
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._monster_level = L3_2
end
L0_1._setup_level_by_display_id = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
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
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._monster_btns
    L8_2 = L4_2
    L7_2 = L4_2.get_root_btn
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L5_2 = A2_2 + 1
  L6_2 = A0_2._monster_data_list
  L6_2 = L6_2[L5_2]
  L7_2 = L6_2.Level
  L8_2 = L6_2.TemplateRow
  L9_2 = L8_2.Rank
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.MonsterRank
  L10_2 = L10_2.BigBoss
  L9_2 = L9_2 == L10_2
  L11_2 = L4_2
  L10_2 = L4_2.setup_view
  L12_2 = L6_2.MonsterID
  L13_2 = L7_2
  L14_2 = L9_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = L4_2
  L10_2 = L4_2.set_hide_state
  L12_2 = A0_2._hiden_count
  L12_2 = L5_2 <= L12_2
  L10_2(L11_2, L12_2)
  L11_2 = L4_2
  L10_2 = L4_2.bind_click
  L12_2 = A0_2
  L13_2 = A0_2._on_click_monster_panel
  L14_2 = L6_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = A0_2._move_cbk
  if L10_2 then
    L10_2 = A0_2._move_owner
    if L10_2 then
      L10_2 = A0_2._move_cbk
      L11_2 = A0_2._move_owner
      L10_2(L11_2)
    end
  end
  return L3_2
end
L0_1._on_monster_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._monster_level
  if L2_2 ~= nil then
    L2_2 = A0_2._monster_level
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.Level
    return L3_2
  end
end
L0_1._get_monster_levels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_monsters
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._allow_special_navi
  if L2_2 == false then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_in_special_zoom
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = A0_2._trigger_special_navi_input
        if not L2_2 then
          L2_2 = CS
          L2_2 = L2_2.InControl
          L2_2 = L2_2.InputControlType
          L2_2 = L2_2.RightStickButton
          L2_2 = #L2_2
        end
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.get_first_selected_object
          L2_2 = L2_2(L3_2)
          L4_2 = A0_2
          L3_2 = A0_2.set_special_zoom_navigation_target
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_monsters
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2.UserObjectData
  L5_2 = L5_2._binder
  L5_2 = L5_2.button
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = A0_2._monster_btns
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  return L1_2
end
L0_1.get_all_monster_btns = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._move_cbk = A1_2
  A0_2._move_owner = A2_2
end
L0_1.register_on_move_btn_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.show_monster_tips_dialog
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_monster_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._monster_data_provider
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = "Ui.Monster.MonsterTips.SimpleListMonsterDataProvider"
    L2_2 = L2_2(L3_2)
    A0_2._monster_data_provider = L2_2
    L2_2 = A0_2._monster_data_provider
    L3_2 = L2_2
    L2_2 = L2_2.init
    L4_2 = A0_2._visible_monster_datas
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Monster.MonsterTipsDialog"
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._monster_data_provider
  L4_2 = L3_2
  L3_2 = L3_2.get_index_by_monster_data
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.init_by_provider
  L6_2 = A0_2._monster_data_provider
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L2_2
  L4_2 = L2_2.async_show
  L4_2(L5_2)
end
L0_1.show_monster_tips_dialog = L1_1
return L0_1
