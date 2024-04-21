local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceEventPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro
  L4_2 = L0_1._on_btn_intro
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = L0_1._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.is_area_the_guide_area_1
  L2_2 = L1_1.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurAreaID
  L1_2 = L1_2(L2_2)
  A0_2._need_hide_certain_node = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  A0_2._modifierSelectData = A1_2
end
L0_1.init_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._panel_board_frame = A1_2
  L2_2 = A0_2._panel_board_frame
  L3_2 = L2_2
  L2_2 = L2_2.get_map_panel
  L2_2 = L2_2(L3_2)
  A0_2._panel_board_map = L2_2
end
L0_1.init_map_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_PropertyCheck"
  L5_2 = "Maze_ShortCutWheel"
  L6_2 = "ActionGroup_Switch"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_action_point_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dice_result
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_board_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_selected_cell_tip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cancel_btn
  L1_2(L2_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._modifierSelectData
  L1_2 = A0_2._modifierSelectData
  L2_2 = L1_2
  L1_2 = L1_2.HasCellCanSelect
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L0_1.has_cell_can_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_action_point
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_action_point_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetCurDiceSurfaceDisplayDataItem
  L1_2 = L1_2(L2_2)
  A0_2._result_dice_surface_display_data = L1_2
  L1_2 = A0_2._result_dice_surface_display_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_event_info
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._result_dice_surface_display_data
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_dice_result = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._modifierSelectData
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1.ChessRogueData
  L2_2 = L1_2
  L1_2 = L1_2.GetCurChessRogueBoardDataItem
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._panel_board_map
    if L2_2 then
      L2_2 = L1_2.CurCellDataItem
      A0_2._cell_data_item = L2_2
      L2_2 = A0_2._panel_board_map
      L3_2 = L2_2
      L2_2 = L2_2.setup_modifier_view
      L4_2 = L1_2
      L5_2 = A0_2._modifierSelectData
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._panel_board_map
      L3_2 = L2_2
      L2_2 = L2_2.setup_cur_cell_location
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._refresh_selected_cell_view
      L2_2(L3_2)
    end
  end
end
L0_1._setup_board_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.has_cell_can_select
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_cell_can_confirm
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_confirm
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetInteractable
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_btn_confirm_key_map_info
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._panel_board_map
    L4_2 = L3_2
    L3_2 = L3_2.is_cell_panel_can_show_detail
    L5_2 = A0_2._cell_data_item
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._panel_board_map
    L5_2 = L4_2
    L4_2 = L4_2.is_cur_location_cell
    L6_2 = A0_2._cell_data_item
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_tip_select
    L6_2 = L5_2
    L5_2 = L5_2.setup_can_select_view
    L7_2 = A0_2._cell_data_item
    L8_2 = L3_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    if L3_2 then
      L6_2 = A0_2
      L5_2 = A0_2.setup_short_cut_hint_panel
      L7_2 = {}
      L8_2 = "ActionGroup_PropertyCheck"
      L9_2 = "Maze_ShortCutWheel"
      L10_2 = "ActionGroup_Switch"
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L5_2(L6_2, L7_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2.setup_short_cut_hint_panel
      L7_2 = {}
      L8_2 = "Maze_ShortCutWheel"
      L9_2 = "ActionGroup_Switch"
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L5_2(L6_2, L7_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_tip_select
    L3_2 = L2_2
    L2_2 = L2_2.setup_forbid_select_view
    L4_2 = "UIText_RogueDLC_DiceSurface_NoTarget"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_selected_cell_tip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_board_map
  if L1_2 then
    L1_2 = A0_2._panel_board_map
    L2_2 = L1_2
    L1_2 = L1_2.refresh_btn_selected_view
    L3_2 = A0_2._cell_data_item
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_selected_cell_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cell_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._cell_data_item
    L1_2 = L1_2.CellID
    if L1_2 ~= 0 then
      L1_2 = A0_2._panel_board_map
      if L1_2 then
        L1_2 = A0_2._panel_board_map
        L2_2 = L1_2
        L1_2 = L1_2.is_cur_location_cell
        L3_2 = A0_2._cell_data_item
        L1_2 = L1_2(L2_2, L3_2)
        L1_2 = A0_2._panel_board_map
        L2_2 = L1_2
        L1_2 = L1_2.is_modifier_cell_can_selected
        L3_2 = A0_2._cell_data_item
        L1_2 = not L1_2 and L1_2
      end
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_cell_can_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
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
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.IsInGuideOne
  L2_2 = L1_2 == L2_2 and L2_2
  L4_2 = A0_2
  L3_2 = A0_2.has_cell_can_select
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_cancel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L2_2 or L6_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.ChessRogueUtils
  L4_2 = L4_2.get_const_dice_surface_abandon_reward
  L4_2 = L4_2()
  L5_2 = G
  L5_2 = L5_2.LuaToCs
  L5_2 = L5_2.GetDicFirstItem
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 == nil then
    return
  end
  L6_2 = L5_2.Key
  L6_2 = L6_2.IntValue
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.ChessRogueModule
  L8_2 = L7_2
  L7_2 = L7_2.GetGiveUpObtainCoin
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2 or L8_2
  if not (0 < L7_2) or not L7_2 then
    L8_2 = L5_2.Value
    L8_2 = L8_2.IntValue
  end
  A0_2._cancel_currency_num = L8_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.InventoryModule
  L9_2 = L9_2.GetItemRow
  L10_2 = L6_2
  L9_2 = L9_2(L10_2)
  if L9_2 ~= nil then
    L11_2 = A0_2
    L10_2 = A0_2._async_load_sprite_to
    L12_2 = A0_2._binder
    L12_2 = L12_2.img_cancel_currency_icon
    L13_2 = L9_2.ItemIconPath
    L10_2(L11_2, L12_2, L13_2)
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.text_cancel_currency_num
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetText
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
end
L0_1._setup_cancel_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCMarkTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_2.MarkTypeNameID
  L3_2 = L3_2(L4_2)
  return L3_2
end
L0_1._get_mark_type_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cell_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._result_dice_surface_display_data
    if L1_2 ~= nil then
      L1_2 = A0_2._cell_data_item
      L1_2 = L1_2.MarkType
      if L1_2 ~= nil then
        L1_2 = A0_2._cell_data_item
        L1_2 = L1_2.MarkType
        if L1_2 ~= 0 then
          goto lbl_17
        end
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_17::
  L1_2 = A0_2._result_dice_surface_display_data
  L1_2 = L1_2.DiceEffectType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.SetMarkType
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = A0_2._result_dice_surface_display_data
    L1_2 = L1_2.DiceEffectType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ModifierEffectType
    L2_2 = L2_2.EnhanceSeedCell
    if L1_2 == L2_2 then
      L1_2 = A0_2._cell_data_item
      L1_2 = L1_2.BlockType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.RogueDLCBlockType
      L2_2 = L2_2.MonsterElite
      L2_2 = #L2_2
      L1_2 = L1_2 == L2_2
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_modify_need_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.GetRandomResultID
    L2_2 = L2_2(L3_2)
    if not (L2_2 <= 0) then
      goto lbl_9
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_9::
  L2_2 = L1_1.ChessRogueData
  L2_2 = L2_2.DiceInfo
  L2_2 = L2_2.CurDiceSurfaceID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueDLCAeonDiceSurfaceExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = nil
    return L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_event_info
  L5_2 = L4_2
  L4_2 = L4_2.get_elation_random_animation_action
  L7_2 = A1_2
  L6_2 = A1_2.GetRandomResultText
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2.Rarity
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1.get_elation_random_animation_action = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    if L2_2 then
      A0_2._cell_data_item = A1_2
    else
      L2_2 = A0_2._panel_board_map
      L3_2 = L2_2
      L2_2 = L2_2.is_modifier_cell_can_selected
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
        L4_2 = "UIText_RogueDLC_DiceSurface_Target_Forbidden"
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
      L4_2 = "bubbleChoose"
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._setup_selected_cell_tip
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_selected_cell_view
    L2_2(L3_2)
  end
end
L0_1._on_click_cell = L2_1
function L2_1(A0_2)
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
L0_1._on_refresh_cell_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleDialog"
  L1_2(L2_2)
end
L0_1._on_btn_intro = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.empty
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._send_modifier_select_cell_req
      L3_3 = 0
      L1_3(L2_3, L3_3)
    end
  end
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._cancel_currency_num
  if L2_2 == nil then
    A0_2._cancel_currency_num = 10
  end
  L3_2 = L1_2
  L2_2 = L1_2.SetContent
  L4_2 = "UIText_RogueDLC_DiceSurface_Abandon_Hint"
  L5_2 = A0_2._cancel_currency_num
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_cancel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._is_cell_can_confirm
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_modify_need_confirm
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowOkCancelHint
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.TextID
      L2_2 = L2_2.empty
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TextID
      L3_2 = L3_2.empty
      function L4_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._send_modifier_select_cell_req
          L3_3 = A0_2._cell_data_item
          L3_3 = L3_3.CellID
          L1_3(L2_3, L3_3)
        end
      end
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L3_2 = L1_2
      L2_2 = L1_2.SetContent
      L4_2 = "UIText_RogueDLC_DiceSurface_MarkReplace_Hint"
      L6_2 = A0_2
      L5_2 = A0_2._get_mark_type_name
      L7_2 = A0_2._cell_data_item
      L7_2 = L7_2.MarkType
      L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._send_modifier_select_cell_req
      L3_2 = A0_2._cell_data_item
      L3_2 = L3_2.CellID
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  if L2_2 ~= nil then
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.init_modifer_event_action_queue
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.DDHCNKPPCGA
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.IJACPEKABHJ
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._send_modifier_select_cell_req = L2_1
function L2_1(A0_2)
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_chess_rogue_left_stick_input = L2_1
return L0_1
