local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Mission.MissionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionTaskCoverPanel"
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
L2_1 = L2_1.StoryLineModule
L3_1 = "UIText_AdventureMissionPage_Location"
L4_1 = "UI/Atlas/AtlasRoot/Common/Icon/IconLocation@3x.png"
L5_1 = "UI/Atlas/AtlasRoot/Common/Icon/IconLocation@3x.png"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click_btn
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2
  if A2_2 == nil then
    return
  end
  A0_2.index = A1_2
  A0_2.panel_type = A3_2
  A0_2._data = A2_2
  A0_2._event_listener = A6_2
  A0_2._click_call_back = A7_2
  A0_2._is_select = nil
  L9_2 = A0_2
  L8_2 = A0_2.setup_selected
  L10_2 = A4_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2.setup_tracking
  L10_2 = A5_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_color
  L8_2(L9_2)
  L8_2 = A0_2._data
  L8_2 = L8_2.ChapterID
  if L8_2 ~= 0 then
    L9_2 = A0_2
    L8_2 = A0_2._setup_chapter_info
    L8_2(L9_2)
  else
    L9_2 = A0_2
    L8_2 = A0_2._setup_title
    L8_2(L9_2)
  end
  L9_2 = A0_2
  L8_2 = A0_2._setup_mission_name
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_target_location
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_story_line_info
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_display_activity_timer
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.show_occupy_tip
  L10_2 = G
  L10_2 = L10_2.MissionUtils
  L10_2 = L10_2.check_mission_conflict
  L11_2 = A2_2
  L10_2, L11_2 = L10_2(L11_2)
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._bind_reddot
  L8_2(L9_2)
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.UI
  L8_2 = L8_2.LayoutRebuilder
  L8_2 = L8_2.ForceRebuildLayoutImmediate
  L9_2 = A0_2._binder
  L9_2 = L9_2.root
  L8_2(L9_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_occupy_tip
  L3_2 = G
  L3_2 = L3_2.MissionUtils
  L3_2 = L3_2.check_mission_conflict
  L4_2 = A0_2._data
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_title
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.show_title = L6_1
L6_1 = "UIText_Mission_NpcOccuoation_Remind_Left"
L7_1 = "UIText_Mission_AreaOccuoation_Remind_Left"
L8_1 = "UIText_Mission_FuncBtnOccuoation_Remind_Left"
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = nil
  if A1_2 then
    L4_2 = L6_1
  elseif A3_2 then
    L4_2 = L8_1
  elseif A2_2 then
    L4_2 = L7_1
  end
  return L4_2
end
L0_1._get_occupy_tip = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2._data
  L4_2 = L4_2.IsTakenAndNotstarted
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_occupy_tip
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = A1_2 or L5_2
  L5_2 = A2_2 or L5_2
  if not A1_2 and not A2_2 then
    L5_2 = A3_2
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_occupy_tip
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_locattion
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_occupy_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L9_2 = A0_2
    L8_2 = A0_2._get_occupy_tip
    L10_2 = A1_2
    L11_2 = A2_2
    L12_2 = A3_2
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.UI
    L6_2 = L6_2.LayoutRebuilder
    L6_2 = L6_2.ForceRebuildLayoutImmediate
    L7_2 = A0_2._binder
    L7_2 = L7_2.root
    L6_2(L7_2)
  end
end
L0_1.show_occupy_tip = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MissionOne"
  L4_2 = A0_2._data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.MissionTypeName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionTypeConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Type
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_title
  L5_2 = L1_2.TypeIconMini
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_title = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MissionChapterConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.ChapterID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_deco
  L5_2 = L1_2.ChapterFigureIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_chapter_info = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.UIColorUtils
  L1_2 = L1_2.GetColor
  L2_2 = A0_2._data
  L2_2 = L2_2.MissionTypeColor
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_type_color
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.color
    L7_2 = L7_2.a
    L1_2.a = L7_2
    L6_2.color = L1_2
  end
end
L0_1._setup_color = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsTakenAndNotstarted
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locattion
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._data
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.CheckMissionBeginConditionWithPromise
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2
    L3_2 = L3_2.ThenLuaActionOneParam
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2._data
      L2_3 = L2_2
      if L1_3 == L2_3 then
        L1_3 = G
        L1_3 = L1_3.MissionUtils
        L1_3 = L1_3.set_begin_text_by_mission_condition
        L2_3 = A0_2._binder
        L2_3 = L2_3.text_tips
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
    end
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._should_show_story_line_location
    L4_2 = A0_2._data
    L4_2 = L4_2.StoryLineID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L2_1
      L3_2 = L2_2
      L2_2 = L2_2.GetStoryLine
      L4_2 = A0_2._data
      L4_2 = L4_2.StoryLineID
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_target_location
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.Name
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.location_icon
      L6_2 = L5_1
      L3_2(L4_2, L5_2, L6_2)
    else
      L2_2 = A0_2._data
      L2_2 = L2_2.Row
      L2_2 = L2_2.IsInRaid
      L4_2 = A0_2
      L3_2 = A0_2._get_target_location_textID
      L5_2 = L2_2
      L3_2, L4_2 = L3_2(L4_2, L5_2)
      if L3_2 and L4_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.text_target_location
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetTextID
        L7_2 = L3_1
        L8_2 = G
        L8_2 = L8_2.TextmapStatic
        L8_2 = L8_2.GetText
        L9_2 = L3_2
        L8_2 = L8_2(L9_2)
        L9_2 = G
        L9_2 = L9_2.TextmapStatic
        L9_2 = L9_2.GetText
        L10_2 = L4_2
        L9_2, L10_2 = L9_2(L10_2)
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      else
        L5_2 = A0_2._binder
        L5_2 = L5_2.text_target_location
        L6_2 = L5_2
        L5_2 = L5_2.SetCustomizedText
        L7_2 = ""
        L5_2(L6_2, L7_2)
      end
      L6_2 = A0_2
      L5_2 = A0_2._async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.location_icon
      L8_2 = L4_1
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L0_1._setup_target_location = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.StoryLineID
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.story_line_icon
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.story_line_icon
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.GetStoryLine
    L3_2 = A0_2._data
    L3_2 = L3_2.StoryLineID
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.story_line_icon
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_story_line_info = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 ~= 0
  return L2_2
end
L0_1._should_show_story_line_location = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._data
  L2_2 = L2_2.SubMissions
  L3_2 = nil
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.IsStart
    if L9_2 then
      L9_2 = L8_2.IsShow
      if L9_2 then
        L3_2 = L8_2
        break
      end
    end
  end
  if L3_2 then
    L4_2 = G
    L4_2 = L4_2.MissionUtils
    L4_2 = L4_2.get_location_name_by_submission_id
    L5_2 = L3_2.ID
    L4_2, L5_2 = L4_2(L5_2)
    L6_2 = L4_2
    L7_2 = L5_2
    return L6_2, L7_2
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_target_location_textID = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScheduleMissionByMainMissionID
  L3_2 = A0_2._data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_timer
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionScheduleExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._data
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.HideRemainTime
    if not L3_2 then
      goto lbl_33
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  goto lbl_38
  ::lbl_33::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  ::lbl_38::
end
L0_1._setup_display_activity_timer = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_select
  if L2_2 ~= A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  A0_2._is_select = A1_2
  if A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._mark_mission_seen
    L2_2(L3_2)
  end
end
L0_1.setup_selected = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tracking
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_tracking
    L5_2 = A0_2._data
    L5_2 = L5_2.TrackIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_tracking = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_mission_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_mission_name = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsShowRedDot
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.mark_main_mission_seen
      L2_2 = A0_2._data
      L2_2 = L2_2.ID
      L1_2(L2_2)
    end
  end
end
L0_1._mark_mission_seen = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._click_call_back
  if L1_2 then
    L1_2 = A0_2._click_call_back
    L2_2 = A0_2._event_listener
    L3_2 = A0_2._data
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_click_btn = L9_1
return L0_1
