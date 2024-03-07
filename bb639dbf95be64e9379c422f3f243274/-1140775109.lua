local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardCellPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardCellPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardLocationPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardLocationPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueBoardLinePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.Map.ChessRogueAnimationTypeFactory"
L0_1(L1_1)
L0_1 = {}
L0_1.None = 0
L0_1.Left = 1
L0_1.Right = 2
L0_1.UpLeft = 3
L0_1.UpRight = 4
L0_1.DownLeft = 5
L0_1.DownRight = 6
L0_1.UpLeftOrUpRight = 7
L0_1.UpRightOrUpLeft = 8
L0_1.DownLeftOrDownRight = 9
L0_1.DownRightOrDownLeft = 10
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChessRogueBoardMapPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ButtonMutex
  L1_2 = L1_2(L2_2)
  A0_2._long_press_button_mutex = L1_2
  L1_2 = A0_2._long_press_button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseMutex
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L1_1._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._long_press_button_mutex
  if L1_2 ~= nil then
    L1_2 = A0_2._long_press_button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._long_press_button_mutex
    L1_2(L2_2)
    A0_2._long_press_button_mutex = nil
  end
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_board
  L3_2 = L2_2
  L2_2 = L2_2.GetMonoItemList
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if L3_2 ~= 0 then
      goto lbl_12
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_12::
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L7_2.UserObjectData
      if L8_2 ~= nil then
        L8_2 = L7_2.UserObjectData
        L10_2 = L8_2
        L9_2 = L8_2.get_cell_data_item
        L9_2 = L9_2(L10_2)
        if L9_2 ~= nil then
          L10_2 = L9_2.CellID
          if L10_2 == A1_2 then
            return L8_2
          end
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L1_1.get_cell_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_board
  L4_2 = L3_2
  L3_2 = L3_2.GetMonoItemList
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.Count
    if L4_2 ~= 0 then
      goto lbl_12
    end
  end
  L4_2 = nil
  do return L4_2 end
  ::lbl_12::
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    if L8_2 ~= nil then
      L9_2 = L8_2.UserObjectData
      if L9_2 ~= nil then
        L9_2 = L8_2.UserObjectData
        L11_2 = L9_2
        L10_2 = L9_2.get_cell_data_item
        L10_2 = L10_2(L11_2)
        if L10_2 ~= nil then
          L11_2 = L10_2.PosX
          if L11_2 == A1_2 then
            L11_2 = L10_2.PosY
            if L11_2 == A2_2 then
              return L9_2
            end
          end
        end
      end
    end
  end
  L4_2 = nil
  return L4_2
end
L1_1.get_cell_panel_by_pos = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_board
  L2_2 = L1_2
  L1_2 = L1_2.GetMonoItemList
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_12
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_12::
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = L6_2.UserObjectData
      if L7_2 ~= nil then
        L7_2 = L6_2.UserObjectData
        L9_2 = L7_2
        L8_2 = L7_2.get_cell_data_item
        L8_2 = L8_2(L9_2)
        if L8_2 ~= nil then
          L10_2 = L8_2
          L9_2 = L8_2.IsBossType
          L9_2 = L9_2(L10_2)
          if L9_2 then
            return L7_2
          end
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_boss_cell_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = A1_2.CellID
    L3_2 = A0_2._board_data_item
    L3_2 = L3_2.CurCellID
    L2_2 = L2_2 == L3_2
  end
  return L2_2
end
L1_1.is_cur_location_cell = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_cell_panel
    L4_2 = A1_2.CellID
    L2_2 = L2_2(L3_2, L4_2)
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.can_show_detail
    L3_2 = L3_2(L4_2)
  end
  return L3_2
end
L1_1.is_cell_panel_can_show_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.anchoredPosition
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector2
  L5_2 = L2_2.x
  L6_2 = A1_2[1]
  L5_2 = L5_2 + L6_2
  L6_2 = L2_2.y
  L7_2 = A1_2[2]
  L6_2 = L6_2 + L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.anchoredPosition = L4_2
end
L1_1.set_position_offset = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._board_data_item = A1_2
  if A1_2 ~= nil then
    L3_2 = A1_2.CurCellDataItem
    if L3_2 then
      goto lbl_8
    end
  end
  L3_2 = nil
  ::lbl_8::
  A0_2._cur_cell_data_item = L3_2
  A0_2._cell_or_board_change_data = A2_2
end
L1_1._init_board_data_item = L2_1
function L2_1(A0_2, A1_2)
  A0_2._modifier_select_data = A1_2
end
L1_1._init_modifier_select_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._init_board_data_item
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_board
  L4_2 = L3_2
  L3_2 = L3_2.InitChestBoardItem
  L5_2 = A1_2
  L6_2 = A0_2._on_board_cell_item_change
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_history_line
  L5_2 = A1_2.HistoryCellIDList
  L3_2(L4_2, L5_2)
end
L1_1.setup_board_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = A2_2.UserObjectData
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.ChessRogueBoardCellPanel
    L7_2 = G
    L7_2 = L7_2.ChessRogueBoardCellPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A2_2.transform
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_long_press_button_mutex
    L6_2 = A0_2._long_press_button_mutex
    L4_2(L5_2, L6_2)
    A2_2.UserObjectData = L3_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_same_cell
  L6_2 = A1_2
  L7_2 = A0_2._cur_cell_data_item
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._is_cell_break
  L7_2 = A1_2
  L8_2 = A0_2._cur_cell_data_item
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_view
  L8_2 = A1_2
  L9_2 = L5_2 or L9_2
  if not L5_2 then
    L9_2 = L4_2
  end
  L10_2 = A0_2._cell_or_board_change_data
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_node_break
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    L7_2 = A0_2
    L6_2 = A0_2._is_board_cell_can_go
    L8_2 = A1_2
    L9_2 = A0_2._cur_cell_data_item
    L10_2 = A0_2._board_data_item
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = L3_2
    L7_2 = L3_2.setup_node_canselect
    L9_2 = L6_2
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L3_2
    L7_2 = L3_2.setup_node_reject
    L9_2 = not L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L3_2
    L7_2 = L3_2.setup_bg
    L9_2 = L4_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L3_2
    L7_2 = L3_2.set_long_press_status
    if L6_2 then
      L9_2 = 0
      if L9_2 then
        goto lbl_66
      end
    end
    L9_2 = 1
    ::lbl_66::
    L7_2(L8_2, L9_2)
  else
    L7_2 = L3_2
    L6_2 = L3_2.setup_bg
    L8_2 = L4_2
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L3_2
    L6_2 = L3_2.set_long_press_hint_break
    L6_2(L7_2)
  end
  L7_2 = L3_2
  L6_2 = L3_2.set_detail_enable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A2_2
  L6_2 = A2_2.SetInteractable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
end
L1_1._on_board_cell_item_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_board
  L3_2 = L2_2
  L2_2 = L2_2.GetMonoItemList
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if L3_2 ~= 0 then
      goto lbl_12
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_12::
  L4_2 = A0_2
  L3_2 = A0_2.is_board_cell_can_selected
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._need_protect_not_break_stamp
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = L2_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    if L9_2 ~= nil then
      L10_2 = L9_2.UserObjectData
      if L10_2 ~= nil then
        L10_2 = L9_2.UserObjectData
        L12_2 = L10_2
        L11_2 = L10_2.get_cell_data_item
        L11_2 = L11_2(L12_2)
        L13_2 = A0_2
        L12_2 = A0_2._is_cell_break
        L14_2 = L11_2
        L15_2 = A0_2._cur_cell_data_item
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        if L12_2 then
          L14_2 = L10_2
          L13_2 = L10_2.setup_node_break
          L15_2 = true
          L13_2(L14_2, L15_2)
        else
          L13_2 = L3_2 or L13_2
          if L3_2 then
            L14_2 = A0_2
            L13_2 = A0_2._is_cell_need_break
            L15_2 = L11_2
            L16_2 = A1_2
            L17_2 = L4_2
            L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
          end
          if L13_2 then
            L15_2 = L10_2
            L14_2 = L10_2.setup_node_pre_break
            L14_2(L15_2)
          else
            L15_2 = L10_2
            L14_2 = L10_2.setup_node_break
            L16_2 = false
            L14_2(L15_2, L16_2)
          end
        end
        L14_2 = A0_2
        L13_2 = A0_2._is_same_cell
        L15_2 = A1_2
        L16_2 = L11_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L15_2 = L10_2
        L14_2 = L10_2.setup_btn_checked
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
end
L1_1.refresh_pre_break_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._is_board_cell_can_go
  L4_2 = A1_2
  L5_2 = A0_2._cur_cell_data_item
  L6_2 = A0_2._board_data_item
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1.is_board_cell_can_selected = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    L4_2 = false
    return L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_same_cell
  L6_2 = A2_2
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = A3_2.AllowedSelectCellIDList
  if L4_2 ~= nil then
    L5_2 = 0
    L6_2 = L4_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2[L8_2]
      L10_2 = A1_2.CellID
      if L9_2 == L10_2 then
        L9_2 = true
        return L9_2
      end
    end
  end
  if A2_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2._is_first_cell
    L7_2 = A1_2
    L8_2 = A3_2
    return L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = false
  return L5_2
end
L1_1._is_board_cell_can_go = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._init_board_data_item
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_modifier_select_data
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_board
  L4_2 = L3_2
  L3_2 = L3_2.InitChestBoardItem
  L5_2 = A1_2
  L6_2 = A0_2._on_modifier_cell_item_change
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_history_line
  L5_2 = A1_2.HistoryCellIDList
  L3_2(L4_2, L5_2)
end
L1_1.setup_modifier_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = A2_2.UserObjectData
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.ChessRogueBoardCellPanel
    L7_2 = G
    L7_2 = L7_2.ChessRogueBoardCellPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A2_2.transform
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_long_press_button_mutex
    L6_2 = A0_2._long_press_button_mutex
    L4_2(L5_2, L6_2)
    A2_2.UserObjectData = L3_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_same_cell
  L6_2 = A1_2
  L7_2 = A0_2._cur_cell_data_item
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._is_cell_break
  L7_2 = A1_2
  L8_2 = A0_2._cur_cell_data_item
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_view
  L8_2 = A1_2
  L9_2 = L5_2 or L9_2
  if not L5_2 then
    L9_2 = L4_2
  end
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_node_break
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    L7_2 = A0_2
    L6_2 = A0_2._is_modifier_cell_can_select
    L8_2 = A1_2
    L9_2 = A0_2._cur_cell_data_item
    L10_2 = A0_2._modifier_select_data
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = L3_2
    L7_2 = L3_2.setup_node_canselect
    L9_2 = L6_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L3_2
    L7_2 = L3_2.setup_node_reject
    L9_2 = not L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L3_2
    L7_2 = L3_2.setup_modifier_bg
    L9_2 = L4_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L3_2
    L7_2 = L3_2.set_long_press_status
    if L6_2 then
      L9_2 = 0
      if L9_2 then
        goto lbl_65
      end
    end
    L9_2 = 1
    ::lbl_65::
    L7_2(L8_2, L9_2)
  else
    L7_2 = L3_2
    L6_2 = L3_2.setup_modifier_bg
    L8_2 = L4_2
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L3_2
    L6_2 = L3_2.set_long_press_hint_break
    L6_2(L7_2)
  end
  L7_2 = L3_2
  L6_2 = L3_2.set_detail_enable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A2_2
  L6_2 = A2_2.SetInteractable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
end
L1_1._on_modifier_cell_item_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._is_modifier_cell_can_select
  L4_2 = A1_2
  L5_2 = A0_2._cur_cell_data_item
  L6_2 = A0_2._modifier_select_data
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1.is_modifier_cell_can_selected = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._is_same_cell
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L4_2 = true
    return L4_2
  end
  if A1_2 == nil or A3_2 == nil then
    L4_2 = false
    return L4_2
  end
  L5_2 = A3_2
  L4_2 = A3_2.IsCellCanSelect
  L6_2 = A1_2
  return L4_2(L5_2, L6_2)
end
L1_1._is_modifier_cell_can_select = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._init_board_data_item
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_board
  L3_2 = L2_2
  L2_2 = L2_2.InitChestBoardItem
  L4_2 = A1_2
  L5_2 = A0_2._on_menu_cell_item_change
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_history_line
  L4_2 = A1_2.HistoryCellIDList
  L2_2(L3_2, L4_2)
end
L1_1.setup_board_menu_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A2_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = A2_2.UserObjectData
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.ChessRogueBoardCellPanel
    L7_2 = G
    L7_2 = L7_2.ChessRogueBoardCellPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A2_2.transform
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_long_press_button_mutex
    L6_2 = A0_2._long_press_button_mutex
    L4_2(L5_2, L6_2)
    A2_2.UserObjectData = L3_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_same_cell
  L6_2 = A1_2
  L7_2 = A0_2._cur_cell_data_item
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._is_cell_break
  L7_2 = A1_2
  L8_2 = A0_2._cur_cell_data_item
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 then
    L5_2 = not L4_2
  end
  L7_2 = L3_2
  L6_2 = L3_2.setup_view
  L8_2 = A1_2
  L9_2 = L5_2 or L9_2
  if not L5_2 then
    L9_2 = L4_2
  end
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_node_break
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    L7_2 = L3_2
    L6_2 = L3_2.setup_node_canselect
    L8_2 = false
    L6_2(L7_2, L8_2)
    L7_2 = L3_2
    L6_2 = L3_2.setup_node_reject
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L7_2 = A2_2
  L6_2 = A2_2.SetInteractable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_bg
  L8_2 = L4_2
  L9_2 = not L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_2
  L6_2 = L3_2.set_long_press_hint_normal
  L6_2(L7_2)
  L7_2 = L3_2
  L6_2 = L3_2.set_detail_enable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
end
L1_1._on_menu_cell_item_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._init_board_data_item
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_board
  L4_2 = L3_2
  L3_2 = L3_2.InitChestBoardItem
  L5_2 = A1_2
  L6_2 = A0_2._on_create_cell_item_change
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.setup_create_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == nil or A1_2 == nil then
    return
  end
  L3_2 = A2_2.UserObjectData
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.ChessRogueBoardCellPanel
    L7_2 = G
    L7_2 = L7_2.ChessRogueBoardCellPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A2_2.transform
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.set_long_press_button_mutex
    L6_2 = A0_2._long_press_button_mutex
    L4_2(L5_2, L6_2)
    A2_2.UserObjectData = L3_2
  end
  L4_2 = false
  L5_2 = false
  L7_2 = L3_2
  L6_2 = L3_2.setup_view
  L8_2 = A1_2
  L9_2 = false
  L10_2 = A0_2._cell_or_board_change_data
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_node_break
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    L7_2 = L3_2
    L6_2 = L3_2.setup_node_canselect
    L8_2 = false
    L6_2(L7_2, L8_2)
    L7_2 = L3_2
    L6_2 = L3_2.setup_node_reject
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L7_2 = A2_2
  L6_2 = A2_2.SetInteractable
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L3_2
  L6_2 = L3_2.set_btn_interactable
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = L3_2
  L6_2 = L3_2.setup_bg
  L8_2 = L4_2
  L9_2 = not L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L3_2
  L6_2 = L3_2.set_long_press_hint_normal
  L6_2(L7_2)
end
L1_1._on_create_cell_item_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_board
  if L1_2 ~= nil then
    L1_2 = A0_2._board_data_item
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_board
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L3_2 = A0_2._board_data_item
  L4_2 = L3_2
  L3_2 = L3_2.GetStartColNum
  L3_2 = L3_2(L4_2)
  L4_2 = 0.05
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.play_map_fade_in = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_cell_panel
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  if not L2_2 then
    L3_2 = A0_2._cur_location_panel
    if L3_2 == nil then
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_cur_location_panel
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.safe_set_active
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  if L2_2 then
    L5_2 = L3_2
    L4_2 = L3_2.refresh_position
    L7_2 = L1_2
    L6_2 = L1_2.get_root_transform
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = L3_2
    L4_2 = L3_2.refresh_icon
    L4_2(L5_2)
  end
end
L1_1.setup_cur_cell_location = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._get_cur_location_panel
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.play_bubble_animation
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L1_1.play_bubble_animation = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._get_cur_location_panel
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_bubble_state
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L1_1.setup_bubble_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.WaitSecondAction
  L3_2 = 1
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._create_location_panel
    L0_3 = L0_3(L1_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._get_cur_cell_panel
    L1_3 = L1_3(L2_3)
    if L1_3 ~= nil then
      L3_3 = L1_3
      L2_3 = L1_3.show_node_content
      L4_3 = false
      L2_3(L3_3, L4_3)
      L3_3 = L0_3
      L2_3 = L0_3.refresh_position
      L5_3 = L1_3
      L4_3 = L1_3.get_root_transform
      L4_3, L5_3 = L4_3(L5_3)
      L2_3(L3_3, L4_3, L5_3)
    end
    L3_3 = L0_3
    L2_3 = L0_3.refresh_icon
    L2_3(L3_3)
    L3_3 = L0_3
    L2_3 = L0_3.play_fade_in_partical
    L2_3(L3_3)
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  return L1_2
end
L1_1.get_location_fade_in_action = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cell_panel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._create_location_panel
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.safe_set_active
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.get_fade_in_animation_action
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init_call_back
  L7_2 = A0_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_position
    L2_3 = L2_2
    L3_3 = L2_3
    L2_3 = L2_3.get_root_transform
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_icon
    L0_3(L1_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.safe_set_active
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.play_fade_in_partical
    L0_3(L1_3)
    L0_3 = A0_2._cur_location_panel
    if L0_3 ~= nil then
      L0_3 = A0_2._cur_location_panel
      L1_3 = L0_3
      L0_3 = L0_3.play_fade_out_animation
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_cur_cell_panel
    L0_3 = L0_3(L1_3)
    if L0_3 ~= nil then
      L2_3 = L0_3
      L1_3 = L0_3.setup_node_canselect
      L3_3 = false
      L1_3(L2_3, L3_3)
      L2_3 = L0_3
      L1_3 = L0_3.setup_node_break
      L3_3 = true
      L1_3(L2_3, L3_3)
      L2_3 = L0_3
      L1_3 = L0_3.show_history_dot
      L3_3 = true
      L1_3(L2_3, L3_3)
      L2_3 = L0_3
      L1_3 = L0_3.set_node_break_status_fixed
      L1_3(L2_3)
    end
  end
  L5_2(L6_2, L7_2, L8_2)
  return L4_2
end
L1_1.get_location_move_animation_action = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cell_panel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._create_location_panel
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.refresh_position
  L7_2 = L2_2
  L6_2 = L2_2.get_root_transform
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.refresh_icon
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.play_fade_in_animation
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.play_fade_in_partical
  L4_2(L5_2)
  L4_2 = A0_2._cur_location_panel
  if L4_2 ~= nil then
    L4_2 = A0_2._cur_location_panel
    L5_2 = L4_2
    L4_2 = L4_2.play_fade_out_animation
    L4_2(L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_cur_cell_panel
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.setup_node_canselect
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.setup_node_break
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.show_history_dot
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_node_break_status_fixed
    L5_2(L6_2)
  end
end
L1_1.play_location_move_animation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_cell_data_item
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_cell_panel
  L3_2 = A0_2._cur_cell_data_item
  L3_2 = L3_2.CellID
  return L1_2(L2_2, L3_2)
end
L1_1._get_cur_cell_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_location_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._create_location_panel
    L1_2 = L1_2(L2_2)
    A0_2._cur_location_panel = L1_2
  end
  L1_2 = A0_2._cur_location_panel
  return L1_2
end
L1_1._get_cur_location_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_meta
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[0]
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_meta
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ChessRogueBoardLocationPanel
  L5_2 = G
  L5_2 = L5_2.ChessRogueBoardLocationPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L1_1._create_location_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_meta
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_line_panel
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L6_2 = A0_2
  L5_2 = A0_2._get_history_cell_panel
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1.setup_history_line = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._line_panel
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.prefab_load_meta
    L1_2 = L1_2.MultiPrefabList
    L1_2 = L1_2.Count
    if L1_2 < 2 then
      L1_2 = nil
      return L1_2
    end
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.prefab_load_meta
    L3_2 = L3_2.MultiPrefabList
    L3_2 = L3_2[1]
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_load_meta
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.ChessRogueBoardLinePanel
    L5_2 = G
    L5_2 = L5_2.ChessRogueBoardLinePanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._line_panel = L2_2
    L2_2 = A0_2._line_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._line_panel
  return L1_2
end
L1_1._get_line_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if not (L2_2 <= 1) then
      goto lbl_8
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_8::
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L9_2 = A0_2
    L8_2 = A0_2.get_cell_panel
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = #L2_2
      L11_2 = L11_2 + 1
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  return L2_2
end
L1_1._get_history_cell_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_board
  L3_2 = L2_2
  L2_2 = L2_2.GetMonoItemList
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Count
    if L3_2 ~= 0 then
      goto lbl_12
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_12::
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L8_2 = L7_2.UserObjectData
      if L8_2 ~= nil then
        L8_2 = L7_2.UserObjectData
        L10_2 = L8_2
        L9_2 = L8_2.get_cell_data_item
        L9_2 = L9_2(L10_2)
        L11_2 = A0_2
        L10_2 = A0_2._is_same_cell
        L12_2 = A1_2
        L13_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L12_2 = L8_2
        L11_2 = L8_2.setup_btn_checked
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      end
    end
  end
end
L1_1.refresh_btn_selected_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 ~= nil and A2_2 ~= nil
  return L3_2
end
L1_1._is_same_cell = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.PosX
  L4_2 = A2_2.PosX
  L4_2 = A0_2
  L3_2 = A0_2._is_same_cell
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2 ~= nil and A2_2 ~= nil and L3_2
  return L3_2
end
L1_1._is_cell_break = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil or A2_2 == nil then
    L4_2 = fasle
    return L4_2
  end
  L4_2 = A1_2.PosX
  L5_2 = A2_2.PosX
  if L4_2 > L5_2 then
    L4_2 = false
    return L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_same_cell
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = A1_2.CellSpecialType
  L5_2 = CS
  L5_2 = L5_2.DKKGDJEEEBN
  L5_2 = L5_2.OKFNLJOJJIL
  if L4_2 == L5_2 then
    L5_2 = false
    return L5_2
  end
  if A3_2 then
    L5_2 = CS
    L5_2 = L5_2.DKKGDJEEEBN
    L5_2 = L5_2.JBDJKGBDAPF
    if L4_2 == L5_2 then
      L5_2 = false
      return L5_2
    end
  end
  L5_2 = true
  return L5_2
end
L1_1._is_cell_need_break = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L2_2 = L1_2
  L1_2 = L1_2.HasProtectSpecialTypeModifier
  return L1_2(L2_2)
end
L1_1._need_protect_not_break_stamp = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 ~= nil and A2_2 ~= nil
  return L3_2
end
L1_1._is_first_cell = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChessRogueBoardAnimationType
  L4_2 = L3_2.MarkTypeFadeIn
  L4_2 = #L4_2
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._get_cells_tag_fade_action
    L6_2 = A1_2
    L7_2 = true
    return L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = L3_2.MarkTypeFadeOut
  L4_2 = #L4_2
  if A2_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._get_cells_tag_fade_action
    L6_2 = A1_2
    L7_2 = false
    return L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = L3_2.Remembrance
  L4_2 = #L4_2
  L4_2 = A2_2 == L4_2
  L5_2 = L3_2.Remembrance
  L5_2 = #L5_2
  L5_2 = A2_2 == L5_2
  L7_2 = A0_2
  L6_2 = A0_2._get_cells_aeon_animation_action
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L6_2
end
L1_1.get_animation_action = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2.get_cell_panel
  L5_2 = A1_2[0]
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L4_2 = nil
    return L4_2
  end
  if A2_2 then
    L5_2 = L3_2
    L4_2 = L3_2.get_tag_fade_in_action
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_16
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.try_get_tag_fade_out_action
  L4_2 = L4_2(L5_2)
  ::lbl_16::
  if L4_2 == nil then
    L5_2 = nil
    return L5_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.init_call_back
  L7_2 = A0_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = A1_2
    if L0_3 ~= nil then
      L0_3 = A1_2.Count
      if L0_3 ~= 0 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.get_cell_panel
    L2_3 = A1_2[0]
    L0_3 = L0_3(L1_3, L2_3)
    L2_3 = L0_3
    L1_3 = L0_3.refresh_mark_type
    L1_3(L2_3)
    L1_3 = A1_2.Count
    if 1 < L1_3 then
      L1_3 = 1
      L2_3 = A1_2.Count
      L2_3 = L2_3 - 1
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_2
        L6_3 = L5_3
        L5_3 = L5_3.get_cell_panel
        L7_3 = A1_2[L4_3]
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 ~= nil then
          L7_3 = L5_3
          L6_3 = L5_3.refresh_mark_type
          L6_3(L7_3)
          L6_3 = A2_2
          if L6_3 then
            L7_3 = L5_3
            L6_3 = L5_3.play_tag_fade_in
            L6_3(L7_3)
          else
            L7_3 = L5_3
            L6_3 = L5_3.play_tag_fade_out
            L6_3(L7_3)
          end
        end
      end
    end
  end
  L5_2(L6_2, L7_2, L8_2)
  return L4_2
end
L1_1._get_cells_tag_fade_action = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2.get_cell_panel
  L7_2 = A1_2[0]
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == nil then
    L6_2 = nil
    return L6_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.get_aeon_animation_action
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L6_2
  L7_2 = L6_2.init_call_back
  L9_2 = A0_2
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = A1_2
    if L0_3 ~= nil then
      L0_3 = A1_2.Count
      if L0_3 ~= 0 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A3_2
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._set_need_refresh_cell_id_list
      L2_3 = A1_2
      L3_3 = A4_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.get_cell_panel
    L2_3 = A1_2[0]
    L0_3 = L0_3(L1_3, L2_3)
    L2_3 = L0_3
    L1_3 = L0_3._try_load_aeon_effect
    L3_3 = A2_2
    L1_3(L2_3, L3_3)
    L1_3 = A1_2.Count
    if 1 < L1_3 then
      L1_3 = 1
      L2_3 = A1_2.Count
      L2_3 = L2_3 - 1
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_2
        L6_3 = L5_3
        L5_3 = L5_3.get_cell_panel
        L7_3 = A1_2[L4_3]
        L5_3 = L5_3(L6_3, L7_3)
        if L5_3 ~= nil then
          L7_3 = L5_3
          L6_3 = L5_3.play_aeon_animation_from_begin
          L8_3 = A2_2
          L6_3(L7_3, L8_3)
        end
      end
    end
  end
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L7_2 = L6_2.init_end_call_back
  L9_2 = A0_2
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._reset_cell_aniamtion
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  L7_2(L8_2, L9_2, L10_2)
  return L6_2
end
L1_1._get_cells_aeon_animation_action = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  if L2_2 and A1_2 then
    L2_2 = 0
    L3_2 = A1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L7_2 = A0_2
      L6_2 = A0_2.get_cell_panel
      L8_2 = A1_2[L5_2]
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L8_2 = L6_2
        L7_2 = L6_2.reset_animation
        L7_2(L8_2)
      end
    end
  end
end
L1_1._reset_cell_aniamtion = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._binder
  if L3_2 and A1_2 then
    L3_2 = 0
    L4_2 = A1_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = A0_2
      L7_2 = A0_2.get_cell_panel
      L9_2 = A1_2[L6_2]
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L9_2 = L7_2
        L8_2 = L7_2.refresh_content
        L10_2 = A2_2
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L1_1._refresh_cell_content_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._need_refresh_cell_id_list = A1_2
  A0_2._not_refresh_special_type = A2_2
end
L1_1._set_need_refresh_cell_id_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "BtnChessmanRefresh" then
    L3_2 = A0_2
    L2_2 = A0_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._need_refresh_cell_id_list
      if L2_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2._refresh_cell_content_view
        L4_2 = A0_2._need_refresh_cell_id_list
        L5_2 = A0_2._not_refresh_special_type
        L2_2(L3_2, L4_2, L5_2)
        A0_2._need_refresh_cell_id_list = nil
        A0_2._not_refresh_special_type = nil
      end
    end
  end
end
L1_1._on_ui_animation_event = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A3_2
  if A2_2 then
    L5_2 = A0_2._board_data_item
    if L5_2 then
      L5_2 = A0_2._board_data_item
      L4_2 = L5_2.CellDataList
    end
  end
  if L4_2 ~= nil then
    L5_2 = L4_2.Count
    if L5_2 ~= 0 then
      goto lbl_16
    end
  end
  L5_2 = nil
  do return L5_2 end
  ::lbl_16::
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.Collections
  L5_2 = L5_2.Generic
  L5_2 = L5_2.List
  L6_2 = CS
  L6_2 = L6_2.System
  L6_2 = L6_2.UInt32
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2()
  L6_2 = 0
  L7_2 = L4_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L4_2[L9_2]
    if L10_2 ~= nil then
      L11_2 = L5_2
      L10_2 = L5_2.Add
      L12_2 = L4_2[L9_2]
      L12_2 = L12_2.CellID
      L10_2(L11_2, L12_2)
    end
  end
  L6_2 = G
  L6_2 = L6_2.ChessRogueAnimationTypeFactory
  L6_2 = L6_2.get_animation_type_for_start_effect
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2.get_animation_action
  L9_2 = L5_2
  L10_2 = L6_2
  return L7_2(L8_2, L9_2, L10_2)
end
L1_1.get_dice_start_effect_animation_action = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_cell_panel
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil or A2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_hex_direction
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L0_1.None
    if L3_2 ~= L4_2 then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L4_2 = A1_2.PosX
  L5_2 = A1_2.PosY
  L6_2 = L0_1.UpLeftOrUpRight
  if L3_2 == L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._get_cell_by_hex_direction
    L8_2 = L0_1.UpLeft
    L9_2 = L4_2
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if not L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._get_cell_by_hex_direction
      L8_2 = L0_1.UpRight
      L9_2 = L4_2
      L10_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    return L6_2
  else
    L6_2 = L0_1.UpRightOrUpLeft
    if L3_2 == L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._get_cell_by_hex_direction
      L8_2 = L0_1.UpRight
      L9_2 = L4_2
      L10_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      if not L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._get_cell_by_hex_direction
        L8_2 = L0_1.UpLeft
        L9_2 = L4_2
        L10_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      end
      return L6_2
    else
      L6_2 = L0_1.DownLeftOrDownRight
      if L3_2 == L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2._get_cell_by_hex_direction
        L8_2 = L0_1.DownLeft
        L9_2 = L4_2
        L10_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        if not L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2._get_cell_by_hex_direction
          L8_2 = L0_1.DownRight
          L9_2 = L4_2
          L10_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        end
        return L6_2
      else
        L6_2 = L0_1.DownRightOrDownLeft
        if L3_2 == L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2._get_cell_by_hex_direction
          L8_2 = L0_1.DownRight
          L9_2 = L4_2
          L10_2 = L5_2
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
          if not L6_2 then
            L7_2 = A0_2
            L6_2 = A0_2._get_cell_by_hex_direction
            L8_2 = L0_1.DownLeft
            L9_2 = L4_2
            L10_2 = L5_2
            L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
          end
          return L6_2
        else
          L7_2 = A0_2
          L6_2 = A0_2._get_cell_by_hex_direction
          L8_2 = L3_2
          L9_2 = L4_2
          L10_2 = L5_2
          return L6_2(L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L1_1.get_navigation_cell_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.MoveDirection
  L3_2 = A1_2.LeftStictX
  L4_2 = A1_2.LeftStictY
  if L3_2 == 0 and L4_2 == 0 then
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.EventSystems
    L5_2 = L5_2.MoveDirection
    L5_2 = L5_2.Left
    if L2_2 == L5_2 then
      L5_2 = L0_1.Left
      return L5_2
    else
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.EventSystems
      L5_2 = L5_2.MoveDirection
      L5_2 = L5_2.Right
      if L2_2 == L5_2 then
        L5_2 = L0_1.Right
        return L5_2
      else
        L5_2 = CS
        L5_2 = L5_2.UnityEngine
        L5_2 = L5_2.EventSystems
        L5_2 = L5_2.MoveDirection
        L5_2 = L5_2.Up
        if L2_2 == L5_2 then
          L5_2 = L0_1.UpLeftOrUpRight
          return L5_2
        else
          L5_2 = CS
          L5_2 = L5_2.UnityEngine
          L5_2 = L5_2.EventSystems
          L5_2 = L5_2.MoveDirection
          L5_2 = L5_2.Down
          if L2_2 == L5_2 then
            L5_2 = L0_1.DownLeftOrDownRight
            return L5_2
          end
        end
      end
    end
    L5_2 = nil
    return L5_2
  end
  L5_2 = L0_1.None
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Left
  if L2_2 == L6_2 then
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = math
    L7_2 = L7_2.abs
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 * L7_2
    L6_2 = L6_2 * 3
    L7_2 = math
    L7_2 = L7_2.abs
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L8_2 = math
    L8_2 = L8_2.abs
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L7_2 = L7_2 * L8_2
    if L6_2 > L7_2 then
      if 0 < L4_2 then
        L6_2 = L0_1.UpLeft
        if L6_2 then
          goto lbl_84
          L5_2 = L6_2 or L5_2
        end
      end
      L5_2 = L0_1.DownLeft
      ::lbl_84::
    else
      L5_2 = L0_1.Left
    end
  else
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.EventSystems
    L6_2 = L6_2.MoveDirection
    L6_2 = L6_2.Right
    if L2_2 == L6_2 then
      L6_2 = math
      L6_2 = L6_2.abs
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L7_2 = math
      L7_2 = L7_2.abs
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 * L7_2
      L6_2 = L6_2 * 3
      L7_2 = math
      L7_2 = L7_2.abs
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      L8_2 = math
      L8_2 = L8_2.abs
      L9_2 = L3_2
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 * L8_2
      if L6_2 > L7_2 then
        if 0 < L4_2 then
          L6_2 = L0_1.UpRight
          if L6_2 then
            goto lbl_121
            L5_2 = L6_2 or L5_2
          end
        end
        L5_2 = L0_1.DownRight
        ::lbl_121::
      else
        L5_2 = L0_1.Right
      end
    else
      L6_2 = CS
      L6_2 = L6_2.UnityEngine
      L6_2 = L6_2.EventSystems
      L6_2 = L6_2.MoveDirection
      L6_2 = L6_2.Up
      if L2_2 == L6_2 then
        L6_2 = math
        L6_2 = L6_2.abs
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        L7_2 = math
        L7_2 = L7_2.abs
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 * L7_2
        L7_2 = math
        L7_2 = L7_2.abs
        L8_2 = L3_2
        L7_2 = L7_2(L8_2)
        L7_2 = 3 * L7_2
        L8_2 = math
        L8_2 = L8_2.abs
        L9_2 = L3_2
        L8_2 = L8_2(L9_2)
        L7_2 = L7_2 * L8_2
        if L6_2 > L7_2 then
          if 0 < L3_2 then
            L6_2 = L0_1.UpRightOrUpLeft
            if L6_2 then
              goto lbl_158
              L5_2 = L6_2 or L5_2
            end
          end
          L5_2 = L0_1.UpLeftOrUpRight
          ::lbl_158::
        else
          if 0 < L3_2 then
            L6_2 = L0_1.UpRight
            if L6_2 then
              goto lbl_165
              L5_2 = L6_2 or L5_2
            end
          end
          L5_2 = L0_1.UpLeft
        end
        ::lbl_165::
      else
        L6_2 = CS
        L6_2 = L6_2.UnityEngine
        L6_2 = L6_2.EventSystems
        L6_2 = L6_2.MoveDirection
        L6_2 = L6_2.Down
        if L2_2 == L6_2 then
          L6_2 = math
          L6_2 = L6_2.abs
          L7_2 = L4_2
          L6_2 = L6_2(L7_2)
          L7_2 = math
          L7_2 = L7_2.abs
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L6_2 = L6_2 * L7_2
          L7_2 = math
          L7_2 = L7_2.abs
          L8_2 = L3_2
          L7_2 = L7_2(L8_2)
          L7_2 = 3 * L7_2
          L8_2 = math
          L8_2 = L8_2.abs
          L9_2 = L3_2
          L8_2 = L8_2(L9_2)
          L7_2 = L7_2 * L8_2
          if L6_2 > L7_2 then
            if 0 < L3_2 then
              L6_2 = L0_1.DownRightOrDownLeft
              if L6_2 then
                goto lbl_200
                L5_2 = L6_2 or L5_2
              end
            end
            L5_2 = L0_1.DownLeftOrDownRight
            ::lbl_200::
          else
            if 0 < L3_2 then
              L6_2 = L0_1.DownRight
              if L6_2 then
                goto lbl_207
                L5_2 = L6_2 or L5_2
              end
            end
            L5_2 = L0_1.DownLeft
          end
        end
      end
    end
  end
  ::lbl_207::
  return L5_2
end
L1_1._get_hex_direction = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2
  L4_2 = A0_2._get_hex_direction_pos_offset
  L6_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L7_2 = A0_2
  L6_2 = A0_2.get_cell_panel_by_pos
  L8_2 = A2_2 + L4_2
  L9_2 = A3_2 + L5_2
  return L6_2(L7_2, L8_2, L9_2)
end
L1_1._get_cell_by_hex_direction = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1.Left
  if A1_2 == L2_2 then
    L2_2 = -2
    L3_2 = 0
    return L2_2, L3_2
  end
  L2_2 = L0_1.Right
  if A1_2 == L2_2 then
    L2_2 = 2
    L3_2 = 0
    return L2_2, L3_2
  end
  L2_2 = L0_1.UpLeft
  if A1_2 == L2_2 then
    L2_2 = -1
    L3_2 = -1
    return L2_2, L3_2
  end
  L2_2 = L0_1.UpRight
  if A1_2 == L2_2 then
    L2_2 = 1
    L3_2 = -1
    return L2_2, L3_2
  end
  L2_2 = L0_1.DownLeft
  if A1_2 == L2_2 then
    L2_2 = -1
    L3_2 = 1
    return L2_2, L3_2
  end
  L2_2 = L0_1.DownRight
  if A1_2 == L2_2 then
    L2_2 = 1
    L3_2 = 1
    return L2_2, L3_2
  end
end
L1_1._get_hex_direction_pos_offset = L2_1
return L1_1
