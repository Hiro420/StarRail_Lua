local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Farm.HandbookGuideProfessionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Farm.HandbookGuideProfessionItemPanelBinder"
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
L2_1 = "HandbookGuideProfessionFarmTabItem"
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._type_items
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_guide_priority
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_guide_priority
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 < L3_3
      return L4_3
    end
    L4_3 = A0_3.ID
    L5_3 = A1_3.ID
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2._type_items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    L8_2 = L8_2.SubType
    L9_2 = L1_2[L8_2]
    if L9_2 == nil then
      L10_2 = A0_2
      L9_2 = A0_2._get_guide_priority
      L11_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2)
      L1_2[L8_2] = L9_2
    end
    L9_2 = L7_2.ID
    L2_2[L9_2] = L6_2
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._type_items
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_3.Row
    L2_3 = L2_3.SubType
    L3_3 = A1_3.Row
    L3_3 = L3_3.SubType
    if L2_3 ~= L3_3 then
      L4_3 = L1_2[L2_3]
      L5_3 = L1_2[L3_3]
      if L4_3 ~= L5_3 then
        L6_3 = L4_3 < L5_3
        return L6_3
      end
      L6_3 = L2_3 < L3_3
      return L6_3
    end
    L4_3 = A0_3.ID
    L4_3 = L2_2[L4_3]
    L5_3 = A1_3.ID
    L5_3 = L2_2[L5_3]
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L3_2(L4_2, L5_2)
end
L1_1._resort_datas = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = 0
  L4_2 = A1_2
  L3_2 = A1_2.CanQuickGo
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L2_2 = L2_2 + 100
  end
  L4_2 = A1_2
  L3_2 = A1_2.IsOpenDay
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L2_2 = L2_2 + 10
  end
  L4_2 = A1_2
  L3_2 = A1_2.CanTeleport
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L2_2 = L2_2 + 1
  end
  return L2_2
end
L1_1._get_guide_priority = L2_1
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
  local L1_2
  L1_2 = A0_2._type_items
  L1_2 = #L1_2
  return L1_2
end
L1_1._get_list_count = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = GuidePanelPrefabIndex
  L5_2 = L5_2.FarmProfessionInfo
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_22
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.HandbookGuideProfessionItemPanel
  L8_2 = G
  L8_2 = L8_2.HandbookGuideProfessionItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_22::
  L5_2 = A0_2._type_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A2_2 == 0
  L7_2 = A2_2 + 1
  L8_2 = A0_2._type_items
  L8_2 = #L8_2
  L7_2 = L7_2 == L8_2
  L9_2 = L3_2
  L8_2 = L3_2.SetWidth
  L10_2 = A1_2.ViewPortWidth
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.setup_view
  L10_2 = L5_2
  L11_2 = L6_2
  L12_2 = L7_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  return L3_2
end
L1_1._on_item_changed = L2_1
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
