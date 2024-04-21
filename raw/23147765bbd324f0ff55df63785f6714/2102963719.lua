local L0_1, L1_1, L2_1, L3_1
L0_1 = 1
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AlleyPackShipFuncBtnsPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rotate
  L4_2 = A0_2._on_btn_rotate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_vertical
  L4_2 = A0_2._on_btn_vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_navigation
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._handler = nil
  A0_2._rotate_callback = nil
  A0_2._clear_callback = nil
  A0_2._vertical_callback = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._handler = A1_2
  A0_2._rotate_callback = A2_2
  A0_2._clear_callback = A3_2
  A0_2._vertical_callback = A4_2
end
L1_1.register_ship_func_callback = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._rotate_callback
  L3_2 = A0_2._handler
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_rotate = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._clear_callback
  L3_2 = A0_2._handler
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_clear = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._vertical_callback
    L2_3 = A0_2._handler
    L0_3(L1_3, L2_3)
  end
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_vertical = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleyPack"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_ship_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L1_1._on_got_focus = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L1_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_in_cur_special_zoom = false
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_option_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._is_in_cur_special_zoom
      if L2_2 then
        L2_2 = A0_2._owner
        L3_2 = L2_2
        L2_2 = L2_2.to_prev_zoom
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    else
      L3_2 = A0_2
      L2_2 = A0_2.is_can_to_special_zoom
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.btn_list
        L2_2 = L2_2[1]
        L2_2 = L2_2.gameObject
        L4_2 = A0_2
        L3_2 = A0_2.set_special_zoom_navigation_target
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
        A0_2._is_in_cur_special_zoom = true
      end
    end
  end
end
L1_1._on_in_control_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L2_2 = {}
  L1_2.btn_list = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tips
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeInHierarchy
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_list
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_tips
    L1_2(L2_2, L3_2)
  end
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_vertical
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.refresh_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tips
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_tips
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_rotate
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_rotate
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_clear
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_clear
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_switch
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_vertical
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_vertical
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_navigation
  L1_2(L2_2)
end
L1_1._setup_btn_navigation = L2_1
return L1_1
