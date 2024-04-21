local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Relic.Filter.RelicFilterDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.SubTab.RelicFilterPropertyTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.SubTab.RelicFilterPropertyTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.SubTab.RelicFilterStatusTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Filter.SubTab.RelicFilterStatusTabItemBinder"
L0_1(L1_1)
L0_1 = "4021"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RelicFilterDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RelicFilterDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._all_data = A1_2
  A0_2._all_filter = A2_2
  A0_2._relic_base_type = A3_2
end
L1_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L1_1.set_filter_changed_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_exit
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
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gamepad_btn_tab_left
  L4_2 = A0_2._on_gamepad_btn_tab_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gamepad_btn_tab_right
  L4_2 = A0_2._on_gamepad_btn_tab_right
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._report_filter_dialog_option
  L1_2(L2_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.node_tab_btns_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Horizontal
  L1_2(L2_2, L3_2)
end
L1_1._init_tab_control = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RelicFilterPropertyTabItem
  L4_2 = G
  L4_2 = L4_2.RelicFilterPropertyTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_property
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item_created
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_tab_property
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.init_filter
  L4_2 = A0_2._all_filter
  L5_2 = A0_2._relic_base_type
  L6_2 = A0_2._on_filter_changed
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RelicFilterStatusTabItem
  L5_2 = G
  L5_2 = L5_2.RelicFilterStatusTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_status
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item_created
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_tab_status
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.init_filter
  L5_2 = A0_2._all_filter
  L6_2 = A0_2._relic_base_type
  L7_2 = A0_2._on_filter_changed
  L8_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1._init_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._on_tab_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L1_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L1_2(L2_2, L3_2)
end
L1_1._on_filter_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.clear_filter
    L7_2(L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2._callback_self
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_clear = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L1_1._on_gamepad_btn_tab_left = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L1_1._on_gamepad_btn_tab_right = L2_1
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
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = A0_2._relic_base_type
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.RelicType
    L1_2 = L1_2.Unknow
  end
  L2_2 = A0_2._native
  if L2_2 then
    L2_2 = A0_2._native
    L2_2 = L2_2.Parent
  end
  if L2_2 then
    L3_2 = L2_2.Name
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = ""
  ::lbl_20::
  L5_2 = A0_2
  L4_2 = A0_2._get_set_filter_report_data
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_rarity_filter_report_data
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_main_property_filter_report_data
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._get_sub_property_filter_report_data
  L7_2, L8_2 = L7_2(L8_2)
  L10_2 = A0_2
  L9_2 = A0_2._get_status_filter_report_data
  L11_2 = G
  L11_2 = L11_2.RelicLockStatusFilter
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = A0_2
  L10_2 = A0_2._get_status_filter_report_data
  L12_2 = G
  L12_2 = L12_2.RelicLevelStatusFilter
  L10_2 = L10_2(L11_2, L12_2)
  L12_2 = A0_2
  L11_2 = A0_2._get_status_filter_report_data
  L13_2 = G
  L13_2 = L13_2.RelicEquipmentStatusFilter
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = CS
  L12_2 = L12_2.RPG
  L12_2 = L12_2.Client
  L12_2 = L12_2.SDKLuaReportAdapter
  L12_2 = L12_2.ReportRelicFilterDialogSelectOptions
  L13_2 = L1_2
  L14_2 = L3_2
  L15_2 = L4_2
  L16_2 = L5_2
  L17_2 = L6_2
  L18_2 = L7_2
  L19_2 = L8_2
  L20_2 = L9_2
  L21_2 = L10_2
  L22_2 = L11_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
end
L1_1._report_filter_dialog_option = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._get_filter_active_types
  L4_2 = G
  L4_2 = L4_2.RelicNormalSuitFilter
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L1_2
    L8_2 = L1_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_filter_active_types
  L5_2 = G
  L5_2 = L5_2.RelicPlanarSuitFilter
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L1_2
    L9_2 = L1_2.Add
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L1_2
end
L1_1._get_set_filter_report_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._get_filter_active_types
  L4_2 = G
  L4_2 = L4_2.RelicRarityFilter
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L1_2
    L8_2 = L1_2.Add
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L1_1._get_rarity_filter_report_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2._get_filter_active_types
  L4_2 = G
  L4_2 = L4_2.RelicMainPropertyFilter
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L1_2
    L8_2 = L1_2.Add
    L10_2 = #L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L1_1._get_main_property_filter_report_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L4_2 = A0_2
  L3_2 = A0_2._get_filter_by_type
  L5_2 = G
  L5_2 = L5_2.RelicSubPropertyFilter
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.get_select_include
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = 1
      if L4_2 then
        goto lbl_26
        L1_2 = L4_2 or L1_2
      end
    end
    L1_2 = 2
  end
  ::lbl_26::
  L5_2 = A0_2
  L4_2 = A0_2._get_filter_active_types
  L6_2 = G
  L6_2 = L6_2.RelicSubPropertyFilter
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L2_2
    L10_2 = L2_2.Add
    L12_2 = #L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = #L4_2
  if L5_2 == 0 then
    L1_2 = 0
  end
  L5_2 = L1_2
  L6_2 = L2_2
  return L5_2, L6_2
end
L1_1._get_sub_property_filter_report_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L4_2 = A0_2
  L3_2 = A0_2._get_filter_by_type
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.get_active_filter_table
    L4_2 = L4_2(L5_2)
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = L9_2.FilterType
      L10_2(L11_2, L12_2)
    end
  end
  return L2_2
end
L1_1._get_filter_active_types = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 0
  L4_2 = A0_2
  L3_2 = A0_2._get_filter_by_type
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.get_report_filter_type
    if L4_2 ~= nil then
      L5_2 = L3_2
      L4_2 = L3_2.get_report_filter_type
      L4_2 = L4_2(L5_2)
      L2_2 = L4_2
    end
  end
  return L2_2
end
L1_1._get_status_filter_report_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._all_filter
  if L2_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2._all_filter
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.IsInstanceOf
    L8_2 = L6_2
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return L6_2
    end
  end
end
L1_1._get_filter_by_type = L2_1
return L1_1
