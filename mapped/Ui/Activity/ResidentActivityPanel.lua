local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityTabLeftPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ResidentActivityPanelEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ResidentActivityPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResidentActivityPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = "4110"
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._panel_table = L1_2
  L1_2 = {}
  A0_2._type_to_instantiated_panel = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ResidentActivityModule
  A0_2._resident_activity_module = L1_2
  A0_2._tab_inited = false
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._init_panel_id = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._tab_control
    L5_2 = L4_2
    L4_2 = L4_2.get_cur_tab_btn_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._update_activity_gamepad_hint_when_focusing_on_tab
    L4_2 = A0_2._cur_tab_uid
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._update_activity_gamepad_hint
      L4_2 = A0_2._cur_tab_uid
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L0_1._on_leave_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L4_2 = L2_2
  L3_2 = L2_2._is_can_to_zoom
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_tabs
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1.init_scroll_rect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.init_tab
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.find_item
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._update_activity_gamepad_hint
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list_panel
  L1_2 = L1_2.childCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2._setup_view
      L7_2(L8_2)
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2._tab_control
  L3_2 = L3_2._all_tab_items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2._binder
    L7_2 = L7_2.tab_btn_panel
    L8_2 = L7_2
    L7_2 = L7_2.force_rebuild_layout
    L7_2(L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialTaskUnlock
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.custom_set_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L2_2 = L1_2._refresh
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2._refresh
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_cur_zoom
  L2_2 = L2_2(L3_2)
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_update_first_tab_reddot_status
  L2_2(L3_2)
end
L0_1.on_top_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L2_2 = L2_2._binder
  if L2_2 then
    L2_2 = A0_2._tab_control
    L2_2 = L2_2.current_select_item
    L2_2 = L2_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.transform
    if L2_2 then
      L2_2 = A0_2._tab_control
      L2_2 = L2_2.current_select_item
      L2_2 = L2_2._binder
      L2_2 = L2_2.root
      L1_2 = L2_2.transform
    end
  end
  L2_2 = nil
  if L1_2 then
    L4_2 = L1_2
    L3_2 = L1_2.GetComponent
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Animation
    L5_2, L6_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.Stop
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.Sample
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = L2_2
    L5_2 = ""
    L3_2(L4_2, L5_2)
  end
end
L0_1.play_return_to_top_effect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ResidentActivityRefreshAll
  L4_2 = L0_1._on_activity_refresh_all
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._tab_inited
  if L1_2 then
    return
  end
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
  L3_2 = L3_2.node_quest_tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_activity_tabs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_red_dot
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
  L1_2 = 1
  L2_2 = A0_2._init_panel_id
  if L2_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A0_2._activity_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.PanelID
      L8_2 = A0_2._init_panel_id
      if L7_2 == L8_2 then
        A0_2._init_tab_id = L5_2
        L1_2 = L5_2
      end
    end
  end
  A0_2._cur_tab_uid = L1_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.setup_navigation
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.init_scroll_rect
  L2_2(L3_2)
  A0_2._tab_inited = true
end
L0_1.init_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_update_first_tab_reddot_status
    L1_2(L2_2)
  end
  L1_2 = ipairs
  L2_2 = A0_2._panel_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.AssetLoader
    L6_2 = L6_2.ReleaseAsset
    L7_2 = L5_2
    L6_2(L7_2)
  end
  A0_2._cur_activity_data = nil
  A0_2._activity_table = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._resident_activity_module
  L3_2 = L2_2
  L2_2 = L2_2.GetAvailableActivityDatas
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._activity_table = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._activity_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.IsFinishConditionsCompleted
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.IsFinishConditionsCompleted
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      L3_3 = A1_3
      L2_3 = A1_3.IsFinishConditionsCompleted
      return L2_3(L3_3)
    end
    L2_3 = A0_3.SortWeight
    L3_3 = A1_3.SortWeight
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._activity_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = ResidentActivityType2Panel
    L9_2 = L5_2.ActivityType
    L9_2 = #L9_2
    L8_2 = L8_2[L9_2]
    L9_2 = ResidentActivityType2Binder
    L10_2 = L5_2.ActivityType
    L10_2 = #L10_2
    L9_2 = L9_2[L10_2]
    L10_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2.button_prefab_index = 0
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_activity_tabs = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.PrefabPath
  L3_2 = A0_2._panel_table
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    L3_2 = A0_2._panel_table
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AssetLoader
    L4_2 = L4_2.SyncLoadAsset
    L5_2 = L2_2
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.GameObject
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2[L2_2] = L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = A0_2._panel_table
  L5_2 = L5_2[L2_2]
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_list_panel
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._type_to_instantiated_panel
  L5_2 = type
  L4_2[L5_2] = L3_2
  return L3_2
end
L0_1._get_panel_prefab_path_by_activity_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list_panel
  L1_2 = L1_2.childCount
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2._binder
      if L7_2 then
        L7_2 = L6_2._binder
        L7_2 = L7_2.tab_btn_panel
        if L7_2 then
          L7_2 = L6_2._binder
          L7_2 = L7_2.tab_btn_panel
          L8_2 = L7_2
          L7_2 = L7_2.unbind_reddot
          L7_2(L8_2)
        end
      end
    end
  end
end
L0_1._clear_tab_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list_panel
  L2_2 = L2_2.childCount
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_list_panel
    L9_2 = L8_2
    L8_2 = L8_2.GetChild
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = L8_2.gameObject
    L1_2[L7_2] = L8_2
  end
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.destroy_object
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._clear_tab_nodes = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_tab_red_dot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_scroll_red_dot
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.clear
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_tab_nodes
  L1_2(L2_2)
end
L0_1._clear_tabs = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_tab_uid = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._update_activity_gamepad_hint_when_focusing_on_tab
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_update_reddot_status
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._activity_table
  L2_2 = L2_2[A1_2]
  A0_2._cur_activity_data = L2_2
  L2_2 = A0_2._owner
  L2_2 = L2_2.guid
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.report_panel_switch
  L2_2(L3_2)
end
L0_1._on_tab_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
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
    end
  end
end
L0_1.report_panel_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    A0_2._is_dirty_and_need_refresh = true
  end
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._clear_tabs
    L1_2(L2_2)
    L1_2 = A0_2._owner
    L2_2 = L1_2
    L1_2 = L1_2._clear_cached_prefab_instance
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_activity_tabs
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_scroll_red_dot
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
    L3_2 = L3_2.Vertical
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._init_ui_navigation
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityPageRefresh
  L1_2(L2_2)
end
L0_1._on_activity_refresh_all = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_activity_gamepad_hint
  L4_2 = A0_2._tab_control
  L4_2 = L4_2.current_select_item
  L4_2 = L4_2.uid
  L2_2(L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 == false then
    return
  end
  L2_2 = A0_2._activity_table
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.ActionNameListOnTab
  L3_2 = nil
  L4_2 = L2_2.Length
  if L4_2 == 0 then
    L3_2 = L1_1
  else
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.setup_short_cut_hint_panel
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._update_activity_gamepad_hint_when_focusing_on_tab = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 == false then
    return
  end
  L2_2 = A0_2._activity_table
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.ActionNameList
  L3_2 = nil
  L4_2 = L2_2.Length
  if L4_2 == 0 then
    L3_2 = L1_1
  else
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_array
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.setup_short_cut_hint_panel
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._update_activity_gamepad_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_default_enter_first_tab
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._do_update_reddot_status
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_update_first_tab_reddot_status
  L2_2(L3_2)
end
L0_1._try_update_reddot_status = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._activity_table
  if L2_2 ~= nil then
    L2_2 = A0_2._activity_table
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._activity_table
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.OnPlayerClickPanel
  L2_2(L3_2)
end
L0_1._do_update_reddot_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_dirty_and_need_refresh
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_activity_refresh_all
  L1_2(L2_2)
end
L0_1.try_refresh_all = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 then
      L1_2 = type
      L2_2 = A0_2._tab_control
      L2_2 = L2_2.current_select_item
      L2_2 = L2_2.on_left_stick_button_click
      L1_2 = L1_2(L2_2)
      if L1_2 == "function" then
        L1_2 = A0_2._tab_control
        L1_2 = L1_2.current_select_item
        L2_2 = L1_2
        L1_2 = L1_2.on_left_stick_button_click
        L1_2(L2_2)
      end
    end
  end
end
L0_1.on_left_stick_button_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == 1
  return L2_2
end
L0_1._is_default_enter_first_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._do_update_reddot_status
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._try_update_first_tab_reddot_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_update_first_tab_reddot_status
    L1_2(L2_2)
  end
end
L0_1.on_first_child_dialog_open = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_update_first_tab_reddot_status
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.to_first_zoom
    L1_2(L2_2)
  end
end
L0_1.on_before_switch_out = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.IsCsObjectNull
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_scroll_reddot
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._activity_table
      if L1_2 ~= nil then
        goto lbl_16
      end
    end
  end
  do return end
  ::lbl_16::
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_tabs
  L2_2 = L2_2.content
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.ClearRedDotRoots
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._activity_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = G
      L7_2 = L7_2.UtilEngineWrap
      L7_2 = L7_2.IsCsObjectNull
      L9_2 = L6_2
      L8_2 = L6_2.get_tab_btn
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.get_tab_btn
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2.transform
        L8_2 = L7_2
        L7_2 = L7_2.SafeFind
        L9_2 = "RedDot"
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = G
        L8_2 = L8_2.UtilEngineWrap
        L8_2 = L8_2.IsCsObjectNull
        L9_2 = L7_2
        L8_2 = L8_2(L9_2)
        if not L8_2 then
          L8_2 = A0_2._binder
          L8_2 = L8_2.mono_scroll_reddot
          L9_2 = L8_2
          L8_2 = L8_2.AddRedDotRoot
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.SetupScrollRedDot
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reddot_arrow_top
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_reddot_arrow_bottom
  L5_2 = 25
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_scroll_red_dot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UtilEngineWrap
    L1_2 = L1_2.IsCsObjectNull
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_viewport_checker
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.ClearRedDotRoots
  L1_2(L2_2)
end
L0_1._clear_scroll_red_dot = L3_1
return L0_1
