local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.PassiveSubmitMissionItemPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueTalkUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PassiveSubmitMissionItemPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PassiveSubmitMissionItemPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._block_input = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._required_items = A1_2
  A0_2._hint_desc = A3_2
  L5_2 = G
  L5_2 = L5_2.RogueTalkUtils
  L5_2 = L5_2._construct_one_simple_talk
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  A0_2._talk_info = L5_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ItemDetail"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_bg
  L4_2 = A0_2._on_btn_empty_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L4_2 = A0_2._on_cancel_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_views
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_detail_panel_open = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_drop_hint
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_show_function_btn_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_views
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._required_items
  L3_2 = L3_2.Length
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_views
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hint
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_views
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.notify_detail_panel_with_item_data
  L3_2 = A0_2._cur_selected_item_data
  L1_2(L2_2, L3_2)
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._is_detail_panel_open = false
  A0_2._cur_detail_panel_item_data = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ItemDetail"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1.hide_item_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_detail_panel_open = true
  A0_2._cur_detail_panel_item_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A1_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  A1_2.Count = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_detail_panel
  L4_2 = L3_2
  L3_2 = L3_2.reset_scroll_pos
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = {}
  L6_2 = "ActionGroup_CloseDetail"
  L5_2[1] = L6_2
  L3_2(L4_2, L5_2)
end
L0_1.show_item_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_detail_panel_item_data
  if L2_2 ~= A1_2 then
    if A1_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.show_item_detail
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2.hide_item_detail
    L2_2(L3_2)
  end
end
L0_1.notify_detail_panel_with_item_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = false
  L2_2 = A0_2._required_items
  L2_2 = L2_2.Length
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._required_items
    L7_2 = L7_2[L6_2]
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetItemCountByConfigID
    L10_2 = L7_2.ItemID
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2.ItemNum
    if L8_2 < L9_2 then
      L1_2 = true
      break
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.insufficient_warning_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = not L1_2
  L3_2.interactable = L4_2
end
L0_1._setup_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = A0_2._talk_info
  if L3_2 ~= nil then
    L3_2 = A0_2._talk_info
    L1_2 = L3_2.name_id
    L3_2 = A0_2._talk_info
    L2_2 = L3_2.content_id
  else
    L2_2 = A0_2._hint_desc
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.hint_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_hint = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MissionItemPanel
    L8_2 = G
    L8_2 = L8_2.MissionItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._required_items
  L5_2 = L5_2[A2_2]
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.GetItemDataByConfigID
  L8_2 = L5_2.ItemID
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 == nil then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.ItemFactory
    L7_2 = L7_2.CreateItemData
    L8_2 = L5_2.ItemID
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  end
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.GetItemCountByConfigID
  L9_2 = L5_2.ItemID
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.Count = L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_view_by_item_data
  L9_2 = L6_2
  L10_2 = L5_2.ItemNum
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_item_clicked
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.register_select_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_item_selected
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A1_2
  L7_2 = A1_2.ForceAdjustItemPivotAndAnchor
  L9_2 = L3_2.CachedRectTransform
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._cur_selected_item_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.notify_detail_panel_with_item_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_item_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_selected_item_data = A1_2
  L2_2 = A0_2._cur_detail_panel_item_data
  if L2_2 == A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_CloseDetail"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ItemDetail"
    L4_2[1] = L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_item_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ConsumeItemConfirm
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_confirm_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ConsumeItemConfirm
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_cancel_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._required_items
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._required_items
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L0_1._get_config_ids = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.hide_item_detail
  L1_2(L2_2)
end
L0_1._on_btn_empty_bg = L2_1
return L0_1
