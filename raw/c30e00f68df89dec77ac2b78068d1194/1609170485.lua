local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochurePasterTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._txt = A1_2
  A0_2._icon = A2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._reddot_key = A1_2
  A0_2._reddot_sub_key = A2_2
end
L0_1.setup_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._txt
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._icon
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img
    L4_2 = A0_2._icon
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._reddot_key
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = A0_2._reddot_key
    L4_2 = A0_2._reddot_sub_key
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.play_unlock = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._remove_reddot = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_first_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
