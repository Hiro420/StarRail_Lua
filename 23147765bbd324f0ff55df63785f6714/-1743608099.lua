local L0_1, L1_1, L2_1, L3_1, L4_1
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
L1_1 = "AdventureMissionListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Mission_Location_ShowFloorName_FloorIDList"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.ArrayValue
L2_1 = "UIText_AdventureMissionList_LocationHint"
L3_1 = "PS_Sub_Pack_SubMission_ID"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_mission_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_navigation
  L4_2 = A0_2._on_btn_navigation_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_play_go_mission
  L1_2(L2_2)
  L1_2 = {}
  A0_2._mission_row_list = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_missions
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
    L8_2 = L8_2.node_missions
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._mission_row_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  A0_2._disable_setup = false
  A0_2.interactable = true
  A0_2._disable_mission_click = false
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
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
L0_1._init_play_go_mission = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2._disable_setup
  if L2_2 == true then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2 ~= A1_2
  A0_2._data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_mission_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._data
  L5_2 = L5_2.Row
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.TrackIconPath
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_track_hint
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._is_show_navi
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_navigation
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_puzzle_btn
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._setup_navigation_view
    L5_2(L6_2)
    return
  end
  L5_2 = A0_2._data
  L5_2 = L5_2.IsTakenAndNotstarted
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_disable
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._data
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.MissionModule
    L8_2 = L7_2
    L7_2 = L7_2.CheckMissionBeginConditionWithPromise
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2
    L7_2 = L7_2.ThenLuaActionOneParam
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2._data
      L2_3 = L6_2
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
    L7_2(L8_2, L9_2)
    L7_2 = 1
    L8_2 = A0_2._mission_row_list
    L8_2 = #L8_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = A0_2._mission_row_list
      L11_2 = L11_2[L10_2]
      L12_2 = L11_2
      L11_2 = L11_2.safe_set_active
      L13_2 = false
      L11_2(L12_2, L13_2)
    end
  else
    if not L2_2 then
      L7_2 = A0_2
      L6_2 = A0_2._check_finish_submission
      L6_2 = L6_2(L7_2)
      if L6_2 then
        goto lbl_92
      end
    end
    L7_2 = A0_2
    L6_2 = A0_2._setup_submissions
    L6_2(L7_2)
  end
  ::lbl_92::
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  A0_2._disable_setup = A1_2
end
L0_1.disable_setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_row_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.show_desc_first_row_panel = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._customized_clicked_callback = A1_2
  A0_2._event_listener = A2_2
end
L0_1.customize_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._customize_show_navi_handler = A1_2
  A0_2._customize_show_navi_handler_self = A2_2
end
L0_1.customize_show_navi_handler = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L1_2 = L1_2.TrackingMission
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "MissionList_FadeIn"
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_fade_anim = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_root
  L2_2.alpha = A1_2
end
L0_1.set_canvas_alpha = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.get_first_submission
  L2_2 = A0_2._data
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
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
  L4_2 = A0_2._data
  L4_2 = L4_2.IsMuteNav
  if L3_2 ~= nil then
    L5_2 = L3_2.IsGotoUIPage
    if not L5_2 and (L2_2 or L4_2) then
      L5_2 = false
      return L5_2
    end
  end
  L5_2 = A0_2._customize_show_navi_handler
  if L5_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.invoke_callback
    L6_2 = A0_2._customize_show_navi_handler
    L7_2 = A0_2._customize_show_navi_handler_self
    L8_2 = A0_2._data
    return L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = true
  return L5_2
end
L0_1._is_show_navi = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionGroups
  L1_2 = L1_2(L2_2)
  A0_2._submission_groups = L1_2
  L1_2 = 1
  L2_2 = A0_2._mission_row_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L4_2 - 1
    L6_2 = A0_2._submission_groups
    L6_2 = L6_2.Count
    if L5_2 < L6_2 then
      L5_2 = A0_2._mission_row_list
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.safe_set_active
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._mission_row_list
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.setup_view
      L7_2 = A0_2._submission_groups
      L8_2 = L4_2 - 1
      L7_2 = L7_2[L8_2]
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._mission_row_list
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.safe_set_active
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.check_play_go_in_download
  L3_2 = A0_2._submission_groups
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
end
L0_1._setup_submissions = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AppUtils
  L2_2 = L2_2.IsPSPlatform
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = false
  L3_2 = A0_2.play_go_mission_id
  if L3_2 ~= nil then
    L3_2 = A0_2._data
    L3_2 = L3_2.ID
    L4_2 = A0_2.play_go_mission_id
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_PlayGoManager
      L3_2 = L3_2.IsFinishDownload
      if not L3_2 then
        L2_2 = true
      end
    end
  end
  if L2_2 and 0 < A1_2 then
    L3_2 = A0_2._mission_row_list
    L3_2 = L3_2[A1_2]
    L4_2 = L3_2
    L3_2 = L3_2.setup_ps_go_sub_mission_name
    L5_2 = A0_2._submission_groups
    L6_2 = A1_2 - 1
    L5_2 = L5_2[L6_2]
    L3_2(L4_2, L5_2)
  end
  return L2_2
end
L0_1.check_play_go_in_download = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._submission_groups
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = false
  L2_2 = 0
  L3_2 = A0_2._submission_groups
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._submission_groups
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsFinish
    if L6_2 then
      L6_2 = A0_2._submission_groups
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsShowFinishEffect
      if L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.node_missions
        L6_2 = #L6_2
        if L5_2 >= L6_2 then
          break
        end
        L6_2 = A0_2._mission_row_list
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.safe_set_active
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._mission_row_list
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.setup_progress
        L8_2 = A0_2._submission_groups
        L8_2 = L8_2[L5_2]
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._mission_row_list
        L7_2 = L5_2 + 1
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.play_fadeout
        L8_2 = A0_2
        L9_2 = A0_2._play_fade_out_finish
        L6_2(L7_2, L8_2, L9_2)
        L1_2 = true
      end
    end
  end
  return L1_2
end
L0_1._check_finish_submission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_submissions
  L1_2(L2_2)
end
L0_1._play_fade_out_finish = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  A0_2._disable_mission_click = A1_2
end
L0_1.disable_mission_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._disable_setup
  if L1_2 ~= true then
    L1_2 = A0_2._disable_mission_click
    if not L1_2 then
      L1_2 = A0_2.interactable
      if L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.CurrentGameMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.Client
  if L1_2 == L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.GotoByType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.Mission
  L3_2 = #L3_2
  L2_2(L3_2)
end
L0_1._on_btn_mission_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._disable_setup
  if L1_2 ~= true then
    L1_2 = A0_2.interactable
    if L1_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._customized_clicked_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._event_listener
    if L1_2 ~= nil then
      L1_2 = A0_2._customized_clicked_callback
      L2_2 = A0_2._event_listener
      L3_2 = A0_2._data
      L1_2(L2_2, L3_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._jump_first_submission
  L1_2(L2_2)
  return
end
L0_1._on_btn_navigation_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.SubMissions
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    return
  end
  L1_2 = nil
  L2_2 = 0
  L3_2 = A0_2._data
  L3_2 = L3_2.SubMissions
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._data
    L6_2 = L6_2.SubMissions
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2._data
      L6_2 = L6_2.SubMissions
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsStart
      if L6_2 then
        L6_2 = A0_2._data
        L6_2 = L6_2.SubMissions
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.IsShowInMap
        if L6_2 then
          L6_2 = A0_2._data
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
L0_1._jump_first_submission = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_submissions
  L1_2(L2_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.SubMissions
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2.get_first_submission
  L2_2 = A0_2._data
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_navigation
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = ""
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_navigation
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_track_text
  L4_2 = L1_2.ID
  L2_2(L3_2, L4_2)
end
L0_1._setup_navigation_view = L4_1
function L4_1(A0_2)
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
L0_1.get_first_submission = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionInfoConfig
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.IsGotoUIPage
  if L3_2 then
    L3_2 = L2_2.GotoID
    if 0 < L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MissionGotoConfigExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2.GotoID
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_navigation
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2.Desc
      L4_2(L5_2, L6_2)
    end
  else
    L3_2 = G
    L3_2 = L3_2.MissionUtils
    L3_2 = L3_2.get_location_name_by_submission_id
    L4_2 = A1_2
    L3_2, L4_2 = L3_2(L4_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_navigation
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_1
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
  end
end
L0_1.setup_track_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 2
  L2_2 = A0_2._mission_row_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._mission_row_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.safe_set_active
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionGroups
  L1_2 = L1_2(L2_2)
  A0_2._submission_groups = L1_2
  L1_2 = A0_2._mission_row_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._submission_groups
  L3_2 = L3_2.Count
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._submission_groups
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L1_2 = A0_2._mission_row_list
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._submission_groups
    L3_2 = L3_2[0]
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.check_play_go_in_download
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_first_mission_group = L4_1
return L0_1
