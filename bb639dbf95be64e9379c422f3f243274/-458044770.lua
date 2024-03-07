local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.RogueEndlessUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Finish.RogueEndlessBattleResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessBattleResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "RogueEndless_ActivityScore_Rank_"
L3_1 = 1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = true
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEndlessBattleResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_const_value
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.rank_point = L1_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ConstValueClientExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L2_1
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.Value
    L5_2 = L5_2.IntValue
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.rank_point
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.init_const_value = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.EndlessProgressInfo
  L1_2 = L1_2.BestBattleResult
  A0_2.best_result = L1_2
  L1_2 = L1_1.EndlessProgressInfo
  L1_2 = L1_2.BattleResult
  A0_2.current_result = L1_2
  L1_2 = L1_1.EndlessProgressInfo
  L1_2 = L1_2.CurAreaID
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.RogueEndlessGetAreaData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.area_data = L2_2
end
L0_1.init_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rank
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_extra_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_btn_clickable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_btn_clickable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2.fadeInTimer
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
  end
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.fadeInTimer = L1_2
  L1_2 = A0_2.fadeInTimer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2.fadeInTimer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_left
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_click_right
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_btn_clickable = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._setup_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_top_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A0_2.best_result
  L4_2 = L4_2.Score
  L5_2 = A0_2.current_result
  L5_2 = L5_2.Score
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_score_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.current_result
  L3_2 = L3_2.Score
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_floor_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.current_result
  L3_2 = L3_2.Layer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.new_record_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.current_result
  L3_2 = L3_2.IsNewScoreRecord
  L1_2(L2_2, L3_2)
end
L0_1._setup_result_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.current_result
  L1_2 = L1_2.ExtraScore
  L1_2 = L1_2 ~= 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_base_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.current_result
  L4_2 = L4_2.BaseScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_left_turn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityRogueEndless_Score_Ex_Tip_2"
  L5_2 = A0_2.current_result
  L5_2 = L5_2.LeftRoundCnt
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_extra_score
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = "+"
  L5_2 = A0_2.current_result
  L5_2 = L5_2.ExtraScore
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_extra_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.current_result
  L1_2 = L1_2.Score
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.RogueEndlessGetScoreRank
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ActivityRankIconExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.rank_txt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Text
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_rank_bg
  L7_2 = L3_2.CommonRankIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_rank = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rogue_endless_target_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_with_given_score
  L3_2 = A0_2.best_result
  L3_2 = L3_2.Score
  L4_2 = A0_2.area_data
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_target = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.BattleToMazeTransit
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.LeaveRogue
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.AIGFOAHKOKD
  L3_2 = A0_2.area_data
  L3_2 = L3_2.AreaID
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_challenge = L4_1
return L0_1
