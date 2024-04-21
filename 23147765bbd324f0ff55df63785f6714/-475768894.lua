local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooToggleBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooToggleBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooToggleListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._channel_type = A1_2
  A0_2._channel_feature_ids = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_node_list
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._navi_func = A1_2
  A0_2._navi_func_self = A2_2
end
L0_1.register_navi_target = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_root_btn
  return L2_2(L3_2)
end
L0_1.get_first_selected_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooToggleBtnPanel"
  L6_2 = "Ui.SpaceZoo.SpaceZooSelectPanel.SpaceZooToggleBtnPanelBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._node_list = L1_2
  L1_2 = A0_2._node_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._node_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_panel_setup
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._callback
  L4_2 = A0_2._callback_self
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_tog = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_reset = A1_2
  L2_2 = A0_2._node_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._channel_feature_ids
  L5_2 = nil
  L6_2 = nil
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh_node_list = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A0_2._channel_feature_ids
  L5_2 = L5_2[A2_2]
  L6_2 = A0_2._is_reset
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L3_2 = A1_2.register_click_callback
  L5_2 = A0_2._on_btn_tog
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L3_2 = A1_2.get_root_btn
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._on_navigation
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L3_2.OnNaviHandler = L4_2
  L3_2 = A0_2._select_checker_func
  if L3_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.set_btn_checked
    L5_2 = A0_2._select_checker_func
    L6_2 = A0_2._select_checker_handler
    L8_2 = A1_2
    L7_2 = A1_2.get_feature_id
    L7_2, L8_2 = L7_2(L8_2)
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._on_panel_setup = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A3_2 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.invoke_callback
  L5_2 = A0_2._navi_func
  L6_2 = A0_2._navi_func_self
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2.moveDir
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.EventSystems
  L6_2 = L6_2.MoveDirection
  L6_2 = L6_2.Down
  if L5_2 == L6_2 and L4_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2.set_navigation_target
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._on_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_checker_func = A1_2
  A0_2._select_checker_handler = A2_2
end
L0_1.register_select_checker = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node_list
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L1_1
return L0_1
