local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingTextItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingTextItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingImageItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhoneMessage.Common.MessageWaitingImageItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MessageWaitingItemListPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2
  L6_2 = {}
  A0_2._waiting_item_ids = L6_2
  A0_2._item_panel_class = A3_2
  A0_2._item_binder_class = A4_2
  A0_2._navigation_type = A5_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = A0_2._item_panel_class
  L6_2 = A0_2._item_binder_class
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._panel_list = L1_2
  L1_2 = A0_2._panel_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._item_click_callback = A1_2
  A0_2._item_click_handler = A2_2
end
L1_1.register_item_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._waiting_item_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._panel_list
    L6_2 = L5_2
    L5_2 = L5_2.get_panel_by_index
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.refresh_anim
    L6_2(L7_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_list
  L1_2(L2_2)
end
L1_1.reset_items = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._waiting_item_ids = A1_2
  L2_2 = A0_2._panel_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._waiting_item_ids
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._waiting_item_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._panel_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_click_callback
    L9_2 = A0_2._on_item_clicked
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2._panel_list
  L3_2 = L2_2
  L2_2 = L2_2.update_navigation
  L4_2 = A0_2._navigation_type
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._button_mutex
  L3_2 = L2_2
  L2_2 = L2_2.Check
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._item_click_callback
    L2_3 = A0_2._item_click_handler
    L3_3 = A1_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L1_1._on_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._waiting_item_ids
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._panel_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
