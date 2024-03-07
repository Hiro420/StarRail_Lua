local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.BattlePass.BattlePassBuyLevelDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ItemExcelTable
L2_1 = 1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueCommonExcelTable
L3_1 = L3_1.GetData
L4_1 = "BP_Level_Price"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.IntValue
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "BattlePassBuyLevelDialog"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattlePassBuyLevelDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.CurrentLevel
  A0_2._current_level = L1_2
  L1_2 = L0_1.MaxLevel
  A0_2._max_level = L1_2
  L1_2 = A0_2._max_level
  L2_2 = A0_2._current_level
  L1_2 = L1_2 - L2_2
  A0_2._max_amount = L1_2
  L1_2 = {}
  A0_2._reward_items = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L4_2 = nil
  L5_2 = "Contents/ShortCutHintPanel"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshLevel
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._setup_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_items
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_slider
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = 1
  L4_2 = A0_2._max_amount
  L5_2 = A0_2._on_slider_value_changed
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_view
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_cost
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNextSpecialRewardLevel
  L4_2 = L0_1.BattlePassData
  L4_2 = L4_2.CurrentLevel
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_slider
  L4_2 = L3_2
  L3_2 = L3_2.set_amount
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 1
  L7_2 = A0_2._current_level
  L7_2 = L2_2 - L7_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._max_amount
  if L3_2 <= 1 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_slider
    L4_2 = L3_2
    L3_2 = L3_2.set_slider_btn_and_num_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = G
  L3_2 = L3_2.ResBarAreaFactory
  L3_2 = L3_2.CreateResBarArea
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_res_bar
  L5_2 = "BattleBagBuyDialog"
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_control_view
  L3_2(L4_2)
end
L4_1._init_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cost_view
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._reward_items = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetComingRewardIDs
  L3_2 = A0_2._current_level
  L4_2 = A0_2._current_amount
  L3_2 = L3_2 + L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetComingOptionItemIDs
  L4_2 = A0_2._current_level
  L5_2 = A0_2._current_amount
  L4_2 = L4_2 + L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.GetDistinctRewardTableByRewardList
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._reward_items = L3_2
  L3_2 = {}
  A0_2._config_id_list = L3_2
  L3_2 = pairs
  L4_2 = A0_2._reward_items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._config_id_list
    L10_2 = L7_2.ItemID
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_items
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_items
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_items
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L4_1._setup_item_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cost
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ShopUtils
  L2_2 = L2_2.is_hcoin_sufficient
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_bought_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._current_amount
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_after_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Battlepass_BuyLevel02"
  L6_2 = A0_2._current_amount
  L7_2 = A0_2._current_level
  L6_2 = L6_2 + L7_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._current_amount
  L6_2 = A0_2._current_level
  L5_2 = L5_2 + L6_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cost_count
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cost_count
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = "<color=#c84a32>"
    L6_2 = L1_2
    L7_2 = "</color>"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lack_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L4_1._setup_cost_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_amount
  L2_2 = L3_1
  L1_2 = L1_2 * L2_2
  return L1_2
end
L4_1._get_cost = L5_1
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
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  return L3_2
end
L4_1._on_reward_item_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._current_amount = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L4_1._on_slider_value_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_cancel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cost
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ShopUtils
  L2_2 = L2_2.is_hcoin_sufficient
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.ShopUtils
    L2_2 = L2_2.show_pay_conversion_dialog
    L3_2 = L1_2
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._current_amount
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.BugLevel
  L5_2 = A0_2._current_level
  L5_2 = L5_2 + L2_2
  L3_2(L4_2, L5_2)
end
L4_1._on_btn_confirm = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_view
  L2_2(L3_2)
end
L4_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cancel_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_confirm_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L4_1._refresh_control_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L4_1._on_in_control_action_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._config_id_list
    L1_2.items = L2_2
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L4_1._on_left_stick_button_click = L5_1
return L4_1
