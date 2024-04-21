local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Map.MapPromptMessageInfo"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.MapMessageInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapMessageInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.MapModule
L1_1 = L1_1.Instance
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.StoryLineModule
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._is_cur_panel_in_special = false
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.get_map_message_row_list
  L1_2 = L1_2(L2_2)
  A0_2._map_message_row_list = L1_2
  A0_2._is_can_to_special_zoom = true
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
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
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_cur_panel_in_special = false
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_map_message_panel_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
end
L0_1.reg_map_function_btn_click_call_back = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_can_to_special_zoom = A1_2
end
L0_1.set_can_to_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_can_to_special_zoom
  if L2_2 == false then
    return
  end
  L2_2 = A0_2._is_cur_panel_in_special
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.DPadLeft
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L2_2 = A0_2._owner
      L3_2 = L2_2
      L2_2 = L2_2.to_prev_zoom
      L2_2(L3_2)
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.DPadLeft
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L2_2 = L1_1
        L3_2 = L2_2
        L2_2 = L2_2.get_map_message_row_list
        L2_2 = L2_2(L3_2)
        L3_2 = L2_1
        L4_2 = L3_2
        L3_2 = L3_2.IsMainLine
        L3_2 = L3_2(L4_2)
        L4_2 = #L2_2
        if L4_2 <= 0 or not L3_2 then
          return
        end
        L4_2 = A0_2._owner
        L5_2 = L4_2
        L4_2 = L4_2.set_map_message_panel_view
        L6_2 = true
        L4_2(L5_2, L6_2)
        L5_2 = A0_2
        L4_2 = A0_2._refresh
        L4_2(L5_2)
        L5_2 = A0_2
        L4_2 = A0_2.get_first_selected_object
        L4_2 = L4_2(L5_2)
        L6_2 = A0_2
        L5_2 = A0_2.set_special_zoom_navigation_target
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        A0_2._is_cur_panel_in_special = true
        L5_2 = A0_2._owner
        L6_2 = L5_2
        L5_2 = L5_2.setup_message_tip_action_enable
        L7_2 = true
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L0_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._map_message_row_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_message_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._is_cur_panel_in_special = false
end
L0_1._on_item_click_callback = L3_1
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
    L7_2 = L7_2.MapPromptMessageInfo
    L8_2 = G
    L8_2 = L8_2.MapPromptMessageInfoBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._map_message_row_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.reg_map_function_btn_click_call_back
  L7_2 = A0_2._callback_obj
  L8_2 = A0_2._callback_func
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.reg_map_function_btn_click_call_back_ext
  L7_2 = A0_2
  L8_2 = A0_2._on_item_click_callback
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_message_item_change = L3_1
return L0_1
