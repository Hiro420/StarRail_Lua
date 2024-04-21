local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DisplayAvatarSinglePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._avatar_callback = A1_2
  A0_2._avatar_callback_self = A2_2
end
L0_1.bind_click_avatar = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._add_callback = A1_2
  A0_2._add_callback_self = A2_2
end
L0_1.bind_click_add = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._can_add = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.enabled = A1_2
end
L0_1.set_interactable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_slot_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_view
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L4_2 = A0_2
  L3_2 = A0_2._has_avatar
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._has_avatar
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._has_avatar
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_no_add
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._has_avatar
  L3_2 = L3_2(L4_2)
  L3_2 = A0_2._can_add
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_slot_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._has_avatar = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_avatar
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatar_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._has_avatar
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._avatar_callback
    L3_2 = A0_2._avatar_callback_self
    L4_2 = A0_2._avatar_data
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._can_add
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.invoke_callback
      L2_2 = A0_2._add_callback
      L3_2 = A0_2._add_callback_self
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._has_avatar
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._can_add
    if not L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  do return L1_2 end
  goto lbl_14
  ::lbl_12::
  L1_2 = nil
  do return L1_2 end
  ::lbl_14::
end
L0_1.get_selected_btn = L1_1
return L0_1
