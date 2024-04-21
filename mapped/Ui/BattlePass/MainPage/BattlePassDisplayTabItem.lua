local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassDisplayTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.TabItem"
L0_1(L1_1)
L0_1 = "SpriteOutput/TabIcon/BattlePass/Detail.png"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BattlePassDisplayTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_display
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.unselect_icon_image
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L0_1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_tab_btn_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L1_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_display
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_display
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = "ChooseEquipment"
  L3_2 = "ActionGroup_Return"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  return L1_2
end
L1_1.get_short_cut_hint = L2_1
return L1_1
