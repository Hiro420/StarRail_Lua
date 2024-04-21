local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainLeftListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainLeftListItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainRightListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainRightListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherDivideActivityOnUpdated
  L4_2 = A0_2._on_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_activity_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_view_activity_list_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityAetherDivideMainRightListPanel
  L4_2 = G
  L4_2 = L4_2.ActivityAetherDivideMainRightListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._quest_list_panel = L1_2
  L1_2 = A0_2._quest_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_quest_list_panel
  L1_2(L2_2, L3_2)
  A0_2._cur_zoom = nil
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_activity_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._cur_selected_index
  L3_2 = L3_2 - 1
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
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_left_panel
    L2_2.alpha = 1
    A0_2._cur_zoom = A1_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._quest_list_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.canvas_left_panel
      L2_2.alpha = 0.5
      A0_2._cur_zoom = A1_2
    end
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_left_panel
  L1_2.alpha = 0.5
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_right_panel
  L1_2.alpha = 0.5
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = A0_2._last_pad_hint_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_zoom
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_left_panel
    L1_2.alpha = 0.5
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_right_panel
    L1_2.alpha = 1
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_left_panel
    L1_2.alpha = 1
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_right_panel
    L1_2.alpha = 1
  end
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._type_group_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._type_group_data
  L3_2 = L3_2.DataList
  L2_2 = L2_2(L3_2)
  A0_2._activity_table = L2_2
  L2_2 = A0_2._activity_table
  L2_2 = L2_2[1]
  A0_2._cur_activity_data = L2_2
  A0_2._cur_selected_index = 1
  L3_2 = A0_2
  L2_2 = A0_2._set_current_activity_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_activity_list
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._activity_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._activity_table
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.IsHavingCanTakeRewardQuest
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = A0_2._activity_table
      L5_2 = L5_2[L4_2]
      A0_2._cur_activity_data = L5_2
      A0_2._cur_selected_index = L4_2
      return
    end
  end
end
L0_1._set_current_activity_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_activity_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._activity_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_activity_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_quest_list_panel
  L1_2(L2_2)
end
L0_1._on_refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._quest_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_activity_data
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L2_2 = A0_2._type_group_data
  L2_2 = L2_2.TypeGroupID
  L3_2 = A0_2._owner
  L3_2 = L3_2.basic_type_group_id
  if L2_2 == L3_2 then
    L1_2 = "ChampionRoad"
  else
    L1_2 = "HyperlinkDuel"
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = A0_2._cur_activity_data
  L6_2 = L6_2.ID
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_quest_list_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 0
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ActivityAetherDivideMainLeftListItem
    L9_2 = G
    L9_2 = L9_2.ActivityAetherDivideMainLeftListItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_click_activity
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = A0_2._activity_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_selected
  L8_2 = A0_2._cur_activity_data
  L8_2 = L8_2.ID
  L9_2 = A0_2._activity_table
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.ID
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_activity_data
  L6_2 = L6_2.ID
  L7_2 = A0_2._activity_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ID
  if L6_2 == L7_2 then
    A0_2._last_selected_panel = L5_2
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L5_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L4_2
end
L0_1._on_scroll_view_activity_list_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_activity_data
  if L3_2 == A1_2 then
    return
  end
  A0_2._cur_activity_data = A1_2
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
  L3_2 = A0_2._setup_quest_list_panel
  L3_2(L4_2)
end
L0_1._on_click_activity = L1_1
return L0_1
