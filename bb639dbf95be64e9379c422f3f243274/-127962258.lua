local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyEventPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyEventPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "Activity_Alley_Reward_RequireItemID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.UintValue
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "AlleyEventPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyEventPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._event_panels = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyEventChange
  L4_2 = A0_2._on_alley_event_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyGetEventReward
  L4_2 = A0_2._on_alley_event_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.ItemCurrencyIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_shop_item_changed
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_reward_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityAlley_Event_CollectionReward"
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L0_1.SideEvents
  L3_2 = L3_2[0]
  L3_2 = L3_2.EventInfo
  L3_2 = L3_2.RewardID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_reward_stamp_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2[1]
  L5_2 = L5_2.Count
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_short_cut_hint_panel
  L3_2(L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._event_panels = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
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
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_target_index
  L1_2, L2_2 = L1_2(L2_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._set_scroll_pos_left
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._set_scroll_pos_right
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L1_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    L4_2 = L4_2._binder
    L4_2 = L4_2.btn_root
    L4_2 = L4_2.gameObject
    return L4_2
  end
  L4_2 = nil
  return L4_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = 0
  L4_2 = nil
  L5_2 = 0
  L6_2 = true
  L7_2 = 1
  L8_2 = A0_2._side_events
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._side_events
    L11_2 = L11_2[L10_2]
    L12_2 = L11_2.EventState
    L13_2 = CS
    L13_2 = L13_2.BPIDIGIBMGP
    L13_2 = L13_2.PFFKJJIPIMN
    if L12_2 == L13_2 then
      L12_2 = L10_2
      L13_2 = true
      return L12_2, L13_2
    else
      L12_2 = L11_2.EventState
      L13_2 = CS
      L13_2 = L13_2.BPIDIGIBMGP
      L13_2 = L13_2.FFEKKJPIKHO
      if L12_2 == L13_2 then
        L2_2 = L10_2
        L3_2 = L3_2 + 1
      else
        L4_2 = L10_2
        L5_2 = L5_2 + 1
      end
    end
  end
  L7_2 = A0_2._side_events
  L7_2 = #L7_2
  if L3_2 ~= L7_2 then
    L7_2 = A0_2._side_events
    L7_2 = #L7_2
    if L5_2 ~= L7_2 then
      goto lbl_45
    end
  end
  L1_2 = 1
  goto lbl_47
  ::lbl_45::
  L1_2 = L2_2
  L6_2 = false
  ::lbl_47::
  if L1_2 == nil then
    L1_2 = 1
  end
  L7_2 = L1_2
  L8_2 = L6_2
  return L7_2, L8_2
end
L2_1._get_target_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A1_2 - 1
  L2_2(L3_2, L4_2)
end
L2_1._set_scroll_pos_left = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A1_2 - 1
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_viewport
  L5_2 = L5_2.rect
  L5_2 = L5_2.width
  L6_2 = A0_2._event_panels
  L6_2 = L6_2[1]
  L6_2 = L6_2._binder
  L6_2 = L6_2.rect_root
  L6_2 = L6_2.rect
  L6_2 = L6_2.width
  L5_2 = L5_2 - L6_2
  L6_2 = 0
  L7_2 = true
  L8_2 = true
  L9_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L2_1._set_scroll_pos_right = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_events
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_event_panels
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_collection_progress
  L2_2(L3_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.SideEvents
  L1_2 = L1_2(L2_2)
  A0_2._side_events = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._side_events
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.EventInfo
    L2_3 = L2_3.EventID
    L3_3 = A1_3.EventInfo
    L3_3 = L3_3.EventID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L2_1._get_events = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  A0_2._event_panels = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._side_events
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L2_1._setup_event_panels = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AlleyEventPanel
    L8_2 = G
    L8_2 = L8_2.AlleyEventPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._event_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._side_events
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = 0
  L6_2 = A2_2 + 1
  L6_2 = L6_2 % 2
  if L6_2 ~= 0 then
    L5_2 = 38
  else
    L5_2 = -7
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_panel_transform_offset
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.PushTrackIndex
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L2_1._on_shop_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._side_events
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._side_events
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.EventState
    L7_2 = CS
    L7_2 = L7_2.BPIDIGIBMGP
    L7_2 = L7_2.FFEKKJPIKHO
    if L6_2 == L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._side_events
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
end
L2_1._setup_collection_progress = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_alley_event_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2.ItemList_
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.ItemFactory
    L8_2 = L8_2.CreateDisplayItemData
    L9_2 = L7_2.ItemId
    L10_2 = L7_2.Num
    L11_2 = L7_2.Level
    L12_2 = L7_2.UniqueId
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.RewardDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L2_1._on_alley_event_get_reward = L3_1
return L2_1
