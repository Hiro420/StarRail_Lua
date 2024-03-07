local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuMapTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuMapTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuBuffTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuAeonTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuAeonTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuMiracleTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuMiracleTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuChessMapTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuChessMapTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueDiceInfoTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueMenuAeonTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.DefaultRogueMenuDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueMenuDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.EndlessRogueMenuDataProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = 1
L3_1 = {}
L3_1.Map = 1
L3_1.Buff = 2
L3_1.Aeon = 3
L3_1.Miracle = 4
L3_1.Dice = 5
L3_1.ChessAeon = 6
L3_1.ChessMap = 7
L4_1 = {}
L5_1 = G
L5_1 = L5_1.DefaultRogueMenuDataProvider
L4_1.Default = L5_1
L5_1 = G
L5_1 = L5_1.ChessRogueMenuDataProvider
L4_1.ChessRogue = L5_1
L5_1 = G
L5_1 = L5_1.EndlessRogueMenuDataProvider
L4_1.RogueEndless = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueMenuPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._tab_control = nil
  A0_2._map_tab_item = nil
  A0_2._buff_tab_item = nil
  A0_2._aeon_tab_item = nil
  A0_2._miracle_tab_item = nil
  A0_2._chess_map_tab_item = nil
  L1_2 = {}
  A0_2._show_tabs = L1_2
  A0_2._buff_list = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetRogueDataProviderName
  L1_2 = L1_2()
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = L4_1[L1_2]
  L2_2 = L2_2(L3_2)
  A0_2._data_provider = L2_2
  L2_2 = A0_2._data_provider
  L3_2 = L2_2
  L2_2 = L2_2.init
  L2_2(L3_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.Map
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.should_show_map_tab
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.Buff
  L2_2[L3_2] = true
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.Aeon
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.should_show_aeon_tab
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.Miracle
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.should_show_miracle_tab
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.Dice
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.should_show_dice_tab
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.ChessAeon
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.should_show_chess_aeon_tab
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._show_tabs
  L3_2 = L3_1.ChessMap
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.should_show_chess_map_tab
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L2_2 = A0_2._data_provider
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_buffs
  L2_2 = L2_2(L3_2)
  A0_2._buff_list = L2_2
  A0_2._default_click_tab_type = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.top_tab_left_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.top_tab_right_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  if 1 < L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.top_tab_left_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.top_tab_right_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_special_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._show_tabs = nil
  A0_2._buff_list = nil
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._data_provider
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
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
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = A0_2._data_provider
  L4_2 = L3_2
  L3_2 = L3_2.get_res_bar_key
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_res_bar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data_provider
  L4_2 = L3_2
  L3_2 = L3_2.is_res_bar_unlocked
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_index
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.top_tab_left_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 1 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.top_tab_right_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 1 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg
  L3_2 = L2_2
  L2_2 = L2_2.load_bg_node
  L4_2 = A0_2._data_provider
  L5_2 = L4_2
  L4_2 = L4_2.get_bg_prefab_index
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.BPNGEKPOOLP
  L4_2 = L0_1._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._buff_tab_item
  if L1_2 then
    L1_2 = A0_2._buff_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.set_data
    L3_2 = A0_2._buff_list
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_title
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._init_tab_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._default_click_tab_type
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_type_to_item
    L2_2 = A0_2._default_click_tab_type
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      goto lbl_12
    end
  end
  L1_2 = L2_1
  A0_2._init_tab_index = L1_2
  do return end
  ::lbl_12::
  L1_2 = A0_2._tab_type_to_item
  L2_2 = A0_2._default_click_tab_type
  L1_2 = L1_2[L2_2]
  A0_2._init_tab_index = L1_2
end
L0_1._init_tab_index = L5_1
function L5_1(A0_2)
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
  L3_2 = L3_2.node_tab
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_type_to_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_map_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_chess_map_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_buff_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_aeon_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_miracle_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_dice_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_chess_aeon_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._create_tab_control = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.Map
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMenuMapTabItem
  L5_2 = G
  L5_2 = L5_2.RogueMenuMapTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._map_tab_item = L2_2
  L2_2 = A0_2._map_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.register_data_provider
  L4_2 = A0_2._data_provider
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._map_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._map_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_map
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._map_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Map
  L4_2 = A0_2._map_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_map_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.ChessMap
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMenuChessMapTabItem
  L5_2 = G
  L5_2 = L5_2.RogueMenuChessMapTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._chess_map_tab_item = L2_2
  L2_2 = A0_2._chess_map_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.register_data_provider
  L4_2 = A0_2._data_provider
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._chess_map_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._chess_map_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_chess_map
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._chess_map_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Map
  L4_2 = A0_2._chess_map_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_chess_map_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.Buff
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMenuBuffTabItem
  L5_2 = G
  L5_2 = L5_2.RogueMenuBuffTabItemBinder
  L6_2 = A0_2._data_provider
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._buff_tab_item = L2_2
  L2_2 = A0_2._buff_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._buff_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_buff
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._buff_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Buff
  L4_2 = A0_2._buff_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_buff_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.Aeon
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMenuAeonTabItem
  L5_2 = G
  L5_2 = L5_2.RogueMenuAeonTabItemBinder
  L6_2 = A0_2._data_provider
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._aeon_tab_item = L2_2
  L2_2 = A0_2._aeon_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._aeon_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_aeon
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._aeon_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Aeon
  L4_2 = A0_2._aeon_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_aeon_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.Miracle
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueMenuMiracleTabItem
  L5_2 = G
  L5_2 = L5_2.RogueMenuMiracleTabItemBinder
  L6_2 = A0_2._data_provider
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._miracle_tab_item = L2_2
  L2_2 = A0_2._miracle_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._miracle_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_miracle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._miracle_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Miracle
  L4_2 = A0_2._miracle_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_miracle_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.Dice
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ChessRogueDiceInfoTabPanel
  L5_2 = G
  L5_2 = L5_2.ChessRogueDiceInfoTabPanelBinder
  L6_2 = A0_2._data_provider
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._dice_tab_item = L2_2
  L2_2 = A0_2._dice_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._dice_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_dice
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._dice_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Dice
  L4_2 = A0_2._dice_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_dice_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._if_tab_show
  L3_2 = L3_1.ChessAeon
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ChessRogueMenuAeonTabItem
  L5_2 = G
  L5_2 = L5_2.ChessRogueMenuAeonTabItemBinder
  L6_2 = A0_2._data_provider
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._chess_aeon_tab_item = L2_2
  L2_2 = A0_2._chess_aeon_tab_item
  L2_2.button_prefab_index = 0
  L2_2 = A0_2._chess_aeon_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_chess_aeon
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = A0_2._chess_aeon_tab_item
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_type_to_item
  L3_2 = L3_1.Aeon
  L4_2 = A0_2._chess_aeon_tab_item
  L4_2 = L4_2.uid
  L2_2[L3_2] = L4_2
end
L0_1._init_chess_aeon_tab_item = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._show_tabs
  if L2_2 ~= nil then
    L2_2 = A0_2._show_tabs
    L2_2 = L2_2[A1_2]
    if L2_2 == true then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._if_tab_show = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data_provider
  L2_2 = L1_2
  L1_2 = L1_2.get_main_title_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_main_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.get_tab_title
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = nil
  ::lbl_10::
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_sub_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_sub_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = ""
    L3_2(L4_2, L5_2)
  end
  if L1_2 then
    L3_2 = L1_2.set_sub_title
    if L3_2 then
      L4_2 = L1_2
      L3_2 = L1_2.set_sub_title
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_sub_title
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_tab_select_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
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
      L1_2 = L1_2.item_count
      L1_2 = L1_2(L2_2)
      if 1 < L1_2 then
        L2_2 = A0_2._tab_control
        L3_2 = L2_2
        L2_2 = L2_2.select_prev
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.force_set_first_navigation_target
        L2_2(L3_2)
      end
    end
  end
end
L0_1._select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
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
      L1_2 = L1_2.item_count
      L1_2 = L1_2(L2_2)
      if 1 < L1_2 then
        L2_2 = A0_2._tab_control
        L3_2 = L2_2
        L2_2 = L2_2.select_next
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.force_set_first_navigation_target
        L2_2(L3_2)
      end
    end
  end
end
L0_1._select_next = L5_1
return L0_1
