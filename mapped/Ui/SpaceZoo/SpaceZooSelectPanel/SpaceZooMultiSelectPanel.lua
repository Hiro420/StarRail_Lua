local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooToggleListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooToggleListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooSelectBtnTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooSelectBtnTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooMultiSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooBagSlotsExcelTable
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.SpaceZooSlotTagsExcelTable
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._ui_name = A3_2
  L4_2 = {}
  A0_2._all_cats = L4_2
  L4_2 = {}
  A0_2._select_cats = L4_2
  L4_2 = tonumber
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.get_sort_type_from_cache
  L6_2 = A0_2._ui_name
  L7_2 = SpaceZooSortType
  L7_2 = L7_2.Rarity
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._sort_type = L4_2
  A0_2._sort_order_is_ascend = false
  L4_2 = {}
  A0_2._tab_items = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.SpaceZooChannelType
  L4_2 = L4_2.None
  A0_2._select_channel = L4_2
  L4_2 = {}
  A0_2._channel_feature_ids = L4_2
  A0_2._tab_init_index = 1
  A0_2._select_feature_id = nil
  A0_2._is_bag = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left_bumper
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right_bumper
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select
  L2_2 = L1_2
  L1_2 = L1_2.register_navi_target
  L3_2 = A0_2._get_select_list_navi_target
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_all_cats
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_channel_feature_ids
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tog_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sort_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_text
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._init_all_cats
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_text
  L2_2(L3_2)
  if A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._sort_cats
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
  end
end
L0_1.refresh = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._sort_finish_callback = A1_2
  A0_2._sort_finish_callback_handler = A2_2
end
L0_1.register_sort_finish_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_panel_select_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select
  L4_2 = L3_2
  L3_2 = L3_2.register_select_checker
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_panel_select_checker = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._cat_filter = A1_2
  A0_2._cat_filter_self = A2_2
end
L0_1.register_cat_filter = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select
  L4_2 = L3_2
  L3_2 = L3_2.register_disable_cat_checker
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.register_disable_cat_checker = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select
  L3_2 = L2_2
  L2_2 = L2_2.on_select_cat_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.on_select_cat_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._select_cats = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select
  L3_2 = L2_2
  L2_2 = L2_2.set_select_cats
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select_cats = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_cat_data
  return L1_2(L2_2)
end
L0_1.get_first_cat_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select
  L3_2 = L2_2
  L2_2 = L2_2.set_focus_when_select
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_focus_when_select = L4_1
function L4_1(A0_2, A1_2)
  A0_2._is_bag = A1_2
end
L0_1.set_owner_type = L4_1
function L4_1(A0_2, A1_2)
  A0_2._use_async = A1_2
end
L0_1._set_use_async = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.node_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_items
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._tab_init_index
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L2_1.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L2_2.Channel
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.SpaceZooChannelType
    L4_2 = L4_2.None
    if L3_2 ~= L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.SpaceZooSelectBtnTabItem
      L6_2 = G
      L6_2 = L6_2.SpaceZooSelectBtnTabItemBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L3_2.button_prefab_index = 0
      L4_2 = A0_2._tab_control
      L5_2 = L4_2
      L4_2 = L4_2.add_item
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.setup_view
      L6_2 = L2_2.CatteryID
      L4_2(L5_2, L6_2)
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._tab_items
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._init_tab_items = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SpaceZooToggleListPanel
  L4_2 = G
  L4_2 = L4_2.SpaceZooToggleListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._tog_panel = L1_2
  L1_2 = A0_2._tog_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tog_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tog_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_btn_tog
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tog_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_navi_target
  L3_2 = A0_2._get_toggle_list_navi_target
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tog_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_checker
  L3_2 = A0_2._is_feature_id_select
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_tog_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = SpaceZooSortType
  L2_2 = L2_2.Default
  L3_2 = SpaceZooSortType
  L3_2 = L3_2.Rarity
  L4_2 = SpaceZooSortType
  L4_2 = L4_2.Time
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  A0_2._cur_sort_type_list = L1_2
  L1_2 = {}
  A0_2._sort_type_name_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._cur_sort_type_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._sort_type_name_table
    L8_2 = SpaceZooSortTypeTextID
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._cur_sort_type_list
  L4_2 = A0_2._sort_type_name_table
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_panel
  L3_2 = tonumber
  L4_2 = A0_2._sort_type
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._sort_order_is_ascend
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_order
  L2_2 = L1_2
  L1_2 = L1_2.bind_sort_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_order
  L5_2 = A0_2._on_sort_type_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_sort_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.SpaceZooData
  L2_2 = L1_2.Cats
  L2_2 = L2_2.Count
  L3_2 = L1_2.Cats
  L3_2 = L3_2.Count
  L4_2 = L1_2.MaxCatCount
  if L3_2 >= L4_2 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"#EB4D3D\">%s</color>"
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_current_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2.MaxCatCount
  L3_2(L4_2, L5_2)
end
L0_1._init_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._channel_feature_ids
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooChannelType
  L2_2 = L2_2.None
  L3_2 = {}
  L1_2[L2_2] = L3_2
  L1_2 = L3_1.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = A0_2._channel_feature_ids
    L4_2 = L2_2.Channel
    L3_2 = L3_2[L4_2]
    if L3_2 == nil then
      L3_2 = A0_2._channel_feature_ids
      L4_2 = L2_2.Channel
      L5_2 = {}
      L3_2[L4_2] = L5_2
    end
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._channel_feature_ids
    L5_2 = L2_2.Channel
    L4_2 = L4_2[L5_2]
    L5_2 = L2_2.FeatureID
    L3_2(L4_2, L5_2)
  end
end
L0_1._init_channel_feature_ids = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._all_cats = L1_2
  L1_2 = L1_1.SpaceZooData
  L1_2 = L1_2.Cats
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._is_cat_show
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._all_cats
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._check_select_cats
  L2_2(L3_2)
end
L0_1._init_all_cats = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._select_cats
  L2_2 = #L1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = false
    L7_2 = 1
    L8_2 = A0_2._all_cats
    L8_2 = #L8_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L1_2[L5_2]
      L12_2 = A0_2._all_cats
      L12_2 = L12_2[L10_2]
      if L11_2 == L12_2 then
        L6_2 = true
        return
      end
    end
    if not L6_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = A0_2._select_cats
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select
  L3_2 = L2_2
  L2_2 = L2_2.set_select_cats
  L4_2 = A0_2._select_cats
  L2_2(L3_2, L4_2)
end
L0_1._check_select_cats = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._is_bag
  if L1_2 then
    L1_2 = {}
    A0_2._select_cats = L1_2
  end
  L1_2 = A0_2._select_channel
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooChannelType
  L2_2 = L2_2.None
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._select_feature_id
    if L1_2 ~= nil then
      goto lbl_19
    end
  end
  L1_2 = A0_2._all_cats
  do return L1_2 end
  ::lbl_19::
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._all_cats
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._all_cats
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.Features
    L8_2 = L7_2
    L7_2 = L7_2.ContainsValue
    L9_2 = A0_2._select_feature_id
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = next
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L1_2 = A0_2._select_cats
    return L1_2
  end
  L2_2 = pairs
  L3_2 = A0_2._select_cats
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L7_2 = false
      L8_2 = 1
      L9_2 = #L1_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L6_2.UniqueID
        L13_2 = L1_2[L11_2]
        L13_2 = L13_2.UniqueID
        if L12_2 == L13_2 then
          L7_2 = true
          break
        end
      end
      if not L7_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L0_1._init_display_cats = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select
  L2_2 = L1_2
  L1_2 = L1_2.sort_cats
  L4_2 = A0_2
  L3_2 = A0_2._init_display_cats
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._sort_type
  L5_2 = A0_2._sort_order_is_ascend
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._sort_finish_callback
  L3_2 = A0_2._sort_finish_callback_handler
  L1_2(L2_2, L3_2)
end
L0_1._sort_cats = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cat_filter
  if L2_2 then
    L2_2 = A0_2._cat_filter
    L3_2 = A0_2._cat_filter_self
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = true
  return L2_2
end
L0_1._is_cat_show = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._tab_items
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_cattery_id
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooBagSlotsExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Channel
  A0_2._select_channel = L3_2
  A0_2._select_feature_id = nil
  L3_2 = A0_2._tog_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._select_channel
  L6_2 = A0_2._channel_feature_ids
  L7_2 = A0_2._select_channel
  L6_2 = L6_2[L7_2]
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._sort_cats
  L3_2(L4_2)
end
L0_1._on_tab_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._sort_type = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.save_sort_type_to_cache
  L3_2 = A0_2._ui_name
  L4_2 = A0_2._sort_type
  L5_2 = SpaceZooSortType
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._sort_cats
  L2_2(L3_2)
end
L0_1._on_sort_type_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._sort_order_is_ascend = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort_cats
  L2_2(L3_2)
end
L0_1._on_btn_order = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._select_feature_id
  L2_2 = L2_2 == A1_2
  return L2_2
end
L0_1._is_feature_id_select = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_feature_id_select
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    A0_2._select_feature_id = nil
  else
    A0_2._select_feature_id = A1_2
  end
  L2_2 = A0_2._tog_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._sort_cats
  L2_2(L3_2)
end
L0_1._on_btn_tog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_select
    L2_2 = L1_2
    L1_2 = L1_2.reset_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_select
    L2_2 = L1_2
    L1_2 = L1_2.reset_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tog_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_btn
  return L1_2(L2_2)
end
L0_1._get_select_list_navi_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1._get_toggle_list_navi_target = L4_1
return L0_1
