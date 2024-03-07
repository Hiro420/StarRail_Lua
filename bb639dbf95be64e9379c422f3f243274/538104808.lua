local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMaterialList"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMaterialListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendProcedurePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendProcedurePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = 3
L3_1 = "UIText_DrinkMaker_GamePlayPage_NotFullHint"
L4_1 = "OnPageFadeInAnimKeyFrame"
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Cup
  L4_2 = #L4_2
  L5_2 = L0_1._setup_cup_select_view
  L3_2[L4_2] = L5_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Ice
  L4_2 = #L4_2
  L5_2 = L0_1._setup_ice_select_view
  L3_2[L4_2] = L5_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Ingredient
  L4_2 = #L4_2
  L5_2 = L0_1._setup_ingredient_select_view
  L3_2[L4_2] = L5_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.DrinkMakerBartendProcedure
  L4_2 = L4_2.Deco
  L4_2 = #L4_2
  L5_2 = L0_1._setup_deco_select_view
  L3_2[L4_2] = L5_2
  A0_2._procedure_callbacks = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_data_list
  L3_2(L4_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_cups
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_multi_list_mat_items_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_ice
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_single_selection_items_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_ingredients
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_multi_selection_items_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_deco
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_single_selection_items_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_page_anim_key_frame
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = A0_2._on_tutorial_move_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._setup_cup_select_view
  A0_2._delay_show_func = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.RequestType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerRequestSourceType
  L3_2 = L3_2.FromChallenge
  if L2_2 == L3_2 then
    L2_2 = A0_2._setup_ingredient_select_view
    A0_2._delay_show_func = L2_2
  end
  A0_2._is_open_show = false
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._cur_procedure
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerBartendProcedure
  L3_2 = L3_2.Cup
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_cups
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByRowColumn
    L4_2 = 0
    L5_2 = 0
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_cups
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._cur_procedure
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.DrinkMakerBartendProcedure
    L3_2 = L3_2.Ice
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.list_ice
      L3_2 = L2_2
      L2_2 = L2_2.MovePanelToItemByRowColumn
      L4_2 = 0
      L5_2 = 0
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.list_ice
      L3_2 = L2_2
      L2_2 = L2_2.GetShownItemByItemIndex
      L4_2 = 0
      L2_2 = L2_2(L3_2, L4_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2._cur_procedure
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.DrinkMakerBartendProcedure
      L3_2 = L3_2.Ingredient
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.list_ingredients
        L3_2 = L2_2
        L2_2 = L2_2.MovePanelToItemByRowColumn
        L4_2 = 0
        L5_2 = 0
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.list_ingredients
        L3_2 = L2_2
        L2_2 = L2_2.GetShownItemByItemIndex
        L4_2 = 0
        L2_2 = L2_2(L3_2, L4_2)
        L1_2 = L2_2
      else
        L2_2 = A0_2._cur_procedure
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.DrinkMakerBartendProcedure
        L3_2 = L3_2.Deco
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.list_deco
          L3_2 = L2_2
          L2_2 = L2_2.MovePanelToItemByRowColumn
          L4_2 = 0
          L5_2 = 0
          L2_2(L3_2, L4_2, L5_2)
          L2_2 = A0_2._binder
          L2_2 = L2_2.list_deco
          L3_2 = L2_2
          L2_2 = L2_2.GetShownItemByItemIndex
          L4_2 = 0
          L2_2 = L2_2(L3_2, L4_2)
          L1_2 = L2_2
        end
      end
    end
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selected_object
    return L3_2(L4_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_scroll_view
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.MovePanelToItemByRowColumn
    L3_2 = 0
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.reset_scroll = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cur_procedure = A1_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_procedure_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_procedure_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = #A1_2
    L8_2 = L5_2 == L8_2
    L6_2(L7_2, L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.refresh_view
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_open_show
  if not L2_2 then
    return
  end
  L2_2 = A0_2._procedure_callbacks
  L3_2 = A0_2._cur_procedure
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_procedure
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerBartendProcedure
  L2_2 = L2_2.Cup
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = A0_2._cur_procedure
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.DrinkMakerBartendProcedure
    L2_2 = L2_2.Ice
    if L1_2 == L2_2 then
      L1_2 = true
      return L1_2
    else
      L1_2 = A0_2._cur_procedure
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.DrinkMakerBartendProcedure
      L2_2 = L2_2.Ingredient
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2.get_blackboard
        L1_2 = L1_2(L2_2)
        L2_2 = L1_2
        L1_2 = L1_2.query
        L3_2 = "DrinkData"
        L1_2 = L1_2(L2_2, L3_2)
        L3_2 = L1_2
        L2_2 = L1_2.CheckIfMaterialIsFull
        L2_2 = L2_2(L3_2)
        L3_2 = L3_1
        return L2_2, L3_2
      else
        L1_2 = A0_2._cur_procedure
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.DrinkMakerBartendProcedure
        L2_2 = L2_2.Deco
        if L1_2 == L2_2 then
          L1_2 = true
          return L1_2
        end
      end
    end
  end
end
L0_1.check_if_current_step_finished = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_cups_data
  L1_2 = L1_2(L2_2)
  A0_2._mat_cups_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_ice_data
  L1_2 = L1_2(L2_2)
  A0_2._mat_ice_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_ingredients_data
  L1_2 = L1_2(L2_2)
  A0_2._mat_ingredient_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_all_decos_data
  L1_2 = L1_2(L2_2)
  A0_2._mat_decos_list = L1_2
end
L0_1._get_data_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_cups
  A0_2._cur_scroll_view = L2_2
  L2_2 = A0_2._mat_cups_list
  A0_2._cur_select_multi_list_mat = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_cups
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._cur_select_multi_list_mat
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_cups
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if not L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_multi_list_navigation
    L2_3 = A0_2._binder
    L2_3 = L2_3.list_cups
    L3_3 = A0_2._cur_select_multi_list_mat
    L3_3 = #L3_3
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_cups
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L0_1._setup_cup_select_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ice
  A0_2._cur_scroll_view = L2_2
  L2_2 = A0_2._mat_ice_list
  A0_2._cur_select_single_list_mat = L2_2
  L2_2 = MatTypes
  L2_2 = L2_2.Ice
  A0_2._cur_select_single_list_type = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ice
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._cur_select_single_list_mat
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ice
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_ice
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L0_1._setup_ice_select_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_ingredients_root
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ingredients
  A0_2._cur_scroll_view = L2_2
  L2_2 = A0_2._mat_ingredient_list
  A0_2._cur_select_single_list_mat = L2_2
  L2_2 = MatTypes
  L2_2 = L2_2.Ingredients
  A0_2._cur_select_single_list_type = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ingredients
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._cur_select_single_list_mat
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ingredients
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_ingredients
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L0_1._setup_ingredient_select_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_deco
  A0_2._cur_scroll_view = L2_2
  L2_2 = A0_2._mat_decos_list
  A0_2._cur_select_single_list_mat = L2_2
  L2_2 = MatTypes
  L2_2 = L2_2.Decos
  A0_2._cur_select_single_list_type = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_deco
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._cur_select_single_list_mat
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_deco
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_deco
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L0_1._setup_deco_select_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2 = 0
  L5_2 = A2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = A1_2
    L8_2 = A1_2.GetShownItemByItemIndex
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.UserObjectData
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L13_2 = L9_2
      L12_2 = L9_2.get_btn_list
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.setup_multi_line_navigation
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1._setup_multi_list_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._index
  if L2_2 == A1_2 then
    return
  end
  A0_2._index = A1_2
  L2_2 = A0_2._cur_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemByRowColumn
  L4_2 = A1_2 - 1
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_multi_list_item_select = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerBartendMaterialListPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerBartendMaterialListPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._cur_select_multi_list_mat
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_item_select_callback
  L7_2 = A0_2._on_multi_list_item_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_multi_list_mat_items_changed = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerBartendMaterialItemPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerBartendMaterialItemSimplePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._cur_select_single_list_mat
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._cur_select_single_list_type
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.update_single_selection
  L8_2 = A0_2
  L7_2 = A0_2.get_blackboard
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2
  L7_2 = L7_2.query
  L9_2 = "CurSingleSelection"
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_single_selection_items_changed = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerBartendMaterialItemPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerBartendMaterialItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._cur_select_single_list_mat
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._cur_select_single_list_type
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2.get_blackboard
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.query
  L7_2 = "CurMultiSelection"
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.update_multi_selection
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L3_2.transform
  L6_2(L7_2)
  return L3_2
end
L0_1._on_multi_selection_items_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  if A1_2 == L2_2 then
    A0_2._is_open_show = true
    L3_2 = A0_2
    L2_2 = A0_2._delay_show_func
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_page_anim_key_frame = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= 0 then
    L3_2 = A0_2._cur_scroll_view
    L4_2 = L3_2
    L3_2 = L3_2.MovePanelToItemByRowColumn
    L5_2 = L2_2 - 1
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_tutorial_move_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.AvailableCupRowData
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 1
  L4_2 = L2_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.DrinkMakerBartendMaterialList
    L7_2 = L7_2(L8_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_list_info
    L10_2 = "UIText_DrinkMaker_CupTypeName_"
    L11_2 = tostring
    L12_2 = L6_2
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L11_2 = MatTypes
    L11_2 = L11_2.Cups
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_is_show_mat_name
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.Capacity
      L8_2 = L8_2 - 2
      L8_2 = L2_2[L8_2]
      if L8_2 ~= nil then
        L10_2 = L8_2
        L9_2 = L8_2.add_mat_row
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  return L2_2
end
L0_1._get_all_cups_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.AvailableIceRowData
  return L1_2(L2_2)
end
L0_1._get_all_ice_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L4_2 = L1_2
  L3_2 = L1_2.GetAvailableIngredientRowData
  L3_2, L4_2 = L3_2(L4_2)
  return L2_2(L3_2, L4_2)
end
L0_1._get_all_ingredients_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.AvailableDecoRowData
  return L1_2(L2_2)
end
L0_1._get_all_decos_data = L5_1
return L0_1
