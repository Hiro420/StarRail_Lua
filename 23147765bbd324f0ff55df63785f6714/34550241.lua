local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubWinDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubWinDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BoxingClubModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubWinDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._block_input = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._info = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_lst
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._show_item_tips_dialog
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_new_best_record_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_turn_num
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_already_taken_hint
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._info
  L1_2 = L1_2.OldBestRecord
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.new_record_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.new_record_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._info
  L3_2 = L3_2.OldBestRecord
  L4_2 = A0_2._info
  L4_2 = L4_2.CurrentRecord
  L3_2 = L3_2 > L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_best_record_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_round
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._info
  L3_2 = L3_2.CurrentRecord
  L1_2(L2_2, L3_2)
end
L0_1._setup_turn_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._info
  L1_2 = L1_2.Rewards
  if L1_2 ~= nil then
    L1_2 = A0_2._info
    L1_2 = L1_2.Rewards
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_16
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_16::
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_lst
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._info
  L3_2 = L3_2.Rewards
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_lst
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_taken_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._info
  L3_2 = L3_2.Rewards
  L3_2 = L3_2 == nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_reward_already_taken_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._info
  L1_2 = L1_2.Rewards
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._config_ids
  if L1_2 == nil then
    L1_2 = {}
    A0_2._config_ids = L1_2
    L1_2 = 0
    L2_2 = A0_2._info
    L2_2 = L2_2.Rewards
    L2_2 = L2_2.Count
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = false
      L6_2 = ipairs
      L7_2 = A0_2._config_ids
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = A0_2._info
        L11_2 = L11_2.Rewards
        L11_2 = L11_2[L4_2]
        L11_2 = L11_2.ConfigID
        if L10_2 == L11_2 then
          L5_2 = true
        end
      end
      if not L5_2 then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._config_ids
        L8_2 = A0_2._info
        L8_2 = L8_2.Rewards
        L8_2 = L8_2[L4_2]
        L8_2 = L8_2.ConfigID
        L6_2(L7_2, L8_2)
      end
    end
  end
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
L0_1._show_item_tips_dialog = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  L5_2 = L4_2.setup_view_by_display_data
  L7_2 = A0_2._info
  L7_2 = L7_2.Rewards
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_attachment_getted
  L7_2 = A0_2._info
  L7_2 = L7_2.IsRewardTaken
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
return L0_1
