local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Reward.PunkLordRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Reward.PunkLordRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Reward.PunkLordRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "PunkLord_OverBonus_Point"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "PunkLord_OverBonus_Reward_Limit"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueCommonExcelTable
L3_1 = L3_1.GetData
L4_1 = "PunkLord_OverBonus_Reward"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.IntValue
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueCommonExcelTable
L4_1 = L4_1.GetData
L5_1 = "PunkLord_Prize_Item"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L4_1 = L4_1.IntValue
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueCommonExcelTable
L5_1 = L5_1.GetData
L6_1 = "PunkLord_PrizeItem_Score"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "PunkLordRewardPage"
L8_1 = G
L8_1 = L8_1.UIController
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PunkLordRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_reward_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_over_bonus_reward_list
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
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
L6_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.max
  L3_2 = A0_2
  L2_2 = A0_2._get_first_reward_index_not_got
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_reward
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L6_1._init_ui_navigation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._exit_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._exit_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PunkLordRewardGot
  L4_2 = A0_2._on_punklord_reward_got
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PunkLordDataRefresh
  L4_2 = A0_2._on_punklord_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.PunkLordPoint
  A0_2._score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_top_layout
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L6_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._punk_lord_reward_list = nil
  A0_2._fixed_bonus_reward_list = nil
  A0_2._random_bonus_reward_list = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityPunkLordRewardExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._punk_lord_reward_list = L2_2
  L2_2 = A0_2._punk_lord_reward_list
  L3_2 = A0_2._punk_lord_reward_list
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.RewardPoint
  A0_2._finite_max_score = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityPunkLordRewardRow
  L2_2 = L2_2()
  L2_2.RewardLevelName = "UIText_ActivityPunkLord_OverBonus_Reward_Label"
  L3_2 = L1_1
  L2_2.RewardPoint = L3_2
  L3_2 = L3_1
  L2_2.RewardID = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._punk_lord_reward_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._over_bonus_reward_data = L2_2
end
L6_1._init_reward_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  A0_2._fixed_bonus_reward_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "PunkLord_OverBonus_DropDisplayItem"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._random_bonus_reward_list = L2_2
end
L6_1._init_over_bonus_reward_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._punk_lord_reward_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._get_priority
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3._get_priority
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 == L3_3 then
      L4_3 = A0_3.RewardLevel
      L5_3 = A1_3.RewardLevel
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    L4_3 = L2_3 > L3_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L6_1._sort_reward_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_reward_got
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = -1
    return L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._is_over_bonus_reward
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = 0
    return L2_2
  end
  L2_2 = A0_2._score
  L3_2 = A1_2.RewardPoint
  if L2_2 >= L3_2 then
    L2_2 = 2
    return L2_2
  end
  L2_2 = 1
  return L2_2
end
L6_1._get_priority = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.AutoSetPosition
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._punk_lord_reward_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = math
  L1_2 = L1_2.max
  L3_2 = A0_2
  L2_2 = A0_2._get_first_reward_index_not_got
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_reward
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.scroll_rect
    L1_3 = L0_3
    L0_3 = L0_3.StopMovement
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L6_1._setup_reward_list = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._punk_lord_reward_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._is_reward_got
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      return L4_2
    end
  end
  L1_2 = A0_2._punk_lord_reward_list
  L1_2 = #L1_2
  return L1_2
end
L6_1._get_first_reward_index_not_got = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PunkLordRewardItemPanel
    L8_2 = G
    L8_2 = L8_2.PunkLordRewardItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._punk_lord_reward_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._is_over_bonus_reward
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._setup_over_bonus_reward_panel
    L8_2 = L4_2
    L9_2 = L5_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L7_2 = A0_2
    L6_2 = A0_2._is_reward_got
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 0
    if 0 < A2_2 then
      L8_2 = A0_2._punk_lord_reward_list
      L8_2 = L8_2[A2_2]
      L8_2 = L8_2.RewardPoint
      L9_2 = L5_2.RewardPoint
      L8_2 = L8_2 + L9_2
      L7_2 = L8_2 / 2
    end
    L8_2 = L5_2.RewardPoint
    L9_2 = A2_2 + 2
    L10_2 = A0_2._punk_lord_reward_list
    L10_2 = #L10_2
    if L9_2 < L10_2 then
      L9_2 = L5_2.RewardPoint
      L10_2 = A0_2._punk_lord_reward_list
      L11_2 = A2_2 + 2
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.RewardPoint
      L9_2 = L9_2 + L10_2
      L8_2 = L9_2 / 2
    end
    L10_2 = L4_2
    L9_2 = L4_2.setup_view
    L11_2 = L5_2
    L12_2 = A0_2._score
    L13_2 = L6_2
    L14_2 = L7_2
    L15_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  return L3_2
end
L6_1._on_reward_change = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A0_2
  L3_2 = A0_2._is_reward_got
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.setup_view_for_over_bonus
    L5_2 = A2_2
    L6_2 = 0
    L7_2 = true
    L8_2 = A0_2._fixed_bonus_reward_list
    L9_2 = A0_2._random_bonus_reward_list
    L10_2 = A0_2._finite_max_score
    L11_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    return
  end
  L3_2 = A0_2._score
  L4_2 = A0_2._finite_max_score
  L3_2 = L3_2 - L4_2
  L4_2 = L0_1.OverBonusRewardTakenTime
  L5_2 = L1_1
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 - L4_2
  if L3_2 < 0 then
    L3_2 = 0
  end
  L5_2 = A1_2
  L4_2 = A1_2.setup_view_for_over_bonus
  L6_2 = A2_2
  L7_2 = L3_2
  L8_2 = false
  L9_2 = A0_2._fixed_bonus_reward_list
  L10_2 = A0_2._random_bonus_reward_list
  L11_2 = A0_2._finite_max_score
  L12_2 = A0_2._score
  L13_2 = A0_2._finite_max_score
  L12_2 = L12_2 >= L13_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L6_1._setup_over_bonus_reward_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._over_bonus_reward_data
  L2_2 = A1_2 == L2_2
  return L2_2
end
L6_1._is_over_bonus_reward = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._is_over_bonus_reward
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L0_1.OverBonusRewardTakenTime
    L3_2 = L2_1
    L2_2 = L2_2 >= L3_2
    return L2_2
  end
  L2_2 = L0_1.PunkLordRewardTakenList
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A1_2.RewardLevel
  return L2_2(L3_2, L4_2)
end
L6_1._is_reward_got = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._final_reward
  L2_2 = A1_2 == L2_2
  return L2_2
end
L6_1._is_final_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L6_1._exit_page = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.need_to_refresh
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
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RefreshPunkLordPoint
  L2_2(L3_2)
end
L6_1._on_punklord_reward_got = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.PunkLordPoint
  A0_2._score = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
end
L6_1._on_punklord_data_refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._score
  L1_2(L2_2, L3_2)
end
L6_1._setup_score = L7_1
return L6_1
