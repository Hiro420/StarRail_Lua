local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicSynthesisPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ItemComposeModule
L3_1 = "SynthesisItemMaterial0_Produce"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemComposeRelicSynthesisPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
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
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._current_relic_config = A1_2
  A0_2._relic_configs = A2_2
  A0_2._relic_box_data = A3_2
  L4_2 = {}
  A0_2._relic_config_ids = L4_2
  L4_2 = 1
  L5_2 = A0_2._relic_configs
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._relic_config_ids
    L10_2 = A0_2._relic_configs
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.ID
    L8_2(L9_2, L10_2)
  end
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_relic_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._current_index
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
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._zoom_type = A1_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._res_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_navi_reaction
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._relic_synthesis_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
    L2_2 = A0_2._res_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_navi_reaction
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._relic_synthesis_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._relic_synthesis_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._zoom_type
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L1_2 = A0_2._relic_config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._relic_config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
  end
  else
    L1_2 = A0_2._zoom_type
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L1_2 = A0_2._relic_synthesis_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_material_id_list
      L1_2 = L1_2(L2_2)
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = 1
      L5_2 = A0_2._current_relic_config
      L5_2 = L5_2.ID
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = #L1_2
      if 0 < L2_2 then
        L2_2 = {}
        L2_2.items = L1_2
        L3_2 = G
        L3_2 = L3_2.InventoryUtils
        L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
        L4_2 = L2_2
        L3_2(L4_2)
      end
    end
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnComposeItemRsp
  L4_2 = A0_2._on_get_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_layer
  L4_2 = A0_2._on_btn_layer
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_sell
  L4_2 = A0_2._on_btn_sell
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.res_panel
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.res_panel
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ResBarAreaPanel
  L5_2 = G
  L5_2 = L5_2.ResBarAreaPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._res_panel = L2_2
  L2_2 = A0_2._res_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.ItemComposeRelicSynthesisPanel
  L5_2 = G
  L5_2 = L5_2.ItemComposeRelicSynthesisPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._relic_synthesis_panel = L2_2
  L2_2 = A0_2._relic_synthesis_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_relic_synthesis_panel
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_relic_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_scroll_view_relic_list_change
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_relic_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._relic_configs
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_relic_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._relic_synthesis_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_anim_length
  L4_2 = L3_1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._producing_anim_length = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_timer_callback
  L5_2 = A0_2._producing_anim_length
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.create_short_cut_hint_panel
  L2_2(L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._current_relic_config
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._refersh_list_and_synthesis_panel
    L1_2(L2_2)
    L1_2 = A0_2._res_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = "RelicComposePage"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._res_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = "ItemComposePage"
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemComposeTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._relic_box_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Type
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemComposeTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.MainTypeID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_sub_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TypeTextmapID
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_controller_hint
  L3_2(L4_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 62
  L1_2(L2_2, L3_2)
end
L0_1._setup_controller_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = A0_2._relic_synthesis_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._current_relic_config
    L5_2 = A0_2._relic_box_data
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_view_active_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ItemComposeRelicSynthesisItem
    L8_2 = G
    L8_2 = L8_2.ItemComposeRelicSynthesisItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_click_relic
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._relic_configs
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_selected
  L7_2 = A0_2._current_relic_config
  L7_2 = L7_2.ID
  L8_2 = A0_2._relic_configs
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.ID
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._current_relic_config
  L5_2 = L5_2.ID
  L6_2 = A0_2._relic_configs
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.ID
  if L5_2 == L6_2 then
    A0_2._current_index = A2_2
    A0_2._last_selected_panel = L4_2
  end
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L4_2._binder
  L6_2 = L6_2.root
  L5_2(L6_2)
  return L3_2
end
L0_1._on_scroll_view_relic_list_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._current_relic_config
  if L3_2 == A1_2 then
    return
  end
  A0_2._current_relic_config = A1_2
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._last_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._last_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._last_selected_panel = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refersh_synthesis_panel
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._on_click_relic = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_relic_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refersh_synthesis_panel
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refersh_list_and_synthesis_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._relic_synthesis_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._current_relic_config
  L5_2 = A0_2._relic_box_data
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._refersh_synthesis_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._relic_synthesis_panel
  L2_2 = L1_2
  L1_2 = L1_2.interrupt_producing_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_timer_callback
  L1_2(L2_2)
end
L0_1._on_btn_layer = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.GotoByType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.RelicSell
  L2_2 = #L2_2
  L1_2(L2_2)
end
L0_1._on_btn_sell = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
    L8_2 = "ItemComposeRelicSynthesisPage"
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    A0_2._block_id = L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_layer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2._is_in_anim = true
  A0_2._reward_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_zoom
  L2_2 = L2_2(L3_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._relic_synthesis_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIComposeFinished
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterFrames
  L3_2 = 5
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._relic_synthesis_panel
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
  L2_2(L3_2, L4_2)
end
L0_1._on_get_result = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_layer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reward_data
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
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._is_in_anim = false
  L2_2 = A0_2
  L1_2 = A0_2._refersh_list_and_synthesis_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._reward_data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RewardUtils
    L1_2 = L1_2.get_reward_table_without_avatar
    L2_2 = A0_2._reward_data
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.RewardDialog"
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_display_only
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._reward_data = nil
end
L0_1._on_timer_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L4_1
return L0_1
