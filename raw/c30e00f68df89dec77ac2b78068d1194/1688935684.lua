local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ChooseChapter.ActivityClockParkStoryLineChooseChapterPanelNewPlayerBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ChooseChapter.ActivityClockParkStoryLineChooseChapterPanelNormalBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkStoryLineChooseChapterPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._script_info = A1_2
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetClockParkScriptData
  L6_2 = A0_2._script_info
  L6_2 = L6_2.ScriptID
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._script_data = L4_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
  L4_2 = 0
  L5_2 = A0_2._script_data
  L5_2 = L5_2.ChapterList
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._script_data
    L8_2 = L8_2.ChapterList
    L8_2 = L8_2[L7_2]
    L9_2 = A0_2._binder
    L9_2 = L9_2.chapter_panels
    L10_2 = L7_2 + 1
    L9_2 = L9_2[L10_2]
    if L9_2 ~= nil then
      L11_2 = L9_2
      L10_2 = L9_2.setup_view
      L12_2 = A0_2._script_info
      L13_2 = L8_2
      L14_2 = L7_2 + 1
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L11_2 = L9_2
      L10_2 = L9_2.register_click_callback
      L12_2 = A0_2._on_click
      L13_2 = A0_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L4_2 = A0_2._cur_selected_chapter_index
  if L4_2 == nil then
    A0_2._cur_selected_chapter_index = 1
    L4_2 = 0
    L5_2 = A0_2._script_data
    L5_2 = L5_2.ChapterList
    L5_2 = L5_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._script_data
      L8_2 = L8_2.ChapterList
      L8_2 = L8_2[L7_2]
      L9_2 = A0_2._script_info
      L9_2 = L9_2.DataRef
      L10_2 = L9_2
      L9_2 = L9_2.IsReachedFalseEnding
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = A0_2._script_info
        L9_2 = L9_2.DataRef
        L10_2 = L9_2
        L9_2 = L9_2.IsReachedTrueEnding
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = A0_2._script_info
          L9_2 = L9_2.DataRef
          L9_2 = L9_2.Row
          L9_2 = L9_2.ScriptEndingUnlockChapterID
          if L9_2 ~= 0 then
            goto lbl_78
          end
        end
      end
      L9_2 = A0_2._script_info
      L9_2 = L9_2.DataRef
      L10_2 = L9_2
      L9_2 = L9_2.IsChapterEndReached
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = L7_2 + 1
        A0_2._cur_selected_chapter_index = L9_2
        goto lbl_87
        ::lbl_78::
        L9_2 = A0_2._script_info
        L9_2 = L9_2.DataRef
        L9_2 = L9_2.Row
        L9_2 = L9_2.ScriptEndingUnlockChapterID
        if L8_2 == L9_2 then
          L9_2 = L7_2 + 1
          A0_2._cur_selected_chapter_index = L9_2
          break
        end
      end
      ::lbl_87::
    end
    L5_2 = A0_2
    L4_2 = A0_2._set_panel_selected_by_index
    L6_2 = A0_2._cur_selected_chapter_index
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.invoke_callback
    L5_2 = A0_2._callback
    L6_2 = A0_2._callback_self
    L7_2 = A0_2._script_data
    L7_2 = L7_2.ChapterList
    L8_2 = A0_2._cur_selected_chapter_index
    L8_2 = L8_2 - 1
    L7_2 = L7_2[L8_2]
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._set_panel_selected_by_index
  L5_2 = A0_2._cur_selected_chapter_index
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  A0_2._cur_selected_chapter_index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._set_panel_selected_by_index
  L5_2 = A0_2._cur_selected_chapter_index
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._callback
  L5_2 = A0_2._callback_self
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._on_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.chapter_panels
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.set_selected
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._set_panel_selected_by_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._script_data
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_selected_chapter_index
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.chapter_panels
  L2_2 = A0_2._cur_selected_chapter_index
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
end
L1_1.get_first_selected_object = L2_1
return L1_1
