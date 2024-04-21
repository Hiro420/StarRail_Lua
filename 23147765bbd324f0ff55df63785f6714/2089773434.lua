local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.Income.HeliobusIncomeRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.Income.HeliobusIncomeRewardListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonGhostSpineBgPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.Income.HeliobusIncomePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusIncomePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_Income_ItemID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = {}
L3_1.Enable = "#61F0F3FF"
L3_1.Disable = "#EB4D3DFF"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusIncomePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_upgrade
  L4_2 = A0_2._on_click_upgrade
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_income
  L4_2 = A0_2._on_click_income
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusUpgradeIncomeLevel
  L4_2 = A0_2._on_sync_income_level
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusIncomeRewardListPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusIncomeRewardListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_list_panel = L1_2
  L1_2 = A0_2._reward_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_list_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonGhostSpineBgPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonGhostSpineBgPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._ghost_spine_panel = L1_2
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_spine_skeleton
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.IncomeLevel
  A0_2._cur_income_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_max_income_level
  L1_2 = L1_2(L2_2)
  A0_2._max_income_level = L1_2
  L1_2 = L1_1.Incomes
  A0_2._incomes = L1_2
  A0_2._forbid_fadein = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  A0_2._income_item_row = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L1_1.MaxIncomeLevel
  return L1_2
end
L0_1._get_max_income_level = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_income_icon
  L4_2 = A0_2._income_item_row
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_spine
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_income_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
end
L0_1._on_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_income_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_income_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._last_income_level
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_income_level_prev
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._last_income_level
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_income
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._incomes
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_income
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L3_1.Enable
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_slash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_income_level
  L4_2 = A0_2._max_income_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_need_income
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_income_level
  L4_2 = A0_2._max_income_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_upgrade
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_income_level
  L4_2 = A0_2._max_income_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_income_level
  L4_2 = A0_2._max_income_level
  L3_2 = L3_2 >= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_income_level
  L4_2 = A0_2._max_income_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_num_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_income_level
  L4_2 = A0_2._max_income_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_income_level
  L2_2 = A0_2._max_income_level
  if L1_2 < L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.HeliobusRewardExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._cur_income_level
    L2_2 = L2_2 + 1
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.IncomeTarget
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_need_income
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.IncomeTarget
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._incomes
    L3_2 = L2_2 <= L3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_cur_income
    if L3_2 then
      L5_2 = G
      L5_2 = L5_2.UIColorUtils
      L5_2 = L5_2.GetColor
      L6_2 = L3_1.Enable
      L5_2 = L5_2(L6_2)
      if L5_2 then
        goto lbl_126
      end
    end
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_1.Disable
    L5_2 = L5_2(L6_2)
    ::lbl_126::
    L4_2.color = L5_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_upgrade
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetInteractable
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_income_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._forbid_fadein
  L1_2(L2_2, L3_2)
end
L0_1._setup_reward_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ghost_spine_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._play_spine = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.Incomes
  A0_2._incomes = L1_2
  L1_2 = A0_2._cur_income_level
  A0_2._last_income_level = L1_2
  L1_2 = L1_1.IncomeLevel
  A0_2._cur_income_level = L1_2
  A0_2._forbid_fadein = true
  L1_2 = {}
  L2_2 = A0_2._last_income_level
  L2_2 = L2_2 + 1
  L3_2 = A0_2._cur_income_level
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._reward_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_play_turn_receive_anim_level_table
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_level_up
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "HeliobusLevelUp"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_sync_income_level = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._forbid_fadein = true
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_list
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L0_1._on_quest_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.NKANCIJJNOA
  L1_2(L2_2)
end
L0_1._on_click_upgrade = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1._on_click_income = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HeliobusIncomeUpgradeRedDot"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_upgrade_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
