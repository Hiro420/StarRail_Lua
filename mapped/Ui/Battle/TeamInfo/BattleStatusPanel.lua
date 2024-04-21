local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._buff_data = A1_2
  A0_2._debuff_data = A2_2
  A0_2._other_buff_data = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._reset_node_panel_class
  L5_2 = A0_2._binder
  L5_2 = L5_2.buff_list
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._reset_node_panel_class
  L5_2 = A0_2._binder
  L5_2 = L5_2.debuff_list
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._reset_node_panel_class
  L5_2 = A0_2._binder
  L5_2 = L5_2.other_buff_list
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.reset_node_panel_class = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._buff_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._get_len
  L3_2 = A0_2._buff_data
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_len
  L4_2 = A0_2._debuff_data
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_len
  L5_2 = A0_2._other_buff_data
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_2 + L2_2
  L4_2 = L4_2 + L3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_empty_status
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2 == 0
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_buff_list
  L7_2 = A0_2._binder
  L7_2 = L7_2.buff_list
  L8_2 = A0_2._buff_data
  L9_2 = L1_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_buff_list
  L7_2 = A0_2._binder
  L7_2 = L7_2.debuff_list
  L8_2 = A0_2._debuff_data
  L9_2 = L2_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_buff_list
  L7_2 = A0_2._binder
  L7_2 = L7_2.other_buff_list
  L8_2 = A0_2._other_buff_data
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L5_2 = A1_2
  L4_2 = A1_2.safe_set_active
  L6_2 = 0 < A3_2
  L4_2(L5_2, L6_2)
  if 0 < A3_2 then
    L5_2 = A1_2
    L4_2 = A1_2.setup_view
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_buff_list = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L5_2 = A1_2
  L4_2 = A1_2.reset_node_panel_class
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._reset_node_panel_class = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = #A1_2
  return L2_2
end
L0_1._get_len = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.get_sorted_buff_list
  L2_2 = A0_2._ability
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  A0_2._other_buff_data = L3_2
  A0_2._debuff_data = L2_2
  A0_2._buff_data = L1_2
end
L0_1._refresh_buff_data = L1_1
return L0_1
