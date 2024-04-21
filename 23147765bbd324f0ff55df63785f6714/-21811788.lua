local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeResultPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityStrongChallengeModule
L1_1 = require
L2_1 = "Ui.Activity.ActivityStrongChallenge.StrongChallengeUtil"
L1_1 = L1_1(L2_1)
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "StrongChallengeResultPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.StrongChallengeResultPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._battle_result_data = A1_2
  A0_2._stage_data = A2_2
  A0_2._last_battle_avatars = A3_2
  A0_2._last_battle_buff_ids = A4_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._return_to_maze
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_retry
  L4_2 = A0_2._enter_battle
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._battle_result_data
  L2_2 = A0_2._binder
  L2_2 = L2_2.high_score_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.HistoryHighScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dmg_percent_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.DamagePercentStr
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dmg_percent_score_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.DamageScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_delay_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.LeftTurnsPercentStr
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_delay_score_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = L1_2.LeftTurnsScore
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.total_score_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.TotalScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.new_record_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IsNewRecord
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rank_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.rank_text
  L5_2 = L1_2.TotalScore
  L6_2 = A0_2._stage_data
  L6_2 = L6_2.ScoreInterval
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.rank_bg
  L5_2 = L1_1.rank_bg
  L6_2 = L1_2.TotalScore
  L7_2 = A0_2._stage_data
  L7_2 = L7_2.ScoreInterval
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.BMCOMIOIPOA
  L3_2 = A0_2._stage_data
  L3_2 = L3_2.StageID
  L4_2 = A0_2._last_battle_avatars
  L5_2 = A0_2._last_battle_buff_ids
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._enter_battle = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.ReturnToMaze
  L1_2(L2_2)
end
L2_1._return_to_maze = L3_1
return L2_1
