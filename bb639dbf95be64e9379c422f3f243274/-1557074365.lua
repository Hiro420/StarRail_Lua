local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Common.RewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PayModule
L2_1 = 0.1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "RechargeRewardDialog"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._origin_recharge_item = A1_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_unique_sorted_reward_table
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_list
  L6_2 = A1_2.ItemList
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._reward_item_table = L4_2
  A0_2._title_textid = A2_2
  A0_2._hide_num = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._init_config_ids
  L4_2(L5_2)
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._reward_item_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.UID
    if L7_2 ~= nil then
      L7_2 = L6_2.UID
      if L7_2 ~= 0 then
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.Client
        L7_2 = L7_2.GlobalVars
        L7_2 = L7_2.s_ModuleManager
        L7_2 = L7_2.InventoryModule
        L8_2 = L7_2
        L7_2 = L7_2.GetItemDataByUID
        L9_2 = L6_2.UID
        L7_2 = L7_2(L8_2, L9_2)
        L1_2 = L7_2
    end
    else
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.InventoryModule
      L8_2 = L7_2
      L7_2 = L7_2.GetItemDataByConfigID
      L9_2 = L6_2.ConfigID
      L7_2 = L7_2(L8_2, L9_2)
      L1_2 = L7_2
    end
    if L1_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._config_ids
      L9_2 = L1_2.ConfigID
      L7_2(L8_2, L9_2)
    end
  end
end
L3_1._init_config_ids = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L3_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L3_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg
  L4_2 = A0_2._on_bg_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.KNNDPLBAHAH
  L4_2 = A0_2._on_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = A0_2._on_story_mode_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_dialog_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_RewardDialog_Title"
    L1_2(L2_2, L3_2)
  end
end
L3_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowMsTimeStamp
  A0_2._setup_time_in_ms = L1_2
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_protect_time_and_exit
  L1_2(L2_2)
end
L3_1._on_btn_confirm = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_protect_time_and_exit
  L1_2(L2_2)
end
L3_1._on_bg_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_protect_time_and_exit
  L1_2(L2_2)
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_exceeded_protect_time
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._origin_recharge_item
    if L1_2 ~= nil then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.OnConfirmReceiveRechargeReward
      L3_2 = A0_2._origin_recharge_item
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.show_full_screen_block_for_packet
      L3_2 = CS
      L3_2 = L3_2.NIJNBICAPPA
      L3_2 = L3_2.KNNDPLBAHAH
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
end
L3_1._check_protect_time_and_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._origin_recharge_item = nil
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_rsp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._setup_time_in_ms
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.TimeManager
    L1_2 = L1_2.Instance
    L1_2 = L1_2.NowMsTimeStamp
    L2_2 = A0_2._setup_time_in_ms
    L1_2 = L1_2 - L2_2
    L1_2 = L1_2 / 1000
    L2_2 = L2_1
    L4_2 = A0_2
    L3_2 = A0_2.fade_in_duration
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 + L3_2
    L3_2 = L1_2 > L2_2
    return L3_2
  end
end
L3_1._is_exceeded_protect_time = L4_1
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
    L9_2 = A0_2._hide_num
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
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
  L7_2 = A0_2
  L6_2 = A0_2._setup_item
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L3_1._on_reward_item_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = A2_2.UID
  if L4_2 ~= nil then
    L4_2 = A2_2.UID
    if L4_2 ~= 0 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.GlobalVars
      L4_2 = L4_2.s_ModuleManager
      L4_2 = L4_2.InventoryModule
      L5_2 = L4_2
      L4_2 = L4_2.GetItemDataByUID
      L6_2 = A2_2.UID
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
  end
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateItemData
    L5_2 = A2_2.ConfigID
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  if L3_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateItemData
    L5_2 = A2_2.ConfigID
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = A2_2.Count
    L3_2.Count = L4_2
  end
  L5_2 = A1_2
  L4_2 = A1_2.setup_view_by_item
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_count
  L6_2 = A2_2.Count
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_name
  L6_2 = L3_2.Name
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.not_show_default_click_dialog
  L4_2(L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_name_display
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_highlight_display
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A1_2._binder
  L6_2 = L6_2.button
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_item_click
    L2_3 = A2_2
    L0_3(L1_3, L2_3)
  end
  L4_2(L5_2, L6_2, L7_2)
end
L3_1._setup_item = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ConfigID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetRelicDataByUID
  L5_2 = A1_2.UID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.ItemDetailDialog"
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._hide_num
  if L5_2 then
    L6_2 = L4_2
    L5_2 = L4_2.hide_num
    L5_2(L6_2)
  end
  if L3_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.setup_view_by_item
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    return
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L3_1._on_item_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRewardDialogClose
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_autouse_item
  L1_2(L2_2)
  A0_2._hcoin_config_id = nil
  A0_2._reward_item_table = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2._reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.GetItemDataByConfigID
    L8_2 = L5_2.ConfigID
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.IsAutoUse
      if L7_2 then
        L7_2 = G
        L7_2 = L7_2.InventoryUtils
        L7_2 = L7_2.check_item_ban
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = L6_2.UseMethod
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.GameCore
          L8_2 = L8_2.ItemUseMethod
          L8_2 = L8_2.PlayerSelectedReward
          L8_2 = #L8_2
          if L7_2 == L8_2 then
            L7_2 = CS
            L7_2 = L7_2.RPG
            L7_2 = L7_2.GameCore
            L7_2 = L7_2.ItemUseDataExcelTable
            L7_2 = L7_2.GetData
            L8_2 = L6_2.UseDataID
            L7_2 = L7_2(L8_2)
            if L7_2 then
              L8_2 = G
              L8_2 = L8_2.UIManager
              L8_2 = L8_2.load_and_show
              L9_2 = "Ui.Inventory.ItemUse.OptionalGiftPackDetailDialog"
              L10_2 = L6_2
              L11_2 = L7_2
              L8_2(L9_2, L10_2, L11_2)
              return
            end
          end
        end
      end
    end
  end
end
L3_1._trigger_autouse_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._title_textid
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_dialog_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._title_textid
    L1_2(L2_2, L3_2)
  end
end
L3_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L3_1._on_story_mode_changed = L4_1
return L3_1
