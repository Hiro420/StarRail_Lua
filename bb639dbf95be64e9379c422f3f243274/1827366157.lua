local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.BattlePass.BattlePassRewardChoiceDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardOptionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardOptionItemPanelBinder"
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
L1_1 = L1_1.BattlePassModule
L2_1 = "BattlePass_RewardSelectDialog_PageDownA"
L3_1 = "BattlePass_RewardSelectDialog_PageDownB"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "BattlePassRewardChoiceDialog"
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
  L3_2 = L3_2.BattlePassRewardChoiceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._choice_datas = L1_2
  A0_2._current_data_index = 0
  L1_2 = {}
  A0_2._choice_reward_ids = L1_2
  A0_2._selected_reward_id = 0
  A0_2._chosen_list = nil
  A0_2._should_merge = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._on_close_callback = A3_2
  A0_2._on_close_handler = A4_2
  if not A2_2 then
    L6_2 = A0_2
    L5_2 = A0_2._init_data_by_point
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._init_data_by_point_list
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
  A0_2._current_data_index = 1
  L5_2 = CS
  L5_2 = L5_2.System
  L5_2 = L5_2.Collections
  L5_2 = L5_2.Generic
  L5_2 = L5_2.List
  L6_2 = CS
  L6_2 = L6_2.Proto
  L6_2 = L6_2.OptionalReward
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2()
  A0_2._chosen_list = L5_2
end
L4_1.init = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  A0_2._choice_datas = L2_2
  L2_2 = A1_2.IsOption
  if L2_2 then
    L2_2 = A1_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BPRewardStatus
    L3_2 = L3_2.Available
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._create_choice_data
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L2_2.levels
      L5_2 = A1_2.Level
      L3_2(L4_2, L5_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = A0_2._choice_datas
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1._init_data_by_point = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  A0_2._choice_datas = L2_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2.IsOption
    if L8_2 then
      L8_2 = L7_2.Status
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.BPRewardStatus
      L9_2 = L9_2.Available
      if L8_2 == L9_2 then
        L8_2 = L7_2.OptionItemID
        L9_2 = L2_2[L8_2]
        if L9_2 == nil then
          L10_2 = A0_2
          L9_2 = A0_2._create_choice_data
          L11_2 = L7_2
          L9_2 = L9_2(L10_2, L11_2)
          L2_2[L8_2] = L9_2
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = A0_2._choice_datas
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
        end
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2[L8_2]
        L10_2 = L10_2.levels
        L11_2 = L7_2.Level
        L9_2(L10_2, L11_2)
      end
    end
  end
end
L4_1._init_data_by_point_list = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = A1_2.OptionItemID
  L2_2.item_id = L3_2
  L3_2 = {}
  L2_2.levels = L3_2
  L2_2.chosen_count = 0
  return L2_2
end
L4_1._create_choice_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
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
  L3_2 = L3_2.btn_merge
  L4_2 = A0_2._on_btn_merge
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_option_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_control_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_view
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L3_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._chosen_list
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  A0_2._chosen_list = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._choosing_data
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward_ids
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_merge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1.close_merge_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._choosing_data
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.item_id
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.ItemName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_current_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2.chosen_count
  L5_2 = L5_2 + 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_total_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2.levels
  L5_2 = #L5_2
  L3_2(L4_2, L5_2)
end
L4_1._setup_info_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._choice_reward_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_reward_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  A0_2._choice_reward_ids = L1_2
  L1_2 = {}
  A0_2._display_item_ids = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L3_2 = A0_2
  L2_2 = A0_2._choosing_data
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.item_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UseDataID
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.UseParam
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._choice_reward_ids
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = G
    L9_2 = L9_2.RewardUtils
    L9_2 = L9_2.CreateRewardItemTable
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2[1]
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._display_item_ids
    L13_2 = L10_2.ItemID
    L11_2(L12_2, L13_2)
  end
  A0_2._selected_reward_id = 0
end
L4_1._refresh_reward_ids = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
end
L4_1._refresh_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattlePassRewardOptionItemPanel
    L8_2 = G
    L8_2 = L8_2.BattlePassRewardOptionItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_select_reward
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.register_detail_callback
    L7_2 = A0_2._on_show_detail
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._choice_reward_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._selected_reward_id
  L9_2 = L5_2 == L9_2
  L11_2 = A0_2
  L10_2 = A0_2._merged_count
  L10_2 = L10_2(L11_2)
  L11_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L4_1._on_option_item_changed = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_reward_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L4_1._on_select_reward = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = A0_2._display_item_ids
  L2_2.items = L3_2
  L2_2.init_index = A1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L4_1._on_show_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._has_next
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_confirm
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_OptionalReward_Next"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_confirm
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Common_Confirm"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._is_selected
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._can_merge
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_merge
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A0_2._should_merge
    L2_2(L3_2, L4_2)
  end
end
L4_1._setup_btn_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._is_selected
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RewardUtils
    L1_2 = L1_2.CreateRewardItemTable
    L2_2 = A0_2._selected_reward_id
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2[1]
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.ItemID
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.ItemMainType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemMainType
    L5_2 = L5_2.Equipment
    if L4_2 == L5_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_normal_tips
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_lightcone_info
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = L0_1
      L5_2 = L4_2
      L4_2 = L4_2.GetItemCountByConfigID
      L6_2 = L3_2.ID
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.txt_lightcone_count
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetText
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_lightcone_icon
      L8_2 = L3_2.ItemIconPath
      L5_2(L6_2, L7_2, L8_2)
      if 0 < L4_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_lightcone_rank
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = true
        L5_2(L6_2, L7_2)
        L5_2 = L0_1
        L6_2 = L5_2
        L5_2 = L5_2.GetEquipmentMaxRankByConfigID
        L7_2 = L3_2.ID
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.txt_lightcone_max_rank
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetTextID
        L8_2 = G
        L8_2 = L8_2.UITextUtils
        L8_2 = L8_2.GetLightConeRankTextID
        L9_2 = L5_2
        L8_2, L9_2 = L8_2(L9_2)
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.EquipmentExcelTable
        L6_2 = L6_2.GetData
        L7_2 = L3_2.ID
        L6_2 = L6_2(L7_2)
        L7_2 = L6_2.MaxRank
        if L5_2 < L7_2 then
          L7_2 = A0_2._binder
          L7_2 = L7_2.txt_lightcone_max_rank
          L8_2 = G
          L8_2 = L8_2.UIColorUtils
          L8_2 = L8_2.GetColor
          L9_2 = "#DCC491"
          L8_2 = L8_2(L9_2)
          L7_2.color = L8_2
          L7_2 = A0_2._binder
          L7_2 = L7_2.img_lightcone_max_rank_bg
          L8_2 = G
          L8_2 = L8_2.UIColorUtils
          L8_2 = L8_2.GetColor
          L9_2 = "#12121257"
          L8_2 = L8_2(L9_2)
          L7_2.color = L8_2
        else
          L7_2 = A0_2._binder
          L7_2 = L7_2.txt_lightcone_max_rank
          L8_2 = G
          L8_2 = L8_2.UIColorUtils
          L8_2 = L8_2.GetColor
          L9_2 = "#121212"
          L8_2 = L8_2(L9_2)
          L7_2.color = L8_2
          L7_2 = A0_2._binder
          L7_2 = L7_2.img_lightcone_max_rank_bg
          L8_2 = G
          L8_2 = L8_2.UIColorUtils
          L8_2 = L8_2.GetColor
          L9_2 = "#ffcf70ff"
          L8_2 = L8_2(L9_2)
          L7_2.color = L8_2
        end
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_lightcone_rank
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetActive
        L7_2 = false
        L5_2(L6_2, L7_2)
      end
      L6_2 = A0_2
      L5_2 = A0_2.setup_short_cut_hint_panel
      L7_2 = 65
      L5_2(L6_2, L7_2)
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lightcone_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
end
L4_1._setup_tip_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._choice_datas
  L2_2 = A0_2._current_data_index
  L1_2 = L1_2[L2_2]
  return L1_2
end
L4_1._choosing_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._choosing_data
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.levels
  L3_2 = L1_2.chosen_count
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  return L2_2
end
L4_1._choosing_level = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._selected_reward_id
  L1_2 = L1_2 ~= 0
  return L1_2
end
L4_1._is_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._has_next_data
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._has_next_level
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L4_1._has_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_data_index
  L2_2 = A0_2._choice_datas
  L2_2 = #L2_2
  L1_2 = L1_2 < L2_2
  return L1_2
end
L4_1._has_next_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._should_merge
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._choosing_data
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.chosen_count
  L2_2 = L2_2 + 1
  L3_2 = L1_2.levels
  L3_2 = #L3_2
  L2_2 = L2_2 < L3_2
  return L2_2
end
L4_1._has_next_level = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._choosing_data
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.levels
  L2_2 = #L2_2
  L3_2 = L1_2.chosen_count
  L3_2 = L3_2 + 1
  L2_2 = L2_2 > L3_2
  return L2_2
end
L4_1._can_merge = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._can_merge
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = 1
    return L2_2
  end
  if A1_2 ~= true then
    L2_2 = A0_2._should_merge
    if L2_2 ~= true then
      L2_2 = 1
      return L2_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._choosing_data
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.levels
  L3_2 = #L3_2
  L4_2 = L2_2.chosen_count
  L3_2 = L3_2 - L4_2
  return L3_2
end
L4_1._merged_count = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_close
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_cancel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._on_close_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._on_close_handler
    if L2_2 ~= nil then
      L2_2 = A0_2._on_close_callback
      L3_2 = A0_2._on_close_handler
      L4_2 = A1_2
      L5_2 = A0_2._chosen_list
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._on_close_callback
      L3_2 = A1_2
      L4_2 = A0_2._chosen_list
      L2_2(L3_2, L4_2)
    end
  end
end
L4_1._on_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._can_merge
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._should_merge
  if L1_2 then
    L1_2 = A0_2._should_merge
    L1_2 = not L1_2
    A0_2._should_merge = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_view
    L1_2(L2_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowConfirmDialog
    function L2_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2._should_merge
        L1_3 = not L1_3
        A0_2._should_merge = L1_3
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._refresh_view
        L1_3(L2_3)
      end
    end
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.SetContent
    L4_2 = "UIText_OptionalReward_MultipleReceiveTips"
    L6_2 = A0_2
    L5_2 = A0_2._merged_count
    L7_2 = true
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = DialogBtnMode
    L2_2 = L2_2.eOkCancel
    L1_2.Mode = L2_2
  end
end
L4_1._on_btn_merge = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._choosing_data
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L4_2 = A0_2
  L3_2 = A0_2._merged_count
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.Proto
    L6_2 = L6_2.OptionalReward
    L6_2 = L6_2()
    L7_2 = L1_2.levels
    L8_2 = L1_2.chosen_count
    L8_2 = L8_2 + L5_2
    L7_2 = L7_2[L8_2]
    L6_2.Level = L7_2
    L7_2 = A0_2._selected_reward_id
    L6_2.OptionalRewardId = L7_2
    L7_2 = A0_2._chosen_list
    L8_2 = L7_2
    L7_2 = L7_2.Add
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L4_1._record_choice = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._has_next_level
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._choosing_data
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2._choosing_data
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.chosen_count
    L2_2 = L2_2 + 1
    L1_2.chosen_count = L2_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._has_next_data
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._current_data_index
      L1_2 = L1_2 + 1
      A0_2._current_data_index = L1_2
    end
  end
  A0_2._should_merge = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_with_anim
  L1_2(L2_2)
end
L4_1._go_on_choice = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._setup_view_with_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._record_choice
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._has_next
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._go_on_choice
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_close
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_confirm = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L4_1._init_ui_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_navigation_target
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_cancel
  L1_2(L2_2)
end
L4_1._in_control_exit_click = L5_1
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
return L4_1
