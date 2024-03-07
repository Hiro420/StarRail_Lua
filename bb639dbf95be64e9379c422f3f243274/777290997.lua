local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkIconListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookCustomDrinkIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookCustomDrinkIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Filter.DrinkMakerDrinkSweetnessFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Filter.DrinkMakerDrinkAcidityFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Filter.DrinkMakerDrinkMixFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Filter.DrinkMakerDrinkTextureFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerHandbookDrinkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.Prefs
L3_1 = L3_1.User
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._cur_select_panel = nil
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBarUtils
  L3_2 = L3_2.get_unlock_submission_list
  L3_2 = L3_2()
  A0_2._unlock_submission_list = L3_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_drink
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_drink_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DrinkMakerHandbookDrinkDetailPanel
  L4_2 = G
  L4_2 = L4_2.DrinkMakerHandbookDrinkDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._panel_drink_detail = L1_2
  L1_2 = A0_2._panel_drink_detail
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_drink
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L4_2 = L2_2
      L3_2 = L2_2.get_first_selected_object
      return L3_2(L4_2)
    end
  end
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._drinks = A1_2
  A0_2._filtered_drinks = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._create_drinks_group_data
  L4_2 = A0_2._filtered_drinks
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.reset_filters
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_select_drink
  return L1_2
end
L0_1.get_cur_selected_drink = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._cur_select_drink = nil
end
L0_1.clear_cur_selected_drink = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.filter_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_filter = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_callback_listener = A2_2
end
L0_1.register_select_drink_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.DrinkMakerDrinkSweetnessFilter
  L1_2 = L1_2(L2_2)
  A0_2._sweetness_filter = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.DrinkMakerDrinkAcidityFilter
  L1_2 = L1_2(L2_2)
  A0_2._acidity_filter = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.DrinkMakerDrinkTextureFilter
  L1_2 = L1_2(L2_2)
  A0_2._texture_filter = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._sweetness_filter
  L4_2 = A0_2._acidity_filter
  L5_2 = A0_2._texture_filter
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = A0_2._on_setup_filter
  L4_2 = A0_2._on_finish_filter
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._init_filter = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._drinks
  L1_2(L2_2, L3_2)
end
L0_1._on_setup_filter = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._filtered_drinks = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._create_drinks_group_data
  L4_2 = A0_2._filtered_drinks
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_finish_filter = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._drink_groups
  L1_2 = #L1_2
  L2_2 = A0_2._custom_drink
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = 0
  ::lbl_10::
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_drink
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_drink
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
  L2_2 = L1_2 == 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.clear_cur_selected_drink
    L3_2(L4_2)
    L3_2 = A0_2._panel_drink_detail
    L4_2 = L3_2
    L3_2 = L3_2.set_empty
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._on_icon_clicked
  L6_2 = A0_2
  L5_2 = A0_2._get_default_drink
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._drink_groups = L2_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsCustom
    if L8_2 then
      A0_2._custom_drink = L7_2
    else
      L8_2 = L7_2.Row
      L9_2 = L8_2.UnlockParam
      L10_2 = L7_2.IsUnlock
      if not L10_2 then
        L10_2 = L8_2.UnlockType
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.GameCore
        L11_2 = L11_2.DrinkMakerFormulaUnlockType
        L11_2 = L11_2.FinishSubMission
        if L10_2 == L11_2 then
          goto lbl_27
        end
      end
      L9_2 = 0
      ::lbl_27::
      L10_2 = L2_2[L9_2]
      if L10_2 == nil then
        L10_2 = {}
        L2_2[L9_2] = L10_2
        L10_2 = L2_2[L9_2]
        L11_2 = {}
        L10_2.Drinks = L11_2
      end
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2[L9_2]
      L11_2 = L11_2.Drinks
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
    end
  end
  L3_2 = L2_2[0]
  if L3_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._drink_groups
    L5_2 = L2_2[0]
    L3_2(L4_2, L5_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._unlock_submission_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = L2_2[L7_2]
      L9_2 = G
      L9_2 = L9_2.DrinkMakerBarUtils
      L9_2 = L9_2.get_unlock_title
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L8_2.Title = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._drink_groups
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._create_drinks_group_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._custom_drink
  if L1_2 ~= nil then
    L1_2 = A0_2._custom_drink
    return L1_2
  end
  L1_2 = A0_2._drink_groups
  L2_2 = L1_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.Drinks
  L2_2 = L1_1
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1._get_default_drink = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A2_2 == 0
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  if L3_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_15
    end
  end
  L6_2 = 0
  ::lbl_15::
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    if L3_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.DrinkMakerHandbookCustomDrinkIconPanel
      L9_2 = G
      L9_2 = L9_2.DrinkMakerHandbookCustomDrinkIconPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.DrinkMakerHandbookDrinkIconListPanel
      L9_2 = G
      L9_2 = L9_2.DrinkMakerHandbookDrinkIconListPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  if L3_2 then
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._custom_drink
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_navi_handler
    function L8_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._on_custom_drink_navigation
      L5_3 = A0_3
      L6_3 = A1_3
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._custom_drink
    if L6_2 then
      L6_2 = 0
      if L6_2 then
        goto lbl_56
      end
    end
    L6_2 = 1
    ::lbl_56::
    L6_2 = A2_2 + L6_2
    L7_2 = A0_2._drink_groups
    L7_2 = L7_2[L6_2]
    L9_2 = L5_2
    L8_2 = L5_2.setup_view
    L10_2 = L7_2.Drinks
    L11_2 = L7_2.Title
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L4_2
    L8_2 = L4_2.SetSubList
    L11_2 = L5_2
    L10_2 = L5_2.get_static_list
    L10_2, L11_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L5_2
    L8_2 = L5_2.set_navi_handler
    function L10_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._on_normal_drink_navigation
      L5_3 = A0_3
      L6_3 = A1_3
      L7_3 = A2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L8_2(L9_2, L10_2)
  end
  L7_2 = L5_2
  L6_2 = L5_2.register_on_icon_click_callback
  L8_2 = A0_2._on_icon_clicked
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.set_selected
  L8_2 = A0_2._cur_select_drink
  L6_2(L7_2, L8_2)
  return L4_2
end
L0_1._on_drink_item_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_select_drink
  if L2_2 == A1_2 then
    return
  end
  A0_2._cur_select_drink = A1_2
  L2_2 = A0_2._cur_select_drink
  L2_2 = L2_2.IsCustom
  if L2_2 then
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.SetDrinkMakerNewCustomDrink
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.GetDrinkMakerNewDrinks
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.Remove
    L4_2 = A0_2._cur_select_drink
    L4_2 = L4_2.FormulaID
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_select_state
  L2_2(L3_2)
  L2_2 = A0_2._panel_drink_detail
  L3_2 = L2_2
  L2_2 = L2_2.setup_all_step_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._select_callback
  L4_2 = A0_2._select_callback_listener
  L5_2 = A0_2._cur_select_drink
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_icon_clicked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._custom_drink
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._drink_groups
  L2_2 = #L2_2
  if L1_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = 0
  ::lbl_14::
  L2_2 = L2_2 + L3_2
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.list_drink
    L8_2 = L7_2
    L7_2 = L7_2.GetShownItemByItemIndex
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.UserObjectData
      L10_2 = L8_2
      L9_2 = L8_2.set_selected
      L11_2 = A0_2._cur_select_drink
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._setup_select_state = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A3_2 then
    return
  end
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Down
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_drink
    L5_2 = L4_2
    L4_2 = L4_2.GetShownItemByItemIndex
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.UserObjectData
      if L5_2 ~= nil then
        L5_2 = L4_2.UserObjectData
        L7_2 = A0_2
        L6_2 = A0_2.set_navigation_target
        L9_2 = L5_2
        L8_2 = L5_2.get_first_selected_object
        L8_2, L9_2 = L8_2(L9_2)
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1._on_custom_drink_navigation = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if not A3_2 then
    L4_2 = A0_2._custom_drink
    if L4_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L4_2 = A1_2.moveDir
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.EventSystems
  L5_2 = L5_2.MoveDirection
  L5_2 = L5_2.Up
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2.set_navigation_target
    L7_2 = A0_2
    L6_2 = A0_2.get_first_selected_object
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._on_normal_drink_navigation = L4_1
return L0_1
