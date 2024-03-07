local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.RogueNousActivityPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousActivityPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._activity_data = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_item_panel
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_custom_bound
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.bind
    L3_2 = A0_2._owner
    L4_2 = L3_2
    L3_2 = L3_2._get_panel_prefab_path_by_activity_data
    L5_2 = A0_2._activity_data
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2._is_custom_bound = true
  end
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._is_custom_loaded
  if L1_2 then
    return
  end
  A0_2._is_custom_loaded = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story_reward
  L4_2 = A0_2._on_btn_story_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quest_reward
  L4_2 = A0_2._on_btn_quest_reward_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_act_reward_gamepad
  L4_2 = A0_2._on_btn_act_reward_gamepad_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_story_reward
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_story_reward_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_quest_reward
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_quest_reward_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousStoryUnlockReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_story_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousQuestReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_quest_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousActivityPanelBtnGo"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_btn_go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._custom_on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_title
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._is_custom_loaded
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.StoryLineUtils
  L1_2 = L1_2.should_switch_line_in_activity
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.PanelID
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.CurState
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityStateEnum
  L2_2 = L2_2.Locked
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_chess_rogue_guide_dialog
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ActivityStateEnum
    L2_2 = L2_2.PreGuide
    if L1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.RogueNousUtils
      L2_2 = L2_2.try_go_to_guide_phone_message
      L2_2 = L2_2()
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._go_to_cur_guide_mission
        L2_2(L3_2)
      end
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ActivityStateEnum
      L2_2 = L2_2.InProgress
      if L1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._go_to_entrance
        L2_2(L3_2)
      end
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.IsRogueNousActivityPanelBtnGoClicked = true
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L2_2(L3_2)
end
L0_1._on_btn_go_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Reward.RogueNousStoryRewardDialog"
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_story_reward_data
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_story_reward_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Reward.RogueNousQuestRewardPage"
  L1_2(L2_2)
end
L0_1._on_btn_quest_reward_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reward_btns
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_act_reward_gamepad
  L2_2(L3_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_btns_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_reward_btns = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._is_custom_loaded
  if not L1_2 then
    return
  end
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_act_reward_gamepad
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.is_in_special_zoom
    L4_2 = L4_2(L5_2)
    L4_2 = not L4_2 and L4_2
  end
  L2_2(L3_2, L4_2)
end
L0_1._refresh_act_reward_gamepad = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.ConditionConfig
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_cur_mission_id_by_condition
  L4_2 = L1_2.PreConditions
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil or L2_2 == 0 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.RogueDLC.RogueNous.Guide.RogueNousChessRogueGuideDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._show_chess_rogue_guide_dialog = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.StateData
  L1_2 = L1_2.ConditionConfig
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_cur_mission_id_by_condition
  L4_2 = L1_2.GuideConditions
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil or L2_2 == 0 then
    return
  end
  L3_2 = G
  L3_2 = L3_2.GotoManager
  L3_2 = L3_2.GotoByType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.Mission
  L4_2 = #L4_2
  L5_2 = {}
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MainMissionType
  L6_2 = L6_2.None
  L6_2 = #L6_2
  L7_2 = L2_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L3_2(L4_2, L5_2)
end
L0_1._go_to_cur_guide_mission = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._get_const_value_uint_arr
  L2_2 = "RogueNous_Tutorial_ForceJump_SubMissionID"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._has_in_progress_sub_mission
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.RogueUtils
    L2_2 = L2_2.TeleportToEntrance
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.GlobalVars
      L0_3 = L0_3.s_ModuleManager
      L0_3 = L0_3.RogueModule
      L2_3 = L0_3
      L1_3 = L0_3.SetAutoShowRogueSelectMainPage
      L1_3(L2_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.SDKLuaReportAdapter
      L1_3 = L1_3.ReportUIButtonClick
      L2_3 = A0_2._owner
      L2_3 = L2_3.__name
      L3_3 = A0_2.__name
      L4_3 = "GoBtn"
      L5_3 = A0_2._owner
      L5_3 = L5_3.guid
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.TeleportToEntrance
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.GlobalVars
    L0_3 = L0_3.s_ModuleManager
    L0_3 = L0_3.ChessRogueModule
    L0_3.WaitAutoShowRogueNousEntrancePage = true
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.SDKLuaReportAdapter
    L0_3 = L0_3.ReportUIButtonClick
    L1_3 = A0_2._owner
    L1_3 = L1_3.__name
    L2_3 = A0_2.__name
    L3_3 = "GoBtn"
    L4_3 = A0_2._owner
    L4_3 = L4_3.guid
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L2_2(L3_2)
end
L0_1._go_to_entrance = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 ~= nil then
    L2_2 = A1_2.Length
    if L2_2 ~= 0 then
      goto lbl_8
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_8::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L7_2.Type
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ConditionType
    L9_2 = L9_2.FinishMainMission
    if L8_2 == L9_2 then
      L8_2 = tonumber
      L9_2 = L7_2.Param
      L8_2 = L8_2(L9_2)
      L10_2 = L2_2
      L9_2 = L2_2.TryGetMainMissionData
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if 0 < L8_2 and L9_2 ~= nil then
        L10_2 = L9_2.IsStart
        if L10_2 then
          L10_2 = L9_2.IsFinish
          if not L10_2 then
            return L8_2
          end
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_cur_mission_id_by_condition = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 ~= nil then
    L1_2 = #A0_2
    if L1_2 ~= 0 then
      goto lbl_8
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_8::
  L1_2 = false
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.MissionModule
    L8_2 = L7_2
    L7_2 = L7_2.GetSubMissionState
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.SubMissionState
    L8_2 = L8_2.Started
    if L7_2 == L8_2 then
      L1_2 = true
      break
    end
  end
  return L1_2
end
L0_1._has_in_progress_sub_mission = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.Value
    L3_2 = L3_2.IsArray
    if L3_2 then
      goto lbl_16
    end
  end
  do return L1_2 end
  ::lbl_16::
  L3_2 = L2_2.Value
  L3_2 = L3_2.ArrayValue
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.IsInt
    if L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L3_2[L7_2]
      L10_2 = L10_2.UintValue
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L0_1._get_const_value_uint_arr = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._activity_data
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuest"
  L4_2 = A0_2._activity_data
  L4_2 = L4_2.PanelID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_tab_btn_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_tab_item_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_story_reward
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_quest_reward
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = false
  return L2_2
end
L0_1._is_can_to_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._is_custom_loaded
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_act_reward_gamepad
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_special_zoom_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_story_reward
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_act_reward_gamepad_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.IsPreGuideComplete
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_2
  end
  return L2_2
end
L0_1.is_can_to_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_act_reward_gamepad
  L1_2(L2_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_act_reward_gamepad
  L1_2(L2_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_special_zoom_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story_reward
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_story_reward_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_special_zoom_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quest_reward
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_quest_reward_select = L1_1
return L0_1
