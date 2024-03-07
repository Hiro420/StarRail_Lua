local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBattleResultPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryBattleResultPage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "BattleResultDialog_FadeOut"
L2_1 = {}
L3_1 = "SpriteOutput/RankIcon/CommonRankBg_C.png"
L4_1 = "SpriteOutput/RankIcon/CommonRankBg_B.png"
L5_1 = "SpriteOutput/RankIcon/CommonRankBg_A.png"
L6_1 = "SpriteOutput/RankIcon/CommonRankBg_S.png"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L3_1 = tonumber
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ConstValueFantasticStoryExcelTable
L4_1 = L4_1.GetData
L5_1 = "Activity_Battle_Result_ShowTime"
L4_1 = L4_1(L5_1)
L4_1 = L4_1.Value
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FantasticStoryBattleResultPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleToMazeTransitFadeInEnd
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattleGamePhaseLeave
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._play_rank_anim
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._rank_anim_timer = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  A0_2._battle_game_phase = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  A0_2._fantastic_module = L1_2
  L1_2 = A0_2._fantastic_module
  L1_2 = L1_2.LastBattleParagraphID
  A0_2._last_battle_paragraph_id = L1_2
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetParagraphData
  L3_2 = A0_2._last_battle_paragraph_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._paragraph_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_record
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score
  L1_2(L2_2)
  L1_2 = A0_2._rank_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._rank_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_record_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.HistoryRecordScore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_record
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._fantastic_module
  L3_2 = L3_2.LastBattleNewRecord
  L1_2(L2_2, L3_2)
end
L0_1._setup_record = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._fantastic_module
  L1_2 = L1_2.LastBattleScore
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_score_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.FantasticStoryActivityUtils
  L4_2 = L4_2.GetBattleScoreRankTextID
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.FantasticStoryActivityModule
  L2_2 = L2_2.RankMinScore
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 0
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.FantasticStoryActivityModule
    L6_2 = L6_2.RankMinScore
    L6_2 = L6_2[L5_2]
    if L1_2 >= L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.async_load_sprite_to
      L8_2 = A0_2._binder
      L8_2 = L8_2.img_rank
      L9_2 = L5_2 + 1
      L9_2 = L2_1[L9_2]
      L6_2(L7_2, L8_2, L9_2)
      return
    end
  end
end
L0_1._setup_score = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_exiting
  if L1_2 then
    return
  end
  A0_2._is_exiting = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._battle_game_phase
    if L0_3 ~= nil then
      L0_3 = A0_2._battle_game_phase
      L0_3 = L0_3.FromPhaseType
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GamePhaseType
      L1_3 = L1_3.Adventure
      if L0_3 == L1_3 then
        L0_3 = G
        L0_3 = L0_3.NotifyManager
        L0_3 = L0_3.notify
        L1_3 = G
        L1_3 = L1_3.CS
        L1_3 = L1_3.NotifyType
        L1_3 = L1_3.BattleToMazeTransit
        L0_3(L1_3)
    end
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_animation
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_animation
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._rank_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._play_rank_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
return L0_1
