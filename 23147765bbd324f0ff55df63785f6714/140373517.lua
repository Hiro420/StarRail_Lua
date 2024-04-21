local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSubmitItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionSubmitItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._selected_configs = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L4_2 = A0_2._on_cancel_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_confirm_btn_status
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_cbk
  L3_2 = A0_2
  L4_2 = A0_2._on_wait_for_select_item_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.selected_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_cbk
  L3_2 = A0_2
  L4_2 = A0_2._on_selected_item_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._configs = A1_2
  A0_2._count = A2_2
  A0_2._submitted_item_id_array = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.selected_item_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._selected_configs
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.select_item_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A0_2._submitted_item_id_array
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.select_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.selected_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_spe_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A0_2._selected_configs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.ConfigID
    if L7_2 == A1_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.is_selected_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.selected_item_panel
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_special_zoom_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cancel_btn
  L1_2.interactable = false
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cancel_btn
  L1_2.interactable = true
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.isChoose
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._do_choose
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._update_confirm_btn_status
    L3_2(L4_2)
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2.show_item_detail
    L5_2 = A1_2.ConfigID
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._do_unchoose
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.hide_item_detail
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._update_confirm_btn_status
  L3_2(L4_2)
end
L0_1._on_wait_for_select_item_clicked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._do_unchoose_by_selected_item
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.hide_item_detail
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_confirm_btn_status
  L2_2(L3_2)
end
L0_1._on_selected_item_clicked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._selected_configs
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.selected_item_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._selected_configs
  L5_2 = A0_2._count
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._do_choose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A0_2._selected_configs
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= A1_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  A0_2._selected_configs = L3_2
  if A2_2 == true then
    L4_2 = A0_2._binder
    L4_2 = L4_2.selected_item_panel
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = A0_2._selected_configs
    L7_2 = A0_2._count
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._do_unchoose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A1_2.isChoose = false
  L3_2 = ipairs
  L4_2 = A0_2._selected_configs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= A1_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = ipairs
  L4_2 = A0_2._configs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ConfigID
    L9_2 = A1_2.ConfigID
    if L8_2 == L9_2 then
      L7_2.isChoose = false
      break
    end
  end
  A0_2._selected_configs = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_item_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._configs
  L6_2 = A0_2._count
  L7_2 = A0_2._submitted_item_id_array
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.selected_item_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._selected_configs
  L6_2 = A0_2._count
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._do_unchoose_by_selected_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Array
  L1_2 = L1_2.CreateInstance
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MissionItemConfig
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._selected_configs
  L3_2 = #L3_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0
  L3_2 = A0_2._selected_configs
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MissionItemConfig
    L6_2 = L6_2()
    L7_2 = A0_2._selected_configs
    L8_2 = L5_2 + 1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.ConfigID
    L6_2.ItemID = L7_2
    L6_2.ItemNum = 1
    L1_2[L5_2] = L6_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MissionItemConfigList
  L2_2 = L2_2()
  L2_2.ItemConfigList = L1_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.SelectItemConfirm
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_confirm_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.SelectItemCancel
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
end
L0_1._on_cancel_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_configs
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.confirm_btn
    L1_2.interactable = false
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L1_2.interactable = true
end
L0_1._update_confirm_btn_status = L1_1
return L0_1
