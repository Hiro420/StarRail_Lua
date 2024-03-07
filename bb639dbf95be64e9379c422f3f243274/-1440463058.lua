local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.AdventureReward.RareRewardHintDialogBinder"
L0_1(L1_1)
L0_1 = 6
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RareRewardHintDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RareRewardHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.ShowRareRewardHint
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._reward_list = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._reward_list = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    if L5_2 <= L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._reward_list
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.sort_reward_item
  L3_2 = A0_2._reward_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_config_ids
  L2_2(L3_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._init_config_ids = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._params
  if L1_2 == nil then
    L1_2 = {}
    A0_2._params = L1_2
    L1_2 = ipairs
    L2_2 = A0_2._reward_list
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = nil
      L7_2 = L5_2.uid
      if L7_2 ~= nil then
        L7_2 = L5_2.uid
        if L7_2 ~= 0 then
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.GlobalVars
          L7_2 = L7_2.s_ModuleManager
          L7_2 = L7_2.InventoryModule
          L8_2 = L7_2
          L7_2 = L7_2.GetItemDataByUID
          L9_2 = L5_2.uid
          L7_2 = L7_2(L8_2, L9_2)
          L6_2 = L7_2
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
        L9_2 = L5_2.id
        L7_2 = L7_2(L8_2, L9_2)
        L6_2 = L7_2
      end
      if L6_2 ~= nil then
        L7_2 = A0_2._params
        L8_2 = A0_2._params
        L8_2 = #L8_2
        L8_2 = L8_2 + 1
        L7_2[L8_2] = L6_2
      end
    end
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
L1_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._reward_list = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.ShowRareRewardHint
  L1_2(L2_2, L3_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_view = L2_1
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
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_item_click
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._reward_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._setup_item
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L1_1._on_item_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  L4_2 = A2_2.uid
  if L4_2 ~= nil then
    L4_2 = A2_2.uid
    if L4_2 ~= 0 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.GlobalVars
      L4_2 = L4_2.s_ModuleManager
      L4_2 = L4_2.InventoryModule
      L5_2 = L4_2
      L4_2 = L4_2.GetItemDataByUID
      L6_2 = A2_2.uid
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
    L6_2 = A2_2.id
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if L3_2 == nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ItemFactory
    L4_2 = L4_2.CreateItemData
    L5_2 = A2_2.id
    L6_2 = 0
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L5_2 = A1_2
  L4_2 = A1_2.setup_view_by_item
  L6_2 = L3_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_count
  L6_2 = A2_2.num
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_name
  L6_2 = L3_2.Name
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_name_display
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_highlight_display
  L6_2 = true
  L4_2(L5_2, L6_2)
end
L1_1._setup_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ConfigID
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.ItemDetailDialog"
  L3_2 = L3_2(L4_2)
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
        L5_2(L6_2, L7_2)
        return
      end
    end
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L1_1._on_item_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._need_refresh
  if not L1_2 then
    return
  end
  A0_2._need_refresh = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L1_1._on_show_ui_page = L2_1
return L1_1
