local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAtlasAreaTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._on_select_callback = nil
  A0_2._on_select_listener = nil
  A0_2._on_select_param = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_select_callback
    L2_2 = A0_2._on_select_listener
    L3_2 = A0_2._on_select_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Row
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_id
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = "0"
  L6_2 = tostring
  L7_2 = L2_2.AreaID
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.MuseumAreaName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_area_icon
  L6_2 = A1_2.MuseumAreaTabIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2.IsLock
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_click
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2.IsLock
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_red_dot
  L5_2 = L2_2.AreaID
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  L3_2 = (...)
  A0_2._on_select_param = L3_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "MuseumAtlasArea"
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.tab_red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._bind_red_dot = L1_1
return L0_1
