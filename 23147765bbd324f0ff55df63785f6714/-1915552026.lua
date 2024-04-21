local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTopTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeGridItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeGridItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ItemComposeModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = "SynthesisItemMaterial0_Produce"
L4_1 = "SynthesisItemMaterial0_Unlock"
L5_1 = 2
L6_1 = 20
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemComposePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._tab_data = nil
  A0_2._current_item = nil
  L1_2 = {}
  A0_2._item_table = L1_2
  L1_2 = {}
  A0_2._compose_items = L1_2
  L1_2 = {}
  A0_2._tab_table = L1_2
  L1_2 = {}
  A0_2._top_tab_table = L1_2
  A0_2._top_tab = 1
  A0_2._old_tab_data = nil
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  A0_2._block_id = nil
  A0_2._first_enter = true
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "ItemComposePage: Zoom1 Enter"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.show_top_type
    L3_2 = L6_1
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_zoom_1
      L2_2.alpha = 1
      L2_2 = A0_2._binder
      L2_2 = L2_2.filter_in_control_btn
      L2_2.ActionEnabled = true
      L2_2 = A0_2._binder
      L2_2 = L2_2.filter_in_control_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._compose_relic_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_list_canvas
      L2_2 = L2_2(L3_2)
      L2_2.alpha = 1
      L2_2 = A0_2._compose_relic_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_filter_enable
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._res_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_navi_reaction
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogFormatWithTag
      L3_2 = G
      L3_2 = L3_2.LogTag
      L3_2 = L3_2.UI
      L4_2 = "ItemComposePage: Zoom2 Enter"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.show_top_type
      L3_2 = L6_1
      if L2_2 ~= L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._compose_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_navigation_target
        L4_2, L5_2, L6_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = A0_2._compose_relic_panel
        L3_2 = L2_2
        L2_2 = L2_2.get_detail_panel
        L2_2 = L2_2(L3_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L6_2 = L2_2
        L5_2 = L2_2.get_navigation_target
        L5_2, L6_2 = L5_2(L6_2)
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "ItemComposePage: Zoom1 Leave"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.show_top_type
    L3_2 = L6_1
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_group_zoom_1
      L2_2.alpha = 0.5
      L2_2 = A0_2._binder
      L2_2 = L2_2.filter_in_control_btn
      L2_2.ActionEnabled = false
      L2_2 = A0_2._binder
      L2_2 = L2_2.filter_in_control_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._compose_relic_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_list_canvas
      L2_2 = L2_2(L3_2)
      L2_2.alpha = 0.5
      L2_2 = A0_2._compose_relic_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_filter_enable
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._res_panel
  L3_2 = L2_2
  L2_2 = L2_2.enable_navi_reaction
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_leave_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_tab_control_in_control_tip
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_in_control_btn
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._compose_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filter_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_tab_control_in_control_tip
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_in_control_btn
  L1_2.ActionEnabled = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_in_control_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._compose_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filter_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.top_tab_left_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._top_tab_table
    L4_2 = #L4_2
    L4_2 = 1 < L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.top_tab_right_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._top_tab_table
    L4_2 = #L4_2
    L4_2 = 1 < L4_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.top_tab_left_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.top_tab_right_in_control_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_setup_tab_control_in_control_tip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_item
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_target_item_index_by_id
  L3_2 = A0_2._current_item
  L3_2 = L3_2.ConfigID
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 - 1
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "ItemComposePage: get_first_selected_object(): config is "
  L5_2 = A0_2._current_item
  L5_2 = L5_2.ConfigID
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "ItemComposePage: get_first_selected_object(): index is "
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = nil
  L3_2 = A0_2.show_top_type
  L4_2 = L6_1
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_grid_item
    L4_2 = L3_2
    L3_2 = L3_2.GetShownItemByItemIndex
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L3_2 = A0_2._compose_relic_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_item
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_item
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._tab_enter_index = A1_2
  A0_2._locate_compose_item_id = A2_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._top_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._top_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._current_item
  if L2_2 ~= nil then
    L2_2 = {}
    L3_2 = A0_2._current_item
    L3_2 = L3_2.Row
    L3_2 = L3_2.Type
    L4_2 = L5_1
    if L3_2 == L4_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L2_2
      L5_2 = "ActionGroup_Scroll"
      L3_2(L4_2, L5_2)
    end
    if A1_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L2_2
      L5_2 = "ActionGroup_SelectComposeMaterial"
      L3_2(L4_2, L5_2)
    end
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = "Menu_Confirm"
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = "ActionGroup_Return"
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.setup_short_cut_hint_panel
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_controller_hint = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.is_in_anim = false
  A0_2.reward_data = nil
  A0_2.show_top_type = 1
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_empty_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ItemCompose_Empty"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._top_tab_control = L1_2
  L1_2 = A0_2._top_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_top_type_tab
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.res_panel
  L3_2 = "ItemComposePage"
  L4_2 = A0_2
  L5_2 = false
  L6_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._res_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_layer
  L4_2 = A0_2._on_btn_layer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_change_scroll_style
  L4_2 = A0_2._on_btn_change_scroll_style
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnComposeItemRsp
  L4_2 = L0_1._on_get_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FormulaItemUsed
  L4_2 = L0_1._on_formula_used
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshComposeLimitStatus
  L4_2 = L0_1._refresh_current_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_layer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposePanel
  L4_2 = G
  L4_2 = L4_2.ItemComposePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_panel = L1_2
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_switch_callback
  L3_2 = A0_2._on_click_swtich
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeRelicTabPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeRelicTabPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_relic_panel = L1_2
  L1_2 = A0_2._compose_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_relic_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_grid_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  A0_2._is_grid_view = true
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_grid_view
  L3_2 = L3_2 == true
  L1_2(L2_2, L3_2)
  A0_2.from_compose = false
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_anim_length
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._producing_anim_length = L1_2
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_anim_length
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2 + 0.1
  A0_2._unlocking_anim_length = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = A0_2._producing_anim_length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_unlock_callback
  L4_2 = A0_2._unlocking_anim_length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_unlock_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._on_exit_rename
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._compose_relic_panel
  L2_2 = L1_2
  L1_2 = L1_2.rename_item_icon_panel
  L1_2(L2_2)
end
L0_1._on_exit_rename = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2.is_in_anim
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_top_page
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._current_item
  L3_2 = L3_2.Row
  L3_2 = L3_2.Type
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.MainTypeID
  if L3_2 == 20 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._switch_panel
  L5_2 = L2_2.MainTypeID
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_current_item
  L3_2(L4_2)
end
L0_1._on_view_active_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_enter_index
  if L1_2 ~= nil then
    L1_2 = A0_2._top_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = A0_2._tab_enter_index
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._top_tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  A0_2._last_grid_item_panel = nil
  L1_2 = A0_2._locate_compose_item_id
  if L1_2 ~= nil then
    L1_2 = A0_2.show_top_type
    L2_2 = L6_1
    if L1_2 ~= L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._get_target_item_index_by_id
      L3_2 = A0_2._locate_compose_item_id
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2._move_panel_to_locate_item
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.CoroutineUtils
        L2_2 = L2_2.InvokeAfterFrames
        L3_2 = 1
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = A0_2._binder
          L0_3 = L0_3.scroll_grid_item
          L1_3 = L0_3
          L0_3 = L0_3.GetShownItemByItemIndex
          L2_3 = L1_2
          L2_3 = L2_3 - 1
          L0_3 = L0_3(L1_3, L2_3)
          L1_3 = L0_3.UserObjectData
          A0_2._last_grid_item_panel = L1_3
          L1_3 = A0_2._last_grid_item_panel
          L2_3 = L1_3
          L1_3 = L1_3.set_selected
          L3_3 = true
          L1_3(L2_3, L3_3)
        end
        L2_2(L3_2, L4_2)
      else
      end
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_grid_item
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      A0_2._last_grid_item_panel = L2_2
      L2_2 = A0_2._last_grid_item_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_selected
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_controller_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._destroy_locate
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._locate_compose_item_id = nil
end
L0_1._destroy_locate = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._item_table
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ConfigID
    if L7_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  return L2_2
end
L0_1._get_target_item_index_by_id = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_layer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2.reward_data
  if not L1_2 then
    return
  end
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
    A0_2._block_id = nil
  end
  A0_2.is_in_anim = false
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._compose_panel
  L1_2.is_in_anim = false
  L1_2 = A0_2.reward_data
  A0_2.reward_data = nil
  A0_2.from_compose = true
  L3_2 = A0_2
  L2_2 = A0_2._refresh_current_item
  L2_2(L3_2)
  L2_2 = A0_2._compose_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_special_compose_items
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_controller_hint
  L5_2 = #L2_2
  L5_2 = L5_2 ~= 0
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_cur_zoom
  L3_2 = L3_2(L4_2)
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone2
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = A0_2._compose_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  if L1_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.RewardUtils
    L3_2 = L3_2.show_reward_dialog
    L4_2 = L1_2
    L3_2(L4_2)
  end
  L3_2 = A0_2._compose_panel
  L4_2 = L3_2
  L3_2 = L3_2.interrupt_producing_anim
  L3_2(L4_2)
end
L0_1._on_timer_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._block_id
    L1_2(L2_2, L3_2)
    A0_2._block_id = nil
  end
  L1_2 = A0_2._count_down_unlock_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_unlocking_anim_in_begin
  L1_2(L2_2)
  A0_2.is_in_anim = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_current_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = A0_2._compose_panel
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_timer_unlock_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.is_in_anim
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.BlockFixedTime
  L4_2 = A0_2._unlocking_anim_length
  L4_2 = L4_2 + 1
  L5_2 = A0_2._unlocking_anim_length
  L5_2 = L5_2 + 1
  L6_2 = nil
  L7_2 = false
  L8_2 = "ItemComposePage"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._block_id = L2_2
  A0_2.is_in_anim = true
  A0_2.from_compose = true
  L2_2 = A0_2._compose_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_anim_in_unlocking
  L2_2(L3_2)
  L2_2 = A0_2._count_down_unlock_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_unlock_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._on_formula_used = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.BlockFixedTime
    L4_2 = A0_2._producing_anim_length
    L4_2 = L4_2 + 1
    L5_2 = A0_2._producing_anim_length
    L5_2 = L5_2 + 1
    L6_2 = nil
    L7_2 = false
    L8_2 = "ItemComposePage"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    A0_2._block_id = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_layer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2.is_in_anim = true
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIComposeFinished
  L2_2(L3_2)
  A0_2.reward_data = A1_2
  L2_2 = A0_2._compose_panel
  L2_2._from_new_compose = true
  L2_2 = A0_2._compose_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_sp_material_id_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_having_new_can_compose_data
  L2_2 = L2_2(L3_2)
  if L2_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._sort
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._record_can_compose_data
  L2_2(L3_2)
end
L0_1._on_get_result = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_in_anim
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 5
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._tab_control
    L1_3 = L0_3
    L0_3 = L0_3.set_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._compose_panel
    L1_3 = L0_3
    L0_3 = L0_3.set_anim_in_producing
    L0_3(L1_3)
    L0_3 = A0_2._count_down_timer
    L1_3 = L0_3
    L0_3 = L0_3.reset
    L0_3(L1_3)
    L0_3 = A0_2._count_down_timer
    L1_3 = L0_3
    L0_3 = L0_3.start
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_got_focus = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "function M:_on _btn_layer()"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_in_anim
  if not L1_2 then
    return
  end
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._compose_panel
  L2_2 = L1_2
  L1_2 = L1_2.interrupt_producing_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_timer_callback
  L1_2(L2_2)
end
L0_1._on_btn_layer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_in_anim
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_grid_view
  L1_2 = not L1_2
  A0_2._is_grid_view = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_grid_view
  L3_2 = L3_2 == true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_list_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_panel_to_current_item_index
  L1_2(L2_2)
end
L0_1._on_btn_change_scroll_style = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._item_table
  L3_2 = A0_2._current_item
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_grid_item
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = L1_2 - 1
  L2_2(L3_2, L4_2)
end
L0_1._move_panel_to_current_item_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_grid_item
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = L1_2 - 1
  L2_2(L3_2, L4_2)
end
L0_1._move_panel_to_first_index = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_grid_item
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByIndex
  L4_2 = A1_2 - 1
  L2_2(L3_2, L4_2)
end
L0_1._move_panel_to_locate_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._top_tab_table = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainTypes
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemComposeTypeExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L8_2 = L7_2.UnlockID
      if L8_2 ~= 0 then
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.SystemOpenModule
        L8_2 = L8_2.IsOpen
        L9_2 = L7_2.UnlockID
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          goto lbl_36
        end
      end
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._top_tab_table
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    ::lbl_36::
  end
  L2_2 = A0_2._top_tab_table
  L2_2 = L2_2[1]
  L2_2 = L2_2.TypeID
  A0_2.show_top_type = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.top_tab_left_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._top_tab_table
  L4_2 = #L4_2
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.top_tab_right_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._top_tab_table
  L4_2 = #L4_2
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1._init_top_tab = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSubTypesByMainType
  L3_2 = A0_2.show_top_type
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemComposeTypeExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L2_2
end
L0_1._get_sorted_tabs = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._init_top_tab
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_sorted_tabs
  L1_2 = L1_2(L2_2)
  A0_2._tab_table = L1_2
  L1_2 = pairs
  L2_2 = A0_2._tab_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._init_tab_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._top_tab_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._init_top_tab_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._top_tab_table
  L1_2 = #L1_2
  if L1_2 <= 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_top_tab
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._init_tabs = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ItemComposeTabItem
  L5_2 = G
  L5_2 = L5_2.ItemComposeTopTabPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_item_top_type_tab
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_select_callback
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.on_top_tab_select
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._top_tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_top_tab_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.TypeID
  A0_2.show_top_type = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_sorted_tabs
  L2_2 = L2_2(L3_2)
  A0_2._tab_table = L2_2
  L2_2 = A0_2._first_enter
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_list_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_relic_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterFrames
    L3_2 = 1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._switch_panel
      L2_3 = A1_2.TypeID
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._switch_panel
    L4_2 = A1_2.TypeID
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._tab_table
  L2_2 = #L2_2
  L2_2 = 1 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_tab_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.UI
  L5_2 = "on_top_tab_select count "
  L6_2 = tostring
  L7_2 = A0_2._tab_table
  L7_2 = #L7_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._tab_control
    L4_2 = L3_2
    L3_2 = L3_2.clear
    L3_2(L4_2)
    L3_2 = pairs
    L4_2 = A0_2._tab_table
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = A0_2
      L8_2 = A0_2._init_tab_item
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L3_2 = A0_2._old_tab_data
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.on_tab_select
      L5_2 = A0_2._old_tab_data
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._tab_control
      L4_2 = L3_2
      L3_2 = L3_2.click_item_by_uid
      L5_2 = 1
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2._tab_data
    A0_2._old_tab_data = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.on_tab_select
    L5_2 = A0_2._tab_table
    L5_2 = L5_2[1]
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2.show_top_type
  L4_2 = L6_1
  if L3_2 ~= L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._init_filter
    L3_2(L4_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemComposeTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.TypeID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.compose_type_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.TypeTextmapID
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_navigation_target
  L7_2 = A0_2
  L6_2 = A0_2.get_first_selected_object
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A0_2
  L4_2 = A0_2.setup_controller_hint
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.DeleteComposeFormulaUnlockTabRedDot
  L6_2 = A0_2.show_top_type
  L4_2(L5_2, L6_2)
  A0_2._first_enter = false
  L4_2 = A0_2.show_top_type
  L5_2 = L6_1
  if L4_2 ~= L5_2 then
    L4_2 = A0_2._res_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = "ItemComposePage"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._res_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = "RelicComposePage"
    L4_2(L5_2, L6_2)
  end
end
L0_1.on_top_tab_select = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= 20
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_table
  L2_2 = #L2_2
  if L2_2 ~= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_compose_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2 ~= 20
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_relic_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 20
  L2_2(L3_2, L4_2)
end
L0_1._switch_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ItemComposeTabItem
  L5_2 = G
  L5_2 = L5_2.ItemComposeTopTabPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_item_tab_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_select_callback
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.on_tab_select
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_tab_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "on_tab_select is nil "
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "on_tab_select id "
  L5_2 = tostring
  L6_2 = A1_2.TypeID
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  A0_2._tab_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.compose_type_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._tab_data
  L4_2 = L4_2.TypeTextmapID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_item_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._sort
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._record_can_compose_data
  L2_2(L3_2)
  L2_2 = A0_2._compose_panel
  L3_2 = L2_2
  L2_2 = L2_2.clear_sp_compose_materials
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_display_empty_panel
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._locate_compose_item_id
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._move_panel_to_first_index
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_default_current_item
  L2_2(L3_2)
  A0_2._last_grid_item_panel = nil
  L3_2 = A0_2
  L2_2 = A0_2._refresh_current_item
  L2_2(L3_2)
end
L0_1.on_tab_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_item
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._refersh_list_and_compose_panel
    L3_2 = A0_2._current_item
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._compose_relic_panel
    L2_2 = L1_2
    L1_2 = L1_2.force_init_filter
    L1_2(L2_2)
  end
  L1_2 = A0_2._locate_compose_item_id
  if L1_2 ~= nil then
    return
  end
  L1_2 = A0_2.show_top_type
  L2_2 = L6_1
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._last_grid_item_panel
    if L1_2 == nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.scroll_grid_item
      L2_2 = L1_2
      L1_2 = L1_2.GetShownItemByItemIndex
      L3_2 = 0
      L1_2 = L1_2(L2_2, L3_2)
      L1_2 = L1_2.UserObjectData
      A0_2._last_grid_item_panel = L1_2
    end
    L1_2 = A0_2._last_grid_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_current_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_item
  if L1_2 == nil then
    L1_2 = A0_2._locate_compose_item_id
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._get_target_item_index_by_id
      L3_2 = A0_2._locate_compose_item_id
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._item_table
      L2_2 = L2_2[L1_2]
      if not L2_2 then
        L2_2 = A0_2._item_table
        L2_2 = L2_2[1]
      end
      A0_2._current_item = L2_2
      return
    end
  end
  L1_2 = A0_2._item_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._item_table
    L1_2 = L1_2[1]
    A0_2._current_item = L1_2
  else
    A0_2._current_item = nil
  end
end
L0_1._set_default_current_item = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.ItemComposeGridItem
    L10_2 = G
    L10_2 = L10_2.ItemComposeGridItemBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = A0_2._item_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L9_2 = L6_2
  L8_2 = L6_2.setup_view
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L9_2 = L6_2
  L8_2 = L6_2.register_click_callback
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._item_table
    L1_3 = #L1_3
    if L1_3 == 0 then
      return
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_item_click
    L3_3 = A0_3
    L4_3 = L6_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._current_item
  if L8_2 then
    L9_2 = L6_2
    L8_2 = L6_2.set_selected
    L10_2 = L7_2.ConfigID
    L11_2 = A0_2._current_item
    L11_2 = L11_2.ConfigID
    L10_2 = L10_2 == L11_2
    L8_2(L9_2, L10_2)
    L8_2 = L7_2.ConfigID
    L9_2 = A0_2._current_item
    L9_2 = L9_2.ConfigID
    if L8_2 == L9_2 then
      L8_2 = A0_2._last_grid_item_panel
      if L8_2 then
        L8_2 = A0_2._last_grid_item_panel
        L9_2 = L8_2
        L8_2 = L8_2.set_selected
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
      A0_2._last_grid_item_panel = L6_2
    end
  else
    L9_2 = L6_2
    L8_2 = L6_2.set_selected
    L10_2 = false
    L8_2(L9_2, L10_2)
  end
  return L5_2
end
L0_1._on_grid_item_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.IsNew
  if L3_2 then
    A1_2.IsNew = false
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.RefreshItemComposeIsNew
    L3_2(L4_2)
  end
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._current_item
  if L3_2 ~= A1_2 then
    L3_2 = A0_2._last_grid_item_panel
    if L3_2 ~= nil then
      L3_2 = A0_2._last_grid_item_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    A0_2._last_grid_item_panel = A2_2
    L3_2 = A0_2._compose_panel
    L4_2 = L3_2
    L3_2 = L3_2.clear_sp_compose_materials
    L3_2(L4_2)
    L3_2 = A0_2._current_item
    if L3_2 == nil then
      L4_2 = A0_2
      L3_2 = A0_2.setup_controller_hint
      L5_2 = false
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._current_item
      L3_2 = L3_2.Row
      L3_2 = L3_2.FormulaType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.FormulaType
      L4_2 = L4_2.Sepcial
      if L3_2 == L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2.setup_controller_hint
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2._setup_compose_panel
    L5_2 = A1_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_item_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._current_item = A1_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "ItemComposePage: _refersh_list_and_compose_panel(): config is "
  L5_2 = A0_2._current_item
  L5_2 = L5_2.ConfigID
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._current_item
  L3_2 = L3_2.Row
  L3_2 = L3_2.Type
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.MainTypeID
  if L3_2 ~= 20 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_list_panel
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_compose_panel
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._refersh_list_and_compose_panel = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._current_item = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemComposeTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._current_item
  L4_2 = L4_2.Row
  L4_2 = L4_2.Type
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.MainTypeID
  if L4_2 ~= 20 then
    L4_2 = A0_2._compose_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A0_2._compose_relic_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2.MainTypeID
    L7_2 = A0_2._locate_compose_item_id
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._setup_compose_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._item_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1._get_select_item_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._item_table = L1_2
  L1_2 = {}
  A0_2._item_table_backup = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetComposeKeysByType
  L3_2 = A0_2._tab_data
  L3_2 = L3_2.TypeID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.Row
      L7_2 = L7_2.FormulaRequire
      if L7_2 ~= 0 then
        L7_2 = L6_2.IsFormulaUnlocked
        if not L7_2 then
          L8_2 = A0_2
          L7_2 = A0_2._is_having_formula
          L9_2 = L6_2
          L7_2 = L7_2(L8_2, L9_2)
          if not L7_2 then
            goto lbl_38
          end
        end
      end
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._item_table
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._item_table_backup
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      ::lbl_38::
    end
  end
end
L0_1._get_item_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A1_2.Row
  L4_2 = L4_2.FormulaRequire
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= 0
  return L3_2
end
L0_1._is_having_formula = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.IsFormulaUnlocked
  L3_2 = A0_2
  L2_2 = A0_2._is_having_formula
  L4_2 = A1_2
  L2_2 = L2_2 == false and L2_2
  return L2_2
end
L0_1._is_can_unlock = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "listview count "
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.ForceToCheckContentPos
  L1_2(L2_2)
end
L0_1._refresh_list_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._item_table
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_can_unlock
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._is_can_unlock
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 == true and L3_3 == false
      return L4_3
    end
    L5_3 = A0_3
    L4_3 = A0_3.CanCompose
    L4_3 = L4_3(L5_3)
    L6_3 = A1_3
    L5_3 = A1_3.CanCompose
    L5_3 = L5_3(L6_3)
    L6_3 = A1_2
    if L6_3 == true then
      L6_3 = A0_3.ConfigID
      L7_3 = A0_2._current_item
      L7_3 = L7_3.ConfigID
      if L6_3 == L7_3 then
        L6_3 = CS
        L6_3 = L6_3.RPG
        L6_3 = L6_3.Client
        L6_3 = L6_3.ComposeItemFailedType
        L4_3 = L6_3.OK
      else
        L6_3 = A1_3.ConfigID
        L7_3 = A0_2._current_item
        L7_3 = L7_3.ConfigID
        if L6_3 == L7_3 then
          L6_3 = CS
          L6_3 = L6_3.RPG
          L6_3 = L6_3.Client
          L6_3 = L6_3.ComposeItemFailedType
          L5_3 = L6_3.OK
        end
      end
    end
    if L4_3 == L5_3 then
      L6_3 = A0_3.IsFormulaUnlocked
      L7_3 = A1_3.IsFormulaUnlocked
      if L6_3 ~= L7_3 then
        L6_3 = A0_3.IsFormulaUnlocked
        L6_3 = L6_3 == true
        return L6_3
      end
      L6_3 = A0_3.Row
      L6_3 = L6_3.Order
      L7_3 = A1_3.Row
      L7_3 = L7_3.Order
      if L6_3 ~= L7_3 then
        L6_3 = A0_3.Row
        L6_3 = L6_3.Order
        L7_3 = A1_3.Row
        L7_3 = L7_3.Order
        L6_3 = L6_3 < L7_3
        return L6_3
      end
      L6_3 = A0_3.ConfigID
      L7_3 = A1_3.ConfigID
      L6_3 = L6_3 < L7_3
      return L6_3
    else
      L6_3 = #L4_3
      L7_3 = #L5_3
      L6_3 = L6_3 < L7_3
      return L6_3
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._sort = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._item_can_compose_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.CanCompose
    L5_2 = L5_2(L6_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ComposeItemFailedType
    L6_2 = L6_2.OK
    if L5_2 == L6_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._item_can_compose_table
      L7_2 = A0_2._item_table
      L7_2 = L7_2[L4_2]
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._record_can_compose_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._item_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._item_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.CanCompose
    L5_2 = L5_2(L6_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ComposeItemFailedType
    L6_2 = L6_2.OK
    if L5_2 == L6_2 then
      L5_2 = true
      L6_2 = 1
      L7_2 = A0_2._item_can_compose_table
      L7_2 = #L7_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = A0_2._item_can_compose_table
        L10_2 = L10_2[L9_2]
        L10_2 = L10_2.ConfigID
        L11_2 = A0_2._item_table
        L11_2 = L11_2[L4_2]
        L11_2 = L11_2.ConfigID
        if L10_2 == L11_2 then
          L5_2 = false
          break
        end
      end
      if L5_2 == true then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_having_new_can_compose_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_grid_item
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._play_fade_in = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.show_top_type
  L3_2 = L6_1
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_compose_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._compose_relic_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_display_empty_panel
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_display_empty_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._item_table
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.ConfigID
    if L7_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.to_first_zoom
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_grid_item
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemByIndex
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeAfterFrames
  L4_2 = 2
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.scroll_grid_item
    L1_3 = L0_3
    L0_3 = L0_3.GetShownItemByItemIndex
    L2_3 = L2_2
    L2_3 = L2_3 - 1
    L0_3 = L0_3(L1_3, L2_3)
    L0_3 = L0_3.UserObjectData
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_item_click
    L3_3 = A0_2._item_table
    L4_3 = L2_2
    L3_3 = L3_3[L4_3]
    L4_3 = L0_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.set_navigation_target
    L3_3 = L0_3._binder
    L3_3 = L3_3.btn_item
    L3_3 = L3_3.gameObject
    L1_3(L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
end
L0_1._on_click_swtich = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ItemComposeFilter
  L3_2 = A0_2._tab_data
  L3_2 = L3_2.TypeID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._item_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._item_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_filter = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._item_table_backup
  L1_2(L2_2, L3_2)
end
L0_1._on_setup_filter = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._item_table = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._sort
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_display_empty_panel
  L4_2 = A0_2._item_table
  L4_2 = #L4_2
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_list_panel
  L2_2(L3_2)
  L2_2 = A0_2._item_table
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_grid_item
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterFrames
    L3_2 = 1
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = A0_2._binder
      if L0_3 == nil then
        return
      end
      L0_3 = A0_2._binder
      L0_3 = L0_3.scroll_grid_item
      L1_3 = L0_3
      L0_3 = L0_3.GetShownItemByItemIndex
      L2_3 = 0
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_item_click
      L3_3 = A0_2._item_table
      L3_3 = L3_3[1]
      L4_3 = L0_3.UserObjectData
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = L0_3.UserObjectData
      L2_3 = L1_3
      L1_3 = L1_3.set_selected
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.set_navigation_target
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.get_first_selected_object
      L3_3, L4_3 = L3_3(L4_3)
      L1_3(L2_3, L3_3, L4_3)
    end
    L2_2(L3_2, L4_2)
  else
    A0_2._current_item = nil
  end
end
L0_1._on_finish_filter = L7_1
return L0_1
