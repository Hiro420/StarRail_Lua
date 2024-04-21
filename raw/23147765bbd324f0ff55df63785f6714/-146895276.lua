local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Mission.MissionMainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionTaskCoverPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionTaskCoverPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionTaskChapterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionTaskChapterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionTaskCoverSubPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ActivityModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.StoryLineModule
L5_1 = -1
L6_1 = "PS_Sub_Pack_SubMission_ID"
L7_1 = {}
L7_1.main_mission = 0
L7_1.chapter = 1
L7_1.sub_mission = 2
function L8_1(A0_2)
  local L1_2
  A0_2._detail_panel_refresh = true
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._current_data = nil
  A0_2._current_chapter = nil
  A0_2._mission_type = nil
  A0_2._current_type = nil
  A0_2._focus_flag = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_task_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_mission_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_play_go_mission
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_track
  L4_2 = A0_2._btn_track_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_location
  L4_2 = A0_2._btn_location_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SyncMission
  L4_2 = A0_2._on_sync_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = A0_2._on_refresh_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayGOEnd
  L4_2 = A0_2._on_play_go_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  A0_2._mission_change_callback = nil
  A0_2._mission_change_receiver = nil
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_task_list
  L1_2(L2_2)
end
L0_1._on_dispose = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._mission_type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._set_current_data
  L4_2 = nil
  L5_2 = L7_1.main_mission
  L6_2 = nil
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_mission_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._parent_page
  L3_2 = L2_2
  L2_2 = L2_2.setup_mission_type
  L4_2 = A0_2._mission_type
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_task_list
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L0_1.setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L6_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.IntValue
      A0_2.play_go_mission_id = L2_2
    end
  end
end
L0_1._init_play_go_mission = L8_1
function L8_1(A0_2, A1_2)
  A0_2._parent_page = A1_2
end
L0_1.set_parent_page = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A1_2 then
    A1_2 = false
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mission_datas
  L4_2 = #L4_2
  L4_2 = L4_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_task_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mission_datas
  L4_2 = #L4_2
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_task_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mission_datas
  L4_2 = #L4_2
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.chapter_detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._mission_datas
  L4_2 = #L4_2
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mission_datas
  L2_2 = #L2_2
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_task_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._mission_datas
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._focus_flag
  if not L2_2 and not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_current_select_data
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.move_panel_to_focus_mission
  L2_2(L3_2)
  L2_2 = A0_2._focus_flag
  if not L2_2 and not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_current_select_data
    L2_2(L3_2)
  else
    A0_2._focus_flag = false
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_mission_list
  L2_2(L3_2)
end
L0_1._refresh = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._mission_type
  if L2_2 == nil then
    return
  end
  if A1_2 == true then
    L2_2 = L1_1.TrackingMission
    L3_2 = A0_2._tracking_data
    if L3_2 == L2_2 then
      return
    end
    L3_2 = A0_2._tracking_data
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.set_track_by_mission_data
      L5_2 = A0_2._tracking_data
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
    end
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.set_track_by_mission_data
      L5_2 = L2_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
    A0_2._tracking_data = L2_2
    L4_2 = A0_2
    L3_2 = A0_2._refresh_mission_panel
    L3_2(L4_2)
    return
  end
end
L0_1._on_refresh_mission = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._mission_type
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_mission_data
  L1_2(L2_2)
  L1_2 = false
  L2_2 = A0_2._current_data
  if L2_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A0_2._mission_datas
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.data
      L8_2 = A0_2._current_data
      if L7_2 == L8_2 then
        L1_2 = true
        break
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.try_refresh
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_sync_mission = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._get_mission_index_by_missionID
  L5_2 = A1_2.ID
  L6_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if 0 < L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_task_list
    L5_2 = L4_2
    L4_2 = L4_2.GetShownItemByItemIndex
    L6_2 = L3_2 - 1
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.UserObjectData
      if L5_2 ~= nil then
        L5_2 = L4_2.UserObjectData
        L6_2 = L5_2
        L5_2 = L5_2.setup_tracking
        L7_2 = A2_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L0_1.set_track_by_mission_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_focus_data_index
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.get_title_object_by_index
  L4_2 = L1_2 - 1
  return L2_2(L3_2, L4_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_task_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
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
L0_1.get_title_object_by_index = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_item_dialog
  L1_2(L2_2)
end
L0_1._on_left_stick_button_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_reward_count
  return L1_2(L2_2)
end
L0_1.get_reward_count = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_reward_count
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2._current_type
  L2_2 = L7_1.chapter
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsMainMissionRewardClosed
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = 0 < L1_2 and L1_2
  return L1_2
end
L0_1.is_reward_panel_showed = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._detail_panel_refresh
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._current_type
  L2_2 = L7_1.chapter
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_chapter_detail_panel
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_mission_detail_panel
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2.current_type
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2._current_type
    L1_3 = L7_1.chapter
    if L0_3 == L1_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 1
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 33
      L3_3 = A0_2._binder
      L3_3 = L3_3.scroll_detail
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2(L2_2)
end
L0_1._refresh_mission_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_task_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_chapter_detail_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_task_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_occupy_tip
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.check_mission_conflict
  L4_2 = A0_2._current_data
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._current_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_track
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._check_play_go_mission
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_lock_status
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_track_text
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_location
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._current_data
  L6_2 = L1_1.TrackingMission
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_mission_detail_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsPSPlatform
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = false
  L2_2 = A0_2.play_go_mission_id
  if L2_2 ~= nil then
    L2_2 = A0_2._current_data
    L2_2 = L2_2.ID
    L3_2 = A0_2.play_go_mission_id
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_PlayGoManager
      L2_2 = L2_2.IsFinishDownload
      if not L2_2 then
        L1_2 = true
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_disable
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_PS_PlayGo_Tips_MissionBlock"
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_track
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._check_play_go_mission = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mission_panel
  L1_2(L2_2)
end
L0_1._on_play_go_end = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_data
  L1_2 = L1_2.IsTakenAndNotstarted
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_track
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._current_data
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.CheckMissionBeginConditionWithPromise
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2
    L3_2 = L3_2.ThenLuaActionOneParam
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2._current_data
      L2_3 = L2_2
      if L1_3 == L2_3 then
        L1_3 = G
        L1_3 = L1_3.MissionUtils
        L1_3 = L1_3.set_begin_text_by_mission_condition
        L2_3 = A0_2._binder
        L2_3 = L2_3.text_disable
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
    end
    L3_2(L4_2, L5_2)
  end
  return L1_2
end
L0_1._refresh_lock_status = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_data
  L2_2 = L1_1.TrackingMission
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.TextExtensions
    L1_2 = L1_2.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tracking_button
    L3_2 = "UIText_AdventureMissionPage_Tracked"
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.TextExtensions
    L1_2 = L1_2.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tracking_button
    L3_2 = "UIText_AdventureMissionPage_StartTrack"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_btn_track_text = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_task_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_mission_index_by_missionID
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._current_type
  L4_2 = L4_2 == 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_task_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._current_data
    if L3_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2._on_mission_button
      L5_2 = A0_2._current_data
      L6_2 = L2_2.UserObjectData
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._refresh_mission_list = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_top_page_or_dialog
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    A0_2.return_refresh_tag = true
    A0_2.return_refresh_param = A1_2
  end
end
L0_1.try_refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.return_refresh_tag
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_mission_list
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L3_2 = A0_2.return_refresh_param
    L1_2(L2_2, L3_2)
    A0_2.return_refresh_tag = false
  end
end
L0_1._on_return_to_top = L8_1
L8_1 = {}
L8_1.default = 0
L8_1.Mission = 10
L8_1.Group = 20
L8_1.PamMission = 30
L8_1.TimeMission = 40
L8_1.TimeGroup = 50
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.ID
  L3_2 = A1_2.Row
  L3_2 = L3_2.ChapterID
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetScheduleMissionByMainMissionID
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionScheduleExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L4_2 ~= nil then
    L6_2 = L8_1.PamMission
    L7_2 = L4_2.EndTimeDate
    return L6_2, L7_2
  end
  if L5_2 ~= nil then
    L6_2 = L5_2.ActivityModuleID
    if L6_2 ~= 0 then
      L6_2 = L5_2.ActivityModuleID
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.GetScheduleDataByActivityModuleID
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L9_2 = L7_2
        L8_2 = L7_2.IsInSchedule
        L8_2 = L8_2(L9_2)
        if L8_2 then
          L8_2 = L7_2.ActivityID
          if L8_2 ~= 0 then
            L9_2 = L3_1
            L10_2 = L9_2
            L9_2 = L9_2.GetScheduleDataByActivityPanelID
            L11_2 = L8_2
            L9_2 = L9_2(L10_2, L11_2)
            if L9_2 ~= nil then
              L11_2 = L9_2
              L10_2 = L9_2.IsInSchedule
              L10_2 = L10_2(L11_2)
              if L10_2 then
                if L3_2 ~= 0 then
                  L10_2 = L8_1.TimeGroup
                  L11_2 = L7_2.EndTimeDate
                  return L10_2, L11_2
                else
                  L10_2 = L8_1.TimeMission
                  L11_2 = L7_2.EndTimeDate
                  return L10_2, L11_2
                end
              end
            end
          end
        end
      end
    end
  end
  if L3_2 == 0 then
    L6_2 = L8_1.Mission
    L7_2 = nil
    return L6_2, L7_2
  else
    L6_2 = L8_1.Group
    L7_2 = nil
    return L6_2, L7_2
  end
  L6_2 = L8_1.default
  L7_2 = nil
  return L6_2, L7_2
end
L0_1.get_mission_weight_and_endtime = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A0_2._mission_datas
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.data
    L9_2 = L9_2.ID
    L10_2 = L8_2.data
    L10_2 = L10_2.ChapterID
    L12_2 = A0_2
    L11_2 = A0_2.get_mission_weight_and_endtime
    L13_2 = L8_2.data
    L11_2, L12_2 = L11_2(L12_2, L13_2)
    L13_2 = L1_1
    L14_2 = L13_2
    L13_2 = L13_2.IsRedDotMission
    L15_2 = L9_2
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 then
      L11_2 = L11_2 + 1
    end
    L3_2[L9_2] = L12_2
    L1_2[L9_2] = L11_2
    if L10_2 ~= 0 then
      L13_2 = L2_2[L10_2]
      if L13_2 == nil then
        L2_2[L10_2] = 0
      end
      L13_2 = math
      L13_2 = L13_2.max
      L14_2 = L2_2[L10_2]
      L15_2 = L1_2[L9_2]
      L13_2 = L13_2(L14_2, L15_2)
      L2_2[L10_2] = L13_2
    end
  end
  function L4_2(A0_3)
    local L1_3
    L1_3 = A0_3.data
    L1_3 = L1_3.ChapterID
    if L1_3 ~= 0 then
      L1_3 = A0_3.data
      L1_3 = L1_3.ChapterID
      L1_3 = L2_2[L1_3]
      return L1_3
    else
      L1_3 = A0_3.data
      L1_3 = L1_3.ID
      L1_3 = L1_2[L1_3]
      return L1_3
    end
  end
  getChapterSortData = L4_2
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._mission_datas
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.data
    L2_3 = L2_3.MissionTypePriority
    L3_3 = A1_3.data
    L3_3 = L3_3.MissionTypePriority
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.data
      L2_3 = L2_3.MissionTypePriority
      L3_3 = A1_3.data
      L3_3 = L3_3.MissionTypePriority
      L2_3 = L2_3 < L3_3
      return L2_3
    else
      L2_3 = getChapterSortData
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L3_3 = getChapterSortData
      L4_3 = A1_3
      L3_3 = L3_3(L4_3)
      if L2_3 ~= L3_3 then
        L2_3 = getChapterSortData
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        L3_3 = getChapterSortData
        L4_3 = A1_3
        L3_3 = L3_3(L4_3)
        L2_3 = L2_3 > L3_3
        return L2_3
      else
        L2_3 = A0_3.data
        L2_3 = L2_3.ChapterDisplayPriority
        L3_3 = A1_3.data
        L3_3 = L3_3.ChapterDisplayPriority
        if L2_3 ~= L3_3 then
          L2_3 = A0_3.data
          L2_3 = L2_3.ChapterDisplayPriority
          L3_3 = A1_3.data
          L3_3 = L3_3.ChapterDisplayPriority
          L2_3 = L2_3 < L3_3
          return L2_3
        else
          L2_3 = A0_3.data
          L2_3 = L2_3.ID
          L2_3 = L1_2[L2_3]
          L3_3 = A1_3.data
          L3_3 = L3_3.ID
          L3_3 = L1_2[L3_3]
          if L2_3 ~= L3_3 then
            L2_3 = A0_3.data
            L2_3 = L2_3.ID
            L2_3 = L1_2[L2_3]
            L3_3 = A1_3.data
            L3_3 = L3_3.ID
            L3_3 = L1_2[L3_3]
            L2_3 = L2_3 > L3_3
            return L2_3
          else
            L2_3 = A0_3.data
            L2_3 = L2_3.Row
            L2_3 = L2_3.DisplayPriority
            L3_3 = A1_3.data
            L3_3 = L3_3.Row
            L3_3 = L3_3.DisplayPriority
            L2_3 = L2_3 < L3_3
            return L2_3
          end
        end
      end
    end
  end
  L4_2(L5_2, L6_2)
end
L0_1.sort_mission_data = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  A0_2._mission_datas = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.Raid
  L2_2 = L1_2 == L2_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = 0
  if L2_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.RaidModule
    L4_2 = L6_2.CurrentTreasureChallengeSnapShot
    if L4_2 ~= nil then
      L6_2 = L4_2.Row
      L3_2 = L6_2.MainMissionIDList
      L6_2 = L4_2.Row
      L5_2 = L6_2.MainMissionIDBefore
    end
  end
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = table
    L2_3 = L2_3.insert
    L3_3 = A0_2._mission_datas
    L4_3 = {}
    L4_3.data = A0_3
    L4_3.type = A1_3
    L2_3(L3_3, L4_3)
  end
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = 0
    L3_3 = A0_3.Length
    L3_3 = L3_3 - 1
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      if L6_3 == A1_3 then
        L6_3 = true
        return L6_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L8_2 = pairs
  L9_2 = L1_1.AllMainMissions
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L12_2.IsFinish
    if not L13_2 then
      L13_2 = A0_2._mission_type
      L13_2 = #L13_2
      if L13_2 ~= 0 then
        L13_2 = A0_2._mission_type
        L14_2 = L12_2.Row
        L14_2 = L14_2.Type
        if L13_2 ~= L14_2 then
          goto lbl_80
        end
      end
      L13_2 = L12_2.IsShow
      if L13_2 then
        L13_2 = L12_2.Row
        L13_2 = L13_2.IsInRaid
        if not L13_2 then
          L13_2 = L12_2.ID
          if L5_2 ~= L13_2 then
            L13_2 = L6_2
            L14_2 = L12_2
            L15_2 = L7_1.main_mission
            L13_2(L14_2, L15_2)
        end
        elseif L2_2 then
          L13_2 = L7_2
          L14_2 = L3_2
          L15_2 = L12_2.ID
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            L13_2 = L6_2
            L14_2 = L12_2
            L15_2 = L7_1.main_mission
            L13_2(L14_2, L15_2)
          end
        end
      end
    end
    ::lbl_80::
  end
  L9_2 = A0_2
  L8_2 = A0_2.sort_mission_data
  L8_2(L9_2)
  L8_2 = A0_2._mission_datas
  L8_2 = #L8_2
  L9_2 = 1
  L10_2 = -1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = A0_2._mission_datas
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.data
    L12_2 = L12_2.Row
    L12_2 = L12_2.ChapterID
    if L12_2 ~= 0 then
      L12_2 = A0_2._mission_datas
      L12_2 = L12_2[L11_2]
      L13_2 = L7_1.sub_mission
      L12_2.type = L13_2
      if L11_2 ~= 1 then
        L12_2 = A0_2._mission_datas
        L13_2 = L11_2 - 1
        L12_2 = L12_2[L13_2]
        L12_2 = L12_2.data
        L12_2 = L12_2.Row
        L12_2 = L12_2.ChapterID
        L13_2 = A0_2._mission_datas
        L13_2 = L13_2[L11_2]
        L13_2 = L13_2.data
        L13_2 = L13_2.Row
        L13_2 = L13_2.ChapterID
        if L12_2 == L13_2 then
          goto lbl_127
        end
      end
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2._mission_datas
      L14_2 = L11_2
      L15_2 = {}
      L16_2 = A0_2._mission_datas
      L16_2 = L16_2[L11_2]
      L16_2 = L16_2.data
      L15_2.data = L16_2
      L16_2 = L7_1.chapter
      L15_2.type = L16_2
      L12_2(L13_2, L14_2, L15_2)
    end
    ::lbl_127::
  end
end
L0_1._get_mission_data = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._set_current_data
  L4_2 = A1_2.data
  L5_2 = A1_2.type
  L6_2 = A1_2.data
  L6_2 = L6_2.Row
  L6_2 = L6_2.ChapterID
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._set_current_mission_data = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._current_data = A1_2
  A0_2._current_type = A2_2
  A0_2._current_chapter = A3_2
end
L0_1._set_current_data = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_change_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._mission_change_callback
    L2_2 = A0_2._mission_change_receiver
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L4_2 = A0_2
  L3_2 = A0_2.is_reward_panel_showed
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._invoke_mission_change_callback = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._mission_change_callback = A1_2
  A0_2._mission_change_receiver = A2_2
end
L0_1.register_mission_changed_callback = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._mission_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.data
    L7_2 = L1_1.TrackingMission
    if L6_2 == L7_2 then
      L6_2 = L5_2.type
      L7_2 = L7_1.chapter
      if L6_2 ~= L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2._set_current_mission_data
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
        return
      end
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._mission_datas
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.type
    L7_2 = L7_1.sub_mission
    if L6_2 ~= L7_2 then
      L6_2 = L5_2.type
      L7_2 = L7_1.main_mission
      if L6_2 ~= L7_2 then
        goto lbl_35
      end
    end
    L7_2 = A0_2
    L6_2 = A0_2._set_current_mission_data
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    do return end
    ::lbl_35::
  end
  L1_2 = A0_2._mission_datas
  L1_2 = #L1_2
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._set_current_data
    L3_2 = nil
    L4_2 = nil
    L5_2 = nil
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_current_select_data = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A0_2._mission_datas
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2.type
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L6_2 = L3_2.type
    L7_2 = L7_1.main_mission
    if L6_2 == L7_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.MissionTaskCoverPanel
      L9_2 = G
      L9_2 = L9_2.MissionTaskCoverPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L6_2 = L3_2.type
      L7_2 = L7_1.chapter
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.MissionTaskChapterPanel
        L9_2 = G
        L9_2 = L9_2.MissionTaskChapterPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
      else
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.MissionTaskCoverPanel
        L9_2 = G
        L9_2 = L9_2.MissionTaskCoverSubPanelBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
      end
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._current_data
  L7_2 = L3_2.data
  L6_2 = L6_2 == L7_2
  L7_2 = L3_2.data
  L8_2 = L1_1.TrackingMission
  L7_2 = L7_2 == L8_2
  if L7_2 then
    L8_2 = L3_2.data
    A0_2._tracking_data = L8_2
  end
  if L6_2 then
    L5_1 = A2_2
  end
  L8_2 = L3_2.type
  L9_2 = L7_1.sub_mission
  if L8_2 ~= L9_2 then
    L9_2 = L5_2
    L8_2 = L5_2.show_title
    L11_2 = A0_2
    L10_2 = A0_2.need_show_title
    L12_2 = A2_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  L9_2 = L5_2
  L8_2 = L5_2.setup_view
  L10_2 = A2_2
  L11_2 = L3_2.data
  L12_2 = L3_2.type
  L13_2 = false
  L14_2 = L7_2
  L15_2 = A0_2
  L16_2 = A0_2._on_mission_button
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = L3_2.type
  L9_2 = L7_1.chapter
  if L8_2 == L9_2 then
    L9_2 = L5_2
    L8_2 = L5_2.show_sub_task_selected
    L10_2 = A0_2._current_data
    L10_2 = L10_2 ~= nil
    L8_2(L9_2, L10_2)
  end
  return L4_2
end
L0_1._on_mission_change = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = ipairs
  L4_2 = A0_2._mission_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.type
    L9_2 = L7_1.chapter
    if L8_2 == L9_2 then
      L8_2 = L7_2.data
      L8_2 = L8_2.Row
      L8_2 = L8_2.ChapterID
      if L8_2 == A1_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.scroll_task_list
        L9_2 = L8_2
        L8_2 = L8_2.GetShownItemByItemIndex
        L10_2 = L6_2 - 1
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 ~= nil then
          L9_2 = L8_2.UserObjectData
          L11_2 = L9_2
          L10_2 = L9_2.show_sub_task_selected
          L12_2 = A2_2
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
end
L0_1._show_chapter_sub_task_selected = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == 0 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._mission_datas
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.data
  if L2_2 then
    L2_2 = A0_2._mission_datas
    L2_2 = L2_2[A1_2]
    L2_2 = L2_2.data
    L2_2 = L2_2.MainMissionType
    L3_2 = A0_2._mission_datas
    L4_2 = A1_2 + 1
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.data
    L3_2 = L3_2.MainMissionType
    if L2_2 ~= L3_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.need_show_title = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2.panel_type
  L4_2 = L7_1.sub_mission
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_chapter_sub_task_selected
    L5_2 = A1_2.Row
    L5_2 = L5_2.ChapterID
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._current_chapter
  if L3_2 ~= 0 then
    L3_2 = A1_2.Row
    L3_2 = L3_2.ChapterID
    L4_2 = A0_2._current_chapter
    if L3_2 ~= L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._show_chapter_sub_task_selected
      L5_2 = A0_2._current_chapter
      L6_2 = false
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_current_data
  L5_2 = A1_2
  L6_2 = A2_2.panel_type
  L7_2 = A1_2.Row
  L7_2 = L7_2.ChapterID
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A2_2
  L3_2 = A2_2.setup_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = nil
  L4_2 = L5_1
  if 0 <= L4_2 then
    L4_2 = L5_1
    L5_2 = A2_2.index
    if L4_2 ~= L5_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.scroll_task_list
      L5_2 = L4_2
      L4_2 = L4_2.GetShownItemByItemIndex
      L6_2 = L5_1
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
  end
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    L6_2 = L4_2
    L5_2 = L4_2.setup_selected
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L4_2 = A2_2.index
  L5_1 = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_mission_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._invoke_mission_change_callback
  L4_2(L5_2)
end
L0_1._on_mission_button = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.Raid
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_AdventureMissionPage_TrackDisable_Hint"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._current_data
  if L2_2 ~= nil then
    L2_2 = A0_2._current_data
    L2_2 = L2_2.IsStart
    if L2_2 ~= false then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L2_2 = A0_2._current_data
  L3_2 = L1_1.TrackingMission
  if L2_2 == L3_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.MutuallySetTrackingMission
    L4_2 = 0
    L2_2(L3_2, L4_2)
  else
    function L2_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_mission_tracked
      L0_3(L1_3)
    end
    L3_2 = G
    L3_2 = L3_2.MissionUtils
    L3_2 = L3_2.set_track_mission_with_check
    L4_2 = A0_2._current_data
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._btn_track_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.Raid
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.GotoByType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.RaidMap
    L3_2 = #L3_2
    L2_2(L3_2)
  else
    L2_2 = A0_2.get_first_submission
    L3_2 = A0_2._current_data
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      return
    end
    L4_2 = A0_2
    L3_2 = A0_2._jump_to_mission_target_system
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._btn_location_onclick = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "MissionMainPanel"
  L4_2 = A0_2._current_data
  L4_2 = L4_2.ID
  L5_2 = "-mission"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.get_first_submission
  L2_2 = A0_2._current_data
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.CheckIsFloorConnected
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionInfoConfig
  L5_2 = L1_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  if L2_2 and L3_2 ~= nil then
    L4_2 = L3_2.IsGotoUIPage
    if not L4_2 then
      L4_2 = A0_2._parent
      L4_2 = L4_2.override_exit
      if not L4_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.GlobalVars
        L4_2 = L4_2.s_UIManager
        L5_2 = L4_2
        L4_2 = L4_2.BackToFirstPage
        L4_2(L5_2)
      else
        L4_2 = A0_2._parent
        L4_2.is_exit_by_track = true
        L4_2 = A0_2._parent
        L5_2 = L4_2
        L4_2 = L4_2.exit
        L4_2(L5_2)
      end
  end
  else
    L5_2 = A0_2
    L4_2 = A0_2._jump_to_mission_target_system
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_mission_tracked = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.jump_to_mission_target_system
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIManager
    L4_2 = L3_2
    L3_2 = L3_2.GetPageByName
    L5_2 = G
    L5_2 = L5_2.MapUtil
    L5_2 = L5_2.Map_Main_Page
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      L5_2 = A0_2
      L4_2 = A0_2.set_exit_after_transition
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._jump_to_mission_target_system = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L1_2 = A0_2.SubMissions
    L1_2 = L1_2.Count
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_9::
  L1_2 = 0
  L2_2 = A0_2.SubMissions
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.SubMissions
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = A0_2.SubMissions
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.IsStart
      if L5_2 then
        L5_2 = A0_2.SubMissions
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.IsShowInMap
        if L5_2 then
          L5_2 = A0_2.SubMissions
          L5_2 = L5_2[L4_2]
          return L5_2
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_submission = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._current_data
  if L1_2 ~= nil then
    L1_2 = 1
    L2_2 = A0_2._mission_datas
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._current_data
      L6_2 = A0_2._mission_datas
      L6_2 = L6_2[L4_2]
      L6_2 = L6_2.data
      if L5_2 == L6_2 then
        L5_2 = A0_2._current_type
        L6_2 = A0_2._mission_datas
        L6_2 = L6_2[L4_2]
        L6_2 = L6_2.type
        if L5_2 == L6_2 then
          return L4_2
        end
      end
    end
  end
  L1_2 = L1_1.TrackingMission
  if L1_2 ~= nil then
    L2_2 = 1
    L3_2 = A0_2._mission_datas
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._mission_datas
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.data
      if L1_2 == L6_2 then
        return L5_2
      end
    end
  end
  L2_2 = 1
  return L2_2
end
L0_1._get_focus_data_index = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_focus_data_index
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L3_2 = A0_2._mission_datas
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.data
  L3_2 = L3_2.Row
  L3_2 = L3_2.ChapterID
  if L3_2 ~= 0 then
    while true do
      L3_2 = A0_2._mission_datas
      L3_2 = L3_2[L1_2]
      L3_2 = L3_2.type
      L4_2 = L7_1.chapter
      if not (L3_2 ~= L4_2 and 1 < L1_2) then
        break
      end
      L1_2 = L1_2 - 1
    end
  end
  L3_2 = L2_2 - L1_2
  if 6 <= L3_2 then
    L1_2 = L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_task_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = L1_2 - 1
  L3_2(L4_2, L5_2)
end
L0_1.move_panel_to_focus_mission = L9_1
function L9_1(A0_2, A1_2)
  A0_2._detail_panel_refresh = A1_2
end
L0_1.set_detail_panel_refresh = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_mission_data_by_missionID
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == nil then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_current_mission_data
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2._focus_flag = true
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.focus_mission = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._get_chapter_data_by_chapter_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_current_mission_data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  A0_2._focus_flag = true
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.focus_chapter = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A2_2 == nil then
    A2_2 = false
  end
  L3_2 = ipairs
  L4_2 = A0_2._mission_datas
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.data
    L8_2 = L8_2.ID
    if L8_2 == A1_2 then
      L8_2 = L7_2.type
      L9_2 = L7_1.chapter
      if L8_2 ~= L9_2 or not A2_2 then
        L8_2 = L7_2.type
        L9_2 = L7_1.chapter
        if L8_2 == L9_2 or A2_2 then
          goto lbl_25
        end
      end
      return L6_2
    end
    ::lbl_25::
  end
  L3_2 = -1
  return L3_2
end
L0_1._get_mission_index_by_missionID = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._mission_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.data
    L7_2 = L7_2.ChapterID
    if L7_2 == A1_2 then
      L7_2 = L6_2.type
      L8_2 = L7_1.chapter
      if L7_2 == L8_2 then
        L7_2 = A0_2._mission_datas
        L7_2 = L7_2[L5_2]
        return L7_2
      end
    end
  end
end
L0_1._get_chapter_data_by_chapter_id = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._get_mission_index_by_missionID
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 == -1 then
    L4_2 = nil
    return L4_2
  else
    L4_2 = A0_2._mission_datas
    L4_2 = L4_2[L3_2]
    return L4_2
  end
end
L0_1._get_mission_data_by_missionID = L9_1
return L0_1
