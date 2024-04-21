local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.RogueDLCEntranceLockDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueDLCEntranceLockDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueDLCEntranceLockDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._dlc_entrance_data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._dlc_entrance_data
  L2_2 = L2_2.row
  L2_2 = L2_2.RewardList
  L1_2 = L1_2(L2_2)
  A0_2._reward_item_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_unlock
  L4_2 = A0_2._on_btn_unlock_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward_gamepad
  L4_2 = A0_2._on_btn_reward_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueSelectMainPagePlayDialogTransfer
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._dlc_entrance_data
  L3_2 = L3_2.row
  L3_2 = L3_2.SubTypeTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._dlc_entrance_data
  L1_2 = L1_2.lock_data_provider
  if L1_2 then
    L1_2 = A0_2._dlc_entrance_data
    L1_2 = L1_2.lock_data_provider
    L2_2 = L1_2
    L1_2 = L1_2.get_unlock_hint_text_id
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_hint_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_hint_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._dlc_entrance_data
  L2_2 = L2_2.lock_data_provider
  if L2_2 then
    L2_2 = A0_2._dlc_entrance_data
    L2_2 = L2_2.lock_data_provider
    L3_2 = L2_2
    L2_2 = L2_2.get_desc_text_id
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._dlc_entrance_data
  L1_2 = L1_2.lock_data_provider
  if L1_2 ~= nil then
    L1_2 = A0_2._dlc_entrance_data
    L1_2 = L1_2.lock_data_provider
    L2_2 = L1_2
    L1_2 = L1_2.on_btn_unlock_click
    L1_2(L2_2)
  end
end
L0_1._on_btn_unlock_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_item_ids
  if L1_2 ~= nil then
    L1_2 = A0_2._reward_item_ids
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.show_item_detail_display_dialog_for_gamepad
  L2_2 = {}
  L3_2 = A0_2._reward_item_ids
  L2_2.items = L3_2
  L1_2(L2_2)
end
L0_1._on_btn_reward_gamepad_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
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
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_item_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count_display
  L7_2 = false
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_item_changed = L1_1
return L0_1
