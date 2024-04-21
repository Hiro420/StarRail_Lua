local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeyInfoItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeysKeyboardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HotkeysKeyboardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._selected_object = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_object
  if L1_2 then
    L1_2 = A0_2._selected_object
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
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
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  A0_2.data_list = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_loop_list_view_change
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2.data_list
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_list
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.refresh_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.data_list
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = nil
  L5_2 = nil
  L7_2 = A1_2
  L6_2 = A1_2.NewListViewItem
  L8_2 = 0
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L6_2
  L4_2 = L5_2.UserObjectData
  if L4_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HotkeyInfoItemPanel
    L9_2 = G
    L9_2 = L9_2.HotkeyInfoItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L7_2 = L4_2
    L6_2 = L4_2.bind
    L8_2 = L5_2.transform
    L6_2(L7_2, L8_2)
    L5_2.UserObjectData = L4_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L3_2
  L9_2 = HotkeyShowType
  L9_2 = L9_2.Keyboard
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_callback
  L8_2 = A0_2
  L9_2 = A0_2.refresh_list
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L5_2
end
L0_1._on_loop_list_view_change = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    A0_2._selected_object = L1_2
  end
end
L0_1._on_unselect = L1_1
return L0_1
