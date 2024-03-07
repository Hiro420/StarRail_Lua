local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRowSinglePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentTreeRowTriplePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talent.RogueTalentDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Talent.RogueNousTalentPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousTalentPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = {}
L2_1.One = 0
L2_1.OneToOne = 1
L2_1.OneToThree = 2
L2_1.Three = 3
L2_1.ThreeToOne = 4
L2_1.ThreeToThree = 5
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousTalentPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  A0_2._cur_select_talent_data_item = nil
  A0_2._cur_select_item_panel = nil
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "IconActiveColor"
  L4_2 = "#7854FD"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "IconUnActiveColor"
  L4_2 = "#FFFFFF"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "LineActiveColor"
  L4_2 = "#7854FDFF"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "LineUnActiveColor"
  L4_2 = "#FFFFFF33"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "InnerCircleActiveColor"
  L4_2 = "#7854FD"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "InnerCircleUnActiveColor"
  L4_2 = "#FFFFFF"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "OuterCircleActiveColor"
  L4_2 = "#7854FD33"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.update
  L3_2 = "OuterCircleUnActiveColor"
  L4_2 = "#FFFFFF33"
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_talent_tree_row_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_default_selected
  L1_2(L2_2)
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.NPCAKDNLCFI
  L4_2 = A0_2._on_get_rogue_nous_talent_info_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.BIJBJDHBJIN
  L4_2 = A0_2._on_get_rogue_nous_talent_active_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UINavigationMove
  L4_2 = A0_2._on_navigation_move
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueTalentDetailPanel
  L4_2 = G
  L4_2 = L4_2.RogueTalentDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._talent_detail_panel = L1_2
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_talent_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_talent_active_callback
  L3_2 = A0_2._on_talent_item_active
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_custom_activate_talent_callback
  L3_2 = A0_2._on_activate_talent_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_res_bar
  L3_2 = "RogueNousTalentPage"
  L4_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._coin_bar = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_talent
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_talent_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Switch"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._talent_tree_row_list
  if L1_2 ~= nil then
    L1_2 = A0_2._talent_tree_row_list
    L2_2 = L1_2
    L1_2 = L1_2.Count
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_17
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JKLCOECNKOP
  L1_2(L2_2)
  goto lbl_19
  ::lbl_17::
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_when_data_ready
  L1_2(L2_2)
  ::lbl_19::
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._try_get_designated_row_panel
  L3_2 = A0_2._cur_select_row_index
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.try_get_item_panel_by_index
    L4_2 = A0_2._cur_select_col_index
    L4_2 = L4_2 + 1
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
    A0_2._cur_select_item_panel = L2_2
    L3_2 = L2_2._binder
    L3_2 = L3_2.button
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.EventSystems
  L2_2 = L2_2.MoveDirection
  L2_2 = L2_2.Left
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_move_focus_horizontal
    L4_2 = -1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.EventSystems
    L2_2 = L2_2.MoveDirection
    L2_2 = L2_2.Right
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._try_move_focus_horizontal
      L4_2 = 1
      L2_2(L3_2, L4_2)
    else
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.EventSystems
      L2_2 = L2_2.MoveDirection
      L2_2 = L2_2.Up
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._try_move_focus_vertical
        L4_2 = -1
        L2_2(L3_2, L4_2)
      else
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.EventSystems
        L2_2 = L2_2.MoveDirection
        L2_2 = L2_2.Down
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._try_move_focus_vertical
          L4_2 = 1
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._on_navigation_move = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._cur_select_col_index
  L2_2 = L2_2 + A1_2
  L4_2 = A0_2
  L3_2 = A0_2._try_get_designated_row_panel
  L5_2 = A0_2._cur_select_row_index
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.try_get_item_panel_by_index
    L6_2 = L2_2 + 1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L6_2 = A0_2
      L5_2 = A0_2.set_navigation_target
      L8_2 = L4_2
      L7_2 = L4_2.get_selected_object
      L7_2, L8_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1._try_move_focus_horizontal = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._cur_select_row_index
  L2_2 = L2_2 + A1_2
  L4_2 = A0_2
  L3_2 = A0_2._try_get_designated_row_panel
  L5_2 = A0_2._cur_select_row_index
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_get_designated_row_panel
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L3_2 ~= nil and L4_2 ~= nil then
    L5_2 = nil
    L7_2 = L3_2
    L6_2 = L3_2.get_item_count
    L6_2 = L6_2(L7_2)
    L8_2 = L4_2
    L7_2 = L4_2.get_item_count
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      L9_2 = L4_2
      L8_2 = L4_2.try_get_item_panel_by_index
      L10_2 = A0_2._cur_select_col_index
      L10_2 = L10_2 + 1
      L8_2 = L8_2(L9_2, L10_2)
      L5_2 = L8_2
    elseif L6_2 < L7_2 then
      L9_2 = L4_2
      L8_2 = L4_2.try_get_item_panel_by_index
      L10_2 = L7_2 - 1
      L8_2 = L8_2(L9_2, L10_2)
      L5_2 = L8_2
    else
      L9_2 = L4_2
      L8_2 = L4_2.try_get_item_panel_by_index
      L10_2 = 1
      L8_2 = L8_2(L9_2, L10_2)
      L5_2 = L8_2
    end
    if L5_2 ~= nil then
      L9_2 = A0_2
      L8_2 = A0_2.set_navigation_target
      L11_2 = L5_2
      L10_2 = L5_2.get_selected_object
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L0_1._try_move_focus_vertical = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_get_designated_row_panel
    L4_2 = A0_2._cur_select_row_index
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 == nil then
      L3_2 = A0_2._binder
      L3_2 = L3_2.list_talent
      L4_2 = L3_2
      L3_2 = L3_2.MovePanelToItemIndex
      L5_2 = A0_2._cur_select_row_index
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L6_2 = A0_2
      L5_2 = A0_2.get_first_selected_object
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_detail_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_talent
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._talent_tree_row_list
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_talent
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = A0_2._cur_select_row_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_talent
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_activated_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view_when_data_ready = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2
  L1_2 = A0_2._build_talent_tree
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.List
  L2_2 = L2_2(L3_2)
  A0_2._talent_tree_row_list = L2_2
  L2_2 = {}
  L3_2 = {}
  L5_2 = A0_2
  L4_2 = A0_2._find_head_node
  L6_2 = L1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.nextNodes
  L5_2 = L5_2[1]
  L5_2 = L5_2.preNodes
  L6_2 = #L5_2
  if 1 < L6_2 then
    L6_2 = ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L3_2
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  else
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L3_2
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  while true do
    L6_2 = #L3_2
    if L6_2 == 0 then
      break
    end
    L6_2 = #L3_2
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.RogueTalentTreeRow
    L7_2 = L7_2(L8_2)
    L8_2 = 1
    L9_2 = L6_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = table
      L12_2 = L12_2.remove
      L13_2 = L3_2
      L14_2 = 1
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = L2_2[L12_2]
      if not L13_2 then
        L14_2 = L7_2
        L13_2 = L7_2.add_data_item
        L15_2 = L12_2.data
        L13_2(L14_2, L15_2)
        L13_2 = ipairs
        L14_2 = L12_2.nextNodes
        L13_2, L14_2, L15_2 = L13_2(L14_2)
        for L16_2, L17_2 in L13_2, L14_2, L15_2 do
          L18_2 = table
          L18_2 = L18_2.insert
          L19_2 = L3_2
          L20_2 = L17_2
          L18_2(L19_2, L20_2)
        end
      end
      L2_2[L12_2] = true
    end
    L8_2 = A0_2._talent_tree_row_list
    L9_2 = L8_2
    L8_2 = L8_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._get_talent_tree_row_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = L7_2
    break
  end
  while true do
    L3_2 = L2_2.preNodes
    if L3_2 == nil then
      break
    end
    L3_2 = L2_2.preNodes
    L3_2 = #L3_2
    if L3_2 == 0 then
      break
    end
    L3_2 = L2_2.preNodes
    L2_2 = L3_2[1]
  end
  return L2_2
end
L0_1._find_head_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L1_1.NousTalentInfo
  L1_2 = L1_2.TalentDataItems
  A0_2._talent_data_items = L1_2
  L1_2 = A0_2._talent_data_items
  if L1_2 ~= nil then
    L1_2 = A0_2._talent_data_items
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_13
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_13::
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._talent_data_items
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._talent_data_items
    L6_2 = L6_2[L5_2]
    L7_2 = {}
    L7_2.data = L6_2
    L8_2 = L6_2.TalentID
    L7_2.id = L8_2
    L8_2 = {}
    L7_2.nextNodes = L8_2
    L8_2 = {}
    L7_2.preNodes = L8_2
    L8_2 = L6_2.TalentID
    L1_2[L8_2] = L7_2
  end
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.data
    L9_2 = L7_2
    L8_2 = L7_2.NextTalentIDs
    L8_2 = L8_2(L9_2)
    L9_2 = 0
    L10_2 = L8_2.Length
    L10_2 = L10_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L8_2[L12_2]
      L13_2 = L1_2[L13_2]
      if L13_2 ~= nil then
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L13_2.preNodes
        L16_2 = L6_2
        L14_2(L15_2, L16_2)
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L6_2.nextNodes
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
      end
    end
  end
  return L1_2
end
L0_1._build_talent_tree = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._talent_tree_row_list
  L3_2 = L2_2
  L2_2 = L2_2.Get
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._talent_tree_row_list
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = ""
  L6_2 = L2_2
  L5_2 = L2_2.get_item_count
  L5_2 = L5_2(L6_2)
  if L5_2 == 1 then
    L5_2 = L4_2
    L6_2 = "One"
    L4_2 = L5_2 .. L6_2
  else
    L6_2 = L2_2
    L5_2 = L2_2.get_item_count
    L5_2 = L5_2(L6_2)
    if L5_2 == 3 then
      L5_2 = L4_2
      L6_2 = "Three"
      L4_2 = L5_2 .. L6_2
    end
  end
  L5_2 = L3_2 - 1
  if A1_2 < L5_2 then
    L5_2 = L4_2
    L6_2 = "To"
    L4_2 = L5_2 .. L6_2
    L5_2 = A0_2._talent_tree_row_list
    L6_2 = L5_2
    L5_2 = L5_2.Get
    L7_2 = A1_2 + 1
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.get_item_count
    L6_2 = L6_2(L7_2)
    if L6_2 == 1 then
      L6_2 = L4_2
      L7_2 = "One"
      L4_2 = L6_2 .. L7_2
    else
      L7_2 = L5_2
      L6_2 = L5_2.get_item_count
      L6_2 = L6_2(L7_2)
      if L6_2 == 3 then
        L6_2 = L4_2
        L7_2 = "Three"
        L4_2 = L6_2 .. L7_2
      end
    end
  end
  L5_2 = L2_1[L4_2]
  return L5_2
end
L0_1._get_list_prefab_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_select_talent_data_item
  if L1_2 == nil then
    L1_2 = A0_2._talent_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_select_talent_data_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._talent_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousAvailableTalent"
  L4_2 = A0_2._cur_select_talent_data_item
  L4_2 = L4_2.TalentID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_detail_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2._talent_tree_row_list
  L2_2 = L1_2
  L1_2 = L1_2.Get
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_item_count
  L2_2 = L2_2(L3_2)
  if L2_2 == 0 then
    return
  end
  L2_2 = 0
  L3_2 = 0
  L5_2 = L1_2
  L4_2 = L1_2.get_data_item
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = false
  L6_2 = false
  L7_2 = 0
  L8_2 = A0_2._talent_tree_row_list
  L9_2 = L8_2
  L8_2 = L8_2.Count
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    if L6_2 == true then
      break
    end
    L11_2 = A0_2._talent_tree_row_list
    L12_2 = L11_2
    L11_2 = L11_2.Get
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = 0
    L14_2 = L11_2
    L13_2 = L11_2.get_item_count
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 - 1
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L17_2 = L11_2
      L16_2 = L11_2.get_data_item
      L18_2 = L15_2
      L16_2 = L16_2(L17_2, L18_2)
      L18_2 = L16_2
      L17_2 = L16_2.IsUnlocked
      L17_2 = L17_2(L18_2)
      if L17_2 then
        L4_2 = L16_2
        L2_2 = L10_2
        L3_2 = L15_2
        L6_2 = true
        L5_2 = true
        break
      end
      if not L5_2 then
        L18_2 = L16_2
        L17_2 = L16_2.IsActivated
        L17_2 = L17_2(L18_2)
        if L17_2 then
          L17_2 = L16_2.TalentID
          L18_2 = L4_2.TalentID
          if L17_2 > L18_2 then
            L4_2 = L16_2
            L2_2 = L10_2
            L3_2 = L15_2
          end
        end
      end
    end
  end
  A0_2._cur_select_row_index = L2_2
  A0_2._cur_select_col_index = L3_2
  A0_2._cur_select_talent_data_item = L4_2
end
L0_1._get_default_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2._talent_data_items
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._talent_data_items
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.IsActivated
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_active_count
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_activated_num = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_talent
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      L3_2 = L2_2.UserObjectData
      L3_2 = L3_2.IsRecycled
      if not L3_2 then
        goto lbl_17
      end
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_17::
  L3_2 = L2_2.UserObjectData
  return L3_2
end
L0_1._try_get_designated_row_panel = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L6_2 = A0_2
  L5_2 = A0_2._get_list_prefab_index
  L7_2 = A2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L3_2.UserObjectData
  L5_2 = A0_2._talent_tree_row_list
  L6_2 = L5_2
  L5_2 = L5_2.Get
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.get_item_count
  L6_2 = L6_2(L7_2)
  if L4_2 ~= nil then
    L8_2 = L4_2
    L7_2 = L4_2.get_item_count
    L7_2 = L7_2(L8_2)
    if L7_2 == L6_2 then
      goto lbl_42
    end
  end
  if L6_2 == 1 then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.RogueTalentTreeRowPanel
    L10_2 = G
    L10_2 = L10_2.RogueTalentTreeRowSinglePanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L4_2 = L7_2
  elseif L6_2 == 3 then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.RogueTalentTreeRowPanel
    L10_2 = G
    L10_2 = L10_2.RogueTalentTreeRowTriplePanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L4_2 = L7_2
  end
  L8_2 = L4_2
  L7_2 = L4_2.bind
  L9_2 = L3_2.transform
  L7_2(L8_2, L9_2)
  L3_2.UserObjectData = L4_2
  ::lbl_42::
  L8_2 = L4_2
  L7_2 = L4_2.setup_row_data
  L9_2 = L5_2
  L10_2 = A0_2._cur_select_talent_data_item
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_item_click_callback
  L9_2 = A0_2._on_talent_item_click
  L10_2 = A0_2
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L4_2._binder
  L8_2 = L8_2.root
  L7_2(L8_2)
  return L3_2
end
L0_1._on_talent_change = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._cur_select_talent_data_item = A1_2
  A0_2._cur_select_btn = A2_2
  L4_2 = A3_2.row_index
  A0_2._cur_select_row_index = L4_2
  L4_2 = A3_2.col_index
  A0_2._cur_select_col_index = L4_2
  L4_2 = A0_2._cur_select_item_panel
  if L4_2 ~= nil then
    L4_2 = A0_2._cur_select_item_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_selected
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  A0_2._cur_select_item_panel = A3_2
  L4_2 = A0_2._cur_select_item_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_selected
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = A0_2._cur_select_btn
    if L4_2 ~= nil then
      L4_2 = A0_2._cur_select_btn
      L4_2 = L4_2.transform
      if L4_2 ~= nil then
        L4_2 = A0_2._cur_select_btn
        L4_2 = L4_2.transform
        L4_2 = L4_2.parent
        if L4_2 ~= nil then
          L4_2 = A0_2._binder
          L4_2 = L4_2.scroll_rect
          L5_2 = L4_2
          L4_2 = L4_2.ScrollToTransform
          L6_2 = A0_2._cur_select_btn
          L6_2 = L6_2.transform
          L6_2 = L6_2.parent
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_detail_view
  L4_2(L5_2)
end
L0_1._on_talent_item_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_select_item_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_select_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_active_anim
  L1_2(L2_2)
end
L0_1._on_talent_item_active = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.KGOAJGNNGLH
  L4_2 = A1_2.TalentID
  L2_2(L3_2, L4_2)
end
L0_1._on_activate_talent_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_talent_tree_row_list
  L1_2(L2_2)
  L1_2 = A0_2._talent_tree_row_list
  if L1_2 ~= nil then
    L1_2 = A0_2._talent_tree_row_list
    L2_2 = L1_2
    L1_2 = L1_2.Count
    L1_2 = L1_2(L2_2)
    if L1_2 ~= 0 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_when_data_ready
  L1_2(L2_2)
end
L0_1._on_get_rogue_nous_talent_info_rsp = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_talent
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._talent_tree_row_list
  L4_2 = L3_2
  L3_2 = L3_2.Count
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_talent
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_detail_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_activated_num
  L1_2(L2_2)
  L1_2 = A0_2._coin_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "RogueNousTalentPage"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_get_rogue_nous_talent_active_rsp = L3_1
return L0_1
