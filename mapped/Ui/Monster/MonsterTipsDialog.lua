local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipsDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterFloorListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterFloorListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterTipsDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MonsterTipsDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._in_aether_divide_mode = false
  A0_2._is_save_by_click = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.init_by_provider
  L5_2 = G
  L5_2 = L5_2.new
  L6_2 = "Ui.Monster.MonsterTips.SimpleListMonsterDataProvider"
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._data = A1_2
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.get_stage_count
  L3_2 = L3_2(L4_2)
  A0_2._floor_count = L3_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 1
  end
  A0_2._default_index = L3_2
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.is_show_wave_index
  L3_2 = L3_2(L4_2)
  A0_2._is_show_wave_index = L3_2
end
L0_1.init_by_provider = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._in_aether_divide_mode = true
end
L0_1.set_use_aether_mode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pre
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_floor_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_floor_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._in_aether_divide_mode
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.update
    L4_2 = "IsInAetherMode"
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._click_default_monster_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._default_index
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._floor_count
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.monster_floor_list
    L8_2 = L7_2
    L7_2 = L7_2.GetShownItemByItemIndex
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2.UserObjectData
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.get_monster_count
      L8_2 = L8_2(L9_2)
      if L1_2 <= L8_2 then
        L10_2 = L7_2
        L9_2 = L7_2.click_monster_panel_by_idx
        L11_2 = L1_2
        L9_2 = L9_2(L10_2, L11_2)
        L2_2 = L9_2
        break
      else
        L1_2 = L1_2 - L8_2
      end
    else
      break
    end
  end
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect
    L4_2 = L3_2
    L3_2 = L3_2.ScrollToTransform
    L6_2 = L2_2
    L5_2 = L2_2.get_root_transform
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.click_item_by_uid
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._click_default_monster_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_tabitem
  L3_2 = G
  L3_2 = L3_2.MonsterTipsDetailTabItem
  L4_2 = G
  L4_2 = L4_2.MonsterTipsDetailTabItemBinder
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_detail
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._detail_tabitem = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_tabitem
  L3_2 = G
  L3_2 = L3_2.BattleMonsterSkillTabItem
  L4_2 = G
  L4_2 = L4_2.BattleMonsterSkillTabItemBinder
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_skill
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._skill_tabtiem = L1_2
  L1_2 = A0_2._skill_tabtiem
  L2_2 = L1_2
  L1_2 = L1_2.enable_gamepad_trigger_key_map_hint
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_tabs = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_async_bind_parent
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._tab_control
  L6_2 = L5_2
  L5_2 = L5_2.add_item
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1._create_tabitem = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_floor_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._floor_count
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_floor_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonsterExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_show_monster_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._detail_tabitem
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._cur_monster_level
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._skill_tabtiem
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_monster_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._is_show_buff
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._detail_tabitem
    L3_2 = L2_2
    L2_2 = L2_2.hide_buff_list
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.get_buff_data
  L4_2 = A1_2
  L5_2 = A0_2._cur_wave_index
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._cur_buff_list = L2_2
  L3_2 = A0_2._last_buff_list
  if L3_2 ~= nil then
    L3_2 = A0_2._last_buff_list
    L4_2 = A0_2._cur_buff_list
    if L3_2 == L4_2 then
      return
    end
  end
  L3_2 = A0_2._detail_tabitem
  L4_2 = L3_2
  L3_2 = L3_2.refresh_buff
  L5_2 = A0_2._cur_buff_list
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._cur_buff_list
  A0_2._last_buff_list = L3_2
end
L0_1._refresh_buff_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._drops = nil
  L2_2 = A0_2
  L1_2 = A0_2._is_show_drops
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._data
    L2_2 = L1_2
    L1_2 = L1_2.get_drops
    L1_2 = L1_2(L2_2)
    A0_2._drops = L1_2
  end
  L1_2 = A0_2._drops
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._drops
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._refresh_reward = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonsterFloorListPanel
    L8_2 = G
    L8_2 = L8_2.MonsterFloorListPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_monster_click_callback
    L7_2 = A0_2._on_monster_icon_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.show_wave_index
    L7_2 = A0_2._is_show_wave_index
    L5_2(L6_2, L7_2)
  end
  L5_2 = A2_2 + 1
  L7_2 = A0_2
  L6_2 = A0_2._is_show_boss_info
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.show_boss_info
    L8_2 = A0_2._data
    L9_2 = L8_2
    L8_2 = L8_2.get_boss_monster_data_by_stage_idx
    L10_2 = L5_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._data
  L9_2 = L8_2
  L8_2 = L8_2.get_monster_waves_by_stage_idx
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_monster_floor_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_item_click
    L9_2 = nil
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._drops
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count_display
  L8_2 = L5_2.ItemNum
  L8_2 = 0 < L8_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.ItemNum
  if L6_2 ~= 0 then
    L7_2 = L4_2
    L6_2 = L4_2.set_count
    L8_2 = L5_2.ItemNum
    L6_2(L7_2, L8_2)
  end
  return L3_2
end
L0_1._on_reward_change = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._cur_show_monster_id
  if L5_2 == A1_2 then
    L5_2 = A0_2._cur_wave_index
    if A3_2 == L5_2 then
      return
    end
  end
  L5_2 = A0_2._cur_selected_panel
  if L5_2 ~= nil then
    L5_2 = A0_2._cur_selected_panel
    L6_2 = L5_2
    L5_2 = L5_2.set_btn_selected
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  A0_2._cur_selected_panel = A4_2
  L5_2 = A0_2._cur_selected_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_btn_selected
  L7_2 = true
  L5_2(L6_2, L7_2)
  A0_2._cur_show_monster_id = A1_2
  L6_2 = A4_2
  L5_2 = A4_2.get_monster_level
  L5_2 = L5_2(L6_2)
  A0_2._cur_monster_level = L5_2
  A0_2._cur_wave_index = A3_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_monster_info
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_buff_list
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
end
L0_1._on_monster_icon_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemDetailDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.is_show_boss_info
  return L1_2(L2_2)
end
L0_1._is_show_boss_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.is_show_buff
  return L1_2(L2_2)
end
L0_1._is_show_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.is_show_drop
  return L1_2(L2_2)
end
L0_1._is_show_drops = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._drops
  if L2_2 ~= nil then
    L2_2 = A0_2._drops
    L2_2 = #L2_2
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = A0_2._config_ids
    if L2_2 == nil then
      L2_2 = {}
      A0_2._config_ids = L2_2
      L2_2 = ipairs
      L3_2 = A0_2._drops
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = A0_2._config_ids
        L8_2 = A0_2._config_ids
        L8_2 = #L8_2
        L8_2 = L8_2 + 1
        L9_2 = L6_2.ItemID
        L7_2[L8_2] = L9_2
      end
    end
    L2_2 = {}
    L3_2 = A0_2._config_ids
    L2_2.items = L3_2
    L2_2.init_index = 1
    L2_2.hide_lock = true
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1._on_in_control_action_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._is_navi_inited
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  A0_2._is_navi_inited = true
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_floor_list
  L3_2 = L3_2.ItemTotalCount
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.monster_floor_list
    L7_2 = L6_2
    L6_2 = L6_2.GetShownItemByItemIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      L9_2 = L7_2
      L8_2 = L7_2.add_navi_btns_to
      L10_2 = L1_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.setup_navigation
    L9_2 = L6_2
    L10_2 = NavigationType
    L10_2 = L10_2.Horizontal
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_multi_line_navigation
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._refresh_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_navigation
  L2_2(L3_2)
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A1_2
    L4_2 = A1_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._on_enter_zoom
    L4_2 = NavigationZoneType
    L4_2 = L4_2.Zone1
    L2_2(L3_2, L4_2)
  end
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_floor_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
