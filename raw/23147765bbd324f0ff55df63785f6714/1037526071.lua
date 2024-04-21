local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.LightConeArchive.LightConeArchivePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.LightConeArchive.LightConeArchiveTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.LightConeArchive.LightConeArchiveTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeArchivePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeArchivePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
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
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.ClearAllNewStatus
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = #L1_2
    L3_2 = L3_2 + 1
    L4_2 = L2_2.Current
    L1_2[L3_2] = L4_2
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ID
    L2_3 = #L2_3
    L3_3 = A1_3.ID
    L3_3 = #L3_3
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L11_2 = A0_2
    L10_2 = A0_2._create_tabitem
    L12_2 = L7_2.ID
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1._init_tabs = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.LightConeArchiveTabItem
  L5_2 = G
  L5_2 = L5_2.LightConeArchiveTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_root
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A0_2._data
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L0_1._create_tabitem = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.get_progress
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._on_tab_select_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._tab_control
      L4_2 = L4_2.current_select_item
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
return L0_1
