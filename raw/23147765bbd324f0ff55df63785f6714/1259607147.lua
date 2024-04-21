local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideGymTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  A0_2._gym_data_item = A1_2
end
L0_1.set_gym_data_item = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_locked
    L1_2(L2_2)
  end
end
L0_1.refresh_status = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gym_data_item
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = A0_2._gym_data_item
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unlock_effect
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_locked
    L1_2(L2_2)
  end
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gym_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_locked
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._gym_data_item
    L4_2 = L3_2
    L3_2 = L3_2.IsUnlock
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_locked = L1_1
return L0_1
