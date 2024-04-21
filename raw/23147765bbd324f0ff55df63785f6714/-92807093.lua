local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceRuleDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleGroupTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleGroupTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceSurfaceRuleDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_AeonDice_Effect"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceSurfaceRuleDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._need_show_group_title = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data_and_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dice_surfaces_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2.ChessRogueData
  L2_2 = L2_2.DiceInfo
  L4_2 = L2_2
  L3_2 = L2_2.GetDiceSurfaceDisplayDataList
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_list
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A0_2._surface_display_table = L4_2
  else
    L4_2 = {}
    A0_2._surface_display_table = L4_2
  end
  L4_2 = L2_2.CurBranchID
  L4_2 = 0 < L4_2
  L5_2 = not L4_2
  A0_2._need_show_group_title = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  if L4_2 then
    L7_2 = L1_1
    if L7_2 then
      goto lbl_39
    end
  end
  L8_2 = L2_2
  L7_2 = L2_2.GetCurDiceTitle
  L7_2 = L7_2(L8_2)
  ::lbl_39::
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RogueNousUtils
  L5_2 = L5_2.is_cur_dice_branch_need_show_rolled_out_surfaces
  L5_2 = L5_2()
  A0_2._is_show_rolled_out_tag = L5_2
end
L0_1._init_data_and_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._need_show_group_title
  if L1_2 then
    L1_2 = A0_2._surface_display_table
    L1_2 = #L1_2
    L1_2 = L1_2 + 1
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = A0_2._surface_display_table
  L1_2 = #L1_2
  ::lbl_11::
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_in_ctrl_move
  L2_2.ActionEnabled = false
end
L0_1._setup_dice_surfaces_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = 0
  if A2_2 == 0 then
    L4_2 = A0_2._need_show_group_title
    if L4_2 then
      L3_2 = 0
  end
  else
    L3_2 = 1
  end
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    if L3_2 == 0 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.ChessRogueRuleGroupTitlePanel
      L9_2 = G
      L9_2 = L9_2.ChessRogueRuleGroupTitlePanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.ChessRogueDiceSurfaceItemPanel
      L9_2 = G
      L9_2 = L9_2.ChessRogueDiceSurfaceItemPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
      L7_2 = L5_2
      L6_2 = L5_2.register_selected_callback
      L8_2 = A0_2
      L9_2 = A0_2._on_surface_row_selected
      L6_2(L7_2, L8_2, L9_2)
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  if L3_2 == 0 then
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = L1_1
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._need_show_group_title
    L6_2 = A2_2 or L6_2
    if not L6_2 or not A2_2 then
      L6_2 = A2_2 + 1
    end
    L7_2 = A0_2._surface_display_table
    L7_2 = L7_2[L6_2]
    L9_2 = L5_2
    L8_2 = L5_2.set_active_tag_node
    L10_2 = false
    L8_2(L9_2, L10_2)
    L9_2 = L5_2
    L8_2 = L5_2.setup_rule_view
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L5_2
    L8_2 = L5_2.set_rolled_out_tag_active
    L10_2 = A0_2._is_show_rolled_out_tag
    if L10_2 then
      L10_2 = G
      L10_2 = L10_2.RogueNousUtils
      L10_2 = L10_2.is_surface_need_show_rolled_out
      L11_2 = L7_2
      L10_2 = L10_2(L11_2)
    end
    L8_2(L9_2, L10_2)
  end
  return L4_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._need_show_group_title
  if L3_2 and A1_2 == 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.loop_list
    L4_2 = L3_2
    L3_2 = L3_2.MovePanelToItemIndex
    L5_2 = 0
    L3_2(L4_2, L5_2)
  end
  L4_2 = A2_2
  L3_2 = A2_2.is_extra_info_available
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_BuffDetail"
    L7_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_Return"
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_surface_row_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._need_show_group_title
  if L3_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = 0
  ::lbl_11::
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
return L0_1
