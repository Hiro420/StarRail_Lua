local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Challenge.FantasticStoryChallengePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Challenge.FantasticStoryChallengeLevelTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewMonsterPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengePreviewMonsterBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffSlotIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStorySpecialZoomPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryChallengePage"
L2_1 = G
L2_1 = L2_1.BasePage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AdventureStatic
L2_1 = {}
L3_1 = "SpriteOutput/RankIcon/CommonRankBg_C.png"
L4_1 = "SpriteOutput/RankIcon/CommonRankBg_B.png"
L5_1 = "SpriteOutput/RankIcon/CommonRankBg_A.png"
L6_1 = "SpriteOutput/RankIcon/CommonRankBg_S.png"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FantasticStoryChallengePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  A0_2._fantastic_module = L1_2
  L1_2 = {}
  A0_2._slot_panels = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedParagraphData
  L1_2 = L1_2(L2_2)
  A0_2._paragraph_data_list = L1_2
  A0_2._equip_any_buff = false
  L2_2 = A0_2
  L1_2 = A0_2._init_battle_info
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._select_avatar_data = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.WorldLevel
  L2_2 = {}
  A0_2._stage_rows = L2_2
  L2_2 = {}
  A0_2._monster_lists = L2_2
  L2_2 = 0
  L3_2 = A0_2._paragraph_data_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.StageExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L1_1.GetStageIDByEventID
    L8_2 = A0_2._paragraph_data_list
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.FightEventID
    L9_2 = L1_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2._stage_rows
    L8_2 = A0_2._paragraph_data_list
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ParagraphID
    L7_2[L8_2] = L6_2
    L7_2 = A0_2._monster_lists
    L8_2 = A0_2._paragraph_data_list
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ParagraphID
    L9_2 = A0_2._paragraph_data_list
    L9_2 = L9_2[L5_2]
    L9_2 = L9_2.DisplayMonsterList
    L7_2[L8_2] = L9_2
  end
end
L0_1._init_battle_info = L3_1
function L3_1(A0_2, A1_2)
  A0_2._init_paragraph_id = A1_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_detail
  L4_2 = A0_2._on_btn_buff_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_challenge
  L4_2 = A0_2._on_btn_go_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FantasticStoryEnterBattleFail
  L4_2 = A0_2._on_enter_battle_fail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.PreviewMonsterPanel
  L4_2 = G
  L4_2 = L4_2.ChallengePreviewMonsterBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_panel = L1_2
  L1_2 = A0_2._monster_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_monster_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2._default_paragraph_id = 1
  L1_2 = 0
  L2_2 = A0_2._paragraph_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._paragraph_data_list
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.IsUnlock
    if L5_2 then
      L5_2 = A0_2._paragraph_data_list
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.ParagraphID
      A0_2._default_paragraph_id = L5_2
      L5_2 = A0_2._paragraph_data_list
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.HistoryRecordScore
      if L5_2 == 0 then
        break
      end
    end
  end
  L1_2 = A0_2._init_paragraph_id
  if L1_2 then
    L1_2 = A0_2._init_paragraph_id
    if L1_2 then
      goto lbl_30
    end
  end
  L1_2 = A0_2._default_paragraph_id
  ::lbl_30::
  A0_2._default_paragraph_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L1_2 = L1_2.AutoShowParagraphID
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.FantasticStoryActivityModule
    L1_2 = L1_2.AutoShowParagraphID
    A0_2._default_paragraph_id = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.FantasticStoryActivityModule
    L1_2.AutoShowParagraphID = nil
  end
end
L0_1._init_default_paragraph_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._init_default_paragraph_id
  L1_2(L2_2)
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetParagraphData
  L3_2 = A0_2._default_paragraph_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._select_paragraph_data = L1_2
  L1_2 = A0_2._default_paragraph_id
  A0_2._select_paragraph_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_buff_slot_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_special_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._fantastic_module
  L1_2 = L1_2.BuffSlotEquipedBuff
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedParagraphData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[0]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.FantasticStoryActivityModule
  L2_2 = L2_2.ChallengePageShowByBattleExit
  if L2_2 and L1_2 then
    L2_2 = L1_2.IsFinish
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.TutorialTaskUnlock
      L4_2 = "5063"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rpg_animation_event_root
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = A0_2._fade_animation
  L4_2 = L4_2.EntranceAnimationClip
  L4_2 = L4_2.name
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_play_buff_slot_equip_anim
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_play_rank_animation
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._slot_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.refresh
    L8_2 = A0_2._select_paragraph_id
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_slot_panels = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._select_paragraph_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2._select_paragraph_data
  L2_2 = L2_2.EnvBuffID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_env_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BuffDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = L1_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_challenge_target
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityFanaticStory_Entrance_Tip_3"
  L5_2 = A0_2._select_paragraph_data
  L5_2 = L5_2.TurnLimit
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._monster_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._monster_lists
  L5_2 = A0_2._select_paragraph_id
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._stage_rows
  L6_2 = A0_2._select_paragraph_id
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.StageID
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._monster_panel
  L3_2 = L2_2
  L2_2 = L2_2.reset_scroll_view_position
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_navigation
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_unlock_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_slot_panels
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_score
  L2_2(L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._select_paragraph_data
  L3_2 = L3_2.HistoryRecordScore
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._select_paragraph_data
  L1_2 = L1_2.HistoryRecordScore
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.FantasticStoryActivityUtils
    L3_2 = L3_2.GetBattleScoreRankTextID
    L4_2 = A0_2._select_paragraph_data
    L4_2 = L4_2.HistoryRecordScore
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._select_paragraph_data
    L3_2 = L3_2.HistoryRecordScore
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityCommon_BattleScore_Zero"
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FantasticStoryActivityModule
  L1_2 = L1_2.RankMinScore
  L1_2 = L1_2.Length
  L1_2 = L1_2 - 1
  L2_2 = 0
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._select_paragraph_data
    L5_2 = L5_2.HistoryRecordScore
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.FantasticStoryActivityModule
    L6_2 = L6_2.RankMinScore
    L6_2 = L6_2[L4_2]
    if L5_2 >= L6_2 then
      L6_2 = A0_2
      L5_2 = A0_2.async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_rank
      L8_2 = L4_2 + 1
      L8_2 = L2_1[L8_2]
      L5_2(L6_2, L7_2, L8_2)
      return
    end
  end
end
L0_1._refresh_score = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._select_paragraph_data
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_paragraph_lock_state
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._refresh_buff_select_state
    L1_2(L2_2)
  end
  L1_2 = A0_2._select_paragraph_data
  L1_2 = L1_2.IsUnlock
  L1_2 = A0_2._equip_any_buff
  L1_2 = not L1_2 or L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btns
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_unlock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._select_paragraph_data
  L1_2 = L1_2.ScheduleData
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._select_paragraph_data
    L1_2 = L1_2.IsPreChapterFinish
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_unlock_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityFanaticStory_UnlockTip_3"
      L4_2 = A0_2._select_paragraph_data
      L4_2 = L4_2.UnlockChapterID
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_unlock_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityFanaticStory_UnlockTip_4"
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.FantasticStoryActivityModule
      L4_2 = L4_2.ParagraphFinishScore
      L1_2(L2_2, L3_2, L4_2)
    end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_unlock_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityRaid_Countdown"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTime
    L3_2 = A0_2._select_paragraph_data
    L3_2 = L3_2.ScheduleData
    L3_2 = L3_2.BeginTimeDate
    L4_2 = A0_2._refresh_unlock_state
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_paragraph_lock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._equip_any_buff = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L3_2 = L1_2
  L2_2 = L1_2.GetSortedBuffSlotData
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L1_2
    L7_2 = L1_2.GetSlotEquipBuffID
    L9_2 = L2_2[L6_2]
    L9_2 = L9_2.SlotID
    L10_2 = A0_2._select_paragraph_id
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 ~= nil then
      A0_2._equip_any_buff = true
      break
    end
  end
  L3_2 = A0_2._equip_any_buff
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_unlock_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityFanaticStory_Entrance_Tip_4"
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_buff_select_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._fantastic_module
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedBuffSlotData
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_icon
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.FantasticStoryBuffSlotIconPanel
    L9_2 = G
    L9_2 = L9_2.FantasticStoryBuffSlotIconPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_buff_icon
    L9_2 = L9_2[L5_2]
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = L5_2 - 1
    L9_2 = L1_2[L9_2]
    L10_2 = false
    L11_2 = A0_2._select_paragraph_id
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_btn_root_callback
    L9_2 = A0_2._on_buff_slot_click
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.Prefs
    L7_2 = L7_2.User
    L8_2 = L7_2.FantasticStoryNewUnlockBuffSlot
    L9_2 = L8_2
    L8_2 = L8_2.Contains
    L10_2 = L5_2 - 1
    L10_2 = L1_2[L10_2]
    L10_2 = L10_2.SlotID
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = A0_2._buff_icon_unlock_anim_timer
      if L8_2 == nil then
        L9_2 = A0_2
        L8_2 = A0_2._add_count_down_timer
        L10_2 = A0_2._try_play_buff_icon_unlock_anim
        L12_2 = A0_2
        L11_2 = A0_2.fade_in_duration
        L11_2, L12_2 = L11_2(L12_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        A0_2._buff_icon_unlock_anim_timer = L8_2
        L8_2 = A0_2._buff_icon_unlock_anim_timer
        L9_2 = L8_2
        L8_2 = L8_2.reset
        L8_2(L9_2)
        L8_2 = A0_2._buff_icon_unlock_anim_timer
        L9_2 = L8_2
        L8_2 = L8_2.start
        L8_2(L9_2)
      end
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._slot_panels
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._init_buff_slot_panels = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._buff_icon_unlock_anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = pairs
  L3_2 = A0_2._slot_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2.FantasticStoryNewUnlockBuffSlot
    L8_2 = L7_2
    L7_2 = L7_2.Contains
    L9_2 = L6_2.slot_id
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.play_unlock_anim
      L7_2(L8_2)
      L7_2 = L1_2.FantasticStoryNewUnlockBuffSlot
      L8_2 = L7_2
      L7_2 = L7_2.Remove
      L9_2 = L6_2.slot_id
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
end
L0_1._try_play_buff_icon_unlock_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._slot_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._fantastic_module
    L6_2 = L6_2.BuffSlotEquipedBuff
    L7_2 = L6_2
    L6_2 = L6_2.Contains
    L8_2 = L5_2.slot_id
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = A0_2._fantastic_module
      L7_2 = L6_2
      L6_2 = L6_2.GetSlotEquipBuffID
      L8_2 = L5_2.slot_id
      L9_2 = A0_2._select_paragraph_data
      L9_2 = L9_2.ParagraphID
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 ~= nil then
        L7_2 = L5_2
        L6_2 = L5_2.play_equip_anim
        L6_2(L7_2)
      else
        L7_2 = L5_2
        L6_2 = L5_2.play_unequip_anim
        L6_2(L7_2)
      end
    end
  end
  L1_2 = A0_2._fantastic_module
  L1_2 = L1_2.BuffSlotEquipedBuff
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
end
L0_1._try_play_buff_slot_equip_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L1_2 = L1_2.LastBattleNewRecord
  if L1_2 then
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
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.FantasticStoryActivityModule
    L1_2.LastBattleNewRecord = false
  end
end
L0_1._try_play_rank_animation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FantasticStorySpecialZoomPanel
  L4_2 = G
  L4_2 = L4_2.FantasticStorySpecialZoomPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._special_panel = L1_2
  L1_2 = A0_2._special_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_special_zoom
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._special_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._init_special_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_root
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_items = L1_2
  L1_2 = 0
  L2_2 = A0_2._paragraph_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FantasticStoryChallengeLevelTabItem
    L8_2 = G
    L8_2 = L8_2.FantasticStoryChallengeLevelTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_paragraph_data
    L8_2 = A0_2._paragraph_data_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_level_tab_item_select
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._paragraph_data_list
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.ParagraphID
    L7_2 = A0_2._select_paragraph_data
    L7_2 = L7_2.ParagraphID
    if L6_2 == L7_2 then
      L6_2 = L4_2 + 1
      A0_2._default_tab_index = L6_2
    end
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._default_tab_index
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_scroll_rect_percent
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._init_tab_control = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._default_tab_index
  L2_2 = A0_2._binder
  L2_2 = L2_2.lay_out_group_tab
  L2_2 = L2_2.cellSize
  L2_2 = L2_2.y
  L1_2 = L1_2 * L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_transform_tab_root
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  if L1_2 > L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_scroll_rect
    L2_2 = L1_2
    L1_2 = L1_2.SetVerticalScrollPercent
    L3_2 = 0
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_scroll_rect
    L2_2 = L1_2
    L1_2 = L1_2.SetVerticalScrollPercent
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._init_scroll_rect_percent = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L1_2.ChallengePageShowByBattleExit = false
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._select_paragraph_data = A1_2
  L2_2 = A1_2.ParagraphID
  A0_2._select_paragraph_id = L2_2
  L2_2 = A0_2._select_paragraph_data
  L2_2 = L2_2.DefaultAvatarDataList
  A0_2._select_avatar_data = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_right
  L3_2 = L2_2
  L2_2 = L2_2.SetVerticalScrollPercent
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_level_tab_item_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffSlotPage"
  L4_2 = A1_2.slot_id
  L5_2 = A0_2._select_paragraph_id
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_buff_slot_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ActivityModule
  L4_2 = L3_2
  L3_2 = L3_2.GetFantasticStoryActivityData
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.ResidentActivityModule
  L5_2 = L4_2
  L4_2 = L4_2.GetResidentFantasticStoryActivityData
  L4_2 = L4_2(L5_2)
  if L3_2 then
    L6_2 = L3_2
    L5_2 = L3_2.IsInSchedule
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_29
    end
  end
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.IsInSchedule
    L5_2 = L5_2(L6_2)
    ::lbl_29::
    if L5_2 then
      L5_2 = G
      L5_2 = L5_2.UIManager
      L5_2 = L5_2.load_and_async_show
      L6_2 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffSlotPage"
      L7_2 = nil
      L8_2 = A0_2._select_paragraph_id
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if A1_2 and A2_2 then
        L6_2 = L5_2.LuaTable
        L7_2 = L6_2
        L6_2 = L6_2.set_exit_callback
        L8_2 = A1_2
        L9_2 = A2_2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L0_1._on_btn_buff_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._select_paragraph_data
  L2_2 = L2_2.RecommendNature
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.Team.LocalTeamEditPage"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = LocalTeamSourceType
  L5_2 = L5_2.FantasticStory
  function L6_2()
    local L0_3, L1_3
    A0_2._start_challenge = true
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3._get_avatar_id_list
    L0_3 = L0_3(L1_3)
    A0_2._avatar_id_list = L0_3
  end
  L7_2 = A0_2
  L8_2 = {}
  L9_2 = 6
  L8_2[1] = L9_2
  L9_2 = true
  L10_2 = nil
  L11_2 = L1_2
  L12_2 = nil
  L13_2 = A0_2._select_avatar_data
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.FantasticStoryActivityUtils
  L3_2 = L3_2.TryGetTrialAvatarsByParagraphID
  L4_2 = A0_2._select_paragraph_data
  L4_2 = L4_2.ParagraphID
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.Team.TeamDataProviders.TrialAvatarTeamDataProvider"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.create_lua_table_from_cs_list
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L2_2
  L5_2 = L2_2.set_team_data_provider
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.show
  L5_2(L6_2)
  L6_2 = L2_2
  L5_2 = L2_2.setup_team_buff_panel
  L7_2 = "UIText_ActivityFanaticStory_Power"
  L8_2 = A0_2._on_btn_buff_detail
  L9_2 = A0_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L2_2
  L5_2 = L2_2.setup_weakness_title
  L7_2 = "UIText_BoxingClub_Challenge_StageWeakness"
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.setup_multi_list_avatar_select_panel
  L8_2 = A0_2
  L7_2 = A0_2._get_team_edit_list
  L7_2 = L7_2(L8_2)
  L8_2 = {}
  L9_2 = "UIText_TeamPage_Recommend"
  L10_2 = "UIText_TeamPage_MyTeam"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L2_2
  L5_2 = L2_2.set_exit_callback
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = L2_2._cur_edit_team
    L1_3 = L0_3
    L0_3 = L0_3.GetMemberAvatars
    L2_3 = true
    L0_3 = L0_3(L1_3, L2_3)
    A0_2._select_avatar_data = L0_3
  end
  L5_2(L6_2, L7_2)
end
L0_1._on_btn_go_challenge = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_slot_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_unlock_state
  L1_2(L2_2)
  L1_2 = A0_2._start_challenge
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_view_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    A0_2._start_challenge = false
    L2_2 = A0_2
    L1_2 = A0_2._on_start_challenge
    L3_2 = A0_2._avatar_id_list
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_battle_fail = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetFantasticStoryActivityData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.PanelID
    if A1_2 ~= L3_2 then
      goto lbl_20
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
  ::lbl_20::
end
L0_1._on_activity_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_all_obtained_avatars
  L1_2 = L1_2()
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.FantasticStoryActivityUtils
  L2_2 = L2_2.TryGetTrialAvatarsByParagraphID
  L3_2 = A0_2._select_paragraph_data
  L3_2 = L3_2.ParagraphID
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = 0
    L10_2 = A0_2._select_paragraph_data
    L10_2 = L10_2.RecommendAvatar
    L10_2 = L10_2.Length
    L10_2 = L10_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L8_2.ID
      L14_2 = A0_2._select_paragraph_data
      L14_2 = L14_2.RecommendAvatar
      L14_2 = L14_2[L12_2]
      if L13_2 == L14_2 then
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L3_2
        L15_2 = L8_2
        L13_2(L14_2, L15_2)
        break
      end
    end
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.remove
    L10_2 = L1_2
    L11_2 = G
    L11_2 = L11_2.Utils
    L11_2 = L11_2.index_of_item
    L12_2 = L1_2
    L13_2 = L8_2
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L4_2 = {}
  L5_2 = L3_2
  L6_2 = L1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  return L4_2
end
L0_1._get_team_edit_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._fantastic_module
  L3_2 = L2_2
  L2_2 = L2_2.TryEnterBattle
  L4_2 = A1_2
  L5_2 = A0_2._select_paragraph_data
  L5_2 = L5_2.ParagraphID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_start_challenge = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A1_2
  L2_2 = A1_2._get_avatar_id_list
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Count
  L2_2 = L2_2 == 4
  return L2_2
end
L0_1._check_team_edit_enable_challenge = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A1_2
  L2_2 = A1_2._get_avatar_id_list
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Count
  L2_2 = L2_2 == 4
  return L2_2
end
L0_1._check_condition_meet = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = A0_2._monster_panel
    L6_2 = L5_2
    L5_2 = L5_2.get_first_selected_item_btn
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  end
  L3_2 = nil
  return L3_2
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L1_2 = L1_2._binder
  L1_2 = L1_2.tab_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = true
      return L2_2
    end
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_btn_auto_move_scroll_rect
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._monster_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_item_btn
  L1_2 = L1_2(L2_2)
  A0_2._btn_first_monster = L1_2
  L1_2 = A0_2._slot_panels
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.UIUtils
    L5_2 = L5_2.setup_btn_navigation
    L6_2 = A0_2._btn_first_monster
    L7_2 = A0_2._slot_panels
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.get_navigation_btn
    L7_2 = L7_2(L8_2)
    L8_2 = NavigationType
    L8_2 = L8_2.Vertical
    L5_2(L6_2, L7_2, L8_2)
  end
  L1_2 = A0_2._monster_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_all_monster_btns
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.UIUtils
    L6_2 = L6_2.setup_btn_navigation
    L7_2 = L1_2[L5_2]
    L8_2 = A0_2._slot_panels
    L8_2 = L8_2[1]
    L9_2 = L8_2
    L8_2 = L8_2.get_navigation_btn
    L8_2 = L8_2(L9_2)
    L9_2 = NavigationType
    L9_2 = L9_2.Vertical
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_btn_navigation
  L3_2 = A0_2._btn_first_monster
  L4_2 = A0_2._slot_panels
  L4_2 = L4_2[1]
  L5_2 = L4_2
  L4_2 = L4_2.get_navigation_btn
  L4_2 = L4_2(L5_2)
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._monster_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_all_monster_btns
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = L6_2.gameObject
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.scroll_rect_right
      L1_3 = L0_3
      L0_3 = L0_3.ScrollToTransform
      L2_3 = A0_2._binder
      L2_3 = L2_3.rect_transform_monster_panel
      L0_3(L1_3, L2_3)
    end
    L6_2.onSelectTrigger = L7_2
  end
end
L0_1._setup_monster_btn_auto_move_scroll_rect = L3_1
return L0_1
