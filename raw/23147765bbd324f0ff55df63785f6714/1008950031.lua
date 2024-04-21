local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSpecial.ItemComposeSpecialGridItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSpecial.ItemComposeSpecialGridItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSpecial.ItemComposeSpecialSelectedItemListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSpecial.ItemComposeSpecialSelectedItemListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeSpecial.ItemComposeSpecialDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeSpecialDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemComposeSpecialDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._material_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._material_id_list
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._special_compose_items = A1_2
  A0_2._item_data = A2_2
  L4_2 = A0_2._item_data
  L4_2 = L4_2.IsLock
  A0_2._is_lock = L4_2
  A0_2._current_index = 1
  A0_2._clicked_id = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L2_1
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
  L1_2 = L1_2.scroll_view_grid
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._current_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_grid
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_grid_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = {}
  A0_2._material_id_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._item_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.SpecialMaterialCost
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._material_id_list
    L7_2 = A0_2._item_data
    L7_2 = L7_2.Row
    L7_2 = L7_2.SpecialMaterialCost
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
  A0_2._current_select_material_id = nil
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._material_id_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L1_1
    L3_3 = L2_3
    L2_3 = L2_3.GetItemCountByConfigID
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L1_1
    L4_3 = L3_3
    L3_3 = L3_3.GetItemCountByConfigID
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= 0 and L3_3 == 0 then
      L4_3 = true
      return L4_3
    elseif L2_3 == 0 and L3_3 ~= 0 then
      L4_3 = false
      return L4_3
    end
    L4_3 = A0_3 < A1_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_clicked_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeSpecialSelectedItemListPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeSpecialSelectedItemListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._selected_mat_list_panel = L1_2
  L1_2 = A0_2._selected_mat_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_selected_material
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._selected_mat_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_material_selected_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._item_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.SpecialMaterialCostNumber
  A0_2._single_consume_count = L1_2
  A0_2.is_grid_item_canvas_alpha_half = false
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._clicked_id
  if L1_2 ~= 0 then
    L1_2 = 1
    L2_2 = A0_2._material_id_list
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._material_id_list
      L5_2 = L5_2[L4_2]
      L6_2 = A0_2._clicked_id
      if L5_2 == L6_2 then
        A0_2._current_index = L4_2
        break
      end
    end
  end
end
L0_1._set_clicked_navi = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_grid
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._material_id_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dialog
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_related_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_material_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_selected_mat_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_txt
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_controller_hint
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_right_stick_key_map
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._special_compose_items
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_grid
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_scroll_view
  L2_2 = A0_2.is_grid_item_canvas_alpha_half
  if L2_2 then
    L2_2 = 0.5
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = 1.0
  ::lbl_12::
  L1_2.alpha = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_controller_hint
  L1_2(L2_2)
end
L0_1.refresh_confirm_btn_and_mat_list_canvas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._current_selected_materials_count = 0
  L1_2 = 1
  L2_2 = A0_2._special_compose_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._current_selected_materials_count
    L6_2 = A0_2._special_compose_items
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.count
    L5_2 = L5_2 + L6_2
    A0_2._current_selected_materials_count = L5_2
  end
end
L0_1._setup_material_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_mat_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._special_compose_items
  L4_2 = A0_2._single_consume_count
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_selected_mat_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._current_selected_materials_count
  L3_2 = A0_2._single_consume_count
  if L2_2 < L3_2 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "<color=\"#C84A32\">%s</color>"
    L4_2 = A0_2._current_selected_materials_count
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L1_2 = A0_2._current_selected_materials_count
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L5_2 = "/"
  L6_2 = A0_2._single_consume_count
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_txt = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._current_selected_materials_count
  L4_2 = A0_2._single_consume_count
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_selected_materials_count
  L2_2 = A0_2._single_consume_count
  if L1_2 >= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_confirm
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = A0_2.is_grid_item_canvas_alpha_half
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_confirm_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item_data
  L1_2 = L1_2.IsLock
  if not L1_2 then
    L1_2 = A0_2.is_grid_item_canvas_alpha_half
    if not L1_2 then
      goto lbl_12
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_12::
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = "ItemDetail"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._current_selected_materials_count
  L3_2 = A0_2._single_consume_count
  if L2_2 < L3_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_Add"
    L2_2(L3_2, L4_2)
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = "Menu_Cancel"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._current_selected_materials_count
  if 0 < L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_Remove"
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_controller_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc_bottom_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ItemCompose_Formula_Tip_1"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc_bottom_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ItemCompose_SpecialMaterialChoose_Tip_1"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_material_selected_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_lock_related_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.ItemComposeSpecialGridItem
    L10_2 = G
    L10_2 = L10_2.ItemComposeSpecialGridItemBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._material_id_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = A0_2
  L8_2 = A0_2._get_target_index
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L10_2 = L6_2
  L9_2 = L6_2.setup_view
  L11_2 = L7_2
  L12_2 = A0_2._special_compose_items
  L12_2 = L12_2[L8_2]
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A0_2._is_lock
  if not L9_2 then
    L10_2 = L6_2
    L9_2 = L6_2.register_click_callback
    L11_2 = A0_2._on_item_click
    L12_2 = A0_2._on_minus_click
    L13_2 = A0_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L10_2 = L6_2
  L9_2 = L6_2.set_selected
  L12_2 = A0_2
  L11_2 = A0_2._is_selected
  L13_2 = L7_2
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L6_2
  L9_2 = L6_2.set_rarity_display
  L11_2 = false
  L9_2(L10_2, L11_2)
  return L5_2
end
L0_1._on_grid_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.ConfigID
  A0_2._current_select_material_id = L2_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountByConfigID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == 0 then
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_show
    L5_2 = "Ui.Common.ItemDetailDialog"
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = A0_2._current_select_material_id
    L5_2(L6_2, L7_2)
    return
  end
  L4_2 = A0_2._current_selected_materials_count
  L5_2 = A0_2._single_consume_count
  if L4_2 >= L5_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_target_index
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = A0_2._special_compose_items
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.count
    if L3_2 > L5_2 then
      L5_2 = A0_2._special_compose_items
      L5_2 = L5_2[L4_2]
      L6_2 = A0_2._special_compose_items
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.count
      L6_2 = L6_2 + 1
      L5_2.count = L6_2
    else
      return
    end
  else
    L5_2 = {}
    L5_2.id = L2_2
    L5_2.count = 1
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._special_compose_items
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._refresh_dialog
  L5_2(L6_2)
end
L0_1._on_item_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  L4_2 = A0_2
  L3_2 = A0_2._get_target_index
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L2_2 = true
  end
  return L2_2
end
L0_1._is_selected = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._special_compose_items
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._special_compose_items
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.id
    if A1_2 == L7_2 then
      L2_2 = L6_2
      break
    end
  end
  return L2_2
end
L0_1._get_target_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.ConfigID
  A0_2._current_select_material_id = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._get_target_index
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._remove_selected_item
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_dialog
  L4_2(L5_2)
end
L0_1._on_minus_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_target_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._remove_selected_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_dialog
  L3_2(L4_2)
end
L0_1._on_click_selected_material = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._special_compose_items
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.count
  if 1 <= L2_2 then
    L2_2 = A0_2._special_compose_items
    L2_2 = L2_2[A1_2]
    L3_2 = A0_2._special_compose_items
    L3_2 = L3_2[A1_2]
    L3_2 = L3_2.count
    L3_2 = L3_2 - 1
    L2_2.count = L3_2
  end
  L2_2 = A0_2._special_compose_items
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.count
  if L2_2 == 0 then
    L2_2 = table
    L2_2 = L2_2.remove
    L3_2 = A0_2._special_compose_items
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._remove_selected_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_selected_materials_count
  L2_2 = A0_2._single_consume_count
  if L1_2 < L2_2 then
    L1_2 = {}
    A0_2._special_compose_items = L1_2
  end
  L1_2 = A0_2._selected_mat_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.rename_all_panels_name
  L1_2(L2_2)
  L1_2 = A0_2._close_callback
  L2_2 = A0_2._close_callback_self
  L3_2 = A0_2._special_compose_items
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._close = L2_1
return L0_1
