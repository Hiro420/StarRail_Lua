local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMapPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapZoomSliderPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyMapCellDisplayItemPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "UIText_ActivityMonopoly_Map_Progress"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Monopoly_Activity_Map_DefaultScaleValue"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L2_1 = L2_1 / 100
L3_1 = 0.13
L4_1 = 0.6
L5_1 = 0.2
L6_1 = 0.2
L7_1 = 10
L8_1 = 0.01
L9_1 = 0.05
L10_1 = G
L10_1 = L10_1.Class
L11_1 = "ActivityMonopolyMapPage"
L12_1 = G
L12_1 = L12_1.UIController
L10_1 = L10_1(L11_1, L12_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMapPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L10_1.ctor = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyMapZoomSliderPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyMapZoomSliderPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.slider_panel = L1_2
  L1_2 = A0_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_panel_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_slider_value_change_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_slider_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.map_scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.RegisterScrollCallback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_map_scrolled
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_legend
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_btn
  L4_2 = A0_2._on_show_detail_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.res_bar_root
  L3_2 = "ActivityMonopolyMainPage"
  L4_2 = A0_2
  L5_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._res_bar_panel = L1_2
end
L10_1._on_load = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_data
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCellList
  L1_2 = L1_2(L2_2)
  A0_2._cell_lst = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAllCellDisplayRows
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cell_type_display_datas = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._cell_type_display_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.DisplaySort
    L3_3 = A1_3.DisplaySort
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cell
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_player
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_content
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._move_panel_to_player_pos
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L10_1._setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 2
  L4_2 = 3
  L5_2 = 4
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2._map_ids = L1_2
  A0_2._player_map_index = 0
  A0_2._player_cell_index = 0
  L1_2 = {}
  A0_2._map_to_cell_datas = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._map_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = {}
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.GetCellListByMap
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = 0
    L9_2 = L7_2.Count
    L9_2 = L9_2 - 1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2[L11_2]
      L13_2 = L12_2.CellType
      L14_2 = CS
      L14_2 = L14_2.RPG
      L14_2 = L14_2.GameCore
      L14_2 = L14_2.MonopolyMapCellType
      L14_2 = L14_2.Click
      if L13_2 ~= L14_2 then
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L6_2
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
        L13_2 = L0_1.SystemInfo
        L13_2 = L13_2.CurMapID
        if L5_2 == L13_2 then
          L13_2 = L12_2.CellID
          L14_2 = L0_1.SystemInfo
          L14_2 = L14_2.CurCellID
          if L13_2 == L14_2 then
            A0_2._player_map_index = L4_2
            L13_2 = #L6_2
            A0_2._player_cell_index = L13_2
          end
        end
      end
    end
    L8_2 = A0_2._map_to_cell_datas
    L8_2[L5_2] = L6_2
  end
end
L10_1._update_data = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.asset_explore_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = L0_1.AssetInfo
  L4_2 = L4_2.AssetOwnedCount
  L5_2 = L0_1.AssetInfo
  L5_2 = L5_2.AssetTotalCount
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_explore_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = L0_1.EventInfo
  L5_2 = L4_2
  L4_2 = L4_2.GetCountedEventTriggeredCount
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1.EventInfo
  L6_2 = L5_2
  L5_2 = L5_2.GetCountedEventTotalCount
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_legend
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._cell_type_display_datas
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
end
L10_1._setup_info = L11_1
function L11_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ActivityMonopolyMapCellDisplayItemPanel
    L8_2 = G
    L8_2 = L8_2.ActivityMonopolyMapCellDisplayItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._cell_type_display_datas
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L10_1._on_item_changed = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = ipairs
  L2_2 = A0_2._map_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_map_cell
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._map_to_cell_datas
    L7_2 = L7_2[L5_2]
    L8_2 = #L6_2
    L9_2 = #L7_2
    if L8_2 < L9_2 then
      L8_2 = G
      L8_2 = L8_2.SuperDebug
      L8_2 = L8_2.LogErrorFormat
      L9_2 = "panels count = %s < datas count = %s, mapID = %s,"
      L10_2 = #L6_2
      L11_2 = #L7_2
      L12_2 = L5_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
    L8_2 = ipairs
    L9_2 = L6_2
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L7_2[L11_2]
      L14_2 = L13_2 ~= nil
      L16_2 = L12_2
      L15_2 = L12_2.safe_set_active
      L17_2 = L14_2
      L15_2(L16_2, L17_2)
      if L14_2 then
        L16_2 = L12_2
        L15_2 = L12_2.setup_view
        L17_2 = L13_2
        L15_2(L16_2, L17_2)
      end
    end
  end
end
L10_1._setup_cell = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_map_cell
  L2_2 = A0_2._player_map_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._player_cell_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L4_2 = L1_2
  L3_2 = L1_2.get_root_transform
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.position
  L2_2.position = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._player_map_index
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L10_1._setup_player = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  A0_2._current_scale = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scale
  L1_2(L2_2)
  L1_2 = A0_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_value
  L3_2 = A0_2._current_scale
  L1_2(L2_2, L3_2)
end
L10_1._init_content = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  L3_2 = L4_1
  L4_2 = L3_1
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 * A1_2
  L2_2 = L2_2 + L3_2
  A0_2._current_scale = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scale
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._move_panel_to_player_pos
  L2_2(L3_2)
end
L10_1._on_slider_changed = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_root
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector3
  L3_2 = A0_2._current_scale
  L4_2 = A0_2._current_scale
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.localScale = L2_2
  L1_2 = A0_2._current_scale
  L1_2 = 1.0 / L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player
  L3_2 = L2_2
  L2_2 = L2_2.refresh_scale
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_map_name
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Vector3
    L8_2 = L1_2
    L9_2 = L1_2
    L10_2 = 1
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2.localScale = L7_2
  end
  L2_2 = A0_2._current_scale
  L3_2 = L5_1
  L2_2 = L2_2 > L3_2
  L3_2 = ipairs
  L4_2 = A0_2._map_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panels_map_cell
    L8_2 = L8_2[L6_2]
    L9_2 = pairs
    L10_2 = L8_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L15_2 = L13_2
      L14_2 = L13_2.show_icon
      L16_2 = L2_2
      L14_2(L15_2, L16_2)
    end
  end
end
L10_1._refresh_scale = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.map_scroll_rect
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.InverseTransformPoint
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_root
  L3_2 = L3_2.position
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_scroll_rect
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.InverseTransformPoint
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_player
  L5_2 = L4_2
  L4_2 = L4_2.get_root_transform
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.position
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_root
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.anchoredPosition = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_scroll_rect
  L2_2 = L2_2.verticalNormalizedPosition
  if 1 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.map_scroll_rect
    L2_2.verticalNormalizedPosition = 1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_scroll_rect
  L2_2 = L2_2.verticalNormalizedPosition
  if L2_2 < 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.map_scroll_rect
    L2_2.verticalNormalizedPosition = 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_scroll_rect
  L2_2 = L2_2.horizontalNormalizedPosition
  if L2_2 < 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.map_scroll_rect
    L2_2.horizontalNormalizedPosition = 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_scroll_rect
  L2_2 = L2_2.horizontalNormalizedPosition
  if 1 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.map_scroll_rect
    L2_2.horizontalNormalizedPosition = 1
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.map_scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.AutoSetPosition
  L2_2(L3_2)
end
L10_1._move_panel_to_player_pos = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityMonopoly.MainPage.ActivityMonopolyMapDetailDialog"
  L1_2(L2_2)
end
L10_1._on_show_detail_btn_clicked = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L10_1._on_exit_btn_clicked = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2.slider_panel
    L1_3 = L0_3
    L0_3 = L0_3.get_value
    L0_3 = L0_3(L1_3)
    L1_3 = A1_2.y
    L2_3 = L9_1
    L1_3 = L1_3 * L2_3
    L0_3 = L0_3 - L1_3
    L1_3 = A0_2.slider_panel
    L2_3 = L1_3
    L1_3 = L1_3.set_value
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2)
end
L10_1._on_map_scrolled = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.is_top_page_or_dialog
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InControlActionsManager
  L3_2 = L3_2.Instance
  L3_2 = L3_2.InControlInputEventEnabled
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.is_in_special_zoom
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = L6_1
  if A2_2 > L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.content_root
    L3_2 = L3_2.anchoredPosition
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector2
    L5_2 = L3_2.x
    L6_2 = L3_2.y
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = false
    L6_2 = CS
    L6_2 = L6_2.InControl
    L6_2 = L6_2.InputControlType
    L6_2 = L6_2.LeftStickLeft
    L6_2 = #L6_2
    if A1_2 == L6_2 then
      L6_2 = L4_2.x
      L7_2 = L7_1
      L6_2 = L6_2 + L7_2
      L4_2.x = L6_2
      L5_2 = true
    else
      L6_2 = CS
      L6_2 = L6_2.InControl
      L6_2 = L6_2.InputControlType
      L6_2 = L6_2.LeftStickRight
      L6_2 = #L6_2
      if A1_2 == L6_2 then
        L6_2 = L4_2.x
        L7_2 = L7_1
        L6_2 = L6_2 - L7_2
        L4_2.x = L6_2
        L5_2 = true
      else
        L6_2 = CS
        L6_2 = L6_2.InControl
        L6_2 = L6_2.InputControlType
        L6_2 = L6_2.LeftStickUp
        L6_2 = #L6_2
        if A1_2 == L6_2 then
          L6_2 = L4_2.y
          L7_2 = L7_1
          L6_2 = L6_2 - L7_2
          L4_2.y = L6_2
          L5_2 = true
        else
          L6_2 = CS
          L6_2 = L6_2.InControl
          L6_2 = L6_2.InputControlType
          L6_2 = L6_2.LeftStickDown
          L6_2 = #L6_2
          if A1_2 == L6_2 then
            L6_2 = L4_2.y
            L7_2 = L7_1
            L6_2 = L6_2 + L7_2
            L4_2.y = L6_2
            L5_2 = true
          end
        end
      end
    end
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.content_root
      L6_2.anchoredPosition = L4_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.map_scroll_rect
      L7_2 = L6_2
      L6_2 = L6_2.AutoSetPosition
      L6_2(L7_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = A0_2.slider_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_value
    L5_2 = A0_2.slider_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_value
    L5_2 = L5_2(L6_2)
    L6_2 = L8_1
    L5_2 = L5_2 - L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightTrigger
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L3_2 = A0_2.slider_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_value
      L5_2 = A0_2.slider_panel
      L6_2 = L5_2
      L5_2 = L5_2.get_value
      L5_2 = L5_2(L6_2)
      L6_2 = L8_1
      L5_2 = L5_2 + L6_2
      L3_2(L4_2, L5_2)
    end
  end
end
L10_1._on_in_control_press = L11_1
return L10_1
