local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLineItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "StorylineDialogItemFork_Lock"
L2_1 = "StorylineDialogItemFork_Unlock"
L3_1 = "StorylineDialogItemFork_Normal"
L4_1 = "StorylineDialogItemFork_Lock_To_Playing"
L5_1 = "StorylineDialogItemFork_Playing"
L6_1 = "StorylineDialogItemFork_Normal_To_Playing"
L7_1 = "StorylineDialogItemFork_Line_Normal"
L8_1 = "StorylineDialogItemFork_Line_Max"
L9_1 = "StorylineDialogItemFork_Line_Connect"
L10_1 = G
L10_1 = L10_1.Class
L11_1 = "ActivityClockParkStoryLineItemPanel"
L12_1 = G
L12_1 = L12_1.BasePanel
L10_1 = L10_1(L11_1, L12_1)
function L11_1(A0_2)
  local L1_2
end
L10_1._on_load = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._chapter_id = A2_2
  A0_2._panel_index = A3_2
  A0_2._enter_chapter_info = A4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetInteractable
  L7_2 = false
  L5_2(L6_2, L7_2)
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
  L7_2 = A1_2
  L6_2 = A1_2.IsChapterPassed
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.GetClockParkScriptData
  L9_2 = A1_2.ScriptID
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.IsChapterEndReached
  L10_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_lfet_line_pass
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_lfet_line_not_pass
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = not L6_2 and L11_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.nodeleft_line_notpass_unlock
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = not L6_2 and L11_2
  L9_2(L10_2, L11_2)
  L9_2 = L5_2.ChapterType
  L10_2 = CS
  L10_2 = L10_2.RPG
  L10_2 = L10_2.GameCore
  L10_2 = L10_2.ClockParkChapterType
  L10_2 = L10_2.TrueEnding
  if L9_2 == L10_2 then
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_ending
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetActive
    L11_2 = L8_2 or L11_2
    if not L8_2 then
      L11_2 = L6_2
    end
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.text_editing
    L10_2 = L9_2
    L9_2 = L9_2.SafeSetTextID
    L11_2 = "UIText_ClockPark_Normal_Ending"
    L9_2(L10_2, L11_2)
  else
    L9_2 = L5_2.ChapterType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ClockParkChapterType
    L10_2 = L10_2.FalseEnding
    if L9_2 == L10_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_ending
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetActive
      L11_2 = L8_2 or L11_2
      if not L8_2 then
        L11_2 = L6_2
      end
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._binder
      L9_2 = L9_2.text_editing
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetTextID
      L11_2 = "UIText_ClockPark_Special_Ending"
      L9_2(L10_2, L11_2)
    else
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_ending
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetActive
      L11_2 = false
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._binder
      L9_2 = L9_2.text_editing
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetTextID
      L11_2 = "UIText_ClockPark_Script_Playing_Tip_1"
      L9_2(L10_2, L11_2)
    end
  end
  L9_2 = A0_2._enter_chapter_info
  if L9_2 ~= nil then
    L9_2 = A0_2._enter_chapter_info
    L9_2 = L9_2.ChapterID
    if L9_2 == A2_2 then
      if L8_2 then
        L9_2 = A0_2._binder
        L9_2 = L9_2.anim_root
        L10_2 = L9_2
        L9_2 = L9_2.Play
        L11_2 = L6_1
        L9_2(L10_2, L11_2)
        L9_2 = A0_2._binder
        L9_2 = L9_2.anim_line
        L10_2 = L9_2
        L9_2 = L9_2.Play
        L11_2 = L9_1
        L9_2(L10_2, L11_2)
        L9_2 = A0_2._binder
        L9_2 = L9_2.anim_event_line
        L10_2 = L9_2
        L9_2 = L9_2.AddAnimationEvent
        L11_2 = L9_1
        function L12_2()
          local L0_3, L1_3, L2_3
          L0_3 = A0_2._binder
          L0_3 = L0_3.anim_line
          L1_3 = L0_3
          L0_3 = L0_3.Play
          L2_3 = L8_1
          L0_3(L1_3, L2_3)
        end
        L9_2(L10_2, L11_2, L12_2)
      else
        L9_2 = A0_2._binder
        L9_2 = L9_2.anim_root
        L10_2 = L9_2
        L9_2 = L9_2.Play
        L11_2 = L4_1
        L9_2(L10_2, L11_2)
        L9_2 = A0_2._binder
        L9_2 = L9_2.anim_line
        L10_2 = L9_2
        L9_2 = L9_2.Play
        L11_2 = L9_1
        L9_2(L10_2, L11_2)
        L9_2 = A0_2._binder
        L9_2 = L9_2.anim_event_line
        L10_2 = L9_2
        L9_2 = L9_2.AddAnimationEvent
        L11_2 = L9_1
        function L12_2()
          local L0_3, L1_3, L2_3
          L0_3 = A0_2._binder
          L0_3 = L0_3.anim_line
          L1_3 = L0_3
          L0_3 = L0_3.Play
          L2_3 = L8_1
          L0_3(L1_3, L2_3)
        end
        L9_2(L10_2, L11_2, L12_2)
      end
  end
  else
    L9_2 = A1_2.ChapterInfo
    L9_2 = L9_2.ChapterID
    if L9_2 == A2_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.anim_root
      L10_2 = L9_2
      L9_2 = L9_2.Play
      L11_2 = L5_1
      L9_2(L10_2, L11_2)
    elseif not L6_2 and not L8_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.anim_root
      L10_2 = L9_2
      L9_2 = L9_2.Play
      L11_2 = L1_1
      L9_2(L10_2, L11_2)
    else
      L9_2 = A0_2._binder
      L9_2 = L9_2.anim_root
      L10_2 = L9_2
      L9_2 = L9_2.Play
      L11_2 = L3_1
      L9_2(L10_2, L11_2)
    end
    if L6_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.anim_line
      L10_2 = L9_2
      L9_2 = L9_2.Play
      L11_2 = L8_1
      L9_2(L10_2, L11_2)
    else
      L9_2 = A0_2._binder
      L9_2 = L9_2.anim_line
      L10_2 = L9_2
      L9_2 = L9_2.Play
      L11_2 = L7_1
      L9_2(L10_2, L11_2)
    end
  end
end
L10_1.setup_view = L11_1
return L10_1
