local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueTalkUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.SubmitMissionItemPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SubmitMissionItemPage"
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
  L3_2 = L3_2.SubmitMissionItemPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._block_input = true
  A0_2.is_detail_panel_open = false
  A0_2._cur_detail_panel_item_config_id = nil
  A0_2._gamepad_hint_detail = "ItemDetail"
  A0_2._gamepad_hint_select = "ActionGroup_Select"
  A0_2._gamepad_hint_back = nil
  A0_2._cur_nav_item_id = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.SlotNum
  A0_2._slot_num = L2_2
  L2_2 = A1_2.ItemIDList
  A0_2._item_id_array = L2_2
  L2_2 = A1_2.ItemHiddenIDList
  A0_2._item_hide_id_array = L2_2
  L2_2 = A1_2.ItemInvisibleIDList
  A0_2._item_invisible_id_array = L2_2
  L2_2 = G
  L2_2 = L2_2.RogueTalkUtils
  L2_2 = L2_2._construct_one_simple_talk
  L3_2 = A1_2.SimpleTalk
  L2_2 = L2_2(L3_2)
  A0_2._talk_info = L2_2
  L2_2 = A1_2.SubmittedItemIDs
  A0_2._submitted_id_list = L2_2
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.format_item_display_datas
  L3_2 = A0_2._item_id_array
  L4_2 = A0_2._item_hide_id_array
  L5_2 = A0_2._item_invisible_id_array
  L6_2 = A0_2._submitted_id_list
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._configs = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.is_detail_panel_open = true
  A0_2._cur_detail_panel_item_config_id = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateItemData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2.Count = L2_2
  A0_2._gamepad_hint_detail = "ActionGroup_CloseDetail"
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_item_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_item_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_detail_panel
  L5_2 = L4_2
  L4_2 = L4_2.reset_scroll_pos
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_action_group_hint
  L4_2(L5_2)
end
L0_1.show_item_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.is_detail_panel_open = false
  A0_2._cur_detail_panel_item_config_id = nil
  A0_2._gamepad_hint_detail = "ItemDetail"
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_action_group_hint
  L1_2(L2_2)
end
L0_1.hide_item_detail = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_detail_panel_item_config_id
  if L2_2 ~= A1_2 then
    if A1_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._check_if_hidden_item
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.show_item_detail
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.NotifyType
        L3_2 = L3_2.UIPileToastMessageTextID
        L4_2 = "UIText_SelectMissionItem_Select_Hidden_Tips"
        L2_2(L3_2, L4_2)
      end
    end
  else
    L2_2 = A0_2._cur_detail_panel_item_config_id
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.hide_item_detail
      L2_2(L3_2)
    end
  end
end
L0_1.notify_detail_panel_with_config_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._configs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ConfigID
    if L7_2 == A1_2 then
      L7_2 = L6_2.IsHide
      if L7_2 then
        L7_2 = L6_2.Num
        L7_2 = L7_2 == 0
      end
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_if_hidden_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == true then
    A0_2._gamepad_hint_select = "ActionGroup_CancelComfirm"
  else
    A0_2._gamepad_hint_select = "ActionGroup_Select"
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_action_group_hint
  L2_2(L3_2)
end
L0_1.update_clicked_item_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_selected_item
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    A0_2._gamepad_hint_select = "ActionGroup_CancelComfirm"
  else
    A0_2._gamepad_hint_select = "ActionGroup_Select"
  end
  L2_2 = A0_2._cur_detail_panel_item_config_id
  if L2_2 == A1_2 then
    A0_2._gamepad_hint_detail = "ActionGroup_CloseDetail"
  else
    A0_2._gamepad_hint_detail = "ItemDetail"
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_action_group_hint
  L2_2(L3_2)
end
L0_1.update_focused_item_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A0_2._gamepad_hint_select = nil
    A0_2._gamepad_hint_detail = nil
    L3_2 = A0_2
    L2_2 = A0_2._update_action_group_hint
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.update_focused_item_hint
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_special_zoom_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = A0_2._gamepad_hint_detail
  L5_2 = A0_2._gamepad_hint_select
  L6_2 = A0_2._gamepad_hint_back
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_bg
  L4_2 = A0_2._on_btn_empty_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMissionSubmitItemFinish
  L4_2 = A0_2._on_finish
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_data
  L3_2 = A0_2._configs
  L4_2 = A0_2._slot_num
  L5_2 = A0_2._submitted_id_list
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._talk_info
  L3_2 = L3_2.name_id
  L4_2 = A0_2._talk_info
  L4_2 = L4_2.content_id
  L1_2(L2_2, L3_2, L4_2)
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
  local L1_2
  A0_2.is_detail_panel_open = false
  A0_2._cur_detail_panel_item_config_id = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_finish = L2_1
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
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_in_special_zoom
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.get_spe_first_selected_object
        L2_2 = L2_2(L3_2)
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_spe_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_spe_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._gamepad_hint_back = "ActionGroup_Return"
  L2_2 = A0_2
  L1_2 = A0_2._update_action_group_hint
  L1_2(L2_2)
end
L0_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._gamepad_hint_back = nil
  L2_2 = A0_2
  L1_2 = A0_2._update_action_group_hint
  L1_2(L2_2)
end
L0_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2._gamepad_hint_detail
  if L2_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = A0_2._gamepad_hint_detail
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._gamepad_hint_select
  if L2_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = A0_2._gamepad_hint_select
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._gamepad_hint_back
  if L2_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = A0_2._gamepad_hint_back
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._update_action_group_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.hide_item_detail
  L1_2(L2_2)
end
L0_1._on_btn_empty_bg = L2_1
return L0_1
