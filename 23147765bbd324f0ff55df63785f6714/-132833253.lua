local L0_1, L1_1, L2_1, L3_1, L4_1
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
L0_1 = require
L1_1 = "Ui.WinAndLosePage.MultipleDropBattleResultInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.InventoryModule
L1_1 = 0.18
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RewardDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
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
  L1_2 = {}
  A0_2._reward_item_table = L1_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  A0_2._pause_game = true
  A0_2._is_only_display = true
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  A0_2._is_only_display = A1_2
end
L2_1.set_display_only = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.get_multiple_drop_unique_sorted_reward_table
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  A0_2._reward_item_table = L5_2
  A0_2._title_textid = A2_2
  A0_2._desc_text_id = A4_2
  A0_2._hide_num = A3_2
  L6_2 = A0_2
  L5_2 = A0_2._init_config_ids
  L5_2(L6_2)
end
L2_1.init = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L2_1.setup_desc = L3_1
function L3_1(A0_2)
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
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._config_ids
      L9_2 = L6_2.ConfigID
      L7_2(L8_2, L9_2)
    end
  end
end
L2_1._init_config_ids = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L2_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._config_ids
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._is_only_display
      if L1_2 == true then
        L1_2 = {}
        L2_2 = A0_2._config_ids
        L1_2.items = L2_2
        L2_2 = G
        L2_2 = L2_2.InventoryUtils
        L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
        L3_2 = L1_2
        L2_2(L3_2)
      else
        L1_2 = A0_2._params
        if L1_2 == nil then
          L1_2 = G
          L1_2 = L1_2.RewardUtils
          L1_2 = L1_2.get_item_data_table_by_item_display_data_table
          L2_2 = A0_2._reward_item_table
          L1_2 = L1_2(L2_2)
          A0_2._params = L1_2
        end
        L1_2 = A0_2._params
        L1_2 = #L1_2
        if 0 < L1_2 then
          L1_2 = {}
          L2_2 = A0_2._params
          L1_2.items = L2_2
          L1_2.sync_load = false
          L1_2.is_item = true
          L1_2.hide_lock = false
          L1_2.display_only = false
          L2_2 = G
          L2_2 = L2_2.InventoryUtils
          L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
          L3_2 = L1_2
          L2_2(L3_2)
        end
      end
    end
  end
end
L2_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
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
L2_1._on_unload = L3_1
function L3_1(A0_2)
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
  L1_2 = A0_2._try_setup_multiple_drop_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_contents
  L1_2(L2_2)
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
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_protect_time_and_exit
  L1_2(L2_2)
end
L2_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_protect_time_and_exit
  L1_2(L2_2)
end
L2_1._on_bg_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._check_protect_time_and_exit
  L1_2(L2_2)
end
L2_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_exceeded_protect_time
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L2_1._check_protect_time_and_exit = L3_1
function L3_1(A0_2)
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
    L2_2 = L1_1
    L4_2 = A0_2
    L3_2 = A0_2.fade_in_duration
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 + L3_2
    L3_2 = L1_2 > L2_2
    return L3_2
  end
end
L2_1._is_exceeded_protect_time = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_item_click
    L5_2(L6_2, L7_2, L8_2)
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
L2_1._on_reward_item_change = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.InventoryModule
    L5_2 = L4_2
    L4_2 = L4_2.GetItemDataByConfigID
    L6_2 = A2_2.ConfigID
    L4_2 = L4_2(L5_2, L6_2)
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
  L5_2 = A0_2
  L4_2 = A0_2._set_item_name
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
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
  L5_2 = A1_2
  L4_2 = A1_2.set_multiple_drop_mark_display
  L6_2 = A2_2.ExtraInfo
  L6_2 = L6_2.IsFromMultipleDrop
  L4_2(L5_2, L6_2)
end
L2_1._setup_item = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A2_2.ItemSubType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.ChessRogueDiceSurface
  if L3_2 == L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.ChessRogueModule
    L3_2 = L3_2.ChessRogueData
    L3_2 = L3_2.DiceInfo
    L3_2 = L3_2.RogueNousDiceData
    L4_2 = L3_2
    L3_2 = L3_2.GetSurfaceDataByItemID
    L5_2 = A2_2.ConfigID
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A1_2
    L4_2 = A1_2.set_name
    L6_2 = L3_2.SurfaceName
    L4_2(L5_2, L6_2)
  else
    L4_2 = A1_2
    L3_2 = A1_2.set_name
    L5_2 = A2_2.Name
    L3_2(L4_2, L5_2)
  end
end
L2_1._set_item_name = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.ConfigID
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.ItemDetailDialog"
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._hide_num
  if L4_2 then
    L5_2 = L3_2
    L4_2 = L3_2.hide_num
    L4_2(L5_2)
  end
  L4_2 = A1_2.UID
  if L4_2 ~= nil then
    L4_2 = A1_2.UID
    if L4_2 ~= 0 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.GlobalVars
      L4_2 = L4_2.s_ModuleManager
      L4_2 = L4_2.InventoryModule
      L5_2 = L4_2
      L4_2 = L4_2.GetItemDataByUID
      L6_2 = A1_2.UID
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 ~= nil then
        L6_2 = L3_2
        L5_2 = L3_2.setup_view_by_item
        L7_2 = L4_2
        L8_2 = A0_2._is_only_display
        L5_2(L6_2, L7_2, L8_2)
        return
      end
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L2_1._on_item_click = L3_1
function L3_1(A0_2)
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
L2_1._on_dispose = L3_1
function L3_1(A0_2)
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
L2_1._trigger_autouse_item = L3_1
function L3_1(A0_2)
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
  L1_2 = A0_2._desc_text_id
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.setup_desc
    L3_2 = A0_2._desc_text_id
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_reward
  L4_2 = L3_2
  L3_2 = L3_2.CanScroll
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MultipleDropModule
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_multipledrop_tips_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.LastBattleMultipleDropUsedDataList
  L4_2 = L4_2.Count
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = L1_2.LastBattleMultipleDropUsedDataList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.MultipleDropBattleResultInfoPanel
    L9_2 = G
    L9_2 = L9_2.MultipleDropBattleResultInfoPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.prefab_loadmeta_multipledrop
    L9_2 = L9_2.Prefab
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_multipledrop
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L6_2
    L8_2 = L6_2.bind
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = L6_2
    L8_2 = L6_2.setup_view
    L10_2 = L1_2.LastBattleMultipleDropUsedDataList
    L10_2 = L10_2[L5_2]
    L8_2(L9_2, L10_2)
  end
  L2_2 = L1_2.LastBattleMultipleDropUsedDataList
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
end
L2_1._try_setup_multiple_drop_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.is_focused
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._need_refresh = true
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._need_refresh
  if not L1_2 then
    return
  end
  A0_2._need_refresh = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L2_1._on_return_to_top = L3_1
return L2_1
