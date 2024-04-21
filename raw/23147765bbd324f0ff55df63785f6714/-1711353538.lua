local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryParagraphCardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryParagraphCardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = "SpriteOutput/RankIcon/CommonRankBg_C.png"
L3_1 = "SpriteOutput/RankIcon/CommonRankBg_B.png"
L4_1 = "SpriteOutput/RankIcon/CommonRankBg_A.png"
L5_1 = "SpriteOutput/RankIcon/CommonRankBg_S.png"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_incontrol_tip_btn_challenge
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_btn_go
    L1_3 = L1_3.gameObject
    L1_3 = L1_3.activeInHierarchy
    L0_3.IsShowTipBySelected = L1_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_btn_go
    L0_3 = L0_3.gameObject
    L0_3 = L0_3.activeInHierarchy
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 1
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 31
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_incontrol_tip_btn_challenge
    L0_3.IsShowTipBySelected = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_incontrol_tip_btn_trace
    L0_3.IsShowTipBySelected = false
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NewParagraphUnlock
  L4_2 = A0_2._on_new_paragraph_unlock
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._paragraph_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L2_2 = A0_2._paragraph_data
  L2_2 = L2_2.IsPreChapterFinish
  L2_2 = A0_2._paragraph_data
  L2_2 = L2_2.ScheduleData
  L3_2 = L2_2
  L2_2 = L2_2.IsInSchedule
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._paragraph_data
    L2_2 = not L2_2 and L2_2
  end
  A0_2._enable_trace = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_pic
  L5_2 = A0_2._paragraph_data
  L5_2 = L5_2.FigurePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lock_tips
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_score
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FantasticStoryNewUnlockParagraphCardAnim
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.ParagraphID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._paragraph_data
    L2_2 = L2_2.HistoryRecordScore
    L2_2 = L2_2 == 0
  end
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.IsUnlock
  if L3_2 and not L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = "FantasticStoryMain_item_unlock"
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayToBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = "FantasticStoryMain_item_unlock"
    L3_2(L4_2, L5_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._paragraph_data
  L6_2 = L6_2.ParagraphID
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._paragraph_data
  L1_2 = L1_2.HistoryRecordScore
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._add_notify_handler
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIAnimationEvent
    L4_2 = A0_2._on_anim_trigger_refresh
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = "FantasticStoryMain_item_unlock"
    L1_2(L2_2, L3_2)
  end
end
L0_1.try_play_unlock_animation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tostring
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "ParagraphRefresh" then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._remove_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIAnimationEvent
    L5_2 = A0_2._on_anim_trigger_refresh
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "[hwx] error arg"
    L2_2(L3_2)
  end
end
L0_1._on_anim_trigger_refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_paragraph_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_paragraph_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasticStoryNewUnlockParagraphCardAnim
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.ParagraphID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._paragraph_data
    L1_2 = L1_2.HistoryRecordScore
    L1_2 = L1_2 == 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsUnlock
  L4_2 = not L4_2 or L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_lock_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.ScheduleData
  L5_2 = L4_2
  L4_2 = L4_2.IsInSchedule
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsUnlock
  if L4_2 then
    L4_2 = not L1_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsUnlock
  if L4_2 then
    L4_2 = A0_2._paragraph_data
    L4_2 = L4_2.HistoryRecordScore
    L4_2 = 0 < L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_go
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsUnlock
  if L4_2 then
    L4_2 = A0_2._paragraph_data
    L4_2 = L4_2.HistoryRecordScore
    L4_2 = L4_2 == 0 and L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_trace
  L2_2.interactable = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_trace
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsUnlock
  L4_2 = not L4_2 or L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_pic
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsUnlock
  if L4_2 then
    L4_2 = not L1_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_incontrol_tip_btn_challenge
  L2_2.IsShowTipBySelected = false
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_incontrol_tip_btn_trace
  L2_2.IsShowTipBySelected = false
end
L0_1._setup_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.HistoryRecordScore
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rank_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.HistoryRecordScore
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._paragraph_data
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
    L4_2 = A0_2._paragraph_data
    L4_2 = L4_2.HistoryRecordScore
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._paragraph_data
    L3_2 = L3_2.HistoryRecordScore
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_score_rank_bg
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_score
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityCommon_BattleScore_Zero"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_score = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._paragraph_data
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._paragraph_data
    L3_2 = L3_2.ScheduleData
    L4_2 = L3_2
    L3_2 = L3_2.IsInSchedule
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._paragraph_data
    L3_2 = L3_2.ScheduleData
    L4_2 = L3_2
    L3_2 = L3_2.IsInSchedule
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2._paragraph_data
    L1_2 = L1_2.ScheduleData
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.mono_remain_timer
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._paragraph_data
      L3_2 = L3_2.ScheduleData
      L3_2 = L3_2.BeginTimeStamp
      L4_2 = A0_2._refresh
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    else
      L1_2 = A0_2._paragraph_data
      L1_2 = L1_2.IsPreChapterFinish
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_lock_tips
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = "UIText_ActivityFanaticStory_UnlockTip_2"
        L4_2 = A0_2._paragraph_data
        L4_2 = L4_2.UnlockChapterID
        L1_2(L2_2, L3_2, L4_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_lock_tips
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
    end
  end
end
L0_1._setup_lock_tips = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
    L5_2 = A0_2._paragraph_data
    L5_2 = L5_2.HistoryRecordScore
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.FantasticStoryActivityModule
    L6_2 = L6_2.RankMinScore
    L6_2 = L6_2[L4_2]
    if L5_2 >= L6_2 then
      L6_2 = A0_2
      L5_2 = A0_2._async_load_sprite_to
      L7_2 = A0_2._binder
      L7_2 = L7_2.img_rank
      L8_2 = L4_2 + 1
      L8_2 = L1_1[L8_2]
      L5_2(L6_2, L7_2, L8_2)
      return
    end
  end
end
L0_1._setup_score_rank_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FantasticStoryParagraphNew"
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.ParagraphID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L1_2 = L1_2.isPlaying
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = "FantasticStoryMain_item_unlock"
    L1_2(L2_2, L3_2)
  end
  L1_2 = tonumber
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueFantasticStoryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ActivityNPC_EntranceID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueFantasticStoryExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "ActivityNPC_Mapinfo"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.FantasticStoryActivityModule
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.ParagraphID
  L3_2.AutoShowParagraphID = L4_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TransferModule
  L4_2 = L3_2
  L3_2 = L3_2.TransferWithFinishedEvent
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_btn_go = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._paragraph_data
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ActivityFanaticStory_Unlock_Toast"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._enable_trace
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_trace
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_go
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._paragraph_data
  L1_2 = L1_2.PreChapterData
  L1_2 = L1_2.MainMissionData
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = 700
    L3_2 = {}
    L4_2 = A0_2._paragraph_data
    L4_2 = L4_2.PreChapterData
    L4_2 = L4_2.MainMissionData
    L4_2 = L4_2.MainMissionType
    L4_2 = #L4_2
    L5_2 = A0_2._paragraph_data
    L5_2 = L5_2.PreChapterData
    L5_2 = L5_2.MainMissionData
    L5_2 = L5_2.MainMissionID
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_trace = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.ParagraphID
  if L2_2 ~= L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.try_play_unlock_animation
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2.FantasticStoryNewUnlockParagraphCardAnim
  L5_2 = L4_2
  L4_2 = L4_2.Remove
  L6_2 = A0_2._paragraph_data
  L6_2 = L6_2.ParagraphID
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.ForceSave
  L4_2()
end
L0_1._on_new_paragraph_unlock = L2_1
return L0_1
