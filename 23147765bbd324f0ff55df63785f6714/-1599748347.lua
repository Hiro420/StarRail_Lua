local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Layer.ChessRogueNewLevelDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueNewLevelDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = "9311"
L3_1 = {}
L3_1[1] = "DiceWelcomToastDialog_Show_A"
L3_1[2] = "DiceWelcomToastDialog_Show_B"
L3_1[3] = "DiceWelcomToastDialog_Show_C"
L4_1 = {}
L4_1[1] = 33
L4_1[2] = 34
L4_1[3] = 32
L5_1 = "DiceWelcomToastDialog_MapSwitch"
L6_1 = {}
L6_1.ShowLayer = 1
L6_1.CreateMap = 2
L6_1.ShowDiceEffect = 3
L6_1.ShowMap = 4
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_ExitWithCut
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueNewLevelDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_playing_anim = false
  A0_2._pause_game = true
  A0_2._enable_click_skip_anim = false
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.empty_exit_btn
  L4_2 = L0_1._on_exit_btn_clicked
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
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = L0_1._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClickChessRogueBoardCell
  L4_2 = L0_1._on_click_cell
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ChessRogueData
  A0_2._chess_rogue_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsInGuideOne
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._chess_rogue_data
    L1_2 = L1_2.AreaInfo
    L1_2 = L1_2.CurAreaLayerIndex
    if L1_2 == 0 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_layer_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._set_active_close_btn
      L3_2 = false
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._set_active_map_root_node
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = L6_1.ShowMap
      A0_2._cur_state = L1_2
      L2_2 = A0_2
      L1_2 = A0_2._setup_map_layer_view
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_final_map_board_view
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._switch_tip_to_confirm_close
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._play_animation
      L3_2 = L5_1
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_layer_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_active_close_btn
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._set_active_map_root_node
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L6_1.ShowLayer
    A0_2._cur_state = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._setup_layer_view
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_extend_info
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_state
  L2_2 = L6_1.ShowLayer
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_view
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._chess_rogue_data
  L1_2 = L1_2.AreaInfo
  L2_2 = L1_2.CurAreaDataItem
  L3_2 = L1_2.CurAreaLayerDataItem
  L4_2 = L1_2.CurAreaLayerIndex
  L5_2 = L2_2.LayerIDArray
  L5_2 = L5_2.Length
  L6_2 = ipairs
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_roots
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.SafeSetActive
    L13_2 = L9_2 <= L5_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.layer_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L3_2.LayerIndexID
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.layer_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L3_2.LayerNameID
  L6_2(L7_2, L8_2)
  L6_2 = L4_2 + 1
  L6_2 = L3_1[L6_2]
  L7_2 = L4_2 + 1
  L7_2 = L4_1[L7_2]
  if L6_2 ~= nil then
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.UIUtils
    L8_2 = L8_2.ChangeCanvasSortingOrder
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_change_sorting_order
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._play_animation
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._setup_layer_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._set_active_close_btn
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_active_map_root_node
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L6_1.CreateMap
  A0_2._cur_state = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_map_layer_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_creating_map_board_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._switch_tip_to_create_map
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._play_animation
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_event
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = L5_1
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_show_map_finish
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._switch_to_create_map_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._need_show_start_effect_toast
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.RogueDLC.ChessRogue.Toast.ChessRogueDiceEffectToastDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_exit_callback
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._switch_to_final_map_view
      L0_3(L1_3)
    end
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_final_map_view
    L1_2(L2_2)
  end
end
L0_1._on_show_map_finish = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L6_1.ShowMap
  A0_2._cur_state = L1_2
  L1_2 = A0_2._binder
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_final_map_board_view
    L4_2 = A0_2
    L3_2 = A0_2._need_show_cell_change_action
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._switch_tip_to_confirm_close
    L1_2(L2_2)
  end
end
L0_1._switch_to_final_map_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_Chessboard_Creat_Process"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._switch_tip_to_create_map = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_Chessboard_CreatEffect_Process"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._switch_tip_to_dice_effect = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._switch_tip_to_confirm_close = L7_1
function L7_1(A0_2)
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
      L4_2 = A0_2.async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_layer
      L7_2 = L3_2.LayerIcon
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L0_1._setup_map_layer_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_before_board_data_item
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = A0_2._chess_rogue_data
    L3_2 = L2_2
    L2_2 = L2_2.GetCurChessRogueBoardDataItem
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_board_map
    L3_2 = L2_2
    L2_2 = L2_2.setup_create_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_set_rogue_nous_offset
    L2_2(L3_2)
  end
end
L0_1._setup_creating_map_board_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._chess_rogue_data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurChessRogueBoardDataItem
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  if A1_2 then
    L3_2 = L1_1.ChessRogueBoardChangeData
    L5_2 = A0_2
    L4_2 = A0_2._get_cell_change_action
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_board_map
      L6_2 = L5_2
      L5_2 = L5_2.setup_create_view
      L7_2 = L2_2
      L8_2 = L3_2
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = A0_2
      L5_2 = A0_2._try_set_rogue_nous_offset
      L5_2(L6_2)
      L5_2 = G
      L5_2 = L5_2.new
      L6_2 = G
      L6_2 = L6_2.ActionQueue
      L5_2 = L5_2(L6_2)
      L7_2 = L5_2
      L6_2 = L5_2.init
      L6_2(L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.add_action
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.start_do_action
      L6_2(L7_2)
      return
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_board_map
  L4_2 = L3_2
  L3_2 = L3_2.setup_create_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_set_rogue_nous_offset
  L3_2(L4_2)
end
L0_1._setup_final_map_board_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.is_area_the_guide_area_1
  L2_2 = L1_1.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurAreaID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L1_1.ChessRogueBoardChangeData
  L3_2 = L1_2
  L2_2 = L1_2.HasModifier
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L0_1._need_show_start_effect_toast = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.is_area_the_guide_area_1
  L2_2 = L1_1.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurAreaID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = L1_1.ChessRogueBoardChangeData
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.HasCellChange
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetModifierEffectType
    L2_2 = L2_2(L3_2)
    L2_2 = #L2_2
  end
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._is_joy_random_modifier
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._need_show_cell_change_action = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ChessRogueBoardChangeData
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.HasCellChange
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.GetBeforeBoardDataItem
      return L2_2(L3_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_before_board_data_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L3_2 = A1_2
    L2_2 = A1_2.GetModifierEffectType
    L2_2 = L2_2(L3_2)
    L2_2 = #L2_2
  end
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = nil
  L5_2 = A0_2
  L4_2 = A0_2._is_joy_random_modifier
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L6_2 = A1_2
    L5_2 = A1_2.GetBeforeCellDataItemList
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_board_map
  L6_2 = L5_2
  L5_2 = L5_2.get_dice_start_effect_animation_action
  L7_2 = L2_2
  L8_2 = L4_2
  L9_2 = L3_2
  return L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._get_cell_change_action = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ModifierEffectType
  L2_2 = L2_2.GetHelpOnEnterCell
  L2_2 = #L2_2
  L2_2 = A1_2 == L2_2
  return L2_2
end
L0_1._is_joy_random_modifier = L7_1
L7_1 = {}
L8_1 = 39.4
L9_1 = -22.54
L7_1[1] = L8_1
L7_1[2] = L9_1
L8_1 = {}
L9_1 = 0
L10_1 = -22.54
L8_1[1] = L9_1
L8_1[2] = L10_1
function L9_1(A0_2)
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
  L4_2 = L7_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_bg_frame
  L3_2 = L2_2
  L2_2 = L2_2.set_bg_position_offset
  L4_2 = L8_1
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
L0_1._try_set_rogue_nous_offset = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.empty_exit_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_active_close_btn = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_map_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_active_map_root_node = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayFromBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.switch_animation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._is_playing_anim = true
  A0_2._cur_playing_anim = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.GetAnimationState
  L3_2 = A0_2._binder
  L3_2 = L3_2.switch_animation
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  L3_2 = A0_2._count_down_timer
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    L5_2 = A0_2._on_timer_out
    L6_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._count_down_timer = L3_2
  else
    L3_2 = A0_2._count_down_timer
    L4_2 = L3_2
    L3_2 = L3_2.set_interval
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._count_down_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._count_down_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L0_1._play_animation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  A0_2._is_playing_anim = false
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._on_timer_out = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.switch_animation
  L3_2 = A0_2._cur_playing_anim
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_timer_out
  L1_2(L2_2)
end
L0_1._try_skip_anim = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "DiceWelcomeMapFadeIn" then
    L3_2 = A0_2
    L2_2 = A0_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_board_map
      L3_2 = L2_2
      L2_2 = L2_2.play_map_fade_in
      L2_2(L3_2)
    end
  end
  if A1_2 == "EnableClickToSkipAnim" then
    A0_2._enable_click_skip_anim = true
  end
end
L0_1._on_ui_animation_event = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_RogueDLC_Chessboard_Enter_Target_Forbidden"
  L1_2(L2_2, L3_2)
end
L0_1._on_click_cell = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_playing_anim
  if L1_2 then
    L1_2 = A0_2._enable_click_skip_anim
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._try_skip_anim
      L1_2(L2_2)
    end
    return
  end
  L1_2 = A0_2._cur_state
  L2_2 = L6_1.ShowLayer
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._switch_to_create_map_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_state
    L2_2 = L6_1.ShowMap
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_confirm
      L1_2(L2_2)
    end
  end
end
L0_1._close = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleDialog"
  L1_2(L2_2)
end
L0_1._on_btn_intro = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ActionQueue
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L2_2(L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.add_action
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_board_map
  L5_2 = L4_2
  L4_2 = L4_2.get_location_fade_in_action
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_queue_finished_callback
  L4_2 = A0_2
  L5_2 = A0_2.exit
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.start_do_action
  L2_2(L3_2)
end
L0_1._on_btn_confirm = L9_1
return L0_1
