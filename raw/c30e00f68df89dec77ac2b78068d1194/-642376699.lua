local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._tab_info = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_txt
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_icon
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_panel_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._tab_info
  L3_2 = L3_2.TextID
  L1_2(L2_2, L3_2)
end
L0_1._setup_type_txt = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_selected
  L4_2 = A0_2._tab_info
  L4_2 = L4_2.SelectedImg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_unselected
  L4_2 = A0_2._tab_info
  L4_2 = L4_2.UnSelectedImg
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_type_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._tab_info
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._bind_reddot = L1_1
return L0_1
