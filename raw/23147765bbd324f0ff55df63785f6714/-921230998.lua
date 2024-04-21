local L0_1, L1_1, L2_1, L3_1, L4_1
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
L0_1 = require
L1_1 = "Ui.DailyMission.Common.WorldTabButton"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Common.WorldTabButtonBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HandbookModule
L1_1 = "4026"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "HandbookGuideWorldFarmTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._world_to_datas = L1_2
  L1_2 = {}
  A0_2._world_ids = L1_2
  A0_2._current_world_id = 0
  A0_2._is_order_dirty = true
  A0_2._is_data_dirty = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeleportDataUpdated
  L4_2 = L2_1._on_teleport_data_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshQuickGuide
  L4_2 = L2_1._on_refresh_quick_guide
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_world
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._world_to_datas = L1_2
  L1_2 = {}
  A0_2._world_ids = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.StopQuickGuideRefreshTimer
  L1_2(L2_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  A0_2._init_world_id = A1_2
end
L2_1.set_init_param = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._type_id = A1_2
  L3_2 = {}
  A0_2._world_to_datas = L3_2
  L3_2 = {}
  A0_2._world_ids = L3_2
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
L2_1.set_tab_data = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_first_child_dialog_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._type_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_reward_top_item_ids
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_world
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_world
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_world_last
  L4_2 = A0_2._on_btn_world_last
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_world_next
  L4_2 = A0_2._on_btn_world_next
  L1_2(L2_2, L3_2, L4_2)
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
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L1_2 = A0_2._tab_control_world
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control_world
    L1_2 = L1_2.enable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L1_2(L2_2)
      L1_2 = A0_2._tab_control_world
      L2_2 = L1_2
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
    end
  end
end
L2_1._on_btn_world_last = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 == L2_2 then
    L1_2 = A0_2._tab_control_world
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._tab_control_world
    L1_2 = L1_2.enable
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.to_first_zoom
      L1_2(L2_2)
      L1_2 = A0_2._tab_control_world
      L2_2 = L1_2
      L1_2 = L1_2.select_next
      L1_2(L2_2)
    end
  end
end
L2_1._on_btn_world_next = L3_1
function L3_1(A0_2)
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
L2_1._setup_node_double_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_double_mark_animation
  L1_2(L2_2)
end
L2_1.try_play_double_mark_animation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._world_to_datas
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
L2_1.reset_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_order_dirty = true
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
  L2_2 = L2_2.Selected
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
end
L2_1._on_teleport_data_updated = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_order_dirty = true
  L1_2 = {}
  A0_2._world_to_datas = L1_2
  L1_2 = {}
  A0_2._world_ids = L1_2
  L1_2 = A0_2._state
  L2_2 = L2_1.SelectState
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
L2_1._on_refresh_quick_guide = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._world_to_datas
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_update_item_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_world_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_sort_item_datas
  L1_2(L2_2)
  L1_2 = A0_2._tab_control_world
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._load_tab
    L1_2(L2_2)
    L1_2 = A0_2._tab_control_world
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L4_2 = A0_2
    L3_2 = A0_2._get_init_world_index
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    A0_2._init_world_id = nil
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_item_view
    L1_2(L2_2)
  end
end
L2_1._setup_items_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._world_ids
  L1_2 = #L1_2
  L1_2 = 1 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_world
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_world_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._init_world_id
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.index_of_item
    L2_2 = A0_2._world_ids
    L3_2 = A0_2._init_world_id
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      return L1_2
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.CurrWorldID
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._world_ids
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    return L2_2
  end
  L3_2 = A0_2._world_ids
  L3_2 = #L3_2
  return L3_2
end
L2_1._get_init_world_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control_world = L1_2
  L1_2 = A0_2._tab_control_world
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_world_tab
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._world_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.WorldTabButton
    L9_2 = G
    L9_2 = L9_2.WorldTabButtonBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_reddot
    L9_2 = "HandbookGuideWorldNew"
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
    L6_2.button_prefab_index = 0
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_world_tab
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._tab_control_world
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control_world
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_world_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control_world
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L2_1._load_tab = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._world_ids
  L2_2 = L2_2[A1_2]
  A0_2._current_world_id = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_item_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_world_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_current_datas
  L3_2 = L3_2(L4_2)
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._refresh_item_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._world_to_datas
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._world_to_datas
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      if L4_2 ~= nil then
        return
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_item_datas
  L1_2(L2_2)
end
L2_1._safe_update_item_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._world_ids = L1_2
  L1_2 = {}
  A0_2._world_to_datas = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetShowGuideDatas
  L4_2 = A0_2._type_id
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.GetWorldID
    L7_2 = L7_2(L8_2)
    L8_2 = A0_2._world_to_datas
    L8_2 = L8_2[L7_2]
    if L8_2 == nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._world_ids
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._world_to_datas
      L9_2 = {}
      L8_2[L7_2] = L9_2
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._world_to_datas
    L9_2 = L9_2[L7_2]
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._world_ids
  function L4_2(A0_3, A1_3)
    local L2_3
    L2_3 = A0_3 < A1_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
end
L2_1._update_item_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_order_dirty
  if L1_2 then
    L1_2 = pairs
    L2_2 = A0_2._world_to_datas
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = A0_2
      L6_2 = A0_2._resort_datas
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
    A0_2._is_order_dirty = false
  end
end
L2_1._safe_sort_item_datas = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A1_2
  function L4_2(A0_3, A1_3)
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
  L2_2(L3_2, L4_2)
end
L2_1._resort_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._world_to_datas
  if L1_2 == nil then
    L1_2 = {}
    return L1_2
  end
  L1_2 = A0_2._world_to_datas
  L2_2 = A0_2._current_world_id
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L2_2 = {}
    return L2_2
  end
  return L1_2
end
L2_1._get_current_datas = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L6_2 = A0_2
  L5_2 = A0_2._get_current_datas
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L10_2 = A0_2
  L9_2 = A0_2._has_special_sort
  L11_2 = L5_2.ID
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 then
    L9_2 = A0_2._reward_top_item_ids
    if L9_2 then
      goto lbl_50
    end
  end
  L9_2 = {}
  ::lbl_50::
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "FarmCoccoon_Gold_CocconID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.ArrayValue
  if L2_2 ~= nil then
    L3_2 = 0
    L4_2 = L2_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L7_2 = L7_2.UintValue
      if A1_2 == L7_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L3_2 = false
  return L3_2
end
L2_1._has_special_sort = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._reward_top_item_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "FarmCoccoon_Gold_SpecialOrder"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2[L5_2]
      L6_2 = L6_2.UintValue
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._reward_top_item_ids
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L2_1._init_reward_top_item_ids = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_list_selected_object
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
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
L2_1._get_list_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_current_datas
    L2_2 = L2_2(L3_2)
    L2_2 = #L2_2
    L2_2 = 0 < L2_2
    return L2_2
  end
end
L2_1.can_to_zoom = L3_1
return L2_1
