local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionExploreTabItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionExploreTabItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionShootTabItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionShootTabItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionRaidTabItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfActivityMissionRaidTabItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionHorizonSubMenuPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._default_tab_index = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  if A1_2 == L3_2 then
    if not A2_2 then
      L3_2 = A0_2._tab_control
      L3_2 = L3_2.current_select_item
      L4_2 = A0_2._shoot_tab_item
      if L3_2 == L4_2 then
        L3_2 = A0_2._tab_control
        L3_2 = L3_2.current_select_item
        L4_2 = L3_2
        L3_2 = L3_2.get_first_pic_object
        return L3_2(L4_2)
    end
    else
      L3_2 = A0_2._tab_control
      L3_2 = L3_2.current_select_item
      L4_2 = L3_2
      L3_2 = L3_2.get_first_selected_object
      return L3_2(L4_2)
    end
  end
end
L0_1.get_zoom_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._raid_tab_item
  if L1_2 == L2_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = L1_2
    L1_2 = L1_2.is_can_to_zoom
    return L1_2(L2_2)
  end
  L1_2 = true
  return L1_2
end
L0_1.is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._select_next = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._group_data = A1_2
  L2_2 = {}
  A0_2._sub_data = L2_2
  L2_2 = A0_2._explore_tab_item
  if L2_2 then
    L2_2 = A0_2._explore_tab_item
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._group_data
    L4_2 = L4_2.ExploreData
    L5_2 = A0_2._group_data
    L5_2 = L5_2.GroupId
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._sub_data
    L4_2 = A0_2._group_data
    L4_2 = L4_2.ExploreData
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._shoot_tab_item
  if L2_2 then
    L2_2 = A0_2._shoot_tab_item
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._group_data
    L4_2 = L4_2.ShootData
    L5_2 = A0_2._group_data
    L5_2 = L5_2.GroupId
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._sub_data
    L4_2 = A0_2._group_data
    L4_2 = L4_2.ShootData
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._raid_tab_item
  if L2_2 then
    L2_2 = A0_2._raid_tab_item
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._group_data
    L4_2 = L4_2.RaidData
    L5_2 = A0_2._group_data
    L5_2 = L5_2.GroupId
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._sub_data
    L4_2 = A0_2._group_data
    L4_2 = L4_2.RaidData
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  if L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L3_2 = L2_2
    L2_2 = L2_2._on_select
    L2_2(L3_2)
  else
    L2_2 = A0_2._default_tab_index
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._choose_default_tab
      L2_2(L3_2)
    end
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.click_item_by_uid
    L4_2 = A0_2._default_tab_index
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "SilverWolfExploreTab"
  L5_2 = A0_2._group_data
  L5_2 = L5_2.GroupId
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_explore_tab
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "SilverWolfShootTab"
  L5_2 = A0_2._group_data
  L5_2 = L5_2.GroupId
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_shoot_tab
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "SilverWolfRaidTab"
  L5_2 = A0_2._group_data
  L5_2 = L5_2.GroupId
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot_raid_tab
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = false
  L2_2 = 1
  L3_2 = A0_2._sub_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._sub_data
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.HasRewardAvail
    if L6_2 then
      A0_2._default_tab_index = L5_2
      L1_2 = true
      break
    end
  end
  if not L1_2 then
    L2_2 = 1
    L3_2 = A0_2._sub_data
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._sub_data
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.QuestClose
      if not L6_2 then
        A0_2._default_tab_index = L5_2
        L1_2 = true
        break
      end
    end
  end
  if not L1_2 then
    A0_2._default_tab_index = 1
  end
end
L0_1._choose_default_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_explore
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shoot
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_raid
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.set_inactive = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  return L1_2
end
L0_1.get_cur_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.get_cur_tab_btn_object
    return L1_2(L2_2)
  end
end
L0_1.get_cur_tab_btn_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2.setup_in_control_button_enable
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.setup_in_control_button_enable
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_explore_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_shoot_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_raid_tab_item
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
end
L0_1._init_tab_control = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfActivityMissionExploreTabItemPanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfActivityMissionExploreTabItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._explore_tab_item = L1_2
  L1_2 = A0_2._explore_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._explore_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_explore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._explore_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_explore
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_explore_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfActivityMissionShootTabItemPanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfActivityMissionShootTabItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._shoot_tab_item = L1_2
  L1_2 = A0_2._shoot_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._shoot_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_shoot
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._shoot_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_shoot
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_shoot_tab_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SilverWolfActivityMissionRaidTabItemPanel
  L4_2 = G
  L4_2 = L4_2.SilverWolfActivityMissionRaidTabItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._raid_tab_item = L1_2
  L1_2 = A0_2._raid_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._raid_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_raid
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item_created
  L3_2 = A0_2._raid_tab_item
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_raid
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_raid_tab_item = L1_1
function L1_1(A0_2)
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
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_zoom
  L2_2 = L2_2(L3_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_empty
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeSelf
    if not L2_2 then
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
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_zoom
  L2_2 = L2_2(L3_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 32
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_tab_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_empty
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_raid_tab_unselect = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
