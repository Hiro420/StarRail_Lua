local L0_1, L1_1, L2_1
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
L1_1 = "AdventureMissionHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._hint_data = L1_2
  A0_2._mission_data = nil
  A0_2._anim_end_callback = nil
  A0_2._anim_end_callback_self = nil
  L1_2 = {}
  A0_2._update_mission_row_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_update_missions
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MissionProgressPanel
    L8_2 = G
    L8_2 = L8_2.MissionProgressPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_update_missions
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._update_mission_row_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_track
  L4_2 = A0_2._on_btn_track_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenSubMission
  L4_2 = A0_2._on_take_sub_mission
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MissionHint_New"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MissionHint_Complete"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MissionHint_Update"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._anim_end_callback = A1_2
  A0_2._anim_end_callback_self = A2_2
end
L0_1.set_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._hint_data = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetMainMissionData
  L4_2 = A0_2._hint_data
  L4_2 = L4_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._mission_data = L2_2
  L2_2 = A0_2._mission_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._hint_data
  L2_2 = L2_2.Type
  if L2_2 == "Take" then
    L2_2 = A0_2._mission_data
    L3_2 = L1_1.TrackingMission
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_anim_end
      L2_2(L3_2)
      return
    end
    L3_2 = A0_2
    L2_2 = A0_2._setup_take_hint
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_sub_mission
    L2_2(L3_2)
  else
    L2_2 = A0_2._hint_data
    L2_2 = L2_2.Type
    if L2_2 == "Finish" then
      L3_2 = A0_2
      L2_2 = A0_2._setup_finish_hint
      L2_2(L3_2)
    else
      L2_2 = A0_2._hint_data
      L2_2 = L2_2.Type
      if L2_2 == "TakeSub" then
        L3_2 = A0_2
        L2_2 = A0_2._setup_takesub_hint
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2._refresh_sub_mission
        L2_2(L3_2)
      end
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_anim_state
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.time
  if L2_2 == 0 then
    L2_2 = A0_2._played_time
    if L2_2 ~= nil then
      goto lbl_14
    end
  end
  L2_2 = L1_2.time
  A0_2._played_time = L2_2
  ::lbl_14::
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Stop
  L2_2(L3_2)
end
L0_1.pause_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_anim_state
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._played_time
  L1_2.time = L2_2
  L2_2 = A0_2._hint_data
  L2_2 = L2_2.Type
  if L2_2 == "Take" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "MissionHint_New"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._hint_data
    L2_2 = L2_2.Type
    if L2_2 == "Finish" then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_root
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "MissionHint_Complete"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._hint_data
      L2_2 = L2_2.Type
      if L2_2 == "TakeSub" then
        L2_2 = A0_2._binder
        L2_2 = L2_2.anim_root
        L3_2 = L2_2
        L2_2 = L2_2.Play
        L4_2 = "MissionHint_Update"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1.continue_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2._hint_data
  L2_2 = L2_2.Type
  if L2_2 == "Take" then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.GetAnimationState
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = "MissionHint_New"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._hint_data
    L2_2 = L2_2.Type
    if L2_2 == "Finish" then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.UIAnimationUtils
      L2_2 = L2_2.GetAnimationState
      L3_2 = A0_2._binder
      L3_2 = L3_2.anim_root
      L4_2 = "MissionHint_Complete"
      L2_2 = L2_2(L3_2, L4_2)
      L1_2 = L2_2
    else
      L2_2 = A0_2._hint_data
      L2_2 = L2_2.Type
      if L2_2 == "TakeSub" then
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.UIAnimationUtils
        L2_2 = L2_2.GetAnimationState
        L3_2 = A0_2._binder
        L3_2 = L3_2.anim_root
        L4_2 = "MissionHint_Update"
        L2_2 = L2_2(L3_2, L4_2)
        L1_2 = L2_2
      end
    end
  end
  return L1_2
end
L0_1._get_anim_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MissionHint_New"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mission_icon_new
  L4_2 = A0_2._mission_data
  L4_2 = L4_2.TrackIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_mission_tips_new
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextColor
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.MissionTypeColor
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._mission_data
  L4_2 = L1_1.TrackingMission
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_main_mission_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_take_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MissionHint_Complete"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._update_mission_row_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._update_mission_row_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.safe_set_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_main_mission_name_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_finish_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MissionHint_Update"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._mission_data
  L4_2 = L1_1.TrackingMission
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_main_mission_name_update
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_takesub_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._mission_data
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionGroups
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._update_mission_row_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 - 1
    L7_2 = L1_2.Count
    if L6_2 < L7_2 then
      L6_2 = A0_2._update_mission_row_list
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.safe_set_active
      L8_2 = true
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._update_mission_row_list
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.setup_view
      L8_2 = L5_2 - 1
      L8_2 = L1_2[L8_2]
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._update_mission_row_list
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_sub_mission = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._hint_data
  L2_2 = L2_2.Type
  if L2_2 == "Take" then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_sub_mission
    L2_2(L3_2)
  end
end
L0_1._on_take_sub_mission = L2_1
function L2_1(A0_2)
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
  L2_2 = A0_2._mission_data
  if L2_2 ~= nil then
    L2_2 = A0_2._mission_data
    L2_2 = L2_2.IsFinish
    if not L2_2 then
      goto lbl_43
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToEnd
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_root
  L4_2 = "MissionHint_New"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_anim_end
  L2_2(L3_2)
  do return end
  ::lbl_43::
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
  L4_2 = A0_2._mission_data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_track_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "AdventureMissionHintPanel"
  L4_2 = A0_2._mission_data
  L4_2 = L4_2.ID
  L5_2 = "-mission"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = "MissionHint_New"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_anim_end
  L1_2(L2_2)
  L1_2 = A0_2._mission_data
  L1_2 = L1_2.IsFloorConnected
  L1_2 = not L1_2
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._open_map_page
    L2_2(L3_2)
  end
end
L0_1._on_mission_tracked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._mission_data
  L1_2 = L1_2.SubMissions
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    return
  end
  L1_2 = nil
  L2_2 = 0
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.SubMissions
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_data
    L6_2 = L6_2.SubMissions
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._mission_data
      L6_2 = L6_2.SubMissions
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsStart
      if L6_2 then
        L6_2 = A0_2._mission_data
        L6_2 = L6_2.SubMissions
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.IsShow
        if L6_2 then
          L6_2 = A0_2._mission_data
          L6_2 = L6_2.SubMissions
          L1_2 = L6_2[L5_2]
          break
        end
      end
    end
  end
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.jump_to_mission_target_system
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._open_map_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._anim_end_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._anim_end_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._anim_end_callback
      L2_2 = A0_2._anim_end_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_anim_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2._mission_data
  L1_2 = L1_2.SubMissions
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    return
  end
  L1_2 = nil
  L2_2 = 0
  L3_2 = A0_2._mission_data
  L3_2 = L3_2.SubMissions
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_data
    L6_2 = L6_2.SubMissions
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._mission_data
      L6_2 = L6_2.SubMissions
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsStart
      if L6_2 then
        L6_2 = A0_2._mission_data
        L6_2 = L6_2.SubMissions
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.IsShow
        if L6_2 then
          L6_2 = A0_2._mission_data
          L6_2 = L6_2.SubMissions
          L1_2 = L6_2[L5_2]
          break
        end
      end
    end
  end
  if L1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionInfoConfig
  L4_2 = L1_2.Row
  L4_2 = L4_2.SubMissionID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.MazePlaneID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MazePlaneExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.WorldID
  L6_2 = L4_2.PlaneName
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.WorldDataConfigExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.WorldName
  L8_2 = {}
  L9_2 = "UIText_AdventureMission_Toast_LocationHint"
  L10_2 = table
  L10_2 = L10_2.insert
  L11_2 = L8_2
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = {}
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L10_2
  L13_2 = G
  L13_2 = L13_2.TextmapStatic
  L13_2 = L13_2.GetText
  L14_2 = L7_2
  L13_2, L14_2 = L13_2(L14_2)
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L10_2
  L13_2 = G
  L13_2 = L13_2.TextmapStatic
  L13_2 = L13_2.GetText
  L14_2 = L6_2
  L13_2, L14_2 = L13_2(L14_2)
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = table
  L11_2 = L11_2.insert
  L12_2 = L8_2
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = G
  L11_2 = L11_2.NotifyManager
  L11_2 = L11_2.notify
  L12_2 = G
  L12_2 = L12_2.CS
  L12_2 = L12_2.NotifyType
  L12_2 = L12_2.UIPileToastMessage
  L13_2 = L8_2
  L11_2(L12_2, L13_2)
end
L0_1._navigate_other_world_toast = L2_1
return L0_1
