local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.MPItemUseDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.ReviveAvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.ReviveAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseBpIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodUseBpIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MPItemUseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TeamModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = "ResurrectionRoleDialog_Heal"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MPItemUseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_repeatable_open_dialog = false
  A0_2._pause_game = true
  A0_2._current_item = nil
  A0_2._last_select_panel = nil
  L1_2 = {}
  A0_2._mp_panel_list = L1_2
  A0_2._wait_callback_to_exit = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mp_static_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_mp_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FoodItemUsed
  L4_2 = L0_1._on_get_item_used
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_item
  if L1_2 ~= nil then
    L1_2 = {}
    L2_2 = {}
    L3_2 = A0_2._current_item
    L3_2 = L3_2.ConfigID
    L2_2[1] = L3_2
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mp_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ConsumeUse_Recovery_Title"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mp_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mp_items_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.setup_empty_status
  L3_2 = A0_2._mp_items
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mp_items
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_list
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._on_item_click
    L4_2 = A0_2._mp_items
    L4_2 = L4_2[1]
    L5_2 = L1_2.UserObjectData
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_short_cut_hint_panel
    L4_2 = 34
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_ui_navigation
    L2_2(L3_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._mp_items
  if L2_2 then
    L2_2 = A0_2._mp_items
    L1_2 = #L2_2
  end
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetMPItems
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mp_items = L2_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._mp_items
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = G
    L2_3 = L2_3.InventoryUtils
    L2_3 = L2_3.compare_sort_default
    L3_3 = A0_3
    L4_3 = A1_3
    L5_3 = false
    return L2_3(L3_3, L4_3, L5_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mp_items
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L2_2 = A0_2._last_select_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_count
    L4_2 = A0_2._current_item
    L4_2 = L4_2.Count
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._mp_items
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._mp_items
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.item_list
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._on_item_click
    L5_2 = A0_2._mp_items
    L5_2 = L5_2[1]
    L6_2 = L2_2.UserObjectData
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._init_ui_navigation
    L3_2(L4_2)
  else
    A0_2._current_item = nil
    A0_2.buff_data_row = nil
  end
end
L0_1._refresh_mp_items_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mp_static_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L1_2.MPMax
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mp_static_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2.MP
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mp_count = L2_2
end
L0_1._setup_mp_panel = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A0_2._current_item
    if L2_2 ~= nil then
      L2_2 = A0_2._current_item
      L2_2 = L2_2.ConfigID
      if L2_2 == A1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mp_items_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mp
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.setup_empty_status
  L4_2 = A0_2._mp_items
  L4_2 = #L4_2
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._short_cut_hint_panel
  if L2_2 then
    L2_2 = A0_2._short_cut_hint_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = A0_2._mp_items
    L4_2 = #L4_2
    L4_2 = L4_2 ~= 0
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._mp_count
  L3_2 = A0_2._max_mp
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_btn_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_btn_close
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._wait_callback_to_exit = true
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.GetAnimationState
    L3_2 = A0_2._binder
    L3_2 = L3_2.ani_animation
    L4_2 = L3_1
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._add_count_down_timer
    L5_2 = A0_2._on_animation_time_out
    L6_2 = L2_2.length
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._timer = L3_2
    L3_2 = A0_2._timer
    L4_2 = L3_2
    L3_2 = L3_2.reset
    L3_2(L4_2)
    L3_2 = A0_2._timer
    L4_2 = L3_2
    L3_2 = L3_2.start
    L3_2(L4_2)
  end
end
L0_1._on_get_item_used = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_animation_time_out = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2.MPMax
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._max_mp = L2_2
  L2_2 = A0_2._mp_count
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L1_2.MP
  L5_2 = L4_2
  L4_2 = L4_2.ToFloat
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._mp_count = L3_2
  L3_2 = A0_2.buff_data_row
  if L3_2 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2.buff_data_row
    L4_2 = L4_2.PreviewSkillPoint
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_35
    end
  end
  L3_2 = 0
  ::lbl_35::
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = A0_2._mp_count
  L5_2 = L5_2 + L3_2
  L6_2 = A0_2._max_mp
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 1
  L6_2 = A0_2._max_mp
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    if 1 <= L8_2 and L2_2 >= L8_2 then
      L9_2 = A0_2._mp_panel_list
      L9_2 = L9_2[L8_2]
      L10_2 = L9_2
      L9_2 = L9_2.set_normal
      L9_2(L10_2)
    else
      L9_2 = A0_2._mp_count
      if L8_2 <= L9_2 and L2_2 < L8_2 then
        L9_2 = A0_2._mp_panel_list
        L9_2 = L9_2[L8_2]
        L10_2 = L9_2
        L9_2 = L9_2.set_remind
        L9_2(L10_2)
      else
        L9_2 = A0_2._wait_callback_to_exit
        if not L9_2 and L8_2 <= L4_2 then
          L9_2 = A0_2._mp_count
          if L8_2 > L9_2 then
            L9_2 = A0_2._mp_panel_list
            L9_2 = L9_2[L8_2]
            L10_2 = L9_2
            L9_2 = L9_2.set_ready
            L9_2(L10_2)
        end
        else
          L9_2 = A0_2._mp_panel_list
          L9_2 = L9_2[L8_2]
          L10_2 = L9_2
          L9_2 = L9_2.set_empty
          L9_2(L10_2)
        end
      end
    end
  end
end
L0_1._refresh_mp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_item
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._current_item
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._current_item
    L3_2 = L3_2.Desc
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_item_detail = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.InventoryItemIconPanel
    L8_2 = G
    L8_2 = L8_2.InventoryItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._mp_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_item_info_open
  L8_2 = true
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_item_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh_item_detail
  L6_2(L7_2)
  return L3_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.FoodUseBpIconPanel
    L8_2 = G
    L8_2 = L8_2.FoodUseBpIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = A0_2._mp_panel_list
    L6_2 = A2_2 + 1
    L5_2[L6_2] = L4_2
  end
  return L3_2
end
L0_1._on_mp_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._current_item
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.SDKLuaReportAdapter
    L1_2 = L1_2.ReportQuickUseItemStatus
    L2_2 = A0_2._current_item
    L2_2 = L2_2.ConfigID
    L3_2 = 2
    L4_2 = 1
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.UseFoodItem
    L3_2 = A0_2._current_item
    L3_2 = L3_2.ConfigID
    L4_2 = 1
    L5_2 = 0
    L6_2 = CS
    L6_2 = L6_2.LHLCMODLJCB
    L6_2 = L6_2.EOMHNMFOPCP
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_confirm = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._current_item = A1_2
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._last_select_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._last_select_panel
    if L3_2 ~= A2_2 then
      L3_2 = A0_2._last_select_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_selected
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  A0_2._last_select_panel = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseBuffDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._current_item
  L4_2 = L4_2.Row
  L4_2 = L4_2.UseDataID
  L3_2 = L3_2(L4_2)
  A0_2.buff_data_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_item_detail
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_mp
  L3_2(L4_2)
end
L0_1._on_item_click = L4_1
return L0_1
