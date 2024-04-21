local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._index = A3_2
  A0_2._icon_path = A4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_selected_icon
  L4_2 = A0_2._icon_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_unselected_icon
  L4_2 = A0_2._icon_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_red_dot
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._index
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AchievementSeries"
    L4_2 = A0_2._index
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.tab_red_dot
    L6_2 = L6_2.transform
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_red_dot = L1_1
return L0_1
