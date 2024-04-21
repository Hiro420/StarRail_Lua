local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMenuChessMapTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/Rogue/Tab/ExploreIcon.png"
L2_1 = "UIText_Rogue_Menu_Tab_1"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ChessRogueModule
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L2_1
  return L1_2
end
L0_1.get_tab_title = L4_1
function L4_1(A0_2, A1_2)
  A0_2._data_provider = A1_2
end
L0_1.register_data_provider = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = L0_1._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClickChessRogueBoardCell
  L4_2 = L0_1._on_click_cell
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshBoardCellSelected
  L4_2 = L0_1._on_refresh_cell_selected
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChessRogueLeftStickInput
  L4_2 = L0_1._on_chess_rogue_left_stick_input
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_PropertyCheck"
  L5_2 = "ActionGroup_Switch"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1.ChessRogueData
  A0_2._chess_rogue_data = L1_2
  L1_2 = A0_2._chess_rogue_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_area_layer_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_action_point_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_board_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_nous_value_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extend_difficulty_panel
  L1_2(L2_2)
end
L0_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._chess_rogue_data
  L1_2 = L1_2.AreaInfo
  L3_2 = L1_2
  L2_2 = L1_2.GetCurAreaLayerDataItem
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.LayerRow
    if L3_2 ~= nil then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_layer_name
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2.LayerNameID
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_layer
      L7_2 = L3_2.LayerIcon
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._setup_area_layer_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_action_point
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_action_point_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._chess_rogue_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurChessRogueBoardDataItem
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.CurCellDataItem
    A0_2._cell_data_item = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_board_map
    L3_2 = L2_2
    L2_2 = L2_2.setup_board_menu_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_board_map
    L3_2 = L2_2
    L2_2 = L2_2.setup_cur_cell_location
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_set_rogue_nous_offset
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_selected_cell_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_selected_cell_tip
  L2_2(L3_2)
end
L0_1._setup_board_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.refresh_btn_selected_view
  L3_2 = A0_2._cell_data_item
  L1_2(L2_2, L3_2)
end
L0_1._refresh_selected_cell_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.is_cell_panel_can_show_detail
  L3_2 = A0_2._cell_data_item
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.is_cur_location_cell
  L4_2 = A0_2._cell_data_item
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_tip_select
  L4_2 = L3_2
  L3_2 = L3_2.setup_can_select_view
  L5_2 = A0_2._cell_data_item
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  if L1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_PropertyCheck"
    L7_2 = "ActionGroup_Switch"
    L8_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Switch"
    L7_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_selected_cell_tip = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._nous_value_panel = L1_2
  L1_2 = A0_2._nous_value_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._nous_value_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_gamepad_action
    L3_2 = "Menu_UnchangeRightTrigger"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_nous_value_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_extend_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_extend_difficulty_panel = L4_1
L4_1 = {}
L5_1 = 39.4
L6_1 = -44.54
L4_1[1] = L5_1
L4_1[2] = L6_1
L5_1 = {}
L6_1 = 0
L7_1 = -44.54
L5_1[1] = L6_1
L5_1[2] = L7_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_rogue_nous_offset_set
  if L1_2 then
    return
  end
  A0_2._is_rogue_nous_offset_set = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogueNous
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.set_position_offset
  L4_2 = L4_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_frame
  L3_2 = L2_2
  L2_2 = L2_2.set_bg_position_offset
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.get_boss_cell_panel
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_bg_frame
  L4_2 = L3_2
  L3_2 = L3_2.update_boss_pattern_position
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._try_set_rogue_nous_offset = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    A0_2._cell_data_item = A1_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_selected_cell_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_selected_cell_tip
    L2_2(L3_2)
  end
end
L0_1._on_click_cell = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_selected_cell_view
    L1_2(L2_2)
  end
end
L0_1._on_refresh_cell_selected = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleDialog"
  L1_2(L2_2)
end
L0_1._on_btn_intro = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_map
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.get_navigation_cell_panel
  L4_2 = A0_2._cell_data_item
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = L2_2
    L5_2 = L2_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_chess_rogue_left_stick_input = L6_1
return L0_1
