local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.ReviveItemUseDialogBinder"
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
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ReviveItemUseDialog"
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
  L3_2 = L3_2.ReviveItemUseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  A0_2._current_item = nil
  A0_2._last_select_panel = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._avatar_data = A1_2
  A0_2.revive_items = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ReviveAvatarInfoPanel
  L4_2 = G
  L4_2 = L4_2.ReviveAvatarInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_icon_panel = L1_2
  L1_2 = A0_2._avatar_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_panel
  L1_2(L2_2, L3_2)
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
  L1_2 = L1_2.node_avatar_root_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ConsumeUse_Revive_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_hp
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.setup_empty_status
  L3_2 = A0_2.revive_items
  L3_2 = L3_2.Count
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.revive_items
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_short_cut_hint_panel
    L3_2 = 34
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_list
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2.revive_items
    L3_2 = L3_2.Count
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_list
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_list
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == nil then
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._on_item_click
    L4_2 = A0_2.revive_items
    L4_2 = L4_2[0]
    L5_2 = L1_2.UserObjectData
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._init_ui_navigation
    L2_2(L3_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L2_2 = A0_2._binder
  L2_2 = L2_2.ani_animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L3_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.ani_animation
  L3_2 = L2_2
  L2_2 = L2_2.WaitAnimationEnd
  L4_2 = A0_2._on_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  A0_2._current_item = nil
  L3_2 = A0_2
  L2_2 = A0_2._refresh_hp
  L2_2(L3_2)
end
L0_1._on_get_item_used = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetMemberDataByID
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = nil
  if L1_2 then
    L3_2 = L1_2.LeftHPRatio
    L4_2 = L3_2
    L3_2 = L3_2.ToFloat
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L2_2 = 0
  end
  L3_2 = 0
  L4_2 = A0_2._current_item
  if L4_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemUseBuffDataExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A0_2._current_item
    L5_2 = L5_2.ConfigID
    L4_2 = L4_2(L5_2)
    A0_2.buff_data_row = L4_2
    L4_2 = A0_2.buff_data_row
    L4_2 = L4_2.PreviewHPRecoveryPercent
    L5_2 = A0_2._avatar_data
    L6_2 = L5_2
    L5_2 = L5_2.GetHPMax
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.ToFloat
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2.buff_data_row
    L6_2 = L6_2.PreviewHPRecoveryValue
    L7_2 = L6_2 / L5_2
    L8_2 = L4_2 + L7_2
    if 0.0 < L8_2 then
      L8_2 = L2_2 + L4_2
      L3_2 = L8_2 + L7_2
      L8_2 = math
      L8_2 = L8_2.min
      L9_2 = 1.0
      L10_2 = L3_2
      L8_2 = L8_2(L9_2, L10_2)
      L3_2 = L8_2
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_blood_hp
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._refresh_hp = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_hp
  L3_2.value = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.slider_preview_hp
  L3_2.value = A2_2
end
L0_1._set_blood_hp = L4_1
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
  L5_2 = A0_2.revive_items
  L5_2 = L5_2[A2_2]
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
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsTrialPlayer
  if L1_2 then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.TrialPlayerID
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.ID
  ::lbl_11::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportQuickUseItemStatus
  L3_2 = A0_2._current_item
  L3_2 = L3_2.ConfigID
  L4_2 = 2
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.UseFoodItem
  L4_2 = A0_2._current_item
  L4_2 = L4_2.ConfigID
  L5_2 = 1
  L6_2 = L1_2
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.AvatarType
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
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
  L4_2 = A0_2
  L3_2 = A0_2._refresh_item_detail
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_hp
  L3_2(L4_2)
end
L0_1._on_item_click = L4_1
return L0_1
