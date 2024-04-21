local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Maze.MazeChallengeInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeChallengeInfoPanel"
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
    L1_2 = A0_2._challenge_instance
    L2_2 = L1_2
    L1_2 = L1_2.RefreshChallengeTarget
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_cur_progress
    L1_2(L2_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_instance
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.CurrentProgress
  L1_2 = L1_2.TurnCost
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.ChallengeCountDown
  L2_2 = L2_2 - L1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_turn_left
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_challenge_target
  L5_2 = A0_2._challenge_instance
  L5_2 = L5_2.CurrentProgress
  L5_2 = L5_2.ChallengeTargetDatas
  L3_2(L4_2, L5_2)
end
L0_1._setup_cur_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_instance
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.LastProgressBefore
  L1_2 = L1_2.TurnCost
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.ChallengeCountDown
  L2_2 = L2_2 - L1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_turn_left
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_challenge_target
  L5_2 = A0_2._challenge_instance
  L5_2 = L5_2.LastProgressBefore
  L5_2 = L5_2.ChallengeTargetDatas
  L3_2(L4_2, L5_2)
end
L0_1._setup_last_progress = L1_1
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
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_turn_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_turn_left = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.challenge_target_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.challenge_target_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_show_progress
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._setup_challenge_target = L1_1
return L0_1
