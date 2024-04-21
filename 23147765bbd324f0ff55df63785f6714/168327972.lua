local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityEatFoodTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityEatFoodTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightEatFoodDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightEatFoodDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.BuffUtils
L1_1 = L1_1.BuffPoolType
L1_1 = L1_1.ItemAtk
L2_1 = G
L2_1 = L2_1.BuffUtils
L2_1 = L2_1.BuffPoolType
L2_1 = L2_1.ItemDef
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.FightActivityModule
L4_1 = "UIText_InventoryPage_Use"
L5_1 = "UIText_Activity_Consume_Exchange"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._default_tab_index = 1
  L1_2 = {}
  A0_2._food_item_panels = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FightEatFoodDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_eat_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_use
  L4_2 = A0_2._on_btn_use
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.food_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 32
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._tab_control
    L4_2 = L4_2.current_select_item
    L4_2 = L4_2._binder
    L4_2 = L4_2.tab_btn
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group
    L2_2.alpha = 1
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._pre_select_food_panel_index
      if L2_2 then
        L2_2 = A0_2._food_item_panels
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.set_navigation_target
          L4_2 = A0_2._food_item_panels
          L5_2 = A0_2._pre_select_food_panel_index
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2._binder
          L4_2 = L4_2.button
          L4_2 = L4_2.gameObject
          L2_2(L3_2, L4_2)
          return
        end
      end
      L2_2 = A0_2._binder
      L2_2 = L2_2.food_scroll_view
      L3_2 = L2_2
      L2_2 = L2_2.GetShownItemByItemIndex
      L4_2 = 0
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2.setup_short_cut_hint_panel
        L5_2 = 1
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.canvas_group
        L3_2.alpha = 0.5
        L4_2 = A0_2
        L3_2 = A0_2.set_navigation_target
        L5_2 = L2_2.UserObjectData
        L5_2 = L5_2._binder
        L5_2 = L5_2.button
        L5_2 = L5_2.gameObject
        L3_2(L4_2, L5_2)
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = true
  return L2_2
end
L0_1._is_can_to_zoom = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._attack_tab_item
  L1_2 = L1_2._binder
  L1_2 = L1_2.tab_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_text
  L1_2(L2_2)
end
L0_1._init_tab_control = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FightActivityEatFoodTabItem
  L4_2 = G
  L4_2 = L4_2.FightActivityEatFoodTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._attack_tab_item = L1_2
  L1_2 = A0_2._attack_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._attack_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_food_type
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._attack_tab_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._attack_tab_item
  L1_2 = L1_2._binder
  L1_2 = L1_2.tab_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._tab_control
    L1_3 = L0_3
    L0_3 = L0_3.click_item_by_uid
    L2_3 = 1
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FightActivityEatFoodTabItem
  L4_2 = G
  L4_2 = L4_2.FightActivityEatFoodTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._defend_tab_item = L1_2
  L1_2 = A0_2._defend_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._defend_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_food_type
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._defend_tab_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._defend_tab_item
  L1_2 = L1_2._binder
  L1_2 = L1_2.tab_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._tab_control
    L1_3 = L0_3
    L0_3 = L0_3.click_item_by_uid
    L2_3 = 2
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._init_tab_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._attack_tab_item
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.InventoryModule
    L2_2 = L1_2
    L1_2 = L1_2.GetFoodItemsByMazeBuffPool
    L3_2 = L1_1
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._food_items = L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.InventoryModule
    L2_2 = L1_2
    L1_2 = L1_2.GetFoodItemsByMazeBuffPool
    L3_2 = L2_1
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._food_items = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.food_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._food_items
  L3_2 = L3_2.Count
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.food_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_text
  L1_2(L2_2)
  L1_2 = A0_2._food_items
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  if L1_2 then
    L2_2 = A0_2._food_item_panels
    L2_2 = L2_2[0]
    L3_2 = L2_2
    L2_2 = L2_2.trigger_click_item
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_food
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_select = L6_1
function L6_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.ItemIconPanel
    L8_2 = G
    L8_2 = L8_2.ItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._food_items
  L5_2 = L5_2[A2_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ConfigID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._refresh_food_desc
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L4_2._binder
  L6_2 = L6_2.button
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_food_desc
    L2_3 = nil
    L3_3 = A2_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = L4_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L6_2.onSelectTrigger = L7_2
  L7_2 = L4_2
  L6_2 = L4_2.set_optional_click_data
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._food_item_panels
  L6_2[A2_2] = L4_2
  return L3_2
end
L0_1._on_item_change = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = A0_2._pre_select_food_panel_index
    if L3_2 ~= nil then
      L3_2 = A0_2._food_item_panels
      L4_2 = A0_2._pre_select_food_panel_index
      L3_2 = L3_2[L4_2]
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._food_item_panels
    L3_2 = L3_2[A2_2]
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
  A0_2._pre_select_food_panel_index = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_food_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._food_items
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_food_info
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._food_items
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.Desc
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._food_items
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.ConfigID
  A0_2._select_food_config_id = L3_2
end
L0_1._refresh_food_desc = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._setup_empty_food = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_food_config_id
  if L1_2 then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = A0_2._attack_tab_item
    if L1_2 == L2_2 then
      L1_2 = L3_1.UsedAttackFood
      if L1_2 ~= -1 then
        L1_2 = G
        L1_2 = L1_2.UIManager
        L1_2 = L1_2.load_and_show
        L2_2 = "Ui.Activity.FightActivity.FightActivityFoodReplaceDialog"
        L3_2 = L3_1.UsedAttackFood
        L4_2 = A0_2.use_food
        L5_2 = A0_2
        L1_2(L2_2, L3_2, L4_2, L5_2)
    end
    else
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = A0_2._defend_tab_item
      if L1_2 == L2_2 then
        L1_2 = L3_1.UsedDefendFood
        if L1_2 ~= -1 then
          L1_2 = G
          L1_2 = L1_2.UIManager
          L1_2 = L1_2.load_and_show
          L2_2 = "Ui.Activity.FightActivity.FightActivityFoodReplaceDialog"
          L3_2 = L3_1.UsedDefendFood
          L4_2 = A0_2.use_food
          L5_2 = A0_2
          L1_2(L2_2, L3_2, L4_2, L5_2)
      end
      else
        L2_2 = A0_2
        L1_2 = A0_2.use_food
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_btn_use = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._attack_tab_item
  if L1_2 == L2_2 then
    L1_2 = A0_2._select_food_config_id
    L3_1.UsedAttackFood = L1_2
  else
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    L2_2 = A0_2._defend_tab_item
    if L1_2 == L2_2 then
      L1_2 = A0_2._select_food_config_id
      L3_1.UsedDefendFood = L1_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_text
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L3_2 = A0_2._select_food_config_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1.use_food = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = A0_2._attack_tab_item
  if L1_2 == L2_2 then
    L1_2 = L3_1.UsedAttackFood
  end
  L1_2 = L1_2 ~= -1
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_use
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_btn_use
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_btn_text = L6_1
return L0_1
