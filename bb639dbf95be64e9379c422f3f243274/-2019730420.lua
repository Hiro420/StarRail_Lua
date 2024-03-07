local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "Ui.WinAndLosePage.BattleFarmResultPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
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
L0_1 = require
L1_1 = "Ui.FarmEnemy.FarmUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FarmModule
L1_1 = G
L1_1 = L1_1.StaminaModule
L1_1 = L1_1.Instance
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.PlayerModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.BattleModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.TeamModule
L5_1 = {}
L5_1.enough = "#121212"
L5_1.lack = "#C84A32"
L6_1 = "Cocoon_Weekly_Limit_Times"
L7_1 = "BattleResultDialog_FadeOut"
L8_1 = "UIText_Cocoon2_Number"
L9_1 = "UIText_ConfirmDialog_CocoonWeekly_Notimes"
L10_1 = "UIText_FarmCocoon_Daily_Disable_Hint"
L11_1 = "UIText_FarmResultPage_Label_Wave"
L12_1 = 0.3
L13_1 = G
L13_1 = L13_1.Class
L14_1 = "BattleFarmResultPage"
L15_1 = G
L15_1 = L15_1.UIController
L13_1 = L13_1(L14_1, L15_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleFarmResultPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._week_limit_count = L1_2
  A0_2._is_edit_team = false
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithCut
  A0_2._transition_style = L1_2
end
L13_1.ctor = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._battle_game_phase = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.CreateRewardListFromResult
  L1_2 = L1_2()
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.ClearResultInfo
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.get_multiple_drop_unique_sorted_reward_table
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._reward_item_table = L2_2
  L2_2 = L0_1.FarmData
  A0_2._farm_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._init_config_params
  L2_2(L3_2)
end
L13_1.init = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._reward_item_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.get_item_data_table_by_item_display_data_table
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._params = L2_2
end
L13_1._init_config_params = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._params
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = {}
    L2_2 = A0_2._params
    L1_2.items = L2_2
    L1_2.sync_load = false
    L1_2.is_item = true
    L1_2.init_index = 1
    L1_2.display_only = false
    L2_2 = G
    L2_2 = L2_2.InventoryUtils
    L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L13_1._on_left_stick_button_click = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar_area
  L3_2 = "BattleFarmResultPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleToMazeTransitFadeInEnd
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleGamePhaseLeave
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = A0_2._setup_farm_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaItemUsed
  L4_2 = A0_2._setup_farm_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_restart
  L4_2 = A0_2._on_battle_restart
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_edit_team
  L4_2 = A0_2._on_team_edit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_left_stick_button_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L13_1._on_load = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_stamina
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_edit_team
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_farm_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_multiple_drop_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_time_view
  L1_2(L2_2)
end
L13_1._setup_view = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.effect_node_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L13_1._on_view_active_change = L14_1
function L14_1(A0_2)
  local L1_2
  A0_2._farm_data = nil
end
L13_1._on_dispose = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_short_cut_hint_panel
    L3_2 = 8
    L1_2(L2_2, L3_2)
  end
end
L13_1._setup_item_list = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._farm_data
  L1_2 = L1_2.IsFarmElement
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.FarmElementConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._farm_data
    L2_2 = L2_2.FarmElementID
    L3_2 = A0_2._farm_data
    L3_2 = L3_2.SelectWordLevel
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_cocoon_stamina_cost
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.CocoonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._farm_data
  L2_2 = L2_2.CocoonID
  L3_2 = A0_2._farm_data
  L3_2 = L3_2.SelectWordLevel
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.CocoonType
  A0_2._cocoon_type = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_cocoon_stamina_cost
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cocoon_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CocoonType
  L3_2 = L3_2.TYPE_WEEK
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_weekly_farm_view
    L2_2(L3_2)
  else
    L2_2 = A0_2._cocoon_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.CocoonType
    L3_2 = L3_2.TYPE_NORMAL
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_normal_farm_view
      L2_2(L3_2)
    end
  end
end
L13_1._setup_farm_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.PlayerData
  L1_2 = L1_2.WeekCocoonCount
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_wave
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L8_1
  L5_2 = A0_2._week_limit_count
  L5_2 = L5_2 - L1_2
  L6_2 = A0_2._week_limit_count
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._week_limit_count
  L2_2 = L1_2 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L13_1._setup_weekly_farm_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_wave
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L11_1
  L4_2 = A0_2._farm_data
  L4_2 = L4_2.Wave
  L1_2(L2_2, L3_2, L4_2)
end
L13_1._setup_normal_farm_view = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.StaminaCost
  L3_2 = A0_2._farm_data
  L3_2 = L3_2.Wave
  L2_2 = L2_2 * L3_2
  A0_2._cost_stamina = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cost_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._cost_stamina
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cost_stamina
  L2_2 = L2_2 >= L3_2
  if L2_2 then
    L3_2 = L5_1.enough
    if L3_2 then
      goto lbl_25
    end
  end
  L3_2 = L5_1.lack
  ::lbl_25::
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cost_num
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
end
L13_1._setup_cocoon_stamina_cost = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.get_stamina_config
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_cost_item
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L13_1._setup_stamina = L14_1
function L14_1(A0_2)
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
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_multipledrop
  L2_2(L3_2)
  L2_2 = L1_2.LastBattleMultipleDropUsedDataList
  L3_2 = L2_2
  L2_2 = L2_2.Clear
  L2_2(L3_2)
end
L13_1._setup_multiple_drop_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.BattleModule
  L1_2 = L1_2.LastBattleTime
  L2_2 = 0 < L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_time
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetRemainTimeInSecondsByFormat
    L5_2 = L1_2
    L6_2 = 2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.LayoutRebuilder
    L3_2 = L3_2.ForceRebuildLayoutImmediate
    L4_2 = A0_2._binder
    L4_2 = L4_2.remain_timer
    L4_2 = L4_2.transform
    L3_2(L4_2)
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.UI
    L3_2 = L3_2.LayoutRebuilder
    L3_2 = L3_2.ForceRebuildLayoutImmediate
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_time
    L3_2(L4_2)
  end
end
L13_1._setup_time_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L13_1._on_exit = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.is_in_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L7_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._battle_game_phase
    if L0_3 ~= nil then
      L0_3 = A0_2._battle_game_phase
      L0_3 = L0_3.FromPhaseType
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GamePhaseType
      L1_3 = L1_3.Adventure
      if L0_3 == L1_3 then
        L0_3 = G
        L0_3 = L0_3.NotifyManager
        L0_3 = L0_3.notify
        L1_3 = G
        L1_3 = L1_3.CS
        L1_3 = L1_3.NotifyType
        L1_3 = L1_3.BattleToMazeTransit
        L0_3(L1_3)
    end
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_animation
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L7_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L2_2 = A0_2._binder
  L2_2 = L2_2.page_animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L7_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L1_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L13_1._on_transit_exit = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._check_ban
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._check_restart_valid
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_confirm
    L0_3(L1_3)
  end
  L4_2 = L12_1
  L1_2(L2_2, L3_2, L4_2)
end
L13_1._on_battle_restart = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_transit_exit
    L0_3(L1_3)
  end
  L4_2 = L12_1
  L1_2(L2_2, L3_2, L4_2)
end
L13_1._on_btn_exit_click = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._farm_data
  L1_2 = L1_2.IsFarmElement
  if L1_2 then
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.CheckFarmBanWithHint
    L3_2 = A0_2._farm_data
    L3_2 = L3_2.FarmElementID
    return L1_2(L2_2, L3_2)
  else
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.CheckFarmBanWithHint
    L3_2 = A0_2._farm_data
    L3_2 = L3_2.CocoonID
    return L1_2(L2_2, L3_2)
  end
end
L13_1._check_ban = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.FarmUtils
  L2_2 = L2_2.get_avatar_dead_confirm_text
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 == 0 then
    L5_2 = A0_2
    L4_2 = A0_2._start_battle
    L4_2(L5_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ConfirmDialogUtil
    L4_2 = L4_2.ShowConfirmDialog
    function L5_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._on_start_battle
        L1_3(L2_3)
      end
    end
    L4_2 = L4_2(L5_2)
    L6_2 = L4_2
    L5_2 = L4_2.GetComponentContent
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = DialogBtnMode
    L5_2 = L5_2.eOkCancel
    L4_2.Mode = L5_2
  end
end
L13_1._check_avatar_dead = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.MENNMFMDBOH
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_edit_team
  if L1_2 then
    L1_2 = new
    L2_2 = "Ui.FarmEnemy.FarmTeamEditPage"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.init
    L4_2 = A0_2._on_start_battle
    L5_2 = A0_2
    L6_2 = nil
    L7_2 = true
    L8_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = L1_2
    L2_2 = L1_2.set_should_check_avatar_dead
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.async_show
    L2_2(L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._check_avatar_dead
    L1_2(L2_2)
  end
end
L13_1._on_confirm = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_edit_team
  L1_2 = not L1_2
  A0_2._is_edit_team = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_edit_team
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_edit_team
  L1_2(L2_2, L3_2)
end
L13_1._on_team_edit = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._should_start_battle
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._start_battle
    L1_2(L2_2)
  end
  L1_2 = A0_2._need_refresh
  if L1_2 then
    A0_2._need_refresh = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_list
    L2_2 = L1_2
    L1_2 = L1_2.RefreshAllShownItem
    L1_2(L2_2)
  end
end
L13_1._on_return_to_top = L14_1
function L14_1(A0_2)
  local L1_2
  A0_2._should_start_battle = true
end
L13_1._on_start_battle = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cocoon_type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.CocoonType
  L2_2 = L2_2.TYPE_NORMAL
  if L1_2 == L2_2 then
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.IsFarmOpen
    L3_2 = A0_2._farm_data
    L3_2 = L3_2.CocoonID
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.ConfirmDialogUtil
      L1_2 = L1_2.ShowConfirmDialog
      L1_2 = L1_2()
      L3_2 = L1_2
      L2_2 = L1_2.GetComponentContent
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L10_1
      L2_2(L3_2, L4_2)
      L2_2 = false
      return L2_2
    end
  end
  L1_2 = L2_1.PlayerData
  L1_2 = L1_2.WeekCocoonCount
  L2_2 = A0_2._week_limit_count
  L1_2 = L1_2 >= L2_2
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ConfirmDialogUtil
    L2_2 = L2_2.ShowConfirmDialog
    function L3_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._on_confirm
        L1_3(L2_3)
      else
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._on_transit_exit
        L1_3(L2_3)
      end
    end
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.GetComponentContent
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L9_1
    L3_2(L4_2, L5_2)
    L3_2 = DialogBtnMode
    L3_2 = L3_2.eOkCancel
    L2_2.Mode = L3_2
    function L3_2()
      local L0_3, L1_3
    end
    L2_2.BgDispatch = L3_2
    L3_2 = false
    return L3_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._cost_stamina
  if L2_2 < L3_2 and not L1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Common.PhysicalExchangeDialog"
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L13_1._check_restart_valid = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._should_start_battle = false
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ReEnterFarm
  L3_2 = A0_2._farm_data
  L1_2(L2_2, L3_2)
end
L13_1._start_battle = L14_1
function L14_1(A0_2, A1_2, A2_2)
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
L13_1._on_reward_changed = L14_1
function L14_1(A0_2, A1_2, A2_2)
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
  L5_2 = A1_2
  L4_2 = A1_2.set_name_display
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_highlight_display
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_trigger_click_on_navigation
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.set_multiple_drop_mark_display
  L6_2 = A2_2.ExtraInfo
  L6_2 = L6_2.IsFromMultipleDrop
  L4_2(L5_2, L6_2)
end
L13_1._setup_item = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ConfigID
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.ItemDetailDialog"
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.hide_num
  L4_2(L5_2)
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
      L4_2 = L4_2.GetRelicDataByUID
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
L13_1._on_item_click = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_focused
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    A0_2._need_refresh = true
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L13_1._on_item_changed = L14_1
return L13_1
