local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueMainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.dimension_btn
  L4_2 = A0_2._on_dimension_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.main_mission_btn
  L4_2 = A0_2._on_main_mission_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.sub_mission_btn
  L4_2 = A0_2._on_sub_mission_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.start_btn
  L4_2 = A0_2._on_start_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.long_term_reward_btn
  L4_2 = A0_2._on_long_term_reward_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_tutorial_finish_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.ANFCPIDILAE
  L4_2 = L0_1._on_get_story_info_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.KOIOGOIEBDC
  L4_2 = L0_1._on_chess_rogue_query_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChessRogueDimensionCabinet"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_dimension
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChessRogueMainStoryReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_main_story
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ChessRogueLongTermReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot_long_term_reward
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ChessRogueMainPageSeen
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2.ChessRogueMainPageSeen = true
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ActivityForceRefreshRedDot
    L1_2(L2_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetChessRogueStoryInfoCsReq
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dimension_btn_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_mission_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_sub_mission_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_long_term_reward_view
  L1_2(L2_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._start_btn_cbk = A1_2
  A0_2._start_btn_listener = A2_2
end
L0_1.register_start_btn_click_callback = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsGuideOneFinished
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.IsGuideTwoFinished
    L1_2 = L1_2()
  end
  A0_2._is_stage_one_finished = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsFinalGuideUnlocked
  L1_2 = L1_2()
  A0_2._is_stage_two_finished = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsFinalGuideFinished
  L1_2 = L1_2()
  A0_2._is_final_stage_finished = L1_2
end
L0_1._get_cur_tutorial_finish_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_stage_one_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.dimension_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._is_final_stage_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.dimension_progress_txt
    L1_2 = L1_2.transform
    L1_2 = L1_2.parent
    L1_2 = L1_2.parent
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1.ChessRogueDimensionData
  L1_2 = L1_2.DimensionInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxTotalDimensionValue
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.ChessRogueDimensionData
  L2_2 = L2_2.DimensionInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetCurTotalDimensionValue
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.dimension_progress_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_RogueDLC_Main_Percent"
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = L2_2 * 100
  L8_2 = L8_2 / L1_2
  L7_2, L8_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_dimension_btn_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_stage_one_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_complete_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_final_stage_finished
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_progress_complete_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_final_stage_finished
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_btn
  L1_2.interactable = false
end
L0_1._setup_main_mission_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_stage_one_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_mission_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._is_final_stage_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_mission_progress_root
    L1_2 = L1_2.transform
    L1_2 = L1_2.parent
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_mission_btn
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_mission_progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_sub_mission_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_final_stage_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.long_term_reward_btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_term_reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.setup_long_term_reward_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.long_term_reward_btn
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_mission_btn
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_mission_btn
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.dimension_btn
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.start_btn
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.main_mission_in_control_btn
  L2_2.enabled = A1_2
end
L0_1.set_all_btn_interact_status = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Dimensions.ChessRogueDimensionPage"
  L1_2(L2_2)
end
L0_1._on_dimension_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.show_main_mission_replay_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_term_reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_all_btn_interact_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIPanelSwitch
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = "MainMission"
  L4_2 = A0_2._owner
  L4_2 = L4_2.guid
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_main_mission_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueSubMissionReplayPage"
  L1_2(L2_2)
end
L0_1._on_sub_mission_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.ChessRogue.OutsideReward.ChessRogueLongTermRewardDialog"
  L1_2(L2_2)
end
L0_1._on_long_term_reward_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limit_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_time_limit_reward_expire = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.CMCHCMDECPE
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.KOIOGOIEBDC
  L1_2(L2_2, L3_2)
  A0_2._wait_rsp = true
end
L0_1._on_start_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_mission_btn
  L1_2.interactable = true
  L1_2 = A0_2._is_final_stage_finished
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_progress_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_progress_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.ChessRogueDimensionData
    L3_2 = L3_2.ReplayInfo
    L4_2 = L3_2
    L3_2 = L3_2.GetMainStoryUnlockedNum
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_total_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.ChessRogueDimensionData
    L3_2 = L3_2.ReplayInfo
    L3_2 = L3_2.MainStoryList
    L3_2 = L3_2.Count
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_progress_complete_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_progress_complete_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.ChessRogueDimensionData
    L3_2 = L3_2.ReplayInfo
    L4_2 = L3_2
    L3_2 = L3_2.GetMainStoryUnlockedNum
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.main_mission_total_complete_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.ChessRogueDimensionData
    L3_2 = L3_2.ReplayInfo
    L3_2 = L3_2.MainStoryList
    L3_2 = L3_2.Count
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.sub_mission_btn
  L1_2.interactable = true
  L1_2 = A0_2._is_final_stage_finished
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_mission_progress_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_mission_progress_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_mission_progress_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.ChessRogueDimensionData
    L3_2 = L3_2.ReplayInfo
    L4_2 = L3_2
    L3_2 = L3_2.GetUnlockedSubStoryNum
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.sub_mission_total_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = L1_1.ChessRogueDimensionData
    L3_2 = L3_2.ReplayInfo
    L3_2 = L3_2.SubStoryList
    L3_2 = L3_2.Count
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_get_story_info_rsp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_rsp
  if not L1_2 then
    return
  end
  A0_2._wait_rsp = false
  L1_2 = A0_2._start_btn_cbk
  if L1_2 then
    L1_2 = A0_2._start_btn_listener
    if L1_2 then
      L1_2 = A0_2._start_btn_cbk
      L2_2 = A0_2._start_btn_listener
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        return
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.long_term_reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_all_btn_interact_status
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_chess_rogue_query_sc_rsp = L2_1
return L0_1
