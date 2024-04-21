local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Common.ItemDetailDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownRewardInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyRenownPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#FFFFFF"
L2_1 = "#EB4D3D"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueCommonExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Alley_Reward_RequireItemID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.IntValue
L4_1 = "AlleyPtLevelUp"
L5_1 = "AlleyPtLevelUpDefault"
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.GlobalVars
L6_1 = L6_1.s_ModuleManager
L6_1 = L6_1.AlleyModule
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.GlobalVars
L7_1 = L7_1.s_ModuleManager
L7_1 = L7_1.InventoryModule
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyRenownPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  L1_2 = {}
  A0_2._reward_data = L1_2
  A0_2.select_panel = nil
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_submit
  L4_2 = A0_2._on_btn_submit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item_detail
  L4_2 = A0_2._on_btn_item_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyRenownLevelUp
  L4_2 = A0_2._on_renown_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyGetRenownReward
  L4_2 = A0_2._on_renown_reward_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleyRenownReward"
  L4_2 = 1
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_submit_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_reward_data
  L1_2(L2_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_icon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_renown_stamp_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_renown_board_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_level_up
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._reward_data = nil
  A0_2.select_panel = nil
end
L0_1._on_dispose = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._default_focus_index
  L3_2 = L3_2 - 1
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
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.select_panel
  if L2_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
    L3_2 = A0_2.select_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_in_control_button_enable
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_in_control_input_switch = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L6_1.MaxLevel
  A0_2._max_level = L1_2
  L1_2 = 1
  L2_2 = A0_2._max_level
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AlleyRewardExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._reward_data
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_reward_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._stamp_item = L1_2
  L1_2 = A0_2._stamp_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stamp_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_stamp_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
end
L0_1._setup_icon_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1.CurRenownLevel
  A0_2._cur_level = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_level
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_stamp_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_stamp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_stamp_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_level
  L1_2 = L1_2 + 1
  L2_2 = A0_2._max_level
  if L1_2 <= L2_2 then
    A0_2._is_max_level = false
    L2_2 = A0_2._reward_data
    L2_2 = L2_2[L1_2]
    L2_2 = L2_2.NumTarget
    A0_2._next_level_count = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_next_level_stamp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._next_level_count
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_submit
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = A0_2._cur_stamp_count
    L5_2 = A0_2._next_level_count
    L4_2 = L4_2 >= L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_btn_tip
    L3_2 = A0_2._cur_stamp_count
    L4_2 = A0_2._next_level_count
    L3_2 = L3_2 >= L4_2
    L2_2.IsShowTip = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_max_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    A0_2._is_max_level = true
    A0_2._next_level_count = 99999
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_submit
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_btn_tip
    L2_2.IsShowTip = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_max_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_function_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._cur_stamp_count
  L3_2 = A0_2._next_level_count
  if L2_2 < L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_total_stamp
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_total_stamp
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L1_1
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1._setup_renown_stamp_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._cur_stamp_count
  L3_2 = A0_2._next_level_count
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._is_max_level
  if L2_2 then
    L1_2 = A0_2._next_level_count
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.board_list_cur
  L3_2 = L2_2
  L2_2 = L2_2.set_board_state
  L4_2 = L1_2
  L5_2 = A0_2._next_level_count
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_renown_board_view = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L6_1.RenownRewardTakenInfo
  L2_2 = L2_2(L3_2)
  A0_2._reward_taken_info = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_data
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._scroll_list_to_suitable_pos
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_reward
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_reward_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._pre_level
  L1_2 = L1_2 + 1
  L2_2 = A0_2._cur_level
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.list_reward
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = L6_2
      L7_2 = L6_2.play_unlock_anim
      L7_2(L8_2)
    end
  end
end
L0_1._unlock_reward_panels = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = 1
  L4_2 = A0_2._reward_data
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._reward_data
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2.Level
    L9_2 = A0_2._cur_level
    if L8_2 <= L9_2 then
      L8_2 = A0_2._reward_taken_info
      L9_2 = L7_2.Level
      L8_2 = L8_2[L9_2]
      if not L8_2 then
        L1_2 = L6_2
        break
    end
    else
      L8_2 = A0_2._reward_taken_info
      L9_2 = L7_2.Level
      L8_2 = L8_2[L9_2]
      if L8_2 then
        L2_2 = L6_2
      end
    end
  end
  L3_2 = L1_2 or L3_2
  L3_2 = L2_2 or L3_2
  if not L1_2 and not L2_2 then
    L3_2 = 1
  end
  A0_2._default_focus_index = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_reward
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = A0_2._default_focus_index
  L5_2 = L5_2 - 1
  L3_2(L4_2, L5_2)
end
L0_1._scroll_list_to_suitable_pos = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_pre_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._pre_level
  L1_2(L2_2, L3_2)
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._pre_stamp_count
  L3_2 = A0_2._pre_next_level_count
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.board_list_pre
  L3_2 = L2_2
  L2_2 = L2_2.set_board_state
  L4_2 = L1_2
  L5_2 = A0_2._next_level_count
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A0_2._cur_stamp_count
  L4_2 = A0_2._next_level_count
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  L2_2 = A0_2._is_max_level
  if L2_2 then
    L1_2 = A0_2._next_level_count
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.board_list_cur
  L3_2 = L2_2
  L2_2 = L2_2.set_board_state
  L4_2 = L1_2
  L5_2 = A0_2._next_level_count
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_level_up
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L4_1
  L2_2(L3_2, L4_2)
end
L0_1._refresh_board_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_stamp_count
  A0_2._pre_stamp_count = L1_2
  L1_2 = A0_2._next_level_count
  A0_2._pre_next_level_count = L1_2
  L1_2 = A0_2._cur_level
  A0_2._pre_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_renown_stamp_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_board_view
  L1_2(L2_2)
end
L0_1._on_renown_level_up = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_view
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2.ItemList_
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.ItemFactory
    L8_2 = L8_2.CreateDisplayItemData
    L9_2 = L7_2.ItemId
    L10_2 = L7_2.Num
    L11_2 = L7_2.Level
    L12_2 = L7_2.UniqueId
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.RewardDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_renown_reward_get = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_stamp_count
  L2_2 = A0_2._next_level_count
  if L1_2 >= L2_2 then
    L1_2 = L6_1
    L2_2 = L1_2
    L1_2 = L1_2.TrySubmitStamp
    L1_2(L2_2)
  end
end
L0_1._on_btn_submit = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemTip.ItemTipsDialog"
  L3_2 = {}
  L4_2 = L3_1
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_item_detail = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.TryTakeRenownReward
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_get_reward = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AlleyRenownRewardInfoRow
    L8_2 = G
    L8_2 = L8_2.AlleyRenownRewardInfoRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_reward
  L8_2 = L5_2
  L9_2 = A0_2._reward_taken_info
  L10_2 = L5_2.Level
  L9_2 = L9_2[L10_2]
  if not L9_2 then
    L9_2 = false
  end
  L10_2 = A0_2._cur_level
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_btn_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_btn_get_reward
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_reward_item_change = L8_1
return L0_1
