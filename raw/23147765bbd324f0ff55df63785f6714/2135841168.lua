local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeSelectOrderDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.FilterSort.OrderOptionSelectInfoPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeSelectOrderDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AutoInputRuleDialog_Title"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeSelectOrderDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._sort_type_list = nil
  A0_2._cur_sort_type = nil
  A0_2._show_finish_callback_self = nil
  A0_2._show_finish_callback = nil
  A0_2._enable_toggle_option = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._cur_sort_type = A1_2
  A0_2._sort_type_list = A2_2
  A0_2._show_finish_callback_self = A3_2
  A0_2._show_finish_callback = A4_2
  A0_2._auto_fill_text_id = A5_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle_option
  L4_2 = A0_2._on_btn_toggle_option
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_panel_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.OrderOptionSelectInfoPanel
    L8_2 = G
    L8_2 = L8_2.OrderOptionSelectInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.ItemTransform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._sort_type_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_name
  L8_2 = A0_2._auto_fill_text_id
  L9_2 = L5_2
  L8_2 = L8_2 .. L9_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_select_state
  L8_2 = A0_2._cur_sort_type
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_click_callback
  L8_2 = A0_2._on_click_sort_type
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.get_first_selectable_cmpt
  L6_2 = L6_2(L7_2)
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_navigation
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L6_2.OnNaviHandler = L7_2
  return L3_2
end
L0_1._on_item_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_panel_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._sort_type_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_dialog_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LuaToCs
  L3_2 = L3_2.Instantiate
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.SetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.SetParent
  L6_2 = A2_2
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end
L0_1._create_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_sort_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_click_sort_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._show_finish_callback
  if L1_2 then
    L1_2 = A0_2._show_finish_callback_self
    if L1_2 then
      L1_2 = A0_2._show_finish_callback
      L2_2 = A0_2._show_finish_callback_self
      L3_2 = A0_2._cur_sort_type
      L4_2 = A0_2._enable_toggle_option
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2._show_finish_callback
      L2_2 = A0_2._cur_sort_type
      L3_2 = A0_2._enable_toggle_option
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sort_panel_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_sort_panel_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.show_sort_title = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_toggle_option
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  A0_2._enable_toggle_option = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_toggle_option_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_toggle_option_btn_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_toggle_option_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_toggle_btn_status
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_toggle_option
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_btn_toggle_navigation
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L5_2.OnNaviHandler = L6_2
end
L0_1.show_toggle_option = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_toggle_option
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_toggle_option = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_toggle_option
  L1_2 = not L1_2
  A0_2._enable_toggle_option = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_toggle_btn_status
  L1_2(L2_2)
end
L0_1._on_btn_toggle_option = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle_option
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._enable_toggle_option
  L1_2(L2_2, L3_2)
end
L0_1._refresh_toggle_btn_status = L2_1
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
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_panel_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A3_2 then
    return
  end
  L4_2 = A0_2._binder
  if L4_2 == nil then
    return
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Down
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_toggle_option
    L4_2 = L4_2.gameObject
    L4_2 = L4_2.activeInHierarchy
    if L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2.set_navigation_target
      L6_2 = A0_2._binder
      L6_2 = L6_2.btn_toggle_option
      L6_2 = L6_2.gameObject
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._on_navigation = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A3_2 then
    return
  end
  L4_2 = A0_2._binder
  if L4_2 == nil then
    return
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Up
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L7_2 = A0_2
    L6_2 = A0_2.get_first_selected_object
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._on_btn_toggle_navigation = L2_1
return L0_1
