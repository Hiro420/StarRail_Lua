local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBoardFramePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_res_bar
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_chess_map_node
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.show_bg
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_set_rogue_nous_offset
  L1_2(L2_2)
end
L0_1.show_dice_event_nodes = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_res_bar
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_chess_map_node
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.show_bg
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_set_rogue_nous_offset
  L1_2(L2_2)
end
L0_1.show_map_main_nodes = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_res_bar
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_chess_map_node
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.show_bg
  L3_2 = 3
  L1_2(L2_2, L3_2)
end
L0_1.show_dice_boss_nodes = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_change
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_res_change_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = tostring
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_res_bar
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_res_refresh
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "DiceFrameResBar_Add"
  L2_2(L3_2, L4_2)
end
L0_1.play_anim_res_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.play_title_fade_in
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1.play_dice_event_title_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.play_title_fade_in
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1.play_map_main_title_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.play_title_fade_to_end
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg_frame
  L2_2 = L1_2
  L1_2 = L1_2.play_title_fade_to_end
  L3_2 = 2
  L1_2(L2_2, L3_2)
end
L0_1.reset_title_fade_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_chess_map_node = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_board_map
  return L1_2
end
L0_1.get_map_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.get_cell_panel
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_cell_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_board_map
  L4_2 = L3_2
  L3_2 = L3_2.play_bubble_animation
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.play_bubble_fade_animation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_board_map
  L4_2 = L3_2
  L3_2 = L3_2.setup_bubble_state
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_bubble_state = L1_1
L1_1 = {}
L2_1 = 39.7
L3_1 = -51
L1_1[1] = L2_1
L1_1[2] = L3_1
L2_1 = {}
L3_1 = 0
L4_1 = -51
L2_1[1] = L3_1
L2_1[2] = L4_1
function L3_1(A0_2)
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
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_frame
  L3_2 = L2_2
  L2_2 = L2_2.set_bg_position_offset
  L4_2 = L2_1
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
L0_1._try_set_rogue_nous_offset = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_res_bar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.ConvCsEnumToNum
  L3_2 = CS
  L3_2 = L3_2.HGGDPEHMDBH
  L3_2 = L3_2.NIBJBHPOFNO
  L2_2 = L2_2(L3_2)
  L1_2.currency_id = L2_2
  L1_2.is_show_detail = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_res_bar
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_res_bar = L3_1
L3_1 = 0
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = L2_2.panel_bg_frame
  L3_2 = L2_2
  L2_2 = L2_2.set_btn_info_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_frame
  L3_2 = L2_2
  L2_2 = L2_2.set_btn_info_guide_group_id
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
end
L0_1._show_btn_info = L4_1
return L0_1
