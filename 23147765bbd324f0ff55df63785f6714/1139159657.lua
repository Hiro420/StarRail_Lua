local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumQuestTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumQuestTabItem"
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
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_image = L1_1
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
  L4_2 = "MuseumLimitedRewardTab"
  L5_2 = A1_2
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.tab_red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.bind_red_dot = L1_1
return L0_1
