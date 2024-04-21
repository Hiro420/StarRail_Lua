local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
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
L3_1 = "UIText_ClockPark_Script_Chapter_Common"
L4_1 = "UIText_ClockPark_Script_Round_Common"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "ActivityClockParkGamePlayChapterProgressPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_story_line
  L4_2 = A0_2._on_btn_story_line_click
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L1_1.SelectStartChapter
  L1_2 = L1_2 ~= L2_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_progress
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_check_tips
    L2_2(L3_2)
  end
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L2_2 = L1_2.RoundIndex
  L3_2 = L0_1.ClockParkInstance
  L3_2 = L3_2.CurGameStateEnum
  L4_2 = L1_1.Check
  L3_2 = L3_2 == L4_2
  if L3_2 then
    L2_2 = L2_2 + 1
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_progress_with_first_index
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.PlayToBegin
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim
  L6_2 = "ClockParkChapterItemMove"
  L4_2(L5_2, L6_2)
end
L5_1._setup_progress = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.ChapterInfo
  L3_2 = L2_2.TotalRoundCount
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_array
  L5_2 = L2_2.Row
  L5_2 = L5_2.ChapterRoundIDList
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_array
  L6_2 = L2_2.Row
  L6_2 = L6_2.ChapterGamePlayRoundRandomList
  L5_2 = L5_2(L6_2)
  L6_2 = #L5_2
  if 0 < L6_2 then
    L6_2 = 1
    if L6_2 then
      goto lbl_24
    end
  end
  L6_2 = 0
  ::lbl_24::
  L7_2 = A1_2 == L3_2
  L8_2 = L0_1.ClockParkInstance
  L8_2 = L8_2.CurGameStateEnum
  L9_2 = L1_1.Check
  L8_2 = L8_2 == L9_2
  L9_2 = pairs
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_chapter_item_list
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = A1_2 + L12_2
    L14_2 = L14_2 - 1
    L15_2 = nil
    if L8_2 or not L7_2 then
      L16_2 = L3_2 + 1
      L15_2 = L14_2 <= L16_2
    else
      L15_2 = L3_2 >= L14_2
    end
    L17_2 = L13_2
    L16_2 = L13_2.safe_set_active
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
    if L15_2 then
      L16_2 = #L4_2
      if L14_2 <= L16_2 then
        L17_2 = L13_2
        L16_2 = L13_2.setup_view
        L18_2 = L14_2
        L19_2 = false
        L20_2 = false
        L21_2 = false
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      else
        L16_2 = #L4_2
        L16_2 = L16_2 + L6_2
        if L14_2 <= L16_2 and 0 < L6_2 then
          L17_2 = L13_2
          L16_2 = L13_2.setup_view
          L18_2 = L14_2
          L19_2 = true
          L20_2 = false
          L21_2 = false
          L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
        else
          L16_2 = #L4_2
          L16_2 = L16_2 + L6_2
          L16_2 = L16_2 + 1
          if L14_2 == L16_2 then
            if not L8_2 and L7_2 then
              L17_2 = L13_2
              L16_2 = L13_2.setup_view
              L18_2 = L3_2
              L19_2 = false
              L20_2 = false
              L21_2 = true
              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
            else
              L17_2 = L13_2
              L16_2 = L13_2.setup_view
              L18_2 = L14_2
              L19_2 = false
              L20_2 = true
              L21_2 = false
              L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
            end
          else
            L17_2 = L13_2
            L16_2 = L13_2.setup_view
            L18_2 = L3_2
            L19_2 = false
            L20_2 = false
            L21_2 = true
            L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
          end
        end
      end
    end
  end
end
L5_1._setup_progress_with_first_index = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.IsInEndless
  if not L2_2 then
    L2_2 = L1_1.RandomEvent
  end
  L2_2 = L1_2 == L2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = L1_1.BranchSelect
    if L1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._show_branch_select_tips
      L3_2(L4_2)
    else
      L3_2 = L1_1.Check
      if L1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._show_check_tips
        L3_2(L4_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2._show_normal_round_tips
        L3_2(L4_2)
      end
    end
  end
end
L5_1._setup_check_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_round
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_check
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ClockPark_Request_Tip_1"
  L1_2(L2_2, L3_2)
end
L5_1._show_branch_select_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_round
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_check
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ClockPark_CheckPoint_Toast"
  L1_2(L2_2, L3_2)
end
L5_1._show_check_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L2_2 = L1_2.CheckPointInfo
  L3_2 = L1_2.TotalRoundCount
  L4_2 = L1_2.RoundIndex
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 - 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_round
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L3_2 + 1
  L4_2(L5_2, L6_2)
  L4_2 = L2_2.CheckPointType
  L5_2 = L2_1.AttrGreaterEqual
  if L4_2 == L5_2 then
    L4_2 = nil
    L5_2 = L2_2.HasMultiCheckSingleAttribute
    if L5_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TextmapStatic
      L5_2 = L5_2.GetText
      L6_2 = "UIText_ClockPark_Check_Any_Tip"
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
    else
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.TextmapStatic
      L5_2 = L5_2.GetText
      L6_2 = G
      L6_2 = L6_2.ActivityClockParkUtils
      L6_2 = L6_2.get_attribute_item
      L7_2 = L2_2.CheckSingleAttributeType
      L6_2 = L6_2(L7_2)
      L6_2 = L6_2.Name
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_check
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_2.CheckPointDesc
    L8_2 = L3_2
    L9_2 = L4_2
    L10_2 = L2_2.CheckSingleAttributeValue
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = L2_2.CheckPointType
    L5_2 = L2_1.AttrSumGreaterEqual
    if L4_2 == L5_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_check
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L2_2.CheckPointDesc
      L7_2 = L3_2
      L8_2 = L2_2.CheckTotalAttributeValue
      L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = L2_2.CheckPointType
      L5_2 = L2_1.OwnBuff
      if L4_2 == L5_2 then
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.ClockParkBuffExcelTable
        L4_2 = L4_2.GetData
        L5_2 = L2_2.CheckBuffID
        L4_2 = L4_2(L5_2)
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.TextmapStatic
        L5_2 = L5_2.GetText
        L6_2 = L4_2.BuffTitle
        L5_2 = L5_2(L6_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.txt_check
        L7_2 = L6_2
        L6_2 = L6_2.SafeSetTextID
        L8_2 = L2_2.CheckPointDesc
        L9_2 = L3_2
        L10_2 = L5_2
        L6_2(L7_2, L8_2, L9_2, L10_2)
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_check
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = L2_2.CheckPointDesc
        L7_2 = L3_2
        L4_2(L5_2, L6_2, L7_2)
      end
    end
  end
end
L5_1._show_normal_round_tips = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLineDialog"
  L1_2(L2_2)
end
L5_1._on_btn_story_line_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ImmediateAction
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_callback
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = L0_1.ClockParkInstance
    L0_3 = L0_3.ScriptInfo
    L0_3 = L0_3.ChapterInfo
    L1_3 = L0_3.RoundIndex
    L2_3 = L0_1.ClockParkInstance
    L2_3 = L2_3.CurGameStateEnum
    L3_3 = L1_1.Check
    L2_3 = L2_3 == L3_3
    if L2_3 then
      L1_3 = L1_3 + 1
    end
    if 0 < L1_3 then
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3._setup_progress_with_first_index
      L5_3 = L1_3 - 1
      L3_3(L4_3, L5_3)
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.Client
      L3_3 = L3_3.UIAnimationUtils
      L3_3 = L3_3.PlayFromBegin
      L4_3 = A0_2._binder
      L4_3 = L4_3.anim
      L5_3 = "ClockParkChapterItemMove"
      L3_3(L4_3, L5_3)
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.Client
      L3_3 = L3_3.UIAnimationUtils
      L3_3 = L3_3.PlayFromBegin
      L4_3 = A0_2._binder
      L4_3 = L4_3.anim_root
      L5_3 = "ClockParkEventListPanel_Refresh"
      L3_3(L4_3, L5_3)
    end
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L5_1.get_chapter_round_change_action = L6_1
return L5_1
