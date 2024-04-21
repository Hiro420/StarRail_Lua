local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaStatisticTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/TabIcon/Drawcard/LowLevel.png"
L2_1 = "GachaDetailSwitch_Initial"
L3_1 = "SpriteOutput/TabIcon/Drawcard/FullLevel.png"
L4_1 = "GachaDetailSwitch_Ultimate"
L5_1 = {}
L5_1.Initial = 1
L5_1.Ultimate = 2
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._statistic_type = A1_2
  A0_2._max_level = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._statistic_type
  if L1_2 then
    L1_2 = A0_2._statistic_type
    L2_2 = L5_1.Initial
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_initial_icon_img
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_initial_title
      L1_2(L2_2)
    else
      L1_2 = A0_2._statistic_type
      L2_2 = L5_1.Ultimate
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_ultimate_icon_img
        L1_2(L2_2)
        L2_2 = A0_2
        L1_2 = A0_2._setup_ultimate_title
        L1_2(L2_2)
      end
    end
  end
end
L0_1._refresh_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected_icon
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected_icon
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_initial_icon_img = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_selected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_unselected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_initial_title = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_selected_icon
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unselected_icon
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_ultimate_icon_img = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_selected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L4_2 = A0_2._max_level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_unselected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L4_2 = A0_2._max_level
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_ultimate_title = L6_1
return L0_1
