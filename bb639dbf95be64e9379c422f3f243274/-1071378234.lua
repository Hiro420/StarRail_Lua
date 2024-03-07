local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueSelectDetailPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_elite_monster_button
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_first_normal_monster_button
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L2_2 = L1_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_elite
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_elite_monster_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_normal_monster_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gamepad_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_zoom
  L4_2 = A0_2._on_monster_in_control_btn
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._elite_monster_count = 0
  A0_2._normal_monster_count = 0
  A0_2._fellow_monster_datas = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_area_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_monsters
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_monster_btns_navi
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._recommend_level
  return L1_2
end
L1_1.get_recommend_level = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.RogueAreaRow
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_area
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.AreaNameID
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_diff
  L5_2 = A1_2.AreaProgressID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_diff
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_diff
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetRomanNumberTextID
    L7_2 = L2_2.Difficulty
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.IsRogueEndlessArea
  L6_2 = A1_2.AreaID
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.RogueEndlessUtils
    L4_2 = L4_2.GetRecommendLevel
    L5_2 = A1_2.AreaID
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_42
    end
  end
  L4_2 = L2_2.RecommendLevel
  ::lbl_42::
  A0_2._recommend_level = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._recommend_level
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.weak_point_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = L2_2.RecommendNature
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._setup_area_tip = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RogueModule
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ProgressInfo
  L3_2 = L3_2.ProgressAreaDic
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.ContainsKey
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = L3_2[A1_2]
      L4_2 = L4_2.Count
      if 1 < L4_2 then
        L4_2 = true
        return L4_2
      end
    end
  end
  L4_2 = false
  return L4_2
end
L1_1._show_diff = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._init_monster_data_table
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._elite_monster_count
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_elite_monster
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_elite
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L2_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_elite
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._normal_monster_count
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_monster
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = 0 < L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_view_normal
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = L3_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_view_normal
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
end
L1_1._setup_monsters = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._elite_monster_count = 0
  A0_2._normal_monster_count = 0
  L2_2 = {}
  A0_2._fellow_monster_datas = L2_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.IsRogueEndlessArea
  L4_2 = A1_2.AreaID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RogueEndlessUtils
    L2_2 = L2_2.get_endless_common_area_monsters
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.RogueEndlessGetAreaData
    L5_2 = A1_2.AreaID
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2, L5_2)
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L4_2 = #L2_2
    A0_2._elite_monster_count = L4_2
    L4_2 = #L3_2
    A0_2._normal_monster_count = L4_2
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._fellow_monster_datas
      L11_2 = A0_2._fellow_monster_datas
      L11_2 = #L11_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
    L4_2 = pairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._fellow_monster_datas
      L11_2 = A0_2._fellow_monster_datas
      L11_2 = #L11_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
    return
  end
  L2_2 = A1_2.RogueAreaRow
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.DisplayMonsterMap
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L4_2 = L4_2.Key
    L5_2 = L3_2.Current
    L5_2 = L5_2.Value
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.MonsterData
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._fellow_monster_datas
    L9_2 = A0_2._fellow_monster_datas
    L9_2 = #L9_2
    L9_2 = L9_2 + 1
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._elite_monster_count
    L7_2 = L7_2 + 1
    A0_2._elite_monster_count = L7_2
  end
  L4_2 = L2_2.DisplayMonsterMap2
  L5_2 = L4_2
  L4_2 = L4_2.GetEnumerator
  L4_2 = L4_2(L5_2)
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = L4_2.Current
    L5_2 = L5_2.Key
    L6_2 = L4_2.Current
    L6_2 = L6_2.Value
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.MonsterData
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._fellow_monster_datas
    L10_2 = A0_2._fellow_monster_datas
    L10_2 = #L10_2
    L10_2 = L10_2 + 1
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._normal_monster_count
    L8_2 = L8_2 + 1
    A0_2._normal_monster_count = L8_2
  end
end
L1_1._init_monster_data_table = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_monster_item_changed
  L5_2 = A1_2
  L6_2 = A2_2 + 0
  return L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_elite_monster_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._on_monster_item_changed
  L5_2 = A1_2
  L6_2 = A0_2._elite_monster_count
  L6_2 = A2_2 + L6_2
  return L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_normal_monster_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L5_2 = A0_2._fellow_monster_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.MonsterID
  L7_2 = L5_2.Level
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L4_2
  L8_2 = L4_2.bind_click
  L10_2 = A0_2
  L11_2 = A0_2._on_monster_click
  L12_2 = A2_2 + 1
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L4_2
  L8_2 = L4_2.rebuild_info_layout
  L8_2(L9_2)
  return L3_2
end
L1_1._on_monster_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Monster.MonsterTipsDialog"
  L5_2 = A0_2._fellow_monster_datas
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_monster_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Monster.MonsterTipsDialog"
  L3_2 = A0_2._fellow_monster_datas
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_monster_in_control_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_gamepad_btns
  L2_2(L3_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_switch_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_switch_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_switch_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L1_1._refresh_gamepad_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._elite_monster_count
  if L1_2 ~= 0 then
    L1_2 = A0_2._normal_monster_count
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2
  L1_2 = A0_2._get_shown_item_btns
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_elite
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_shown_item_btns
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_view_normal
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.setup_navigation_between_two_line
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._setup_monster_btns_navi = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = A1_2.ItemList
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.UserObjectData
    if L9_2 ~= nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L13_2 = L9_2
      L12_2 = L9_2.get_navi_btn
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  return L2_2
end
L1_1._get_shown_item_btns = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.get_navi_btn
      return L4_2(L5_2)
    end
  end
  L3_2 = nil
  return L3_2
end
L1_1._get_first_monster_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_monster_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_elite
  return L1_2(L2_2, L3_2)
end
L1_1._get_first_elite_monster_button = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_first_monster_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_normal
  return L1_2(L2_2, L3_2)
end
L1_1._get_first_normal_monster_button = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._normal_monster_count
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_shown_item_btns
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_view_normal
    return L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._elite_monster_count
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_shown_item_btns
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_view_elite
    return L1_2(L2_2, L3_2)
  end
  L1_2 = nil
  return L1_2
end
L1_1.get_navigation_up_monster_btns = L2_1
return L1_1
