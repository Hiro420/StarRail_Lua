local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceCheatDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueDiceSurfaceItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceSurfaceCheatDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueDiceSurfaceCheatDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_Dice_Cheat"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_RogueDLC_Dice_Cheat_Desc"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_dice_surface_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dice_surfaces_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_confirm
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
  L4_2 = L2_2.CurDiceSurfaceID
  A0_2._active_surface_id = L4_2
  A0_2._selected_index = nil
  L4_2 = G
  L4_2 = L4_2.RogueNousUtils
  L4_2 = L4_2.is_cur_dice_branch_need_show_rolled_out_surfaces
  L4_2 = L4_2()
  A0_2._is_show_rolled_out_tag = L4_2
end
L0_1._init_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._surface_display_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_dice_surfaces_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueDiceSurfaceItemPanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueDiceSurfaceItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._surface_display_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_surface_row_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_selected_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_surface_row_selected
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_btn_selected
  L8_2 = A0_2._selected_index
  L8_2 = L8_2 == A2_2
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.SurfaceID
  L7_2 = A0_2._active_surface_id
  if L6_2 == L7_2 then
    L7_2 = L4_2
    L6_2 = L4_2.set_active_tag_node
    L8_2 = true
    L9_2 = "UIText_RogueDLC_Dice_Cheat_Current"
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.set_active_tag_node
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_cheat_view
  L8_2 = A2_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_rolled_out_tag_active
  L8_2 = A0_2._is_show_rolled_out_tag
  if L8_2 then
    L8_2 = G
    L8_2 = L8_2.RogueNousUtils
    L8_2 = L8_2.is_surface_need_show_rolled_out
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
  end
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_dice_surface_item_changed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_index = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_confirm
  L2_2(L3_2)
end
L0_1._set_list_item_checked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._surface_display_table
  L3_2 = A1_2 + 1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.ExtraEffect
  L3_2 = A0_2._selected_index
  if L3_2 == A1_2 and L2_2 ~= nil then
    L3_2 = L2_2.Length
    if 0 < L3_2 then
      L3_2 = G
      L3_2 = L3_2.ChessRogueUtils
      L3_2 = L3_2.show_extra_info
      L4_2 = L2_2
      L3_2(L4_2)
      return
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_list_item_checked
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._on_surface_row_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._set_list_item_checked
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A2_2
  L3_2 = A2_2.is_extra_info_available
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = {}
    L6_2 = "ActionGroup_BuffDetail"
    L5_2[1] = L6_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = nil
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_surface_row_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_selected_surface
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._selected_index
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._surface_display_table
  L2_2 = A0_2._selected_index
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1._get_cur_selected_surface = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_selected_surface
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueDLC1Dot3DiceCheatRoll
  L4_2 = L1_2.SurfaceID
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
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
L0_1.get_first_selected_object = L1_1
return L0_1
