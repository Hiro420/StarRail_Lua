local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ResidentActivityPanel.BoxingClubEnterPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityUnlockMissionPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubEnterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20003
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ActivityModule
L3_1 = L3_1.ActivityType
L3_1 = L3_1.BoxingClubActivity
L2_1[L3_1] = 1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ActivityModule
L3_1 = L3_1.ActivityType
L3_1 = L3_1.BoxingClubResonanceActivity
L2_1[L3_1] = 2
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._condition_unlock_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_track_pre_mission
  L1_2(L2_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._panel_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ResidentActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetActivityDataByPanelID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._activity_data = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubChallengeSeasonConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.ActivityType
  L3_2 = L2_1[L3_2]
  L2_2 = L2_2(L3_2)
  A0_2._season_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.EnterPanelRedDot
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = A0_2._activity_data
    L4_2 = L4_2.EnterPanelRedDot
    L5_2 = nil
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.red_dot
    L7_2 = L7_2.transform
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.MainMissionDataPromised
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.UnlockMissionList
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = true
    L1_3 = 0
    L2_3 = A0_2._activity_data
    L2_3 = L2_3.UnlockMissionList
    L2_3 = L2_3.Count
    L2_3 = L2_3 - 1
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = CS
      L5_3 = L5_3.RPG
      L5_3 = L5_3.Client
      L5_3 = L5_3.GlobalVars
      L5_3 = L5_3.s_ModuleManager
      L5_3 = L5_3.MissionModule
      L6_3 = L5_3
      L5_3 = L5_3.TryGetMainMissionData
      L7_3 = A0_2._activity_data
      L7_3 = L7_3.UnlockMissionList
      L7_3 = L7_3[L4_3]
      L5_3 = L5_3(L6_3, L7_3)
      if L5_3 ~= nil then
        L6_3 = L5_3.IsFinish
        if L6_3 then
          goto lbl_27
        end
      end
      L0_3 = false
      do break end
      ::lbl_27::
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_condition_panel_root
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetActive
    L3_3 = not L0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_unlock
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetActive
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    A0_2._is_unlock = L0_3
    if L0_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.text_activity_title
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetTextID
      L3_3 = A0_2._season_row
      L3_3 = L3_3.ActivityTitle
      L1_3(L2_3, L3_3)
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_finish
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetActive
      L3_3 = A0_2._activity_data
      L4_3 = L3_3
      L3_3 = L3_3.IsEnterPanelFullCompleted
      L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3)
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L1_3 = A0_2._binder
      L1_3 = L1_3.node_deco
      L2_3 = L1_3
      L1_3 = L1_3.SafeSetActive
      L3_3 = A0_2._activity_data
      L4_3 = L3_3
      L3_3 = L3_3.IsEnterPanelFullCompleted
      L3_3 = L3_3(L4_3)
      L3_3 = not L3_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._setup_condition_panel
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_go
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._condition_unlock_panels
    if L1_2 then
      L1_2 = 1
      L2_2 = A0_2._condition_unlock_panels
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._condition_unlock_panels
        L5_2 = L5_2[L4_2]
        L6_2 = L5_2
        L5_2 = L5_2.get_btn_root_interactable
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L6_2 = A0_2
          L5_2 = A0_2.set_navigation_target
          L7_2 = A0_2._condition_unlock_panels
          L7_2 = L7_2[L4_2]
          L8_2 = L7_2
          L7_2 = L7_2.get_navigation_btn_gameobject
          L7_2, L8_2 = L7_2(L8_2)
          L5_2(L6_2, L7_2, L8_2)
          return
        end
      end
    end
  end
end
L0_1.try_set_navigation_target = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_first_navigation_btn
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.gameObject
    if L2_2 then
      goto lbl_9
    end
  end
  L2_2 = nil
  ::lbl_9::
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go
    return L1_2
  else
    L1_2 = A0_2._condition_unlock_panels
    if L1_2 then
      L1_2 = 1
      L2_2 = A0_2._condition_unlock_panels
      L2_2 = #L2_2
      L3_2 = 1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._condition_unlock_panels
        L5_2 = L5_2[L4_2]
        L6_2 = L5_2
        L5_2 = L5_2.get_btn_root_interactable
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = A0_2._condition_unlock_panels
          L5_2 = L5_2[L4_2]
          L6_2 = L5_2
          L5_2 = L5_2.get_navigation_btn
          return L5_2(L6_2)
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_navigation_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go
    return L1_2
  else
    L1_2 = A0_2._condition_unlock_panels
    if L1_2 then
      L1_2 = A0_2._condition_unlock_panels
      L1_2 = #L1_2
      L2_2 = 1
      L3_2 = -1
      for L4_2 = L1_2, L2_2, L3_2 do
        L5_2 = A0_2._condition_unlock_panels
        L5_2 = L5_2[L4_2]
        L6_2 = L5_2
        L5_2 = L5_2.get_btn_root_interactable
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = A0_2._condition_unlock_panels
          L5_2 = L5_2[L4_2]
          L6_2 = L5_2
          L5_2 = L5_2.get_navigation_btn
          return L5_2(L6_2)
        end
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_last_navigation_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._track_pre_mission = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "BoxingClubResonance_TrackPreMissionList"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.UintValue
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._track_pre_mission
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_track_pre_mission = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.UnlockMissionList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._condition_unlock_panels
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    if L6_2 == nil then
      L7_2 = A0_2
      L6_2 = A0_2.instantiate_object
      L8_2 = A0_2._binder
      L8_2 = L8_2.prefab_load_meta_condition
      L8_2 = L8_2.Prefab
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta_condition
      L9_2 = L9_2.transform
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.ActivityUnlockMissionPanel
      L10_2 = G
      L10_2 = L10_2.ActivityUnlockMissionPanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.bind
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._condition_unlock_panels
      L9_2 = L5_2 + 1
      L8_2[L9_2] = L7_2
    end
    L6_2 = A0_2._condition_unlock_panels
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_mission_id
    L8_2 = A0_2._activity_data
    L8_2 = L8_2.UnlockMissionList
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._condition_unlock_panels
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L6_2(L7_2)
    L6_2 = A0_2._condition_unlock_panels
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.main_mission_id
    L7_2 = A0_2._track_pre_mission
    L8_2 = A0_2._track_pre_mission
    L8_2 = #L8_2
    L7_2 = L7_2[L8_2]
    if L6_2 == L7_2 then
      L6_2 = A0_2._condition_unlock_panels
      L7_2 = L5_2 + 1
      L6_2 = L6_2[L7_2]
      L7_2 = L6_2
      L6_2 = L6_2.register_pre_mission_list
      L8_2 = A0_2._track_pre_mission
      L6_2(L7_2, L8_2)
    end
    L6_2 = A0_2._condition_unlock_panels
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.get_btn_root_interactable
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = A0_2._condition_unlock_panels
      L9_2 = L5_2 + 1
      L8_2 = L8_2[L9_2]
      L9_2 = L8_2
      L8_2 = L8_2.get_navigation_btn
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
end
L0_1._setup_condition_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._season_row
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_type_icon
    L4_2 = A0_2._season_row
    L4_2 = L4_2.SeasonIconPath
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_type_icon_condition
    L4_2 = A0_2._season_row
    L4_2 = L4_2.SeasonIconPath
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_icon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._season_row
  L1_2 = L1_2.SeasonType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubActivityType
  L2_2 = L2_2.Second
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ConstValueClientExcelTable
    L1_2 = L1_2.GetData
    L2_2 = "BoxingClubResonance_PrePhoneMessage_SubmissionID"
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.Value
    L1_2 = L1_2.IntValue
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.MissionModule
    L4_2 = L2_2
    L3_2 = L2_2.GetSubMissionDataWithPromise
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2
    L3_2 = L3_2.ThenLuaActionOneParam
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = A0_3.IsFinish
      if L1_3 then
        L1_3 = G
        L1_3 = L1_3.GotoManager
        L1_3 = L1_3.Goto
        L2_3 = L1_1
        L1_3(L2_3)
      else
        L1_3 = CS
        L1_3 = L1_3.RPG
        L1_3 = L1_3.GameCore
        L1_3 = L1_3.ConstValueClientExcelTable
        L1_3 = L1_3.GetData
        L2_3 = "BoxingClubResonance_PrePhoneMessage_GroupID"
        L1_3 = L1_3(L2_3)
        L1_3 = L1_3.Value
        L1_3 = L1_3.IntValue
        L2_3 = G
        L2_3 = L2_3.GotoManager
        L2_3 = L2_3.Goto
        L3_3 = 4000
        L4_3 = {}
        L5_3 = L1_3
        L4_3[1] = L5_3
        L2_3(L3_3, L4_3)
      end
    end
    L3_2(L4_2, L5_2)
  else
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = L1_1
    L1_2(L2_2)
  end
end
L0_1._on_btn_go = L3_1
return L0_1
