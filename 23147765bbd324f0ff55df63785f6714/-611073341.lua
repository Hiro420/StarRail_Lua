local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Actions.ChallengeActionUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.ActionQueue.ActionQueue"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ClockParkCheckPointType
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityClockParkGamePlayStoryPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ActivityClockParkModule
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_action_queue
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.story_btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._dispose_action_queue
  L1_2(L2_2)
end
L3_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.new
    L2_2 = G
    L2_2 = L2_2.ActionQueue
    L1_2 = L1_2(L2_2)
    A0_2._action_queue = L1_2
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.init
    L1_2(L2_2)
  end
end
L3_1._init_action_queue = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._action_queue
  if L1_2 ~= nil then
    L1_2 = A0_2._action_queue
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._action_queue = nil
  end
end
L3_1._dispose_action_queue = L5_1
function L5_1(A0_2)
  local L1_2
end
L3_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_next
  L1_2(L2_2)
end
L3_1.override_on_btn_round_finish = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.story_node_chapter
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_round_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if not A1_2 then
    return
  end
  L2_2 = A0_2._chapter_info
  L2_2 = L2_2.IsEndChapter
  if L2_2 then
    L2_2 = A0_2._owner
    L2_2 = L2_2._binder
    L2_2 = L2_2.story_text_chapter_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ClockPark_Script_Chapter_4"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._owner
    L2_2 = L2_2._binder
    L2_2 = L2_2.story_text_chapter_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._chapter_info
    L4_2 = L4_2.Row
    L4_2 = L4_2.ChapterTitle
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._owner
    L2_2 = L2_2._binder
    L2_2 = L2_2.text_btn_round_finish
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ClockPark_Script_Round_Finish"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._owner
    L2_2 = L2_2._binder
    L2_2 = L2_2.story_text_chapter_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ClockPark_Script_Chapter_Round_Num"
    L5_2 = A0_2._chapter_info
    L5_2 = L5_2.TotalRoundCount
    L5_2 = L5_2 - 1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._owner
    L2_2 = L2_2._binder
    L2_2 = L2_2.story_text_chapter_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ClockPark_Script_Chapter_Common"
    L5_2 = A0_2._chapter_info
    L5_2 = L5_2.ChapterIndex
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._chapter_info
  L2_2 = L2_2.CheckPointInfo
  L3_2 = A0_2._owner
  L3_2 = L3_2._binder
  L3_2 = L3_2.story_txt_chapter_check_point
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2.HasCheck
  L3_2(L4_2, L5_2)
  L3_2 = L2_2.HasCheck
  if L3_2 then
    L3_2 = L2_2.CheckPointType
    L4_2 = L2_1.AttrSumGreaterEqual
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = "UIText_ClockPark_Script_Attribute_All"
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2._owner
      L4_2 = L4_2._binder
      L4_2 = L4_2.story_txt_chapter_check_point
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_ClockPark_Script_Attribute_Toast"
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
    L3_2 = L2_2.CheckPointType
    L4_2 = L2_1.AttrGreaterEqual
    if L3_2 == L4_2 then
      L3_2 = nil
      L4_2 = L2_2.HasMultiCheckSingleAttribute
      if L4_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.TextmapStatic
        L4_2 = L4_2.GetText
        L5_2 = "UIText_ClockPark_Check_Any_Tip"
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
      else
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.Client
        L4_2 = L4_2.TextmapStatic
        L4_2 = L4_2.GetText
        L5_2 = G
        L5_2 = L5_2.ActivityClockParkUtils
        L5_2 = L5_2.get_attribute_item
        L6_2 = L2_2.CheckSingleAttributeType
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.Name
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
      end
      L4_2 = A0_2._owner
      L4_2 = L4_2._binder
      L4_2 = L4_2.story_txt_chapter_check_point
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_ClockPark_Script_Attribute_Toast"
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L3_1._show_chapter_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._show_chapter_info
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._chapter_info
  L1_2 = L1_2.Row
  L1_2 = L1_2.ChapterStoryIDList
  L1_2 = L1_2.Length
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2._finish_story
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._chapter_info
  L2_2 = L2_2.Row
  L2_2 = L2_2.ChapterStoryIDList
  L1_2 = L1_2(L2_2)
  A0_2._sotry_ids = L1_2
  A0_2._index = 1
  L2_2 = A0_2
  L1_2 = A0_2._refresh_story
  L1_2(L2_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.story_btn_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._script_info
  L3_2 = A0_2._script_info
  L3_2 = L3_2.DataRef
  L4_2 = L3_2
  L3_2 = L3_2.IsChapterEndReached
  L5_2 = A0_2._chapter_info
  L5_2 = L5_2.ChapterID
  L3_2 = L3_2 ~= nil and L3_2
  L1_2(L2_2, L3_2)
end
L3_1._on_fadein_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._sotry_ids
  L2_2 = A0_2._index
  L1_2 = L1_2[L2_2]
  L3_2 = A0_2
  L2_2 = A0_2._try_play_story
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._refresh_story = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._index
  L2_2 = A0_2._sotry_ids
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._finish_story
    L1_2(L2_2)
  else
    L1_2 = A0_2._index
    L1_2 = L1_2 + 1
    A0_2._index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_story
    L1_2(L2_2)
  end
end
L3_1._on_btn_next = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1.ClockParkInstance
  L2_2 = L1_2
  L1_2 = L1_2.FinishRound
  L1_2(L2_2)
end
L3_1._finish_story = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._skip_story
  L1_2(L2_2)
end
L3_1._on_btn_skip = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ClockParkStoryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._owner
    L3_2 = L3_2._binder
    L3_2 = L3_2.story_mono_story_controller
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_story_finish
      L0_3(L1_3)
    end
    L3_2.OnFinish = L4_2
    L3_2 = A0_2._owner
    L3_2 = L3_2._binder
    L3_2 = L3_2.story_mono_story_controller
    L4_2 = L3_2
    L3_2 = L3_2.PlayClockParkStory
    L5_2 = L2_2.StoryJsonPath
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._owner
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_round_finish
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L3_1._try_play_story = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.story_mono_story_controller
  L1_2.OnFinish = nil
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.story_mono_story_controller
  L2_2 = L1_2
  L1_2 = L1_2.ExitStory
  L1_2(L2_2)
end
L3_1._exit_story = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.story_mono_story_controller
  L2_2 = L1_2
  L1_2 = L1_2.SkipStory
  L1_2(L2_2)
end
L3_1._skip_story = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.story_btn_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2
  L1_2 = L1_2.FinishRound
  L1_2(L2_2)
end
L3_1._on_story_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = L4_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  A0_2._script_info = L2_2
  L2_2 = L4_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.ChapterInfo
  A0_2._chapter_info = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_immediate_action
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.btn_round_finish
    L0_3.interactable = false
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.node_btn_round_finish_hint
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._owner
    L0_3 = L0_3._binder
    L0_3 = L0_3.node_hint_branch_select
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = L4_1.ClockParkInstance
  L2_2 = L2_2.PrevGameStateEnum
  L3_2 = A0_2._script_info
  L3_2 = L3_2.DataRef
  L3_2 = L3_2.IsInfinite
  if not L3_2 then
    L3_2 = L1_1.SelectStartChapter
    if L2_2 ~= L3_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = G
      L5_2 = L5_2.ChallengeActionUtils
      L5_2 = L5_2.create_immediate_action
      function L6_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2._owner
        if L0_3 ~= nil then
          L0_3 = A0_2._owner
          L0_3 = L0_3._binder
          if L0_3 ~= nil then
            goto lbl_9
          end
        end
        do return end
        ::lbl_9::
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.UIAnimationUtils
        L0_3 = L0_3.PlayToBegin
        L1_3 = A0_2._owner
        L1_3 = L1_3._binder
        L1_3 = L1_3.anim_bg
        L2_3 = "ClockParkGamePlayPageBack_Fadein"
        L0_3(L1_3, L2_3)
      end
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = G
      L5_2 = L5_2.ChallengeActionUtils
      L5_2 = L5_2.create_dialog_action
      L6_2 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLineDialog"
      L7_2 = nil
      L8_2 = A0_2._chapter_info
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_immediate_action
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_chapter_info
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_anim_action
  L6_2 = A0_2._owner
  L6_2 = L6_2._binder
  L6_2 = L6_2.story_anim_chapter
  L7_2 = "ClockParkGamePlayPageChapterPanel_FadeIn"
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_immediate_action
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2._owner
    if L0_3 ~= nil then
      L0_3 = A0_2._owner
      L0_3 = L0_3._binder
      if L0_3 ~= nil then
        goto lbl_9
      end
    end
    do return end
    ::lbl_9::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fadein_finish
    L0_3(L1_3)
  end
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = G
  L5_2 = L5_2.ChallengeActionUtils
  L5_2 = L5_2.create_anim_action
  L6_2 = A0_2._owner
  L6_2 = L6_2._binder
  L6_2 = L6_2.anim_bg
  L7_2 = "ClockParkGamePlayPageShowTime_Fadein"
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  return L1_2
end
L3_1.get_enter_action = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = G
  L4_2 = L4_2.ChallengeActionUtils
  L4_2 = L4_2.create_anim_action
  L5_2 = A0_2._owner
  L5_2 = L5_2._binder
  L5_2 = L5_2.anim_bg
  L6_2 = "ClockParkGamePlayPageShowTime_FadeOut"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  return L1_2
end
L3_1.get_exit_action = L5_1
return L3_1
