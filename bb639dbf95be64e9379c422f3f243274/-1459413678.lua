local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchasedItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchasedItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchaseIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassPurchaseIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PayModule
L1_1 = 51
L2_1 = 52
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "BattlePassPurchaseTypePanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._pay_config_ids = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pay
  L4_2 = A0_2._on_btn_pay
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_items
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_pay_items
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.list_pay_items
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitListView
    L3_2 = 0
    L4_2 = A0_2._on_pay_item_changed
    L5_2 = nil
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_select
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_select
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_control
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_select
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_control
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
  A0_2._type = A3_2
end
L3_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateRewardItemTableSorted
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if A2_2 ~= nil then
    L6_2 = G
    L6_2 = L6_2.RewardUtils
    L6_2 = L6_2.CreateRewardItemTableSorted
    L7_2 = A2_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      goto lbl_16
    end
  end
  L6_2 = {}
  ::lbl_16::
  L7_2 = #L5_2
  if L7_2 == 1 then
    L7_2 = #L6_2
    if L7_2 == 0 then
      L7_2 = L5_2[1]
      L9_2 = A0_2
      L8_2 = A0_2._setup_pay_reward_single
      L10_2 = L7_2
      L11_2 = A3_2
      L8_2(L9_2, L10_2, L11_2)
  end
  else
    L7_2 = G
    L7_2 = L7_2.RewardUtils
    L7_2 = L7_2.remove_reward_items
    L8_2 = L6_2
    L9_2 = {}
    L10_2 = L1_1
    L11_2 = L2_1
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
    L8_2 = A0_2
    L7_2 = A0_2._setup_pay_reward_multiple
    L9_2 = L5_2
    L10_2 = L6_2
    L11_2 = A3_2
    L12_2 = A4_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L3_1.setup_pay_reward = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L4_2 = A1_2.ItemID
  L3_2[1] = L4_2
  A0_2._pay_config_ids = L3_2
  L3_2 = A0_2._panel_single_reward
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.BattlePassPurchaseIconPanel
    L6_2 = G
    L6_2 = L6_2.BattlePassPurchaseIconPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._panel_single_reward = L3_2
    L3_2 = A0_2._panel_single_reward
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_pay_item
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._panel_single_reward
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.ItemID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_single_reward
  L4_2 = L3_2
  L3_2 = L3_2.set_count
  L5_2 = A1_2.Count
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_single_reward
  L4_2 = L3_2
  L3_2 = L3_2.set_taken
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._panel_single_reward
  L4_2 = L3_2
  L3_2 = L3_2.set_emphasize
  L5_2 = not A2_2
  L3_2(L4_2, L5_2)
end
L3_1._setup_pay_reward_single = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._pay_items1 = A1_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.resort_reward_items
  L6_2 = A2_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.ItemSubType
  L7_2 = L7_2.HeadIcon
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._pay_items2 = L5_2
  L5_2 = {}
  A0_2._pay_config_ids = L5_2
  L5_2 = pairs
  L6_2 = A0_2._pay_items1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._pay_config_ids
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
  end
  L5_2 = pairs
  L6_2 = A0_2._pay_items2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._pay_config_ids
    L12_2 = L9_2.ItemID
    L10_2(L11_2, L12_2)
  end
  A0_2._taken1 = A3_2
  A0_2._taken2 = A4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.list_pay_items
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = A0_2._pay_items1
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L8_2 = A0_2._pay_items2
  L8_2 = #L8_2
  L7_2 = L7_2 + L8_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.list_pay_items
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
end
L3_1._setup_pay_reward_multiple = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L4_2 = false
  if A2_2 == 1 then
    L6_2 = A1_2
    L5_2 = A1_2.NewListViewItem
    L7_2 = 1
    return L5_2(L6_2, L7_2)
  else
    L5_2 = A2_2 + 1
    L6_2 = A0_2._pay_items1
    L6_2 = #L6_2
    if L5_2 <= L6_2 then
      L5_2 = A0_2._pay_items1
      L6_2 = A2_2 + 1
      L3_2 = L5_2[L6_2]
      L4_2 = A0_2._taken1
    else
      L5_2 = A0_2._pay_items2
      L6_2 = A2_2 + 1
      L7_2 = A0_2._pay_items1
      L7_2 = #L7_2
      L6_2 = L6_2 - L7_2
      L6_2 = L6_2 - 1
      L3_2 = L5_2[L6_2]
      L4_2 = A0_2._taken2
    end
  end
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.BattlePassPurchaseIconPanel
    L10_2 = G
    L10_2 = L10_2.BattlePassPurchaseIconPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L8_2 = L6_2
  L7_2 = L6_2.setup_view
  L9_2 = L3_2.ItemID
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_count
  L9_2 = L3_2.Count
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_count_display
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.ItemExcelTable
  L9_2 = L9_2.GetData
  L10_2 = L3_2.ItemID
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2.ItemSubType
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.ItemSubType
  L10_2 = L10_2.HeadIcon
  L9_2 = L9_2 ~= L10_2
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_taken
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L8_2 = L6_2
  L7_2 = L6_2.set_emphasize
  L9_2 = false
  L7_2(L8_2, L9_2)
  return L5_2
end
L3_1._on_pay_item_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._display_datas = A1_2
  A0_2._item_count_dict = A2_2
  L3_2 = {}
  A0_2._config_id_list = L3_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._config_id_list
    L10_2 = L7_2.RewardItem
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_items
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._display_datas
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_items
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._enable_control
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L3_1.setup_level_reward = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_pay
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetInteractable
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  if not A2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._enable_control
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_icon
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_txt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L0_1.IsProductDataReady
  L4_2(L5_2, L6_2)
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_btn
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_btn
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_Battlepass_Business_Button"
    L4_2(L5_2, L6_2)
  end
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_ps_platform
  L4_2 = L4_2()
  if L4_2 then
    return
  end
  L4_2 = A3_2 ~= nil
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_discount
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_origin_cost
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = A3_2
    L5_2(L6_2, L7_2)
  end
end
L3_1.setup_btn_view = L4_1
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
    L7_2 = L7_2.BattlePassPurchasedItemPanel
    L8_2 = G
    L8_2 = L8_2.BattlePassPurchasedItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._display_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._item_count_dict
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L3_1._on_reward_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._type
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_btn_pay = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_select
  return L1_2
end
L3_1.get_select_btn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_pay
  L2_2 = L2_2.interactable
  if L2_2 then
    L2_2 = A1_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_control
  L3_2.ActionEnabled = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_control_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L3_1._enable_control = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_control_show_item_click
    L2_2(L3_2)
  end
end
L3_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_select
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = nil
      L2_2 = A0_2._pay_config_ids
      L2_2 = #L2_2
      if L2_2 == 0 then
        L2_2 = {}
        L3_2 = A0_2._config_id_list
        L2_2.items = L3_2
        L1_2 = L2_2
      else
        L2_2 = {}
        L3_2 = {}
        L4_2 = A0_2._pay_config_ids
        L5_2 = A0_2._config_id_list
        L3_2[1] = L4_2
        L3_2[2] = L5_2
        L2_2.multi_drop_items = L3_2
        L3_2 = {}
        L4_2 = "UIText_Battlepass_Business_Reward06"
        L5_2 = "UIText_Battlepass_Business_Reward04"
        L3_2[1] = L4_2
        L3_2[2] = L5_2
        L2_2.multi_drop_title = L3_2
        L1_2 = L2_2
      end
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L3_1._on_control_show_item_click = L4_1
return L3_1
