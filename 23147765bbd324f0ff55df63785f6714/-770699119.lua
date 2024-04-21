local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRewardTabPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRewardInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeRewardDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusChallengeRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  A0_2._reward_rows = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusChallengeRewardExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  A0_2._recommend_start_index = nil
  L3_2 = 0
  while true do
    L5_2 = L2_2
    L4_2 = L2_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L3_2 = L3_2 + 1
    L4_2 = L2_2.Current
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._reward_rows
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = L4_2.ChallengePhaseID
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.HeliobusChallengePhaseExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.ChallengeGroupList
      L7_2 = L7_2[0]
      if L7_2 == A1_2 then
        A0_2._recommend_start_index = L3_2
      end
    end
  end
  L4_2 = A0_2._recommend_start_index
  if L4_2 == nil then
    A0_2._recommend_start_index = 5
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._reward_rows = nil
  A0_2._cur_select_tab_panel = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._reward_rows
  L3_2 = #L3_2
  L4_2 = A0_2._on_tab_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_rows
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2._get_first_quest_object
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = {}
      L5_2 = "ActionGroup_Return"
      L4_2[1] = L5_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_tab_panel
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.set_selected
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L1_1.HeliobusRedDotFilter
  L2_2 = L2_2.HeliobusChallengeUnclaimedReward
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = #L1_2
  if 0 < L3_2 then
    L3_2 = L1_2[1]
    L2_2 = L3_2 - 1
  else
    L3_2 = A0_2._recommend_start_index
    L2_2 = L3_2 - 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_list
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    return L4_2
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_default_tab_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
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
L0_1._get_first_quest_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusChallengeRewardTabPanel
    L8_2 = G
    L8_2 = L8_2.HeliobusChallengeRewardTabPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_rows
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_on_click_callback
  L7_2 = A0_2._on_tab_panel_click
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_tab_change = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.HeliobusChallengeRewardInfoRow
    L8_2 = G
    L8_2 = L8_2.HeliobusChallengeRewardInfoRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_by_quest
  L7_2 = A0_2._quest_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._is_unlock_quests
  L9_2 = true
  L10_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_reward_change = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2._cur_select_tab_panel
  if L5_2 == A4_2 then
    return
  end
  L5_2 = A0_2._cur_select_tab_panel
  if L5_2 ~= nil then
    L5_2 = A0_2._cur_select_tab_panel
    L6_2 = L5_2
    L5_2 = L5_2.set_selected
    L7_2 = false
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
  end
  A0_2._cur_select_tab_panel = A4_2
  A0_2._quest_data = A1_2
  A0_2._is_unlock_quests = A2_2
  L5_2 = A0_2._is_unlock_quests
  if L5_2 then
    L5_2 = G
    L5_2 = L5_2.QuestUtils
    L5_2 = L5_2.sort_quest_datas
    L6_2 = A0_2._quest_data
    L5_2(L6_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_lock_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._is_unlock_quests
  L7_2 = not L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_lock_tip
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_list
  L6_2 = L5_2
  L5_2 = L5_2.SafeInitListView
  L7_2 = A0_2._quest_data
  L7_2 = #L7_2
  L8_2 = A0_2._on_reward_change
  L9_2 = nil
  L10_2 = A0_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_list
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = A0_2._quest_data
  L7_2 = #L7_2
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.CoroutineUtils
  L5_2 = L5_2.InvokeNextFrame
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.reward_list
    L1_3 = L0_3
    L0_3 = L0_3.RefreshAllShownItem
    L0_3(L1_3)
  end
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_list
  L6_2 = L5_2
  L5_2 = L5_2.PlayFadeIn
  L5_2(L6_2)
end
L0_1._on_tab_panel_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.sort_quest_datas
  L3_2 = A0_2._quest_data
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._quest_data
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_list
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.RewardDialog"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_quest_get_reward = L2_1
return L0_1
