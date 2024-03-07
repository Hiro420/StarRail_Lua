local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.CommonComponents.ActivityStateSwitch.CommonActivityStateUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "StoryLineUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.StoryLineData
L1_1 = L1_1.MAIN_LINE_ID
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1._story_line_module
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.IsMainLine
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1._enable_auto_show
    L0_3 = L0_3()
    if not L0_3 then
      return
    end
    L0_3 = L0_1._story_line_module
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SetAutoShow
    function L2_3()
      local L0_4, L1_4
      L0_4 = L0_1._show_activity_page
      L1_4 = A0_2
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3)
  end
  L2_2 = L0_1.switch_to_main_line_with_confirm
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.StoryLineSwitchReason
  L4_2 = L4_2.Activity
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = true
  return L2_2
end
L0_1.should_switch_line_in_activity = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1._enable_auto_show
    L0_3 = L0_3()
    if not L0_3 then
      return
    end
    L0_3 = L0_1._story_line_module
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SetAutoShow
    function L2_3()
      local L0_4, L1_4
      L0_4 = L0_1._show_phone_notice_page
      L1_4 = A1_2
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3)
  end
  L3_2 = L0_1.switch_to_main_line_with_confirm
  L4_2 = L2_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.StoryLineSwitchReason
  L5_2 = L5_2.Mission
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.switch_to_main_line_by_message = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1._enable_auto_show
    L0_3 = L0_3()
    if not L0_3 then
      return
    end
    L0_3 = L0_1._story_line_module
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SetAutoShow
    function L2_3()
      local L0_4, L1_4
      L0_4 = L0_1._execute_monster_track
      L1_4 = A0_2
      L0_4(L1_4)
    end
    L0_3(L1_3, L2_3)
  end
  L2_2 = L0_1.switch_to_main_line_with_confirm
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.StoryLineSwitchReason
  L4_2 = L4_2.Other
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.switch_to_main_line_by_monster_track = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1._story_line_module
  L3_2 = L3_2()
  L4_2 = L3_2
  L3_2 = L3_2.IsMainLine
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = A0_2
    L3_2()
    return
  end
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1._enable_auto_show
    L0_3 = L0_3()
    if not L0_3 then
      return
    end
    L0_3 = L0_1._story_line_module
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SetAutoShow
    function L2_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L0_4()
    end
    L0_3(L1_3, L2_3)
  end
  L4_2 = L0_1.switch_to_main_line_with_confirm
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.switch_to_main_line_by_auto_show = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1.switch_line_with_confirm
  L4_2 = L1_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.switch_to_main_line_with_confirm = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = L0_1._story_line_module
  L4_2 = L4_2()
  L5_2 = L4_2
  L4_2 = L4_2.IsStoryLine
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    return
  end
  L4_2 = L0_1.show_switch_line_check_on_demand
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A2_2
    if not L0_3 then
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.StoryLineSwitchReason
      L0_3 = L0_3.Other
    end
    A2_2 = L0_3
    L0_3 = L0_1._story_line_module
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SetReportData
    L2_3 = A2_2
    L3_3 = A3_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L0_1._story_line_module
    L0_3 = L0_3()
    L1_3 = L0_3
    L0_3 = L0_3.SwitchLine
    L2_3 = A0_2
    L3_3 = A1_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
end
L0_1.switch_line_with_confirm = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A1_2 = L1_1
  end
  L2_2 = L0_1._story_line_module
  L2_2 = L2_2()
  L3_2 = L2_2
  L2_2 = L2_2.IsStoryLine
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2
    L2_2()
    L2_2 = false
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.StoryLineUtils
    L2_2 = L2_2.ShowSwitchLineDialogOnDemand
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = true
    return L2_2
  end
end
L0_1.show_switch_line_check_on_demand = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.StoryLineUIDataExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StoryLineUIDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.PlayerModule
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.HeroAvatarInfoData
    L5_2 = L3_2
    L4_2 = L3_2.GetCurrentHeroGender
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.GenderType
    L5_2 = L5_2.GENDER_WOMAN
    if L4_2 == L5_2 then
      L5_2 = 2
      if L5_2 then
        goto lbl_43
      end
    end
    L5_2 = 1
    ::lbl_43::
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.StoryLineUIDataExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L2_2 = L6_2
  end
  return L2_2
end
L0_1.get_story_line_ui_row = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.StoryLineData
  L0_2 = L0_2.MAIN_LINE_ID
  return L0_2
end
L0_1.get_main_story_line_id = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = "UI_Switch_Line_Auto_Show_Page"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 == nil
  return L1_2
end
L0_1._enable_auto_show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityPage"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L0_1._execute_activity_panel_auto_run_goto
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._show_activity_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.PhoneNotice.PhoneNoticePage"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._show_phone_notice_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.BigMapModule
  L2_2 = L1_2
  L1_2 = L1_2.GotoMonsterTrackID
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._execute_monster_track = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1._activity_module
  L1_2 = L1_2()
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityDataByPanelID
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = L0_1._resident_activity_module
    L2_2 = L2_2()
    L3_2 = L2_2
    L2_2 = L2_2.GetActivityDataByPanelID
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.StateData
  L3_2 = L2_2.ConditionConfig
  L5_2 = L1_2
  L4_2 = L1_2.IsAvailable
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = L2_2.CurState
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ActivityStateEnum
    L5_2 = L5_2.InProgress
    if L4_2 == L5_2 and L3_2 ~= nil then
      L4_2 = L3_2.ActivityGotoStoryLineRestore
      if L4_2 then
        goto lbl_37
      end
    end
  end
  do return end
  ::lbl_37::
  L4_2 = L3_2.ActivityGoto
  if 0 < L4_2 then
    L4_2 = L3_2.ActivityGoto
    L5_2 = G
    L5_2 = L5_2.GotoManager
    L5_2 = L5_2.Goto
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = G
    L5_2 = L5_2.CommonActivityStateUtils
    L5_2 = L5_2.report_activity_panel_btn_go_click
    L6_2 = L1_2
    L7_2 = G
    L7_2 = L7_2.CommonActivityStateUtils
    L7_2 = L7_2.ReportGuideType
    L7_2 = L7_2.ActivityGoto
    L8_2 = 0
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._execute_activity_panel_auto_run_goto = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.StoryLineModule
  return L0_2
end
L0_1._story_line_module = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ActivityModule
  return L0_2
end
L0_1._activity_module = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ResidentActivityModule
  return L0_2
end
L0_1._resident_activity_module = L2_1
L2_1 = false
if L2_1 then
  L2_1 = G
  L2_1.StoryLineUtils = L0_1
end
return L0_1
