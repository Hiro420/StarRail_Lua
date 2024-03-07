local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.OptionalGiftPackItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.OptionalGiftPackItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.OptionalGiftPackDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OptionalGiftPackDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L0_1._text_select_reward = "UIText_Inventory_ItemUse_SelectReward"
L0_1._text_num_tip = "UIText_Inventory_ItemUse_UseBatch"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.OptionalGiftPackDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  A0_2._gift_item = A1_2
  A0_2._item_use_data_row = A2_2
  L5_2 = null
  if A3_2 ~= L5_2 then
    A0_2._is_show_reward = A3_2
  else
    A0_2._is_show_reward = true
  end
  A0_2._extra_max_use_count = A4_2
  L5_2 = {}
  A0_2._reward_item_table = L5_2
  L5_2 = A2_2.UseParam
  L6_2 = 0
  L7_2 = L5_2.Length
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = G
    L10_2 = L10_2.RewardUtils
    L10_2 = L10_2.CreateRewardItemTable
    L11_2 = L5_2[L9_2]
    L10_2 = L10_2(L11_2)
    L11_2 = pairs
    L12_2 = L10_2
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    for L14_2, L15_2 in L11_2, L12_2, L13_2 do
      L16_2 = L5_2[L9_2]
      L15_2.RewardID = L16_2
      L16_2 = A0_2._reward_item_table
      L17_2 = A0_2._reward_item_table
      L17_2 = #L17_2
      L17_2 = L17_2 + 1
      L16_2[L17_2] = L15_2
    end
  end
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_item_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gift_item_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 36
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._exit_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._exit_dialog
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GiftItemUsed
  L4_2 = A0_2._on_gift_item_used
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_item_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_gift_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_choose_tip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_max_amount
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._reward_item_table = nil
  A0_2._gift_item = nil
  A0_2._cur_rewardID = nil
  A0_2._max_amount = nil
  A0_2._cur_amount = nil
  A0_2._cur_reward_data = nil
  A0_2._cur_selected_panel = nil
  A0_2._cur_hover_item_config_id = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._cur_amount = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_num_tip
  L2_2(L3_2)
end
L0_1._on_slider_value_changed = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_rewardID
  if L1_2 == nil then
    L1_2 = A0_2._reward_item_table
    L1_2 = L1_2[1]
    L1_2 = L1_2.RewardID
    A0_2._cur_rewardID = L1_2
  end
end
L0_1._set_default_rewardID = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_warning
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_choose_tip = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_slider_and_btn_interactable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_interactable = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.OptionalGiftPackItemPanel
    L8_2 = G
    L8_2 = L8_2.OptionalGiftPackItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.RewardID
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = L5_2.RewardID
  L9_2 = A0_2._cur_rewardID
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_handler
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_gift_item_click
    L3_3 = L5_2
    L4_3 = L4_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_nav_handler
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_gift_item_hover
    L3_3 = L5_2
    L4_3 = L4_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_gift_item_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.RewardID
  A0_2._cur_rewardID = L3_2
  L3_2 = A1_2.ItemID
  A0_2._cur_item_config_id = L3_2
  A0_2._cur_reward_data = A1_2
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  if A2_2 ~= nil then
    L4_2 = A2_2
    L3_2 = A2_2.set_selected
    L5_2 = true
    L3_2(L4_2, L5_2)
    A0_2._cur_selected_panel = A2_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_interactable
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_num_tip
  L3_2(L4_2)
end
L0_1._on_gift_item_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A1_2.ItemID
  A0_2._cur_hover_item_config_id = L3_2
end
L0_1._on_gift_item_hover = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._show_cur_hover_item_detail
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_hover_item_config_id
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.ItemDetailDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._cur_hover_item_config_id
    L2_2(L3_2, L4_2)
  end
end
L0_1._show_cur_hover_item_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 1
  L4_2 = A0_2._max_amount
  L5_2 = A0_2._on_slider_value_changed
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.slider_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._max_amount
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_bar = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_item_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_gift_item_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_reward_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_item_config_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = L1_2.ItemName
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_num_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L0_1._text_num_tip
    L6_2 = L2_2
    L7_2 = A0_2._cur_reward_data
    L7_2 = L7_2.Count
    L8_2 = A0_2._cur_amount
    L7_2 = L7_2 * L8_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_warning
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_num_tip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._gift_item
  L2_2 = L2_2.Count
  L3_2 = A0_2._item_use_data_row
  L3_2 = L3_2.UseMultipleMax
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._max_amount = L1_2
  L1_2 = A0_2._extra_max_use_count
  if L1_2 ~= nil then
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = A0_2._max_amount
    L3_2 = A0_2._extra_max_use_count
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._max_amount = L1_2
  end
  L1_2 = A0_2._max_amount
  L1_2 = 1 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.slider_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_slider_btn_and_num_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_max_amount = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.UseGiftPackItem
  L3_2 = A0_2._gift_item
  L3_2 = L3_2.ConfigID
  L4_2 = A0_2._cur_amount
  L5_2 = A0_2._cur_rewardID
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 ~= nil then
    L2_2 = A0_2._is_show_reward
    if L2_2 then
      L2_2 = {}
      L3_2 = 0
      L4_2 = A1_2.Count
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = #L2_2
        L7_2 = L7_2 + 1
        L8_2 = A1_2[L6_2]
        L2_2[L7_2] = L8_2
      end
      L3_2 = G
      L3_2 = L3_2.RewardUtils
      L3_2 = L3_2.show_reward_dialog
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._exit_dialog
  L2_2(L3_2)
end
L0_1._on_gift_item_used = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit_dialog = L2_1
return L0_1
