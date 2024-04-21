local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplacePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicReplaceTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicReplacePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TitleType_Slash"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RelicReplacePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._cur_selected_item = nil
  A0_2._cur_tab_index = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._avatar_data = A1_2
  if A2_2 == nil then
    A0_2._init_index = 1
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.enum_from_int_str
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RelicType
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._init_relic_type = L3_2
  else
    A0_2._init_relic_type = A2_2
    L3_2 = #A2_2
    A0_2._init_index = L3_2
  end
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_item_list
  L2_2.alpha = A1_2
end
L0_1.setup_zoom_1_canvas_alpha = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L0_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarDressRelicFinish
  L4_2 = A0_2._on_dress_or_takeoff_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarTakeOffRelicFinish
  L4_2 = A0_2._on_dress_or_takeoff_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_relic_sync
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_recommend_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filter_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.replace_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._init_relic_type
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_recommend_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._init_relic_type
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_recommend_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_refresh_callback
  L3_2 = A0_2._on_recommend_panel_refresh
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.replace_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_detail_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_toggle_compare_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.replace_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_recommend_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_toggle_recommend_panel
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_rarity_bg
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_compare_panel_show = false
  A0_2._can_auto_show_compare_papviewnel = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.replace_compare_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_sub_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_sort
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._init_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._is_descend = true
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.Rarity
  L1_2[1] = L2_2
  A0_2._current_sort_type_list = L1_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.gen_type_list
  L3_2 = "UIText_Relic_Rank_BasicRank"
  L4_2 = false
  L5_2 = 1
  L6_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.primary_sort_type
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2.all_sort_type
    L10_2 = G
    L10_2 = L10_2.InventoryUtils
    L10_2 = L10_2.gen_sort_type
    L11_2 = L3_2[L7_2]
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.Client
    L12_2 = L12_2.InventoryModule
    L12_2 = L12_2.GetSortTypeName
    L13_2 = L3_2[L7_2]
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.InventoryUtils
  L4_2 = L4_2.gen_type_list
  L5_2 = "UIText_Relic_Rank_PropertyRank"
  L6_2 = true
  L7_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RelicUtils
  L3_2 = L5_2.secondary_sort_type
  L5_2 = 1
  L6_2 = #L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L4_2.all_sort_type
    L11_2 = G
    L11_2 = L11_2.InventoryUtils
    L11_2 = L11_2.gen_sort_type
    L12_2 = L3_2[L8_2]
    L13_2 = CS
    L13_2 = L13_2.RPG
    L13_2 = L13_2.Client
    L13_2 = L13_2.InventoryModule
    L13_2 = L13_2.GetSortTypeName
    L14_2 = L3_2[L8_2]
    L13_2, L14_2 = L13_2(L14_2)
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RelicUtils
  L3_2 = L5_2.supported_sort_type
  L5_2 = {}
  L6_2 = 1
  L7_2 = #L3_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L3_2[L9_2]
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.InventoryModule
    L11_2 = L11_2.GetSortTypeName
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L5_2[L10_2] = L11_2
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.order_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_source_data
  L8_2 = L3_2
  L9_2 = L1_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.order_panel
  L7_2 = L6_2
  L6_2 = L6_2.bind_sort_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_btn_order
  L10_2 = A0_2._on_refresh_sort_type
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.order_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_sort_panel
  L8_2 = A0_2._current_sort_type_list
  L9_2 = A0_2._is_descend
  L9_2 = not L9_2
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._init_sort = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.Row
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2.AvatarName
  L4_2 = L2_2.BaseTypeText
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_sub_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L1_1
  L8_2 = G
  L8_2 = L8_2.TextmapStatic
  L8_2 = L8_2.GetText
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L9_2 = G
  L9_2 = L9_2.TextmapStatic
  L9_2 = L9_2.GetText
  L10_2 = L3_2
  L9_2, L10_2 = L9_2(L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_avatar_type
  L8_2 = L2_2.BaseTypeIconSmall
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._set_sub_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._init_tabitem
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._init_tabs = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RelicReplaceTabItem
  L5_2 = G
  L5_2 = L5_2.RelicReplaceTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_root
  L3_2(L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A0_2._avatar_data
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.enum_from_int_str
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.RelicType
  L8_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_item_selected_callback
  L5_2 = A0_2
  L6_2 = A0_2._on_item_selected
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_tabitem = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._play_anim_by_tab_index
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._cur_tab_index = A1_2
  A0_2._allow_play_selected = false
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.get_display_relic_type
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_relic_base_type
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_recommend_panel
  L4_2 = L3_2
  L3_2 = L3_2.is_active
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_recommend_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._avatar_data
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._tab_control
    L3_2 = L3_2.current_select_item
    L4_2 = L3_2
    L3_2 = L3_2.mark_next_frame_refresh
    L3_2(L4_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_recommend_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_relic_type
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_tab_data
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._on_tab_select_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_tab_index
  if L2_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_selected
    L2_2(L3_2)
  else
    L2_2 = A0_2._cur_tab_index
    if A1_2 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.icon_info_panel
      L3_2 = L2_2
      L2_2 = L2_2.play_fade_in_left
      L2_2(L3_2)
    else
      L2_2 = A0_2._cur_tab_index
      if A1_2 > L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.icon_info_panel
        L3_2 = L2_2
        L2_2 = L2_2.play_fade_in_right
        L2_2(L3_2)
      end
    end
  end
end
L0_1._play_anim_by_tab_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_filter_result
  L3_2 = L3_2(L4_2)
  L5_2 = L2_2
  L4_2 = L2_2.set_filtered_item
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if A1_2 then
    L5_2 = L2_2
    L4_2 = L2_2.clear_cur_select
    L4_2(L5_2)
  end
  L5_2 = L2_2
  L4_2 = L2_2.set_recommend_relic_sets
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_recommend_panel
  L7_2 = L6_2
  L6_2 = L6_2.get_recommend_set_ids
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L2_2
  L4_2 = L2_2.sort_items
  L6_2 = A0_2._current_sort_type_list
  L7_2 = A0_2._is_descend
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L2_2
  L4_2 = L2_2.click_cur_item_panel
  L4_2(L5_2)
end
L0_1._set_tab_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.replace_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.replace_compare_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2 ~= nil and L4_2
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.replace_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_relic_item
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.replace_compare_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._avatar_data
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.replace_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_unequipped_view
    L4_2 = A0_2._tab_control
    L4_2 = L4_2.current_select_item
    L5_2 = L4_2
    L4_2 = L4_2.get_display_relic_type
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.replace_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  if A1_2 ~= nil then
    L2_2 = A0_2._cur_selected_item
    if L2_2 ~= A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.icon_info_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._allow_play_selected
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.icon_info_panel
        L3_2 = L2_2
        L2_2 = L2_2.play_selected
        L2_2(L3_2)
      end
      A0_2._allow_play_selected = true
    end
  end
  A0_2._cur_selected_item = A1_2
end
L0_1._on_item_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._can_auto_show_compare_panel
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_selected_item
  L1_2 = A0_2._binder
  L1_2 = L1_2.replace_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_same_item
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 ~= nil and L1_2
  L3_2 = A0_2
  L2_2 = A0_2._auto_toggle_compare_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_auto_show_replace_compare_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._can_auto_show_compare_panel = false
  A0_2._is_compare_panel_show = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.replace_compare_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_panel_visibility
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_toggle_compare_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_recommend_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_panel_visibility
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_toggle_recommend_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.set_filtered_item
    L3_2 = A0_2._binder
    L3_2 = L3_2.filter_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_filter_result
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.set_recommend_relic_sets
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_recommend_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_recommend_set_ids
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.sort_items
    L3_2 = A0_2._current_sort_type_list
    L4_2 = A0_2._is_descend
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_recommend_panel_refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_compare_panel_show = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.replace_compare_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_panel_visibility
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.replace_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_is_show_detail
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._auto_toggle_compare_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_display_relic_type
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_relic_from_avatar
  L3_2 = L1_2
  L4_2 = A0_2._avatar_data
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.filter_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_locked_relics
    L5_2 = {}
    L6_2 = L2_2
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.filter_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_locked_relics
    L5_2 = nil
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.filter_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_source_data
  L5_2 = A0_2._tab_control
  L5_2 = L5_2.current_select_item
  L6_2 = L5_2
  L5_2 = L5_2.get_all_item
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.set_filtered_item
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.sort_items
  L4_2 = A0_2._current_sort_type_list
  L5_2 = A0_2._is_descend
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.click_cur_item_panel
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_recommend_panel
  L3_2 = L2_2
  L2_2 = L2_2.on_filter_changed
  L2_2(L3_2)
end
L0_1._on_finish_filter = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = not A1_2
  A0_2._is_descend = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort
  L2_2(L3_2)
end
L0_1._on_btn_order = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._current_sort_type_list = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_sort
  L2_2(L3_2)
end
L0_1._on_refresh_sort_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.order_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_sort_panel
  L3_2 = A0_2._current_sort_type_list
  L4_2 = A0_2._is_descend
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.sort_items
  L3_2 = A0_2._current_sort_type_list
  L4_2 = A0_2._is_descend
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_sort = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_display_relic_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.replace_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_data
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_recommend_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_data
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.click_cur_item_panel
  L2_2(L3_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_dress_or_takeoff_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.icon_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L1_2(L2_2)
  else
    A0_2._should_refresh = true
  end
end
L0_1._on_relic_sync = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh
  L2_2(L3_2)
  L2_2 = A0_2._should_refresh
  if not L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.replace_panel
    L3_2 = L2_2
    L2_2 = L2_2.refresh_relic_item
    L4_2 = A0_2._cur_selected_item
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_tab_data
  L4_2 = false
  L2_2(L3_2, L4_2)
  A0_2._should_refresh = false
end
L0_1._on_view_active_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetSortTypeName
  L3_2 = A1_2
  return L2_2(L3_2)
end
L0_1._set_sort_type_text_id = L2_1
return L0_1
