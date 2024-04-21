local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchivePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchivePage"
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
  L3_2 = L3_2.MonsterArchivePageBinder
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
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._data
  L4_2 = L3_2
  L3_2 = L3_2.GetAllArchiveEntries
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._all_entries = L2_2
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._init_all_camp_count
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L4_2 = A0_2
  L3_2 = A0_2._create_tabitem
  L5_2 = 0
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.GetAllMonsterCampID
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._mosnter_camp_count
    L7_2 = L7_2[L6_2]
    if 3 <= L7_2 then
      L7_2 = A0_2._tab_control
      L8_2 = L7_2
      L7_2 = L7_2.add_item
      L10_2 = A0_2
      L9_2 = A0_2._create_tabitem
      L11_2 = L6_2
      L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_tabitem
  L4_2 = 99
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_camp_ids
  L5_2 = A0_2._other_monster_camp_ids
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_tabs = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.MonsterArchiveTabItem
  L5_2 = G
  L5_2 = L5_2.MonsterArchiveTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A0_2._data
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tab_root
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._create_tabitem = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._mosnter_camp_count = L1_2
  L1_2 = {}
  A0_2._other_monster_camp_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._all_entries
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Row
    L6_2 = L6_2.MonsterCampID
    L7_2 = A0_2._mosnter_camp_count
    L8_2 = A0_2._mosnter_camp_count
    L8_2 = L8_2[L6_2]
    if not L8_2 then
      L8_2 = 0
    end
    L8_2 = L8_2 + 1
    L7_2[L6_2] = L8_2
  end
  L1_2 = pairs
  L2_2 = A0_2._mosnter_camp_count
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 < 3 then
      L6_2 = A0_2._other_monster_camp_ids
      L7_2 = A0_2._other_monster_camp_ids
      L7_2 = #L7_2
      L7_2 = L7_2 + 1
      L6_2[L7_2] = L4_2
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._other_monster_camp_ids
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2._data
    L3_3 = L2_3
    L2_3 = L2_3.CampCompare
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L2_3 = L2_3 == -1
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._init_all_camp_count = L1_1
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
  L3_2 = A0_2
  L2_2 = A0_2._get_progress
  L5_2 = L1_2
  L4_2 = L1_2.get_monster_camp_id
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
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
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 0
  L3_2 = 0
  L4_2 = ipairs
  L5_2 = A0_2._all_entries
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = A0_2
    L9_2 = A0_2._should_cal_progress
    L11_2 = L8_2
    L12_2 = A1_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if L9_2 then
      L9_2 = L8_2.CurProgress
      L2_2 = L2_2 + L9_2
      L9_2 = L8_2.TotalProgress
      L3_2 = L3_2 + L9_2
    end
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_progress = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 ~= 0 then
    L3_2 = A1_2.Row
    L3_2 = L3_2.MonsterCampID
    if L3_2 ~= A2_2 then
      goto lbl_9
    end
  end
  L3_2 = true
  do return L3_2 end
  ::lbl_9::
  if A2_2 ~= 99 then
    L3_2 = false
    return L3_2
  end
  L3_2 = ipairs
  L4_2 = A0_2._other_monster_camp_ids
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A1_2.Row
    L8_2 = L8_2.MonsterCampID
    if L7_2 == L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._should_cal_progress = L1_1
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
