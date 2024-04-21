local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.HandbookGuideItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Farm.HandbookGuideFarmMultipleDropPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Farm.HandbookGuideFarmMultipleDropPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "HandbookGuideFarmTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._type_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeleportDataUpdated
  L4_2 = L1_1._on_teleport_data_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshQuickGuide
  L4_2 = L1_1._on_refresh_quick_guide
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._type_items = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.StopQuickGuideRefreshTimer
  L1_2(L2_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._type_id = A1_2
  L3_2 = {}
  A0_2._type_items = L3_2
  A0_2._is_order_dirty = true
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameplayGuideTabConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._type_id
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MultipleDropUtils
  L4_2 = L4_2.GetMultipleDropTypeByGuideType
  L5_2 = L3_2.GuideType
  L4_2 = L4_2(L5_2)
  A0_2._multiple_drop_type = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._init_on_item_change_funcs
  L4_2(L5_2)
end
L1_1.set_tab_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._type_id
  L1_2(L2_2, L3_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_double_reward
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.StartQuickGuideRefreshTimer
  L3_2 = A0_2._type_id
  L1_2(L2_2, L3_2)
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._type_items
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = A0_3
    L2_3 = A0_3.CanQuickGo
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.CanQuickGo
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      return L2_3
    end
    L5_3 = A0_3
    L4_3 = A0_3.IsOpenDay
    L4_3 = L4_3(L5_3)
    L6_3 = A1_3
    L5_3 = A1_3.IsOpenDay
    L5_3 = L5_3(L6_3)
    if L4_3 ~= L5_3 then
      return L4_3
    end
    L7_3 = A0_3
    L6_3 = A0_3.CanTeleport
    L6_3 = L6_3(L7_3)
    L8_3 = A1_3
    L7_3 = A1_3.CanTeleport
    L7_3 = L7_3(L8_3)
    if L6_3 ~= L7_3 then
      return L6_3
    end
    L8_3 = A0_3.ID
    L9_3 = A1_3.ID
    L8_3 = L8_3 < L9_3
    return L8_3
  end
  L1_2(L2_2, L3_2)
end
L1_1._resort_datas = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._is_order_dirty = true
  L1_2 = A0_2._state
  L2_2 = L1_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
end
L1_1._on_teleport_data_updated = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_order_dirty = true
  L1_2 = {}
  A0_2._type_items = L1_2
  L1_2 = A0_2._state
  L2_2 = L1_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.StartQuickGuideRefreshTimer
  L3_2 = A0_2._type_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._on_refresh_quick_guide = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_first_child_dialog_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
end
L1_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MultipleDropUtils
  L1_2 = L1_2.IsInMultipleDrop
  L2_2 = A0_2._multiple_drop_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_double_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HandbookGuideFarmMultipleDropPanel
    L5_2 = G
    L5_2 = L5_2.HandbookGuideFarmMultipleDropPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_double_reward
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A0_2._multiple_drop_type
    L3_2(L4_2, L5_2)
  end
end
L1_1._setup_node_double_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._type_items
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._type_items
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_list
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.GetShowGuideDatas
    L4_2 = A0_2._type_id
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._type_items = L1_2
  end
  L1_2 = A0_2._is_order_dirty
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._resort_datas
    L1_2(L2_2)
    A0_2._is_order_dirty = false
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_list_count
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._setup_items_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_banner
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._type_items
    L1_2 = #L1_2
    L1_2 = L1_2 + 1
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._type_items
  L1_2 = #L1_2
  ::lbl_12::
  return L1_2
end
L1_1._get_list_count = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._type_id
  L1_2 = L1_2 == 1005
  return L1_2
end
L1_1._show_banner = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._on_item_change_funcs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._show_banner
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._on_item_change_funcs
    L3_2 = A0_2._on_banner_item_changed
    L1_2(L2_2, L3_2)
  end
end
L1_1._init_on_item_change_funcs = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._on_item_change_funcs
  L3_2 = #L3_2
  if A2_2 < L3_2 then
    L3_2 = A0_2._on_item_change_funcs
    L4_2 = A2_2 + 1
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_normal_item_changed
    L5_2 = A1_2
    L6_2 = A0_2._on_item_change_funcs
    L6_2 = #L6_2
    L6_2 = A2_2 - L6_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.NewListViewItem
  L4_2 = GuidePanelPrefabIndex
  L4_2 = L4_2.FarmBanner
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.UserObjectData
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.HandbookGuideFarmBannerPanel
    L7_2 = G
    L7_2 = L7_2.HandbookGuideFarmBannerPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = L2_2.transform
    L4_2(L5_2, L6_2)
    L2_2.UserObjectData = L3_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L4_2(L5_2)
  return L2_2
end
L1_1._on_banner_item_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = GuidePanelPrefabIndex
  L5_2 = L5_2.CommonInfoRow
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      L5_2 = L4_2.__name
      if L5_2 == "HandbookGuideItemPanel" then
        goto lbl_35
      end
    end
  end
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      L5_2 = L4_2.__name
      if L5_2 ~= "HandbookGuideItemPanel" then
        L6_2 = L4_2
        L5_2 = L4_2._exit
        L5_2(L6_2)
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.HandbookGuideItemPanel
  L8_2 = G
  L8_2 = L8_2.HandbookGuideItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_35::
  L5_2 = A0_2._type_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_normal_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._type_items
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.reset_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_double_mark_animation
  L1_2(L2_2)
end
L1_1.try_play_double_mark_animation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_list_selected_object
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    return L1_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_list_selected_object
    L4_2 = 2
    return L2_2(L3_2, L4_2)
  end
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = L2_2.UserObjectData
  L5_2 = L3_2
  L4_2 = L3_2.get_first_selected_object
  return L4_2(L5_2)
end
L1_1._get_list_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_list_count
    L2_2 = L2_2(L3_2)
    L2_2 = 0 < L2_2
    return L2_2
  end
end
L1_1.can_to_zoom = L2_1
return L1_1
