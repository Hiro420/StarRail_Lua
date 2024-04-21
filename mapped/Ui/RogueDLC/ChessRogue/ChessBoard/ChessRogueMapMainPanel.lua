local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMapMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._aeonDiceSurfaceRow = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._aeonDiceSurfaceRow = nil
  A0_2._after_select_cell_rsp = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnChessRogueEnterCellRsp
  L4_2 = L0_1._on_enter_cell_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = L0_1._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_dice_effect
  L4_2 = L0_1._on_btn_dice_effect
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_board_event_effect
  L4_2 = L0_1._on_btn_board_event
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.is_area_the_guide_area_1
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChessRogueModule
  L2_2 = L2_2.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurAreaID
  L1_2 = L1_2(L2_2)
  A0_2._need_hide_certain_node = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._panel_board_frame = A1_2
  L2_2 = A0_2._panel_board_frame
  L3_2 = L2_2
  L2_2 = L2_2.get_map_panel
  L2_2 = L2_2(L3_2)
  A0_2._panel_board_map = L2_2
end
L0_1.init_map_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._chess_rogue_data = A1_2
  L3_2 = A0_2._chess_rogue_data
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_PropertyCheck"
  L7_2 = "Maze_ShortCutWheel"
  L8_2 = "ActionGroup_Switch"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_action_point_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_dice_result
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_aeon_effect_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_board_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_confirm_btn
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_in_ctrl_actions
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_action_point
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_action_point_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._need_hide_certain_node
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_action_point
  L2_2 = L1_2
  L1_2 = L1_2.play_reduce_animation
  L1_2(L2_2)
end
L0_1.play_action_point_reduce_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._chess_rogue_data
  L1_2 = L1_2.DiceInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetCurDiceSurfaceDisplayDataItem
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_event_info
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L5_2 = L1_2.DiceActiveStage
    L5_2 = 1 < L5_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_dice_result = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._need_hide_certain_node
  if L1_2 then
    L1_2 = ipairs
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_effect_relative_node_table
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.SafeSetActive
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
    return
  end
  L1_2 = A0_2._chess_rogue_data
  L1_2 = L1_2.DiceInfo
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_aeon_effect_icon
  L6_2 = L1_2
  L5_2 = L1_2.GetDiceIcon
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_effect_underline_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L5_2 = L1_2
  L4_2 = L1_2.GetPassiveDescExtraEffect
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_aeon_effect
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L5_2 = L1_2
  L4_2 = L1_2.GetPassiveEffectDesc
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_aeon_effect_icon
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_aeon_progress_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_aeon_effect_short_cut_hint_panel
  L2_2(L3_2)
end
L0_1._setup_aeon_effect_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.GetPassiveEffectIconPath
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_8
    end
  end
  L2_2 = ""
  ::lbl_8::
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_aeon_effect_progress
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_aeon_effect_icon = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._need_hide_certain_node
  if L3_2 then
    return
  end
  if A1_2 ~= nil then
    L3_2 = A2_2 or L3_2
    if A2_2 == nil or not A2_2 then
      L4_2 = A1_2
      L3_2 = A1_2.GetPassiveEffectCount
      L3_2 = L3_2(L4_2)
    end
    L5_2 = A1_2
    L4_2 = A1_2.GetPassiveEffectBaseParam
    L4_2 = L4_2(L5_2)
    L4_2 = L3_2 * L4_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_aeon_effect_progress
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_RogueDLC_Accumulate_Value"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1.setup_aeon_progress_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._need_hide_certain_node
  if L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AnimationAction
  L3_2 = A0_2._binder
  L3_2 = L3_2.animation_aeon_effect
  L4_2 = "BoxEventInfo_Enhance"
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.get_aeon_progress_change_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._need_hide_certain_node
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_aeon_effect
  L3_2 = "BoxEventInfo_Enhance"
  L1_2(L2_2, L3_2)
end
L0_1.play_aeon_progress_change_effect = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_chess_rogue_board_dataitem
  L4_2 = A0_2._chess_rogue_data
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._panel_board_map
    if L3_2 then
      L3_2 = L2_2.CurCellDataItem
      A0_2._cell_data_item = L3_2
      L3_2 = A0_2._panel_board_map
      L4_2 = L3_2
      L3_2 = L3_2.setup_board_view
      L5_2 = L2_2
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2._panel_board_map
      L4_2 = L3_2
      L3_2 = L3_2.setup_cur_cell_location
      L3_2(L4_2)
      L3_2 = A0_2._cell_data_item
      L4_2 = A0_2._is_input_locked
      if L4_2 then
        L3_2 = nil
      end
      L4_2 = A0_2._panel_board_map
      L5_2 = L4_2
      L4_2 = L4_2.refresh_btn_selected_view
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._setup_board_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.is_cell_panel_can_show_detail
  L3_2 = A0_2._cell_data_item
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._panel_board_map
  L3_2 = L2_2
  L2_2 = L2_2.is_cur_location_cell
  L4_2 = A0_2._cell_data_item
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._cell_data_item
  L3_2 = A0_2._cell_data_item
  L3_2 = L3_2.CellID
  L3_2 = A0_2._panel_board_map
  L4_2 = L3_2
  L3_2 = L3_2.is_board_cell_can_selected
  L5_2 = A0_2._cell_data_item
  L3_2 = L3_2 ~= nil and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_confirm
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetInteractable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_confirm_key_map_info
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_btn_confirm
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_Move_TargetConfirm"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_btn_confirm
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_Move_TargetHint"
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_tip_select
  L5_2 = L4_2
  L4_2 = L4_2.setup_can_select_view
  L6_2 = A0_2._cell_data_item
  L7_2 = L1_2
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  if L1_2 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_short_cut_hint_panel
    L6_2 = {}
    L7_2 = "ActionGroup_PropertyCheck"
    L8_2 = "Maze_ShortCutWheel"
    L9_2 = "ActionGroup_Switch"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.setup_short_cut_hint_panel
    L6_2 = {}
    L7_2 = "Maze_ShortCutWheel"
    L8_2 = "ActionGroup_Switch"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_confirm_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.AreaInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetCurChessBoardID
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.BoardInfo
  L4_2 = L3_2
  L3_2 = L3_2.GetBoardDataItemByBoardID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  return L3_2
end
L0_1._get_chess_rogue_board_dataitem = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cell_data_item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cell_data_item
  L2_2 = L1_2
  L1_2 = L1_2.IsBossSelectCell
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ShowChessRogueBossSelect
    L3_2 = A0_2._cell_data_item
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._cell_data_item
    if L1_2 ~= nil then
      L1_2 = A0_2._cell_data_item
      L1_2 = L1_2.CellID
      if L1_2 ~= 0 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.ChessRogueBoardCellEnterData
        L1_2 = L1_2()
        L2_2 = A0_2._cell_data_item
        L2_2 = L2_2.CellID
        L1_2.CellID = L2_2
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.NotifyType
        L3_2 = L3_2.RogueDLC1Dot3EnterCell
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.confirm_to_enter_cell = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cell_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_board_map
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_9::
  L1_2 = A0_2._panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.get_location_move_animation_action
  L3_2 = A0_2._cell_data_item
  L3_2 = L3_2.CellID
  return L1_2(L2_2, L3_2)
end
L0_1.get_location_move_animation_action = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cell_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_board_map
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.play_location_move_animation
  L3_2 = A0_2._cell_data_item
  L3_2 = L3_2.CellID
  return L1_2(L2_2, L3_2)
end
L0_1.play_location_move_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  if L1_2 ~= nil then
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_enter_cell_rsp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._after_select_cell_rsp = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tip_select
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.on_select_cell_rsp = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._after_select_cell_rsp
    if L2_2 ~= true then
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.is_gamepad_input
      L2_2 = L2_2()
      if L2_2 then
        A0_2._cell_data_item = A1_2
      else
        L2_2 = A0_2._panel_board_map
        L3_2 = L2_2
        L2_2 = L2_2.is_board_cell_can_selected
        L4_2 = A1_2
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          A0_2._cell_data_item = A1_2
        else
          L2_2 = G
          L2_2 = L2_2.NotifyManager
          L2_2 = L2_2.notify
          L3_2 = G
          L3_2 = L3_2.CS
          L3_2 = L3_2.NotifyType
          L3_2 = L3_2.UIPileToastMessageTextID
          L4_2 = "UIText_RogueDLC_Move_Target_Forbidden"
          L2_2(L3_2, L4_2)
          return
        end
      end
      L2_2 = A0_2._panel_board_map
      L3_2 = L2_2
      L2_2 = L2_2.is_cur_location_cell
      L4_2 = A0_2._cell_data_item
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = A0_2._panel_board_map
        L3_2 = L2_2
        L2_2 = L2_2.play_bubble_animation
        L4_2 = "bubbleGo"
        L5_2 = false
        L2_2(L3_2, L4_2, L5_2)
      end
      L2_2 = A0_2._panel_board_map
      L3_2 = L2_2
      L2_2 = L2_2.refresh_pre_break_view
      L4_2 = A0_2._cell_data_item
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_confirm_btn
      L2_2(L3_2)
    end
  end
end
L0_1._on_click_cell = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_refresh_cell_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_input_locked = true
  L1_2 = A0_2._panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.refresh_btn_selected_view
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1.on_input_lock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_input_locked = false
  L1_2 = A0_2._panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.refresh_btn_selected_view
  L3_2 = A0_2._cell_data_item
  L1_2(L2_2, L3_2)
end
L0_1.on_input_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cell_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._cell_data_item
    L1_2 = L1_2.CellID
    if L1_2 ~= 0 then
      L1_2 = A0_2._cell_data_item
      L1_2 = L1_2.CellStatus
      L2_2 = CS
      L2_2 = L2_2.FINAEOMBOMP
      L2_2 = L2_2.HIONEBJBKLG
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2.confirm_to_enter_cell
        L1_2(L2_2)
        return
      end
      L1_2 = A0_2._owner
      if L1_2 ~= nil then
        L1_2 = A0_2._owner
        L2_2 = L1_2
        L1_2 = L1_2.init_select_action_queue
        L1_2(L2_2)
      end
      L2_2 = A0_2
      L1_2 = A0_2.show_full_screen_block_for_packet
      L3_2 = CS
      L3_2 = L3_2.PBIBDHBOIGI
      L3_2 = L3_2.CCKGGHLGEIF
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_NetworkManager
      L2_2 = L1_2
      L1_2 = L1_2.DEMHAJNAHJI
      L3_2 = A0_2._cell_data_item
      L3_2 = L3_2.CellID
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleDialog"
  L1_2(L2_2)
end
L0_1._on_btn_intro = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_board_map
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._panel_board_map
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._panel_board_map
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._panel_board_map
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
L0_1._on_chess_rogue_left_stick_input = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_in_ctrl_actions
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_effect_underline_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_extra_info_available
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_BuffDetail_RB"
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_aeon_effect_outer_layout_group
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_aeon_effect_inner_layout_group
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_aeon_effect
  L3_2 = L2_2
  L2_2 = L2_2.CanScroll
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_Scroll_LT"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_short_cut_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #L1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = #L1_2
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._short_cut_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.MazeShortCutHintPanel
    L5_2 = G
    L5_2 = L5_2.MazeShortCutHintPanelBinder
    L6_2 = L1_2
    L7_2 = nil
    L8_2 = false
    L9_2 = A0_2._binder
    L9_2 = L9_2.short_cut_panel_load_meta
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2._short_cut_panel = L2_2
    L2_2 = A0_2._short_cut_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_short_cut_panel
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._short_cut_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_aeon_effect_short_cut_hint_panel = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_effect_in_ctrl_move
  L1_2.ActionEnabled = false
end
L0_1._reset_in_ctrl_actions = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.aeon_effect_in_ctrl_move
    L2_2.ActionEnabled = true
  end
end
L0_1._on_in_control_press = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.aeon_effect_in_ctrl_move
    L2_2.ActionEnabled = false
  end
end
L0_1._on_in_control_released = L1_1
return L0_1
