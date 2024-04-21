local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ChooseChapter.ActivityClockParkStoryLineChooseChapterItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkStoryLineChooseChapterItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._script_info = A1_2
  A0_2._chapter_id = A2_2
  A0_2._panel_index = A3_2
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetClockParkScriptData
  L6_2 = A0_2._script_info
  L6_2 = L6_2.ScriptID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ClockParkChapterConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2.ChapterTitle
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.IsChapterEndReached
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._can_choose_chapter
  L9_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_lfet_line_pass
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = false
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_lfet_line_not_pass
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.nodeleft_line_notpass_unlock
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_text_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_lock_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_frame_pass
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_frame_not_pass
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = not L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_frame_current
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = A0_2._script_info
  L10_2 = L10_2.ChapterInfo
  L10_2 = L10_2.ChapterID
  L10_2 = L10_2 == A2_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_tag_current
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = A0_2._script_info
  L10_2 = L10_2.ChapterInfo
  L10_2 = L10_2.ChapterID
  L10_2 = L10_2 == A2_2
  L8_2(L9_2, L10_2)
  L8_2 = L5_2.ChapterType
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.ClockParkChapterType
  L9_2 = L9_2.TrueEnding
  if L8_2 == L9_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_ending
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_current_select
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = "UIText_ClockPark_Normal_Ending"
    L8_2(L9_2, L10_2)
  else
    L8_2 = L5_2.ChapterType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ClockParkChapterType
    L9_2 = L9_2.FalseEnding
    if L8_2 == L9_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_ending
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_current_select
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = "UIText_ClockPark_Special_Ending"
      L8_2(L9_2, L10_2)
    else
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_ending
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_current_select
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = "UIText_ClockPark_ChapterPick_Tag"
      L8_2(L9_2, L10_2)
    end
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetClockParkScriptData
  L4_2 = A0_2._script_info
  L4_2 = L4_2.ScriptID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.IsChapterEndReached
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_2.Row
  L3_2 = L3_2.StartChapterID
  if L3_2 == A1_2 then
    L3_2 = true
    return L3_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.IsReachedTrueEnding
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L2_2.Row
    L3_2 = L3_2.ScriptEndingUnlockChapterID
    if A1_2 == L3_2 then
      L3_2 = true
      return L3_2
    end
  end
  L3_2 = false
  return L3_2
end
L1_1._can_choose_chapter = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L1_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_current_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._chapter_id
  L5_2 = A0_2._panel_index
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_btn_root = L2_1
return L1_1
