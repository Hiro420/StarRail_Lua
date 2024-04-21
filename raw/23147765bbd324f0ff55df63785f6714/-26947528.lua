local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Mission.MissionDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.MissionProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.MissionProgressPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = "UIText_Mission_NpcOccuoation_Remind_Right"
L3_1 = "UIText_Mission_AreaOccuoation_Remind_Right"
L4_1 = "UIText_Mission_FuncBtnOccuoation_Remind_Right"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.MissionModule
L6_1 = "UIText_AdventureMissionPage_Location"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_task_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._OnMissionChange
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_task_list
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._current_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = nil
  if A1_2 then
    L4_2 = L2_1
  elseif A3_2 then
    L4_2 = L4_1
  elseif A2_2 then
    L4_2 = L3_1
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_occupy_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  L7_2 = A2_2 or L7_2
  if not A1_2 and not A2_2 then
    L7_2 = A3_2
  end
  L5_2(L6_2, L7_2)
  if L4_2 ~= nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_occupy_tip
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.show_occupy_tip = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActiveByScale
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_mission_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_rebuild
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target_location
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_mission_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mission_chapter
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_activity_timer
  L1_2(L2_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.once_rebuild
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L1_2(L2_2)
    A0_2.once_rebuild = true
  end
end
L0_1.init_rebuild = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_main_mission_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._current_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_main_mission_name = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._current_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.IsInRaid
  L3_2 = A0_2
  L2_2 = A0_2._get_target_location_textID
  L4_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 and L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_target_location
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L6_1
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L3_2
    L8_2, L9_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_target_location
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = ""
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_target_location = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._current_data
  L2_2 = L2_2.SubMissions
  L3_2 = nil
  L4_2 = false
  L5_2 = pairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.IsStart
    if L10_2 then
      L10_2 = L9_2.IsShow
      if L10_2 then
        L3_2 = L9_2
        L4_2 = true
        break
      end
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_target_location
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L3_2 then
    L5_2 = G
    L5_2 = L5_2.MissionUtils
    L5_2 = L5_2.get_location_name_by_submission_id
    L6_2 = L3_2.ID
    L5_2, L6_2 = L5_2(L6_2)
    L7_2 = L5_2
    L8_2 = L6_2
    return L7_2, L8_2
  end
  L5_2 = nil
  return L5_2
end
L0_1._get_target_location_textID = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionGroups
  L1_2 = L1_2(L2_2)
  A0_2._submission_group_list = L1_2
  L1_2 = A0_2._submission_group_list
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_task_list
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2._submission_group_list
    L3_2 = L3_2.Count
    L3_2 = L3_2 + 1
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_task_list
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = 0
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_task_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_task_list
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1._setup_sub_mission_list = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = nil
  L6_2 = A0_2._submission_group_list
  L6_2 = L6_2.Count
  if A2_2 == L6_2 then
    L7_2 = A1_2
    L6_2 = A1_2.NewListViewItem
    L8_2 = 1
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
    L6_2 = L1_1.SafeGetCmpt
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Text
    L7_2 = L7_2(L8_2)
    L8_2 = L5_2.transform
    L9_2 = "Introduction"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetTextID
    L9_2 = A0_2._submission_group_list
    L9_2 = L9_2[0]
    L9_2 = L9_2.Description
    L7_2(L8_2, L9_2)
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.LayoutRebuilder
    L7_2 = L7_2.ForceRebuildLayoutImmediate
    L8_2 = L5_2.transform
    L7_2(L8_2)
  else
    L7_2 = A1_2
    L6_2 = A1_2.NewListViewItem
    L8_2 = 0
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
    L6_2 = L5_2.UserObjectData
    if L6_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.MissionProgressPanel
      L10_2 = G
      L10_2 = L10_2.MissionProgressPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2 = L7_2
      L8_2 = L6_2
      L7_2 = L6_2.bind
      L9_2 = L5_2.transform
      L7_2(L8_2, L9_2)
      L5_2.UserObjectData = L6_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._submission_group_list
    L9_2 = L9_2[A2_2]
    L7_2(L8_2, L9_2)
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.LayoutRebuilder
    L7_2 = L7_2.ForceRebuildLayoutImmediate
    L8_2 = L6_2._binder
    L8_2 = L8_2.root
    L7_2(L8_2)
  end
  return L5_2
end
L0_1._OnMissionChange = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._current_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.ChapterID
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_chapter_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = ""
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.MissionChapterConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._current_data
    L2_2 = L2_2.Row
    L2_2 = L2_2.ChapterID
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_chapter_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.ChapterName
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_chapter_name
      L3_2 = L2_2
      L2_2 = L2_2.SetCustomizedText
      L4_2 = ""
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_mission_chapter = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleMissionByMainMissionID
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_timer
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = L1_2.EndTimeDate
    L3_2 = A0_2._binder
    L3_2 = L3_2.remain_timer
    L4_2 = L3_2
    L3_2 = L3_2.SetTargetTime
    L5_2 = L2_2
    L6_2 = A0_2._refresh
    L7_2 = A0_2
    L8_2 = 2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionScheduleExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._current_data
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.HideRemainTime
    if not L3_2 then
      goto lbl_42
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_42::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.ActivityModuleID
  if L3_2 ~= 0 then
    L4_2 = A0_2._current_data
    L5_2 = L4_2
    L4_2 = L4_2.GetActivityEndDateTime
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.remain_timer
    L6_2 = L5_2
    L5_2 = L5_2.SetTargetTime
    L7_2 = L4_2
    L8_2 = A0_2._refresh
    L9_2 = A0_2
    L10_2 = 2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_schedule_timer
    L4_2(L5_2)
  end
end
L0_1._setup_activity_timer = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._current_data
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleEndDateTime
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = L1_2
  L5_2 = A0_2._refresh
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_schedule_timer = L7_1
return L0_1
