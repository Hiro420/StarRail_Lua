local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.SlotMachineImpl.ClockParkSlotMachineDisplayItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.SlotMachineImpl.ClockParkSlotMachineDisplayItemPanelBinder"
L0_1(L1_1)
L0_1 = 15
L1_1 = 16
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ClockParkSlotMachineDisplayItemListPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_display_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_display_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._icon_path_list = A1_2
  A0_2._icon_num = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_display_item_list
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = L1_1
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_display_item_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ClockParkSlotMachineDisplayItemPanel
    L8_2 = G
    L8_2 = L8_2.ClockParkSlotMachineDisplayItemPanelBinder
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
  L8_2 = A0_2
  L7_2 = A0_2._get_icon_path
  L9_2 = A2_2 + 1
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_display_item_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._finish_icon_index = A1_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = A0_2._icon_num
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = A1_2 + L2_2
  A0_2._finish_prev_icon_index = L2_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 1
  L4_2 = A0_2._icon_num
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = A1_2 - L2_2
  A0_2._finish_succ_icon_index = L2_2
end
L2_1.set_finish_icon_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._finish_icon_index
  if L2_2 ~= nil then
    L2_2 = L0_1
    if A1_2 == L2_2 then
      L2_2 = A0_2._icon_path_list
      L3_2 = A0_2._finish_icon_index
      L4_2 = A0_2._icon_num
      L3_2 = L3_2 % L4_2
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      return L2_2
    end
    L2_2 = L0_1
    L2_2 = L2_2 + 1
    if A1_2 == L2_2 then
      L2_2 = A0_2._icon_path_list
      L3_2 = A0_2._finish_prev_icon_index
      L4_2 = A0_2._icon_num
      L3_2 = L3_2 % L4_2
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      return L2_2
    end
    L2_2 = L0_1
    L2_2 = L2_2 - 1
    if A1_2 == L2_2 then
      L2_2 = A0_2._icon_path_list
      L3_2 = A0_2._finish_succ_icon_index
      L4_2 = A0_2._icon_num
      L3_2 = L3_2 + L4_2
      L4_2 = A0_2._icon_num
      L3_2 = L3_2 % L4_2
      L3_2 = L3_2 + 1
      L2_2 = L2_2[L3_2]
      return L2_2
    end
    L2_2 = A0_2._icon_path_list
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = A0_2._icon_num
    L3_2 = L3_2(L4_2)
    L3_2 = A1_2 + L3_2
    L4_2 = A0_2._icon_num
    L3_2 = L3_2 % L4_2
    L3_2 = L3_2 + 1
    L2_2 = L2_2[L3_2]
    return L2_2
  end
  L2_2 = A0_2._icon_path_list
  L3_2 = A0_2._icon_num
  L3_2 = A1_2 % L3_2
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  return L2_2
end
L2_1._get_icon_path = L3_1
return L2_1
