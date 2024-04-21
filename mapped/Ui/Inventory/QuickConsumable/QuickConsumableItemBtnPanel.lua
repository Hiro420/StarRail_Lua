local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QuickConsumableItemBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_short_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_hold
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2.data = A1_2
  L3_2 = A0_2.data
  L3_2 = L3_2 == nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_img_item
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_img_item
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_loop_anim
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  if A2_2 then
    L4_2 = A0_2.in_turn
    if L4_2 == false then
      L4_2 = A0_2._binder
      L4_2 = L4_2.particle_system_burst
      L5_2 = L4_2
      L4_2 = L4_2.Play
      L4_2(L5_2)
    end
  end
  A0_2.in_turn = A2_2
  if not L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_item
    L4_2(L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_item
  L4_2 = A0_2.data
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_item = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.setup_status = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.consume_type = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemConsumeTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon_type
    L6_2 = L2_2.TypeIconPath
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_consume_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2, A1_2)
  A0_2.index = A1_2
end
L0_1.setup_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.long_press_interactable
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_short_click
    L1_2(L2_2)
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_short_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._long_press_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._long_press_callback
    L2_2 = A0_2._long_press_listener
    L3_2 = A0_2._long_press_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_hold = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
  A0_2._callback_param = A3_2
end
L0_1.register_call_back = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._long_press_callback = A1_2
  A0_2._long_press_listener = A2_2
  A0_2._long_press_param = A3_2
end
L0_1.register_long_press_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.long_press_interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.long_press_event
  L2_2.Interactable = A1_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._unbind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_root
    L5_2 = A0_2._on_click
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._bind_btn_callback
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_root
    L5_2 = A0_2._on_click
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.set_long_press_interactable = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.set_in_control_interactable = L1_1
return L0_1
