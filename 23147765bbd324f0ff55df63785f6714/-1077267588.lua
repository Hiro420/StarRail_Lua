local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionVerticalTabItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionVerticalTabItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionHorizonSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionHorizonSubMenuPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionVerticalSubMenuPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SilverWolfModule
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._tab_control_root = A3_2
  L5_2 = {}
  A0_2._tab_items = L5_2
  A0_2._horizon_tab_index = A4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.SilverWolfGroupDatas
  A0_2._group_data_list = L1_2
  A0_2._default_tab_index = 1
  L1_2 = false
  L2_2 = 0
  L3_2 = A0_2._group_data_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._group_data_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.HasRewardAvail
    if L6_2 then
      L6_2 = L5_2 + 1
      A0_2._default_tab_index = L6_2
      L1_2 = true
      break
    end
  end
  if not L1_2 then
    L2_2 = 0
    L3_2 = A0_2._group_data_list
    L3_2 = L3_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._group_data_list
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsGroupClose
      if not L6_2 then
        L6_2 = L5_2 + 1
        A0_2._default_tab_index = L6_2
        break
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_horizon_submenu
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_tab_control
  L2_2(L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._tab_control
  L3_2 = L3_2.current_select_item
  L4_2 = L3_2
  L3_2 = L3_2.get_zoom_target
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1.get_zoom_target = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L2_2 = L2_2.locked
    L2_2 = A0_2._mission_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.is_can_to_zoom
    L2_2 = not L2_2 and L2_2
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._tab_control_root
  L1_2(L2_2, L3_2)
  L1_2 = 0
  L2_2 = A0_2._group_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._init_tab_item
    L7_2 = A0_2._group_data_list
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
  end
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
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.SilverWolfActivityMissionVerticalTabItemPanel
  L5_2 = G
  L5_2 = L5_2.SilverWolfActivityMissionVerticalTabItemPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_group_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_mission_sub_menu
  L5_2 = A0_2._mission_sub_menu_panel
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.my_init
  L3_2(L4_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._tab_items
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._init_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfActivityMissionHorizonSubMenuPanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfActivityMissionHorizonSubMenuPanelBinder
  L5_2 = A0_2._horizon_tab_index
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._mission_sub_menu_panel = L1_2
  L1_2 = A0_2._mission_sub_menu_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sub_menu
  L1_2(L2_2, L3_2)
end
L0_1._init_horizon_submenu = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelSwitch
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = L1_2.__name
  L5_2 = L1_2.group_id
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_tab_select = L2_1
return L0_1
