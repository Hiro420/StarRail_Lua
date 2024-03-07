local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeConfirmDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeConfirmDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_NetworkManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = 5
L4_1 = 5
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ItemComposeConfirmDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._count = 0
  A0_2.item_data = nil
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L5_1
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
L0_1._on_left_stick_button_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._icon_panel = L1_2
  L1_2 = {}
  A0_2._icon_sp_panel = L1_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "_item_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._icon_panel
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "_item_sp_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._icon_sp_panel
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_icon_panel = L1_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2._compose_icon_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIComposeFinished
  L4_2 = L0_1._on_get_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._close_btn
  L4_2 = A0_2._on_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L4_2 = A0_2._on_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._on_exit_rename
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = L3_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._icon_panel
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2._binder
    if L5_2 ~= nil then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.GlobalVars
      L5_2 = L5_2.s_ModuleManager
      L5_2 = L5_2.TutorialSupportModule
      L6_2 = L5_2
      L5_2 = L5_2.SetNodeDynamicKey
      L7_2 = A0_2._icon_panel
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2._binder
      L7_2 = L7_2.root
      L7_2 = L7_2.gameObject
      L8_2 = "CommonItemIcon"
      L9_2 = L4_2
      L8_2 = L8_2 .. L9_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L1_2 = 1
  L2_2 = L4_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._icon_sp_panel
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2._binder
    if L5_2 ~= nil then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.GlobalVars
      L5_2 = L5_2.s_ModuleManager
      L5_2 = L5_2.TutorialSupportModule
      L6_2 = L5_2
      L5_2 = L5_2.SetNodeDynamicKey
      L7_2 = A0_2._icon_sp_panel
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2._binder
      L7_2 = L7_2.root
      L7_2 = L7_2.gameObject
      L8_2 = "CommonItemIcon"
      L9_2 = L4_2
      L8_2 = L8_2 .. L9_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  L1_2 = A0_2._compose_icon_panel
  L1_2 = L1_2._binder
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.TutorialSupportModule
    L2_2 = L1_2
    L1_2 = L1_2.SetNodeDynamicKey
    L3_2 = A0_2._compose_icon_panel
    L3_2 = L3_2._binder
    L3_2 = L3_2.root
    L3_2 = L3_2.gameObject
    L4_2 = "CommonItemIcon10"
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_exit_rename = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._on_exit
  L2_2(L3_2)
end
L0_1._on_get_result = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_cancel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.item_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "ItemComposeConfirmDialog item id "
  L4_2 = A0_2.item_data
  L4_2 = L4_2.ConfigID
  L5_2 = " count"
  L6_2 = A0_2._count
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = A0_2.item_data
  L2_2 = L2_2.ItemsConfig
  L3_2 = L2_2.Length
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2 - 1
    L10_2 = L2_2[L10_2]
    L10_2 = L10_2.ItemID
    L8_2(L9_2, L10_2)
  end
  L4_2 = 1
  L5_2 = A0_2._special_compose_material_id_list
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = A0_2._special_compose_material_id_list
    L10_2 = L10_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.Collections
  L4_2 = L4_2.Generic
  L4_2 = L4_2.List
  L5_2 = CS
  L5_2 = L5_2.Proto
  L5_2 = L5_2.ItemCost
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2()
  A0_2._sp_item_cost_list = L4_2
  L4_2 = 1
  L5_2 = A0_2._sp_consume_data_list
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._sp_consume_data_list
    L8_2 = L8_2[L7_2]
    L9_2 = CS
    L9_2 = L9_2.Proto
    L9_2 = L9_2.ItemCost
    L9_2 = L9_2()
    L10_2 = CS
    L10_2 = L10_2.Proto
    L10_2 = L10_2.PileItem
    L10_2 = L10_2()
    L9_2.PileItem = L10_2
    L10_2 = L9_2.PileItem
    L11_2 = L8_2.itemData
    L11_2 = L11_2.ConfigID
    L10_2.ItemId = L11_2
    L10_2 = L9_2.PileItem
    L11_2 = L8_2.consumeCount
    L10_2.ItemNum = L11_2
    L10_2 = L9_2.PileItem
    L10_2 = L10_2.ItemNum
    if L10_2 ~= 0 then
      L10_2 = A0_2._sp_item_cost_list
      L11_2 = L10_2
      L10_2 = L10_2.Add
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = G
  L4_2 = L4_2.InventoryUtils
  L4_2 = L4_2.check_item_deleted
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = A0_2._relic_config
  if L4_2 ~= nil then
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.AEDMHLFFCNJ
    L6_2 = A0_2.item_data
    L6_2 = L6_2.ConfigID
    L7_2 = A0_2._relic_config
    L7_2 = L7_2.ID
    L8_2 = A0_2._target_main_affix_id
    L9_2 = A0_2._sp_item_cost_list
    L10_2 = A0_2._count
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    return
  end
  L4_2 = A0_2._sp_consume_data_list
  L4_2 = #L4_2
  if L4_2 == 0 then
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GMANOALHDKH
    L6_2 = A0_2.item_data
    L6_2 = L6_2.ConfigID
    L7_2 = A0_2._count
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GODFGDOOFLF
    L6_2 = A0_2.item_data
    L6_2 = L6_2.ConfigID
    L7_2 = A0_2._count
    L8_2 = A0_2._sp_item_cost_list
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._on_confirm = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._relic_config = A1_2
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._relic_config
  L6_2 = L6_2.ID
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_count
  L6_2 = A2_2
  L7_2 = nil
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2._target_main_affix_id = A3_2
  L4_2 = table
  L4_2 = L4_2.remove
  L5_2 = A0_2._config_id_list
  L6_2 = A0_2._config_id_list
  L6_2 = #L6_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._config_id_list
  L6_2 = A0_2._relic_config
  L6_2 = L6_2.ID
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._target_main_affix_id
  if L4_2 ~= 0 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RelicMainAffixConfigExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A0_2._relic_config
    L5_2 = L5_2.MainAffixGroup
    L6_2 = A0_2._target_main_affix_id
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      return
    end
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AvatarPropertyExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2.Property
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2._compose_icon_panel
    L7_2 = L6_2
    L6_2 = L6_2.set_name
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_relic_main_affix
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_relic_main_affix
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_ItemCompose_RelicCompose_Dialog_Tip_4"
    L9_2 = G
    L9_2 = L9_2.TextmapStatic
    L9_2 = L9_2.GetText
    L10_2 = L5_2.PropertyNameRelic
    L9_2, L10_2 = L9_2(L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1.set_target_relic_info = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = {}
  A0_2.btn_list = L4_2
  A0_2.item_data = A1_2
  A0_2._count = A2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_relic_main_affix
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_compose_items
  L6_2 = A1_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2.ItemID
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._compose_icon_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_count
  L6_2 = A2_2
  L7_2 = nil
  L8_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._config_id_list
  L6_2 = A1_2.ItemID
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.CoinCost
  L4_2 = L4_2 * A2_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.num_text
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "%.0f"
  L9_2 = L4_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.num_text
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = 0 < L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.compose_cost_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = 0 < L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.item_text
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_ItemCompose_Tips_03"
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = A1_2.Name
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.content_text
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = "UIText_ItemCompose_Tips_01"
  L9_2 = L5_2
  L10_2 = string
  L10_2 = L10_2.format
  L11_2 = "%.0f"
  L12_2 = A2_2
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.InventoryModule
  L6_2 = L6_2.GetItemRow
  L7_2 = 2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2.load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.compose_cost_icon
  L10_2 = L6_2.ItemIconPath
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = A0_2.btn_list
  L9_2 = A0_2._compose_icon_panel
  L9_2 = L9_2._binder
  L9_2 = L9_2.button
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.setup_navigation
  L9_2 = A0_2.btn_list
  L10_2 = NavigationType
  L10_2 = L10_2.Horizontal
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.set_compose = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A1_2.ItemsConfig
  L4_2 = {}
  L5_2 = L3_2.Length
  if 0 < L5_2 then
    L6_2 = 1
    L7_2 = L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = L9_2 - 1
      L12_2 = L3_2[L12_2]
      L10_2(L11_2, L12_2)
    end
  end
  A0_2._special_compose_material_id_list = A2_2
  L6_2 = #L4_2
  L7_2 = A0_2._special_compose_material_id_list
  L7_2 = #L7_2
  L8_2 = L3_1
  if not (L6_2 > L8_2) then
    L8_2 = L4_1
    if not (L7_2 > L8_2) then
      goto lbl_28
    end
  end
  do return end
  ::lbl_28::
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_normal_items
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = true
  L8_2(L9_2, L10_2)
  L8_2 = 1
  L9_2 = L6_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A0_2._icon_panel
    L12_2 = L12_2[L11_2]
    L13_2 = L12_2
    L12_2 = L12_2.setup_view
    L14_2 = L4_2[L11_2]
    L14_2 = L14_2.ItemID
    L12_2(L13_2, L14_2)
    L12_2 = A0_2._icon_panel
    L12_2 = L12_2[L11_2]
    L13_2 = L12_2
    L12_2 = L12_2.set_count
    L14_2 = L4_2[L11_2]
    L14_2 = L14_2.ItemNum
    L15_2 = A0_2._count
    L14_2 = L14_2 * L15_2
    L15_2 = nil
    L16_2 = false
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = A0_2.btn_list
    L14_2 = A0_2._icon_panel
    L14_2 = L14_2[L11_2]
    L14_2 = L14_2._binder
    L14_2 = L14_2.button
    L12_2(L13_2, L14_2)
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = A0_2._config_id_list
    L14_2 = L4_2[L11_2]
    L14_2 = L14_2.ItemID
    L12_2(L13_2, L14_2)
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_sp_items
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = {}
  A0_2._sp_consume_data_list = L8_2
  if L7_2 ~= 0 then
    L9_2 = A0_2
    L8_2 = A0_2._calculate_consume_special_items
    L8_2(L9_2)
    L8_2 = 1 + L6_2
    L9_2 = A0_2._sp_consume_data_list
    L9_2 = #L9_2
    L9_2 = L9_2 + L6_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = A0_2._icon_panel
      L12_2 = L12_2[L11_2]
      L13_2 = L12_2
      L12_2 = L12_2.setup_view
      L14_2 = A0_2._sp_consume_data_list
      L15_2 = L11_2 - L6_2
      L14_2 = L14_2[L15_2]
      L14_2 = L14_2.itemData
      L14_2 = L14_2.ConfigID
      L12_2(L13_2, L14_2)
      L12_2 = A0_2._icon_panel
      L12_2 = L12_2[L11_2]
      L13_2 = L12_2
      L12_2 = L12_2.set_count
      L14_2 = A0_2._sp_consume_data_list
      L15_2 = L11_2 - L6_2
      L14_2 = L14_2[L15_2]
      L14_2 = L14_2.consumeCount
      L12_2(L13_2, L14_2)
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2.btn_list
      L14_2 = A0_2._icon_panel
      L14_2 = L14_2[L11_2]
      L14_2 = L14_2._binder
      L14_2 = L14_2.button
      L12_2(L13_2, L14_2)
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._config_id_list
      L14_2 = A0_2._sp_consume_data_list
      L15_2 = L11_2 - L6_2
      L14_2 = L14_2[L15_2]
      L14_2 = L14_2.itemData
      L14_2 = L14_2.ConfigID
      L12_2(L13_2, L14_2)
    end
  end
  L8_2 = 1
  L9_2 = L3_1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A0_2._icon_panel
    L12_2 = L12_2[L11_2]
    L13_2 = L12_2
    L12_2 = L12_2.safe_set_active
    L14_2 = A0_2._sp_consume_data_list
    L14_2 = #L14_2
    L14_2 = L6_2 + L14_2
    L14_2 = L11_2 <= L14_2
    L12_2(L13_2, L14_2)
  end
  L8_2 = 1
  L9_2 = L4_1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A0_2._icon_sp_panel
    L12_2 = L12_2[L11_2]
    L13_2 = L12_2
    L12_2 = L12_2.safe_set_active
    L14_2 = false
    L12_2(L13_2, L14_2)
  end
end
L0_1._set_compose_items = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._special_compose_material_id_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = L2_1
    L8_2 = L7_2
    L7_2 = L7_2.GetItemDataByConfigID
    L9_2 = A0_2._special_compose_material_id_list
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.id
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.itemData = L7_2
    L7_2 = A0_2._special_compose_material_id_list
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.count
    L6_2.selectedCount = L7_2
    L7_2 = A0_2._special_compose_material_id_list
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.count
    L8_2 = A0_2._count
    L7_2 = L7_2 * L8_2
    L6_2.consumeCount = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.consumeCount
    if L6_2 ~= 0 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._sp_consume_data_list
      L8_2 = L1_2[L5_2]
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._calculate_consume_special_items = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L5_1
return L0_1
