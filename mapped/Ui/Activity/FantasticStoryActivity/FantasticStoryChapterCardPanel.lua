local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryChapterCardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryChapterCardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_ItemDetail_RemainTime_Day"
L2_1 = "UIText_ItemDetail_RemainTime_Hour"
L3_1 = "UIText_ItemDetail_RemainTime_Minute"
L4_1 = "UIText_ItemDetail_RemainTime_Second"
L5_1 = 2
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
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
    L0_3 = L0_3.mono_incontrol_tip_btn_go
    L1_3 = A0_2._binder
    L1_3 = L1_3.node_btn_go
    L1_3 = L1_3.gameObject
    L1_3 = L1_3.activeInHierarchy
    L0_3.IsShowTipBySelected = L1_3
    L0_3 = A0_2._chapter_data
    if L0_3 then
      L0_3 = A0_2._chapter_data
      L0_3 = L0_3.IsFinish
      if L0_3 then
        goto lbl_27
      end
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_btn_go
    L0_3 = L0_3.gameObject
    L0_3 = L0_3.activeInHierarchy
    ::lbl_27::
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
    L0_3 = L0_3.mono_incontrol_tip_btn_go
    L0_3.IsShowTipBySelected = false
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NewChapterUnlock
  L4_2 = A0_2._on_new_chapter_unlock
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakenMainMission
  L4_2 = A0_2._on_take_main_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._chapter_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lock_tips
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_pic
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.FigurePath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.ChapterID
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FantasticStoryNewFinishChapter
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._chapter_data
  L4_2 = L4_2.ChapterID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.IsFinish
  if L3_2 and not L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromEnd
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root_finish
    L5_2 = "FantasticStoryMain_LimitMission_Finish"
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = L2_2.anim_root_unlock
  L3_2 = "FantasticStoryMain_LimitMission_Unlock"
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_anim_trigger_refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_anim_trigger_refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event_finish
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "FantasticStoryMain_LimitMission_Finish"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_state
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root_finish
  L3_2 = "FantasticStoryMain_LimitMission_Finish"
  L1_2(L2_2, L3_2)
end
L0_1.play_finish_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_lock_tips
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_chapter_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.Description
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_chapter_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_text = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasticStoryNewUnlockChapterAnim
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.ChapterID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FantasticStoryNewFinishChapter
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._chapter_data
  L4_2 = L4_2.ChapterID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.IsUnlock
  L5_2 = not L5_2 or L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock_timer
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.ScheduleData
  L6_2 = L5_2
  L5_2 = L5_2.IsInSchedule
  L5_2 = L5_2(L6_2)
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.IsUnlock
  if L5_2 then
    L5_2 = not L1_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.IsFinish
  L5_2 = L5_2 and not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._chapter_data
  L5_2 = L5_2.IsStart
  if L5_2 then
    L5_2 = not L1_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_chapter_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_incontrol_tip_btn_go
  L3_2.IsShowTipBySelected = false
end
L0_1._refresh_state = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasticStoryNewUnlockChapterAnim
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.ChapterID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._chapter_data
  L2_2 = L2_2.IsUnlock
  if not L2_2 or L1_2 then
    L2_2 = A0_2._chapter_data
    L2_2 = L2_2.ScheduleData
    L3_2 = L2_2
    L2_2 = L2_2.IsInSchedule
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_lock_timer
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_lock_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.mono_remain_timer
      L3_2 = L2_2
      L2_2 = L2_2.SetTargetTimeByTimeStamp
      L4_2 = A0_2._chapter_data
      L4_2 = L4_2.ScheduleData
      L4_2 = L4_2.BeginTimeStamp
      L5_2 = A0_2._refresh
      L6_2 = A0_2
      L7_2 = 2
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_lock_timer
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_lock_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._chapter_data
      L2_2 = L2_2.PreChapterData
      if L2_2 == nil or L1_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_lock_tips
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_lock_tips
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_ActivityFanaticStory_UnlockTip_2"
        L5_2 = A0_2._chapter_data
        L5_2 = L5_2.PreChapterID
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_lock_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FantasticChapterNew"
  L4_2 = A0_2._chapter_data
  L4_2 = L4_2.ChapterID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._chapter_data
  L1_2 = L1_2.MainMissionData
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = 700
    L3_2 = {}
    L4_2 = A0_2._chapter_data
    L4_2 = L4_2.MainMissionData
    L4_2 = L4_2.MainMissionType
    L4_2 = #L4_2
    L5_2 = A0_2._chapter_data
    L5_2 = L5_2.MainMissionID
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_go = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._chapter_data
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
    L1_2 = A0_2._chapter_data
    L1_2 = L1_2.IsStart
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_go
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_root = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.ChapterID
  if L2_2 ~= L3_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._owner_is_top_page
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    A0_2._late_play_unlock_anim = true
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.play_unlock_anim
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2.FantasticStoryNewUnlockChapterAnim
  L5_2 = L4_2
  L4_2 = L4_2.Remove
  L6_2 = A0_2._chapter_data
  L6_2 = L6_2.ChapterID
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.ForceSave
  L4_2()
end
L0_1._on_new_chapter_unlock = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._late_play_unlock_anim
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.play_unlock_anim
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.Prefs
      L2_2 = L2_2.User
      L3_2 = L2_2.FantasticStoryNewUnlockChapterAnim
      L4_2 = L3_2
      L3_2 = L3_2.Remove
      L5_2 = A0_2._chapter_data
      L5_2 = L5_2.ChapterID
      L3_2(L4_2, L5_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.Prefs
      L3_2 = L3_2.ForceSave
      L3_2()
    end
  end
end
L0_1._on_owner_active_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tonumber
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._chapter_data
  L3_2 = L3_2.MainMissionID
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._owner_is_top_page
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh
      L2_2(L3_2)
    end
  end
end
L0_1._on_take_main_mission = L6_1
return L0_1
