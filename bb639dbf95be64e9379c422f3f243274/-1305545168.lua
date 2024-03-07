local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityGuessTheSilhouetteMainRightInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityGuessTheSilhouetteModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = "UIText_AdventureMissionPage_Location"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive_reward
  L4_2 = A0_2._on_btn_take_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._cur_day_silhouette_table = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnMainMissionAccepted
  L4_2 = A0_2._on_main_mission_accepted
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  A0_2._main_mission_data = nil
  L2_2 = A0_2
  L1_2 = A0_2._get_last_complete_day
  L1_2 = L1_2(L2_2)
  A0_2._last_complete_day = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  if L1_2 ~= nil then
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
end
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._current_day = A1_2
  A0_2._cur_day_silhouette_table = A2_2
  A0_2._status = A3_2
  A0_2._is_start_silhouette_data = nil
  L5_2 = A0_2
  L4_2 = A0_2._setup_state
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_detail
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_reward_info
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_reddot
  L4_2(L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_start_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityGuessTheSilhouetteDataStatus
  L4_2 = L4_2.IsStart
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityGuessTheSilhouetteDataStatus
  L4_2 = L4_2.NotStart
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityGuessTheSilhouetteDataStatus
  L4_2 = L4_2.Completed
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityGuessTheSilhouetteDataStatus
  L2_2 = L2_2.Completed
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsRewardTaken
    L3_2 = A0_2._current_day
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mark_and_text_finish_state
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_receive_reward
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityGuessTheSilhouetteDataStatus
  L2_2 = L2_2.IsStart
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_is_start_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._get_target_location_textID
    L1_2, L2_2 = L1_2(L2_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_start_detail
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L3_1
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L2_2
    L7_2, L8_2 = L7_2(L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L1_2 = A0_2._status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ActivityGuessTheSilhouetteDataStatus
    L2_2 = L2_2.NotStart
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.remain_timer
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._cur_day_silhouette_table
      L3_2 = L3_2[1]
      L4_2 = L3_2
      L3_2 = L3_2.IsInSchedule
      L3_2 = L3_2(L4_2)
      L3_2 = not L3_2
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_lock_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._cur_day_silhouette_table
      L1_2 = L1_2[1]
      L2_2 = L1_2
      L1_2 = L1_2.IsInSchedule
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.remain_timer
        L2_2 = L1_2
        L1_2 = L1_2.SetTargetTimeByTimeStamp
        L3_2 = A0_2._cur_day_silhouette_table
        L3_2 = L3_2[1]
        L3_2 = L3_2.BeginTimeStamp
        L4_2 = A0_2._expire_call_back
        L5_2 = A0_2
        L6_2 = 2
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.txt_lock_hint
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_ActivityFight_Locked"
        L1_2(L2_2, L3_2)
      else
        L1_2 = nil
        L2_2 = L1_1.CurrentInProgressGuessId
        if L2_2 ~= 0 then
          L2_2 = L1_1
          L3_2 = L2_2
          L2_2 = L2_2.GetActivityGuessTheSilhouetteData
          L4_2 = L1_1.CurrentInProgressGuessId
          L2_2 = L2_2(L3_2, L4_2)
          L3_2 = A0_2._cur_day_silhouette_table
          L3_2 = L3_2[1]
          L3_2 = L3_2.Day
          L4_2 = L2_2.Day
          L3_2 = L3_2 - L4_2
          L1_2 = L3_2 == 1
        else
          L2_2 = A0_2._cur_day_silhouette_table
          L2_2 = L2_2[1]
          L2_2 = L2_2.Day
          L3_2 = A0_2._last_complete_day
          L2_2 = L2_2 - L3_2
          L1_2 = L2_2 == 1
        end
        if L1_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.txt_lock_hint
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_ActivityGuessSilhouette_UnlockByProgress"
          L2_2(L3_2, L4_2)
        else
          L2_2 = A0_2._binder
          L2_2 = L2_2.txt_lock_hint
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_ActivityGuessSilhouette_Unlock"
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._setup_detail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._cur_day_silhouette_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._cur_day_silhouette_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ActivityGuessTheSilhouetteDataStatus
    L6_2 = L6_2.IsStart
    if L5_2 == L6_2 then
      L5_2 = A0_2._cur_day_silhouette_table
      L5_2 = L5_2[L4_2]
      A0_2._is_start_silhouette_data = L5_2
      L6_2 = A0_2
      L5_2 = A0_2._generate_mission_data
      L5_2(L6_2)
      break
    end
  end
end
L0_1._get_is_start_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MissionUtils
  L1_2 = L1_2.get_location_name_by_submission_id
  L2_2 = A0_2._is_start_silhouette_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.FinishSubMissionID
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L0_1._get_target_location_textID = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetAllActivityGuessTheSilhouetteData
  L1_2(L2_2)
end
L0_1._expire_call_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.ActivityGuessTheSilhouetteDayIndexDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  while true do
    L4_2 = L1_2
    L3_2 = L1_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L4_2 = A0_2
    L3_2 = A0_2._get_day_status
    L5_2 = L1_2.Current
    L5_2 = L5_2.Value
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.ActivityGuessTheSilhouetteDataStatus
    L4_2 = L4_2.Completed
    if L3_2 == L4_2 then
      L4_2 = L1_2.Current
      L4_2 = L4_2.Value
      L4_2 = L4_2[0]
      L2_2 = L4_2.Day
    else
      break
    end
  end
  return L2_2
end
L0_1._get_last_complete_day = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2[0]
  L2_2 = L2_2.Status
  L3_2 = 1
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.Status
    if L7_2 ~= L2_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.ActivityGuessTheSilhouetteDataStatus
      L7_2 = L7_2.IsStart
      return L7_2
    end
  end
  return L2_2
end
L0_1._get_day_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._cur_day_silhouette_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._cur_day_silhouette_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Row
    L6_2 = L6_2.QuestID
    if L6_2 ~= 0 then
      L6_2 = A0_2._cur_day_silhouette_table
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.Row
      L1_2 = L6_2.QuestID
      break
    end
  end
  if L1_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.QuestDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTableSorted
  L4_2 = L2_2.RewardID
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  A0_2._reward_item_table = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_reward_list
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._reward_item_table
  L5_2 = #L5_2
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_reward_list
    L4_2 = L3_2
    L3_2 = L3_2.SetListItemCount
    L5_2 = A0_2._reward_item_table
    L5_2 = #L5_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_reward_list
    L4_2 = L3_2
    L3_2 = L3_2.RefreshAllShownItem
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_config_ids
  L3_2(L4_2)
end
L0_1._setup_reward_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_item_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionDataWithPromise
  L3_2 = A0_2._is_start_silhouette_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.MissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3
    A0_2._main_mission_data = A0_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._generate_mission_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
  end
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._status
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.ActivityGuessTheSilhouetteDataStatus
  L9_2 = L9_2.Completed
  L8_2 = L1_1
  L9_2 = L8_2
  L8_2 = L8_2.IsRewardTaken
  L10_2 = A0_2._current_day
  L8_2 = L8_2 == L9_2 and L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_start_silhouette_data
  if L1_2 ~= nil then
    L1_2 = A0_2._main_mission_data
    if L1_2 ~= nil then
      L1_2 = A0_2._main_mission_data
      L1_2 = L1_2.IsFinish
      if not L1_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L1_2 = A0_2._main_mission_data
  L1_2 = L1_2.IsStart
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_goto_event
    L1_2(L2_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.FMFLDFEJIIP
    L3_2 = A0_2._main_mission_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2._cur_day_silhouette_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._cur_day_silhouette_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Status
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.ActivityGuessTheSilhouetteDataStatus
    L7_2 = L7_2.IsStart
    if L6_2 == L7_2 then
      L1_2 = L5_2
      break
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "DAY"
  L5_2 = A0_2._current_day
  L4_2 = L4_2 .. L5_2
  L5_2 = "GotoPhoto_"
  L6_2 = L1_2
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_go_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._main_mission_data
  L2_2 = L2_2.ID
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_goto_event
  L2_2(L3_2)
end
L0_1._on_main_mission_accepted = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTrackingMission
  L3_2 = A0_2._main_mission_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.MissionUtils
  L1_2 = L1_2.open_map_with_locate_target_main_mission
  L2_2 = A0_2._main_mission_data
  L1_2(L2_2)
end
L0_1._on_goto_event = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityGuessTheSilhouetteDataStatus
  L2_2 = L2_2.Completed
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TakeRewardByDay
  L3_2 = A0_2._current_day
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_take_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_info
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
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GuessTheSilhouetteOnTakeReward
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "ActivityGuessTheSilhouetteDay"
    L4_2 = A0_2._current_day
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_receive_reward_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_reddot = L4_1
return L0_1
