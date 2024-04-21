local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDetailFunctionTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 == nil then
    return
  end
end
L0_1.setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  A0_2._call_back = A1_2
end
L0_1.set_select_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._tab_text_id = A1_2
end
L0_1.setup_tab_text_id = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_auto_trigger_select = false
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_text_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_left_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.uid
  L3_2 = L3_2 ~= 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_left_border
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.uid
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_right_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.uid
  L3_2 = L3_2 == 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_right_border
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.uid
  L3_2 = L3_2 ~= 1
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._call_back
  L2_2 = A0_2.uid
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
