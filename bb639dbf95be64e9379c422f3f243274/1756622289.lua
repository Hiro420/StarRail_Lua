local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Maze.MazeMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTalkBtnsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTalkBtnsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTeamMemberListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTeamMemberListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Maze.ChallengeMazeBuffListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuffListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.MazeTargetPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMapPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeLeftTopBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeHudFuncEntrancePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeHudFuncEntrancePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideHintBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.GuideHintBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Maze.MazeChallengeStoryInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Maze.MazeChallengeInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Maze.MazeChallengeInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.NetStatus.NetStatusPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.NetStatus.NetStatusPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.EditVirtualTeamPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MissionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayGo.PlayGoPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeMainPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L1_1._challenge_info_refresh_time = 3
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._is_hide_cursor = true
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L1_1._on_adventure_phase_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeTriggerBattlePosture
  L4_2 = L1_1._on_show_posture_type_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMazeTriggerBattle
  L4_2 = L1_1._on_ui_maze_trigger_battle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeFinish
  L4_2 = L1_1._on_challenge_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowChallengeTargetAnimation
  L4_2 = L1_1._on_show_challenge_target_animation
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 103
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureTeamMemberListPanel
  L4_2 = G
  L4_2 = L4_2.AdventureTeamMemberListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._teammember_list_panel = L1_2
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_member_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChallengeMazeBuffListPanel
  L4_2 = G
  L4_2 = L4_2.MazeBuffListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_buff_list_panel = L1_2
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_list_panel_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeTargetPanel
  L4_2 = G
  L4_2 = L4_2.MazeTargetPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_target_panel = L1_2
  L1_2 = A0_2._maze_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeMapPanel
  L4_2 = G
  L4_2 = L4_2.MazeMapPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_map_panel = L1_2
  L1_2 = A0_2._maze_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_map
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MazeLeftTopBtnPanel
  L4_2 = G
  L4_2 = L4_2.MazeLeftTopBtnPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._maze_left_top_btnPanel = L1_2
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_left_top_btn
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._maze_left_top_btnPanel
  L2_2 = L1_2
  L1_2 = L1_2.setup_leave
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.CurrentChallengeInstance
  L1_2 = L1_2.ChallengeDataRef
  L1_2 = L1_2.GroupType
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Memory
  if L1_2 == L3_2 then
    L2_2 = "UIText_challenge_desc_Exit"
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ChallengeGroupType
    L3_2 = L3_2.Story
    if L1_2 == L3_2 then
      L2_2 = "UIText_ChallengeStory_ReturnConfirm"
    end
  end
  L3_2 = A0_2._maze_left_top_btnPanel
  L4_2 = L3_2
  L3_2 = L3_2.custom_leave_callback
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.ConfirmDialogUtil
    L0_3 = L0_3.ShowOkCancelHint
    L1_3 = L2_2
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.TextID
    L2_3 = L2_3.empty
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4
      if A0_4 then
        L1_4 = L0_1.CurrentChallengeInstance
        if L1_4 ~= nil then
          L1_4 = true
          L2_4 = false
          L3_4 = false
          L4_4 = L0_1.CurrentChallengeInstance
          L4_4 = L4_4.ChallengeDataRef
          L4_4 = L4_4.GroupID
          L5_4 = L0_1
          L6_4 = L5_4
          L5_4 = L5_4.SetContinueChallengeData
          L7_4 = L1_4
          L8_4 = L2_4
          L9_4 = L3_4
          L10_4 = L4_4
          L5_4(L6_4, L7_4, L8_4, L9_4, L10_4)
        end
        L1_4 = A0_2
        L2_4 = L1_4
        L1_4 = L1_4.show_full_screen_block_for_packet
        L3_4 = CS
        L3_4 = L3_4.NIJNBICAPPA
        L3_4 = L3_4.DPBNIGGBOMJ
        L1_4(L2_4, L3_4)
        L1_4 = L0_1
        L2_4 = L1_4
        L1_4 = L1_4.LeaveChallenge
        L1_4(L2_4)
      end
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel_without_binder
  L5_2 = G
  L5_2 = L5_2.EditVirtualTeamPanel
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._edit_virtual_team_panel = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.MazeHudFuncEntrancePanel
  L6_2 = G
  L6_2 = L6_2.MazeHudFuncEntrancePanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._hud_func_entrance_panel = L3_2
  L3_2 = A0_2._hud_func_entrance_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_hud_func_entrance
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.AdventureTalkBtnsPanel
  L6_2 = G
  L6_2 = L6_2.AdventureTalkBtnsPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._talk_btns_panel = L3_2
  L3_2 = A0_2._talk_btns_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_talk_btns
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AppUtils
  L3_2 = L3_2.IsPSPlatform
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.PlayGoPanel
    L6_2 = G
    L6_2 = L6_2.PlayGoPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._playgo_panel = L3_2
    L3_2 = A0_2._playgo_panel
    L4_2 = L3_2
    L3_2 = L3_2.async_bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_netstatus_panel
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.NetStatusPanel
  L6_2 = G
  L6_2 = L6_2.NetStatusPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._netstatus_panel = L3_2
  L3_2 = A0_2._netstatus_panel
  L4_2 = L3_2
  L3_2 = L3_2.async_bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_netstatus_panel
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.GuideHintBtnPanel
  L6_2 = G
  L6_2 = L6_2.GuideHintBtnPanelBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._guide_hint_panel = L3_2
  L3_2 = A0_2._guide_hint_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tutorial_guide_hint
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_challenge_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_challenge_info_panel
  L5_2 = L5_2.Prefab
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_challenge_info_panel
  L6_2 = L6_2.transform
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChallengeGroupType
  L4_2 = L4_2.Memory
  if L1_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.MazeChallengeInfoPanel
    L7_2 = G
    L7_2 = L7_2.MazeChallengeInfoPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    A0_2._challenge_info_panel = L4_2
    L4_2 = A0_2._challenge_info_panel
    L5_2 = L4_2
    L4_2 = L4_2.bind
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChallengeGroupType
    L4_2 = L4_2.Story
    if L1_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2.create_panel
      L6_2 = G
      L6_2 = L6_2.MazeChallengeStoryInfoPanel
      L7_2 = G
      L7_2 = L7_2.MazeChallengeInfoPanelBinder
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      A0_2._challenge_info_panel = L4_2
      L4_2 = A0_2._challenge_info_panel
      L5_2 = L4_2
      L4_2 = L4_2.bind
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.MissionTalkPanel
  L7_2 = G
  L7_2 = L7_2.MissionTalkPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._mission_talk_panel = L4_2
  L4_2 = A0_2._mission_talk_panel
  L5_2 = L4_2
  L4_2 = L4_2.bind
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_mission_talk_panel
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._mission_talk_panel
  L5_2 = L4_2
  L4_2 = L4_2.safe_set_active
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.MazeMechanismHintInfoPanel
  L7_2 = G
  L7_2 = L7_2.MazeMechanismHintInfoPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._mechanism_hint_info_panel = L4_2
  L4_2 = A0_2._mechanism_hint_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.bind
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_maze_mechanism_hint
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.MazeMechanismBarPanel
  L7_2 = G
  L7_2 = L7_2.MazeMechanismBarPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._mechanism_bar_panel = L4_2
  L4_2 = A0_2._mechanism_bar_panel
  L5_2 = L4_2
  L4_2 = L4_2.bind
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_mechanism_bar
  L4_2(L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L1_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_challenge_info
  L1_2(L2_2)
end
L1_1._on_show_challenge_target_animation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._teammember_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._challenge_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._maze_buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Maze.MazeEnCounterHintPage"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._EnCounterHintPage = L2_2
end
L1_1._on_show_posture_type_ui = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L1_1._on_adventure_phase_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1.CurrentChallengeInstance
  L2_2 = L2_2.ChallengeDataRef
  L2_2 = L2_2.GroupType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChallengeGroupType
  L3_2 = L3_2.Memory
  if L2_2 == L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.Challenge.Maze.ChallengeResultDialog"
    L5_2 = A1_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ChallengeGroupType
    L3_2 = L3_2.Story
    if L2_2 == L3_2 then
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_async_show
      L4_2 = "Ui.ChallengeStory.Maze.ChallengeStoryResultDialog"
      L5_2 = A1_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L1_1._on_challenge_finish = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L1_1.enable_async_instantiate = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L1_1._on_ui_maze_trigger_battle = L2_1
return L1_1
