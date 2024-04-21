local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTagPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerRankIngredientPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerRankIngredientPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerDrinkHandbookTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_HandBook_DrinkTitle"
L2_1 = "UIText_DrinkMaker_HandBook_SubTitle_1"
L3_1 = "UIText_DrinkMaker_InspectCustomDrink"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.DrinkMakerModule
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_dict
  L2_2 = L4_1.DrinkMakerBarDrinks
  L1_2 = L1_2(L2_2)
  A0_2._drinks = L1_2
  L1_2 = L4_1.DrinkMakerBar
  L1_2 = L1_2.CustomDrink
  if L1_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._drinks
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drinks_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_select_drink_callback
  L3_2 = A0_2._on_select_drink_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.drinks_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._drinks
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.drinks_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_filter
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drinks_panel
  L2_2 = L1_2
  L1_2 = L1_2.clear_cur_selected_drink
  L1_2(L2_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drinks_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = L2_1
  return L1_2
end
L0_1.get_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_select_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_unselect_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_start
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsCustom
  L2_2(L3_2, L4_2)
  A0_2._select_drink = A1_2
end
L0_1._on_select_drink_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.DrinkMaker.Handbook.DrinkMakerDrinkDisplayPage"
  L3_2 = A0_2._select_drink
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_start_click = L5_1
return L0_1
