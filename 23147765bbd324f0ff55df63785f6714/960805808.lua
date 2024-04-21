local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Maze.MazeChallengeInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeChallengeStoryInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CurChallengeProgressUpdate
  L4_2 = A0_2._on_cur_challenge_progress_update
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ChallengeStory_CurrentPoint"
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_instance = nil
  A0_2._challenge_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  A0_2._challenge_instance = L1_2
  L1_2 = A0_2._challenge_instance
  if nil ~= L1_2 then
    L1_2 = A0_2._challenge_instance
    L1_2 = L1_2.ChallengeDataRef
    A0_2._challenge_data = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._setup_name
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_cur_progress
    L1_2(L2_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_instance
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._challenge_instance
  L2_2 = L1_2
  L1_2 = L1_2.RefreshChallengeTarget
  L1_2(L2_2)
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.Score
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_turn_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_challenge_target
  L4_2 = A0_2._challenge_instance
  L4_2 = L4_2.CurrentProgress
  L4_2 = L4_2.ChallengeTargetDatas
  L2_2(L3_2, L4_2)
end
L0_1._setup_cur_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_progress
  L1_2(L2_2)
end
L0_1._on_cur_challenge_progress_update = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_progress
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_turn_cost_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MazeChallengeCountHint_Refresh"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_target_animation
  L1_2(L2_2)
end
L0_1.refresh_challenge_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name_new
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChallengeModule
  L3_2 = L3_2.CurrentChallengeInstance
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.StoryExtraInfoRow
  L4_2 = L4_2.ClearScore
  L5_2 = A0_2._binder
  L5_2 = L5_2.clear_target_panel
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.clear_target_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_text
  L7_2 = "UIText_ChallengeStory_ClearTarget"
  L8_2 = {}
  L9_2 = L4_2
  L8_2[1] = L9_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._challenge_data
  L5_2 = L5_2.Score
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = L5_2
  L8_2 = L3_2.Score
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.clear_target_panel
  L7_2 = L6_2
  L6_2 = L6_2._show_status_panel
  L8_2 = true
  L6_2(L7_2, L8_2)
  if not (L4_2 <= L5_2) then
    L6_2 = A0_2._challenge_data
    L6_2 = L6_2.IsFinish
    if not L6_2 then
      goto lbl_57
    end
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.clear_target_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_status
  L8_2 = true
  L6_2(L7_2, L8_2)
  goto lbl_66
  ::lbl_57::
  L6_2 = A0_2._binder
  L6_2 = L6_2.clear_target_panel
  L7_2 = L6_2
  L6_2 = L6_2._setup_complete_status_by_target_state
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.ChallengeTargetState
  L8_2 = L8_2.None
  L6_2(L7_2, L8_2)
  ::lbl_66::
  L6_2 = A0_2._binder
  L6_2 = L6_2.challenge_target_panel
  L7_2 = L6_2
  L6_2 = L6_2.setup_view
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.challenge_target_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_show_progress
  L8_2 = false
  L6_2(L7_2, L8_2)
end
L0_1._setup_challenge_target = L1_1
return L0_1
