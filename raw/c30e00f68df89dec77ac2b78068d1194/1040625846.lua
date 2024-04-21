local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterTextItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochurePasterImageItemPanelBinder"
L0_1(L1_1)
L0_1 = 0.5
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochurePasterContainerPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._paster_ids = L1_2
  L1_2 = {}
  A0_2._paster_id_to_panel = L1_2
  A0_2._editing_id = 0
  L1_2 = {}
  A0_2._obstacle_nodes = L1_2
  A0_2._right_stick_x = 0
  A0_2._right_stick_y = 0
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TravelBrochureSavePaster
  L4_2 = A0_2._on_save_paster
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cursor
  L2_2 = L1_2
  L1_2 = L1_2.register_move_callback
  L3_2 = A0_2._on_virtual_cursor_move
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cursor
  L2_2 = L1_2
  L1_2 = L1_2.set_hide_when_selected
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GyroManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.UseGyro
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_follow_ids
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._is_diary_follow = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "TravelBrochure_Weightlessness"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      L7_2 = A0_2._is_diary_follow
      L7_2[L6_2] = true
    end
  end
end
L1_1._init_follow_ids = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GyroManager
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseGyro
  L1_2(L2_2)
end
L1_1._on_unload = L2_1
function L2_1(A0_2, A1_2)
  A0_2._obstacle_nodes = A1_2
end
L1_1.set_obstacle_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._reset_data
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._editing_id
    L4_2 = L4_2 ~= 0
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L2_2(L3_2)
  end
end
L1_1._on_owner_active_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._on_virtual_cursor_move
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cursor_view
  L1_2(L2_2)
  L1_2 = A0_2._editing_id
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if not L1_2 then
      return
    end
    L1_2 = A0_2._paster_id_to_panel
    L2_2 = A0_2._editing_id
    L1_2 = L1_2[L2_2]
    if L1_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.get_world_position
      L2_2 = L2_2(L3_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_cursor
      L4_2 = L3_2
      L3_2 = L3_2.set_world_position
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._on_virtual_cursor_move
      L3_2(L4_2)
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.EventSystem
      L3_2 = L3_2.current
      L4_2 = L3_2
      L3_2 = L3_2.SetSelectedGameObject
      L5_2 = nil
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L6_2 = L1_2
      L5_2 = L1_2.get_first_selected_object
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2._virtual_select_paster
      L5_2 = A0_2._editing_id
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._add_paster
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.add_paster = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._count_change_callback = A1_2
  A0_2._count_change_handler = A2_2
end
L1_1.register_count_change_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._paster_ids
  L1_2 = #L1_2
  return L1_2
end
L1_1.get_paster_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._quit_edit
  L1_2(L2_2)
end
L1_1._on_save_paster = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._last_hover_panel = nil
  A0_2._diary_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cursor_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._reset_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_cursor
    L3_2 = L2_2
    L2_2 = L2_2.hide
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_cursor_view
    L2_2(L3_2)
  end
end
L1_1.hide_cursor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.HasChosen
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_cursor
      L2_2 = L1_2
      L1_2 = L1_2.show
      L1_2(L2_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_cursor
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L1_2(L2_2)
  end
end
L1_1._refresh_cursor_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._diary_data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPasterIDs
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._paster_ids = L1_2
  A0_2._editing_id = 0
end
L1_1._reset_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_layer
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._paster_id_to_panel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.index_of_item
    L7_2 = A0_2._paster_ids
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2 ~= nil
    if not L6_2 then
      L7_2 = A0_2._paster_id_to_panel
      L7_2[L4_2] = nil
      L8_2 = L5_2
      L7_2 = L5_2.dispose
      L7_2(L8_2)
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._paster_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._safe_create_paster_panel
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L1_1._refresh_panels = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._paster_id_to_panel
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = A0_2._diary_data
    L4_2 = L3_2
    L3_2 = L3_2.GetPasterData
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.TravelBrochurePasterType
    L5_2 = L5_2.Text
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2.create_panel
      L6_2 = G
      L6_2 = L6_2.TravelBrochurePasterItemPanel
      L7_2 = G
      L7_2 = L7_2.TravelBrochurePasterTextItemPanelBinder
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L2_2 = L4_2
    else
      L5_2 = A0_2
      L4_2 = A0_2.create_panel
      L6_2 = G
      L6_2 = L6_2.TravelBrochurePasterItemPanel
      L7_2 = G
      L7_2 = L7_2.TravelBrochurePasterImageItemPanelBinder
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L2_2 = L4_2
    end
    L5_2 = L2_2
    L4_2 = L2_2.sync_loadto
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_container
    L4_2(L5_2, L6_2)
    L5_2 = L2_2
    L4_2 = L2_2.register_click_callback
    L6_2 = A0_2._on_paster_clicked
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = L2_2
    L4_2 = L2_2.register_edited_callback
    L6_2 = A0_2._on_paster_edited
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = L2_2
    L4_2 = L2_2.register_remove_callback
    L6_2 = A0_2._on_btn_remove_click
    L7_2 = A0_2
    L4_2(L5_2, L6_2, L7_2)
    L5_2 = L2_2
    L4_2 = L2_2.set_obstacle_node
    L6_2 = A0_2._obstacle_nodes
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._paster_id_to_panel
    L4_2[A1_2] = L2_2
    L5_2 = L2_2
    L4_2 = L2_2.setup_view
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L5_2 = L2_2
    L4_2 = L2_2.enable_follow
    L6_2 = A0_2._is_diary_follow
    L7_2 = A0_2._diary_data
    L7_2 = L7_2.ID
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2 == true
    L4_2(L5_2, L6_2)
  end
  return L2_2
end
L1_1._safe_create_paster_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._paster_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._paster_id_to_panel
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2._binder
    L7_2 = L7_2.root
    L7_2 = L7_2.transform
    L8_2 = L7_2
    L7_2 = L7_2.SetSiblingIndex
    L9_2 = L4_2 - 1
    L7_2(L8_2, L9_2)
  end
end
L1_1._refresh_layer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._editing_id
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._paster_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._safe_create_paster_panel
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2
    L6_2 = L6_2.refresh_view
    L8_2 = A0_2._editing_id
    L8_2 = L8_2 == L5_2
    L6_2(L7_2, L8_2)
  end
end
L1_1._refresh_edit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._editing_id
  L2_2 = L2_2 ~= A1_2
  if not L2_2 then
    L3_2 = A0_2._diary_data
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentPasterIDs
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.Contains
    L5_2 = A0_2._editing_id
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      goto lbl_19
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._update_paster
  L5_2 = A0_2._editing_id
  L3_2(L4_2, L5_2)
  ::lbl_19::
  A0_2._editing_id = A1_2
  if L2_2 then
    L3_2 = A0_2._editing_id
    if L3_2 == 0 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = "Ev_sfx_ui_click_travelBrochureStickerPage_dropDown"
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = "Ev_sfx_ui_click_travelBrochureStickerPage_pickUp"
      L3_2(L4_2, L5_2)
    end
  end
end
L1_1._update_editing = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == 0 then
    return
  end
  L2_2 = A0_2._paster_id_to_panel
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.update_paster_data
    L5_2 = A0_2._diary_data
    L3_2(L4_2, L5_2)
  end
end
L1_1._update_paster = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._diary_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPasterIDs
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._paster_ids = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._paster_ids
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_editing
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L1_1._add_paster = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._last_hover_panel = nil
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._paster_ids
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2._paster_ids
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  A0_2._editing_id = 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._diary_data
  L4_2 = L3_2
  L3_2 = L3_2.RemovePaster
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._count_change_callback
  L5_2 = A0_2._count_change_handler
  L3_2(L4_2, L5_2)
end
L1_1._remove_paster = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._quit_edit
  L1_2(L2_2)
end
L1_1._on_btn_bg_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_editing
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_layer
  L1_2(L2_2)
end
L1_1._quit_edit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.ID
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.index_of_item
  L4_2 = A0_2._paster_ids
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = A0_2._paster_ids
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._paster_ids
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_editing
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_edit
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_layer
  L4_2(L5_2)
end
L1_1._on_paster_edited = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._diary_data
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPasterIDs
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._remove_paster
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.to_prev_zoom
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.to_prev_zoom
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._remove_paster
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_remove_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    return
  end
  L2_2 = A0_2._editing_id
  if L2_2 ~= A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._virtual_select_paster
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.to_prev_zoom
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_paster_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._quit_edit
  L2_2(L3_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_virtual_unselected
  L1_2(L2_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_cursor
  L3_2 = L2_2
  L2_2 = L2_2.set_status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.VirtualCursorStatus
  L4_2 = L4_2.Selected
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._paster_ids
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.remove
    L4_2 = A0_2._paster_ids
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._paster_ids
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_editing
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_edit
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_layer
  L3_2(L4_2)
  L3_2 = A0_2._paster_id_to_panel
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2.set_special_zoom_navigation_target
    L7_2 = L3_2
    L6_2 = L3_2.get_first_selected_object
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1._virtual_select_paster = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._move_virtual_cursor_to_paster
  L3_2 = A0_2._editing_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_bg_click
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cursor_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_virtual_cursor_move
  L1_2(L2_2)
end
L1_1._on_virtual_unselected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._paster_id_to_panel
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.get_world_position
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_cursor
    L5_2 = L4_2
    L4_2 = L4_2.set_world_position
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._move_virtual_cursor_to_paster = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_cursor
  L2_2 = L1_2
  L1_2 = L1_2.get_screen_position
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_in_virtual_edit
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._virtual_drag_paster
    L4_2 = L1_2
    L5_2 = A0_2._last_virtual_position
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._move_virtual_cursor_to_paster
    L4_2 = A0_2._editing_id
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_cursor
    L3_2 = L2_2
    L2_2 = L2_2.get_screen_position
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._update_virtual_hover
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._last_virtual_position = L1_2
end
L1_1._on_virtual_cursor_move = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._editing_id
    L1_2 = L1_2 ~= 0
  end
  return L1_2
end
L1_1._is_in_virtual_edit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._get_virtual_cursor_hover_paster_panel
  L4_2 = A1_2
  L5_2 = A0_2._last_hover_panel
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = L2_2
    L5_2 = L2_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.EventSystem
    L3_2 = L3_2.current
    L4_2 = L3_2
    L3_2 = L3_2.SetSelectedGameObject
    L5_2 = nil
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_cursor
  L5_2 = L4_2
  L4_2 = L4_2.set_status
  if L3_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.VirtualCursorStatus
    L6_2 = L6_2.Highlight
    if L6_2 then
      goto lbl_40
    end
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.VirtualCursorStatus
  L6_2 = L6_2.Normal
  ::lbl_40::
  L4_2(L5_2, L6_2)
end
L1_1._update_virtual_hover = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2._paster_ids
  L3_2 = #L3_2
  L4_2 = 1
  L5_2 = -1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._paster_ids
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._paster_id_to_panel
    L8_2 = L8_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.is_in_rect
    L11_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      return L8_2
    end
  end
  L3_2 = nil
  return L3_2
end
L1_1._get_virtual_cursor_hover_paster_panel = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == nil then
    return
  end
  L3_2 = A0_2._paster_id_to_panel
  L4_2 = A0_2._editing_id
  L3_2 = L3_2[L4_2]
  L5_2 = L3_2
  L4_2 = L3_2.simulate_drag
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._virtual_drag_paster = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.is_active_in_hierarchy
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.is_top_page_or_dialog
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._virtual_scale_paster
    L5_2 = -0.05
    L3_2(L4_2, L5_2)
    A0_2._virtual_edited = true
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightTrigger
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._virtual_scale_paster
      L5_2 = 0.05
      L3_2(L4_2, L5_2)
      A0_2._virtual_edited = true
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.RightStickUp
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._try_virtual_rotate_paster
        L5_2 = A0_2._right_stick_x
        L6_2 = A2_2
        L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.RightStickDown
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._try_virtual_rotate_paster
          L5_2 = A0_2._right_stick_x
          L6_2 = -A2_2
          L3_2(L4_2, L5_2, L6_2)
        else
          L3_2 = CS
          L3_2 = L3_2.InControl
          L3_2 = L3_2.InputControlType
          L3_2 = L3_2.RightStickLeft
          L3_2 = #L3_2
          if A1_2 == L3_2 then
            L4_2 = A0_2
            L3_2 = A0_2._try_virtual_rotate_paster
            L5_2 = -A2_2
            L6_2 = A0_2._right_stick_y
            L3_2(L4_2, L5_2, L6_2)
          else
            L3_2 = CS
            L3_2 = L3_2.InControl
            L3_2 = L3_2.InputControlType
            L3_2 = L3_2.RightStickRight
            L3_2 = #L3_2
            if A1_2 == L3_2 then
              L4_2 = A0_2
              L3_2 = A0_2._try_virtual_rotate_paster
              L5_2 = A2_2
              L6_2 = A0_2._right_stick_y
              L3_2(L4_2, L5_2, L6_2)
            end
          end
        end
      end
    end
  end
end
L1_1._on_in_control_press = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L3_2 = A0_2._is_in_virtual_edit
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_stick_in_dead_zoom
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    A0_2._right_stick_x = A1_2
    A0_2._right_stick_y = A2_2
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._is_stick_in_dead_zoom
  L5_2 = A0_2._right_stick_x
  L6_2 = A0_2._right_stick_y
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    A0_2._right_stick_x = A1_2
    A0_2._right_stick_y = A2_2
    return
  end
  L4_2 = A0_2._paster_id_to_panel
  L5_2 = A0_2._editing_id
  L4_2 = L4_2[L5_2]
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector2
  L5_2 = L5_2.SignedAngle
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector2
  L7_2 = A0_2._right_stick_x
  L8_2 = A0_2._right_stick_y
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector2
  L8_2 = A1_2
  L9_2 = A2_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.simulate_rotate
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  A0_2._virtual_edited = true
  A0_2._right_stick_x = A1_2
  A0_2._right_stick_y = A2_2
end
L1_1._try_virtual_rotate_paster = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = math
  L3_2 = L3_2.abs
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L3_2 = L3_2 < L4_2
  return L3_2
end
L1_1._is_stick_in_dead_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._paster_id_to_panel
  L3_2 = A0_2._editing_id
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.simulate_scale
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._virtual_scale_paster = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._right_stick_x = 0
  A0_2._right_stick_y = 0
  L2_2 = A0_2._virtual_edited
  if L2_2 then
    L2_2 = A0_2._diary_data
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentPasterIDs
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.Contains
    L4_2 = A0_2._editing_id
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._update_paster
      L4_2 = A0_2._editing_id
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1._on_in_control_released = L2_1
return L1_1
